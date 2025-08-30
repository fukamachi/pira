(uiop/package:define-package #:pira/guardduty (:use)
                             (:export #:accept-administrator-invitation
                              #:accept-invitation #:access-control-list
                              #:access-denied-exception #:access-key
                              #:access-key-details #:account #:account-detail
                              #:account-details #:account-free-trial-info
                              #:account-free-trial-infos #:account-id
                              #:account-ids #:account-level-permissions
                              #:account-statistics #:action #:actor #:actor-ids
                              #:actor-process #:actors
                              #:additional-sequence-types #:addon-details
                              #:admin-account #:admin-accounts #:admin-status
                              #:administrator #:affected-resources
                              #:agent-details #:anomaly #:anomaly-object
                              #:anomaly-profile-feature-objects
                              #:anomaly-profile-features #:anomaly-profiles
                              #:anomaly-unusual
                              #:anomaly-unusual-behavior-feature
                              #:archive-findings #:auto-enable-members
                              #:autonomous-system #:aws-api-call-action
                              #:bad-request-exception #:behavior
                              #:block-public-access #:boolean
                              #:bucket-level-permissions #:bucket-policy #:city
                              #:client-token #:cloud-trail-configuration-result
                              #:cluster-status #:condition #:conflict-exception
                              #:container #:container-finding-resource
                              #:container-image-uid
                              #:container-instance-details #:container-uid
                              #:container-uids #:containers
                              #:count-by-coverage-status
                              #:count-by-resource-type #:count-by-severity
                              #:country #:coverage-ec2instance-details
                              #:coverage-ecs-cluster-details
                              #:coverage-eks-cluster-details
                              #:coverage-filter-condition
                              #:coverage-filter-criteria
                              #:coverage-filter-criterion
                              #:coverage-filter-criterion-key
                              #:coverage-filter-criterion-list
                              #:coverage-resource #:coverage-resource-details
                              #:coverage-resources #:coverage-sort-criteria
                              #:coverage-sort-key #:coverage-statistics
                              #:coverage-statistics-type
                              #:coverage-statistics-type-list #:coverage-status
                              #:create-detector #:create-filter #:create-ipset
                              #:create-malware-protection-plan #:create-members
                              #:create-protected-resource
                              #:create-publishing-destination
                              #:create-s3bucket-resource
                              #:create-sample-findings
                              #:create-threat-intel-set #:criterion
                              #:criterion-key #:dnslogs-configuration-result
                              #:data-source #:data-source-configurations
                              #:data-source-configurations-result
                              #:data-source-free-trial #:data-source-list
                              #:data-source-status #:data-sources-free-trial
                              #:date-statistics #:decline-invitations
                              #:default-server-side-encryption
                              #:delete-detector #:delete-filter #:delete-ipset
                              #:delete-invitations
                              #:delete-malware-protection-plan #:delete-members
                              #:delete-publishing-destination
                              #:delete-threat-intel-set
                              #:describe-malware-scans
                              #:describe-organization-configuration
                              #:describe-publishing-destination #:destination
                              #:destination-properties #:destination-type
                              #:destinations #:detection
                              #:detector-additional-configuration
                              #:detector-additional-configuration-result
                              #:detector-additional-configuration-results
                              #:detector-additional-configurations
                              #:detector-feature
                              #:detector-feature-configuration
                              #:detector-feature-configuration-result
                              #:detector-feature-configurations
                              #:detector-feature-configurations-results
                              #:detector-feature-result #:detector-id
                              #:detector-ids #:detector-status
                              #:disable-organization-admin-account
                              #:disassociate-from-administrator-account
                              #:disassociate-from-master-account
                              #:disassociate-members #:dns-request-action
                              #:domain-details #:double
                              #:ebs-snapshot-preservation #:ebs-volume-details
                              #:ebs-volume-scan-details #:ebs-volumes-result
                              #:ec2instance #:ec2instance-uid
                              #:ec2instance-uids #:ec2network-interface
                              #:ec2network-interface-uids #:ecs-cluster-details
                              #:ecs-task-details #:eks-cluster
                              #:eks-cluster-details #:email
                              #:enable-organization-admin-account
                              #:endpoint-ids #:eq #:equals #:evidence
                              #:fargate-details
                              #:feature-additional-configuration
                              #:feature-status #:feedback #:file-paths
                              #:filter-action #:filter-condition
                              #:filter-criteria #:filter-criterion
                              #:filter-criterion-list #:filter-description
                              #:filter-name #:filter-names #:filter-rank
                              #:finding #:finding-criteria #:finding-id
                              #:finding-ids #:finding-publishing-frequency
                              #:finding-resource-type #:finding-statistic-type
                              #:finding-statistic-types #:finding-statistics
                              #:finding-type #:finding-type-statistics
                              #:finding-types #:findings #:flags-list
                              #:flow-logs-configuration-result
                              #:free-trial-feature-configuration-result
                              #:free-trial-feature-configurations-results
                              #:free-trial-feature-result #:geo-location
                              #:get-administrator-account
                              #:get-coverage-statistics #:get-detector
                              #:get-filter #:get-findings
                              #:get-findings-statistics #:get-ipset
                              #:get-invitations-count
                              #:get-malware-protection-plan
                              #:get-malware-scan-settings #:get-master-account
                              #:get-member-detectors #:get-members
                              #:get-organization-statistics
                              #:get-remaining-free-trial-days
                              #:get-threat-intel-set #:get-usage-statistics
                              #:group-by-type #:grouped-by-account
                              #:grouped-by-date #:grouped-by-finding-type
                              #:grouped-by-resource #:grouped-by-severity
                              #:groups #:guard-duty-apiservice #:guard-duty-arn
                              #:highest-severity-threat-details #:host-path
                              #:iam-instance-profile #:impersonated-user
                              #:indicator #:indicator-title #:indicator-type
                              #:indicator-value-string #:indicator-values
                              #:indicators #:instance-arn #:instance-details
                              #:integer #:integer-value-with-max
                              #:internal-server-error-exception #:invitation
                              #:invitations #:invite-members #:ip-set-format
                              #:ip-set-ids #:ip-set-status #:ipv6addresses
                              #:issues #:item-path #:item-paths
                              #:kubernetes-api-call-action
                              #:kubernetes-audit-logs-configuration
                              #:kubernetes-audit-logs-configuration-result
                              #:kubernetes-configuration
                              #:kubernetes-configuration-result
                              #:kubernetes-data-source-free-trial
                              #:kubernetes-details
                              #:kubernetes-permission-checked-details
                              #:kubernetes-resources-types
                              #:kubernetes-role-binding-details
                              #:kubernetes-role-details
                              #:kubernetes-user-details #:kubernetes-workload
                              #:kubernetes-workload-details #:lambda-details
                              #:lineage #:lineage-object #:list-coverage
                              #:list-detectors #:list-filters #:list-findings
                              #:list-ipsets #:list-invitations
                              #:list-malware-protection-plans #:list-members
                              #:list-organization-admin-accounts
                              #:list-publishing-destinations
                              #:list-tags-for-resource #:list-threat-intel-sets
                              #:local-ip-details #:local-port-details
                              #:location #:login-attribute #:login-attributes
                              #:long #:long-value
                              #:malware-protection-configuration
                              #:malware-protection-configuration-result
                              #:malware-protection-data-source-free-trial
                              #:malware-protection-plan-actions
                              #:malware-protection-plan-object-prefixes-list
                              #:malware-protection-plan-status
                              #:malware-protection-plan-status-reason
                              #:malware-protection-plan-status-reasons-list
                              #:malware-protection-plan-summary
                              #:malware-protection-plan-tagging-action
                              #:malware-protection-plan-tagging-action-status
                              #:malware-protection-plans-summary
                              #:malware-scan-details #:management-type
                              #:map-equals #:master #:max-results
                              #:max-results100 #:member
                              #:member-additional-configuration
                              #:member-additional-configuration-result
                              #:member-additional-configuration-results
                              #:member-additional-configurations
                              #:member-data-source-configuration
                              #:member-data-source-configurations
                              #:member-features-configuration
                              #:member-features-configuration-result
                              #:member-features-configurations
                              #:member-features-configurations-results
                              #:members #:memory-regions-list #:mfa-status
                              #:name #:neq #:network-connection
                              #:network-connection-action #:network-direction
                              #:network-endpoint #:network-endpoints
                              #:network-geo-location #:network-interface
                              #:network-interfaces #:non-empty-string
                              #:not-equals #:observation-texts #:observations
                              #:order-by #:org-feature
                              #:org-feature-additional-configuration
                              #:org-feature-status #:organization
                              #:organization-additional-configuration
                              #:organization-additional-configuration-result
                              #:organization-additional-configuration-results
                              #:organization-additional-configurations
                              #:organization-data-source-configurations
                              #:organization-data-source-configurations-result
                              #:organization-details #:organization-ebs-volumes
                              #:organization-ebs-volumes-result
                              #:organization-feature-configuration
                              #:organization-feature-configuration-result
                              #:organization-feature-statistics
                              #:organization-feature-statistics-additional-configuration
                              #:organization-feature-statistics-additional-configurations
                              #:organization-feature-statistics-results
                              #:organization-features-configurations
                              #:organization-features-configurations-results
                              #:organization-kubernetes-audit-logs-configuration
                              #:organization-kubernetes-audit-logs-configuration-result
                              #:organization-kubernetes-configuration
                              #:organization-kubernetes-configuration-result
                              #:organization-malware-protection-configuration
                              #:organization-malware-protection-configuration-result
                              #:organization-s3logs-configuration
                              #:organization-s3logs-configuration-result
                              #:organization-scan-ec2instance-with-findings
                              #:organization-scan-ec2instance-with-findings-result
                              #:organization-statistics #:owner
                              #:permission-configuration #:port-probe-action
                              #:port-probe-detail #:port-probe-details
                              #:positive-long #:private-ip-address-details
                              #:private-ip-addresses #:process-details
                              #:process-name #:process-path #:process-sha256
                              #:product-code #:product-codes #:profile-subtype
                              #:profile-type #:public-access
                              #:public-access-configuration
                              #:public-access-status
                              #:public-acl-ignore-behavior
                              #:public-bucket-restrict-behavior
                              #:publishing-status #:rds-db-instance-details
                              #:rds-db-user-details #:rds-limitless-db-details
                              #:rds-login-attempt-action
                              #:remote-account-details #:remote-ip-details
                              #:remote-port-details #:resource #:resource-arn
                              #:resource-data #:resource-details
                              #:resource-list #:resource-not-found-exception
                              #:resource-statistics #:resource-type
                              #:resource-uids #:resource-v2 #:resources
                              #:runtime-context #:runtime-details #:s3bucket
                              #:s3bucket-detail #:s3bucket-details
                              #:s3logs-configuration
                              #:s3logs-configuration-result #:s3object
                              #:s3object-detail #:s3object-details
                              #:s3object-uids #:scan #:scan-condition
                              #:scan-condition-pair #:scan-criterion
                              #:scan-criterion-key #:scan-detections
                              #:scan-ec2instance-with-findings
                              #:scan-ec2instance-with-findings-result
                              #:scan-file-path #:scan-resource-criteria
                              #:scan-result #:scan-result-details #:scan-status
                              #:scan-threat-name #:scan-threat-names
                              #:scan-type #:scanned-item-count #:scans
                              #:security-context #:security-group
                              #:security-groups #:sensitive-string #:sequence
                              #:sequence-description #:service
                              #:service-additional-info #:session
                              #:session-name-list #:severity-statistics
                              #:signal #:signal-description #:signal-type
                              #:signals #:sort-criteria #:source-ips #:sources
                              #:start-malware-scan #:start-monitoring-members
                              #:stop-monitoring-members #:string #:subnet-ids
                              #:tag #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-value #:tags #:threat
                              #:threat-detected-by-name
                              #:threat-intel-set-format #:threat-intel-set-ids
                              #:threat-intel-set-status
                              #:threat-intelligence-detail
                              #:threat-intelligence-details #:threat-names
                              #:threats #:threats-detected-item-count
                              #:timestamp #:total #:trigger-details
                              #:unarchive-findings #:unprocessed-account
                              #:unprocessed-accounts
                              #:unprocessed-data-sources-result
                              #:untag-resource #:update-detector
                              #:update-filter #:update-findings-feedback
                              #:update-ipset #:update-malware-protection-plan
                              #:update-malware-scan-settings
                              #:update-member-detectors
                              #:update-organization-configuration
                              #:update-protected-resource
                              #:update-publishing-destination
                              #:update-s3bucket-resource
                              #:update-threat-intel-set #:usage-account-result
                              #:usage-account-result-list #:usage-criteria
                              #:usage-data-source-result
                              #:usage-data-source-result-list #:usage-feature
                              #:usage-feature-list #:usage-feature-result
                              #:usage-feature-result-list
                              #:usage-resource-result
                              #:usage-resource-result-list
                              #:usage-statistic-type #:usage-statistics
                              #:usage-top-account-result
                              #:usage-top-accounts-by-feature-list
                              #:usage-top-accounts-result
                              #:usage-top-accounts-result-list #:user #:volume
                              #:volume-detail #:volume-details #:volume-mount
                              #:volume-mounts #:volumes #:vpc-config
                              #:guardduty-error))
(common-lisp:in-package #:pira/guardduty)

(common-lisp:define-condition guardduty-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service guard-duty-apiservice :shape-name
                                   "GuardDutyAPIService" :version "2017-11-28"
                                   :title "Amazon GuardDuty" :operations
                                   '(accept-administrator-invitation
                                     accept-invitation archive-findings
                                     create-detector create-filter create-ipset
                                     create-malware-protection-plan
                                     create-members
                                     create-publishing-destination
                                     create-sample-findings
                                     create-threat-intel-set
                                     decline-invitations delete-detector
                                     delete-filter delete-invitations
                                     delete-ipset
                                     delete-malware-protection-plan
                                     delete-members
                                     delete-publishing-destination
                                     delete-threat-intel-set
                                     describe-malware-scans
                                     describe-organization-configuration
                                     describe-publishing-destination
                                     disable-organization-admin-account
                                     disassociate-from-administrator-account
                                     disassociate-from-master-account
                                     disassociate-members
                                     enable-organization-admin-account
                                     get-administrator-account
                                     get-coverage-statistics get-detector
                                     get-filter get-findings
                                     get-findings-statistics
                                     get-invitations-count get-ipset
                                     get-malware-protection-plan
                                     get-malware-scan-settings
                                     get-master-account get-member-detectors
                                     get-members get-organization-statistics
                                     get-remaining-free-trial-days
                                     get-threat-intel-set get-usage-statistics
                                     invite-members list-coverage
                                     list-detectors list-filters list-findings
                                     list-invitations list-ipsets
                                     list-malware-protection-plans list-members
                                     list-organization-admin-accounts
                                     list-publishing-destinations
                                     list-tags-for-resource
                                     list-threat-intel-sets start-malware-scan
                                     start-monitoring-members
                                     stop-monitoring-members tag-resource
                                     unarchive-findings untag-resource
                                     update-detector update-filter
                                     update-findings-feedback update-ipset
                                     update-malware-protection-plan
                                     update-malware-scan-settings
                                     update-member-detectors
                                     update-organization-configuration
                                     update-publishing-destination
                                     update-threat-intel-set)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "GuardDuty")
                                      ("arnNamespace" . "guardduty")
                                      ("cloudFormationName" . "GuardDuty")
                                      ("cloudTrailEventSource"
                                       . "guardduty.amazonaws.com")
                                      ("endpointPrefix" . "guardduty"))
                                     ("aws.auth#sigv4" ("name" . "guardduty"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input accept-administrator-invitation-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (administrator-id :target-type string
                                  :required common-lisp:t :member-name
                                  "AdministratorId" :json-name
                                  "administratorId")
                                 (invitation-id :target-type string :required
                                  common-lisp:t :member-name "InvitationId"
                                  :json-name "invitationId"))
                                (:shape-name
                                 "AcceptAdministratorInvitationRequest"))

(smithy/sdk/shapes:define-output accept-administrator-invitation-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AcceptAdministratorInvitationResponse"))

(smithy/sdk/shapes:define-input accept-invitation-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (master-id :target-type string :required
                                  common-lisp:t :member-name "MasterId"
                                  :json-name "masterId")
                                 (invitation-id :target-type string :required
                                  common-lisp:t :member-name "InvitationId"
                                  :json-name "invitationId"))
                                (:shape-name "AcceptInvitationRequest"))

(smithy/sdk/shapes:define-output accept-invitation-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AcceptInvitationResponse"))

(smithy/sdk/shapes:define-structure access-control-list common-lisp:nil
                                    ((allows-public-read-access :target-type
                                      boolean :member-name
                                      "AllowsPublicReadAccess" :json-name
                                      "allowsPublicReadAccess")
                                     (allows-public-write-access :target-type
                                      boolean :member-name
                                      "AllowsPublicWriteAccess" :json-name
                                      "allowsPublicWriteAccess"))
                                    (:shape-name "AccessControlList"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (type :target-type string :member-name "Type"
                                  :json-name "__type"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class guardduty-error))

(smithy/sdk/shapes:define-structure access-key common-lisp:nil
                                    ((principal-id :target-type string
                                      :member-name "PrincipalId" :json-name
                                      "principalId")
                                     (user-name :target-type string
                                      :member-name "UserName" :json-name
                                      "userName")
                                     (user-type :target-type string
                                      :member-name "UserType" :json-name
                                      "userType"))
                                    (:shape-name "AccessKey"))

(smithy/sdk/shapes:define-structure access-key-details common-lisp:nil
                                    ((access-key-id :target-type string
                                      :member-name "AccessKeyId" :json-name
                                      "accessKeyId")
                                     (principal-id :target-type string
                                      :member-name "PrincipalId" :json-name
                                      "principalId")
                                     (user-name :target-type string
                                      :member-name "UserName" :json-name
                                      "userName")
                                     (user-type :target-type string
                                      :member-name "UserType" :json-name
                                      "userType"))
                                    (:shape-name "AccessKeyDetails"))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((uid :target-type string :required
                                      common-lisp:t :member-name "Uid"
                                      :json-name "uid")
                                     (name :target-type string :member-name
                                      "Name" :json-name "account"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-structure account-detail common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId" :json-name "accountId")
                                     (email :target-type email :required
                                      common-lisp:t :member-name "Email"
                                      :json-name "email"))
                                    (:shape-name "AccountDetail"))

(smithy/sdk/shapes:define-list account-details :member account-detail)

(smithy/sdk/shapes:define-structure account-free-trial-info common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (data-sources :target-type
                                      data-sources-free-trial :member-name
                                      "DataSources" :json-name "dataSources")
                                     (features :target-type
                                      free-trial-feature-configurations-results
                                      :member-name "Features" :json-name
                                      "features"))
                                    (:shape-name "AccountFreeTrialInfo"))

(smithy/sdk/shapes:define-list account-free-trial-infos :member
                               account-free-trial-info)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-ids :member account-id)

(smithy/sdk/shapes:define-structure account-level-permissions common-lisp:nil
                                    ((block-public-access :target-type
                                      block-public-access :member-name
                                      "BlockPublicAccess" :json-name
                                      "blockPublicAccess"))
                                    (:shape-name "AccountLevelPermissions"))

(smithy/sdk/shapes:define-structure account-statistics common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (last-generated-at :target-type timestamp
                                      :member-name "LastGeneratedAt" :json-name
                                      "lastGeneratedAt")
                                     (total-findings :target-type integer
                                      :member-name "TotalFindings" :json-name
                                      "totalFindings"))
                                    (:shape-name "AccountStatistics"))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((action-type :target-type string
                                      :member-name "ActionType" :json-name
                                      "actionType")
                                     (aws-api-call-action :target-type
                                      aws-api-call-action :member-name
                                      "AwsApiCallAction" :json-name
                                      "awsApiCallAction")
                                     (dns-request-action :target-type
                                      dns-request-action :member-name
                                      "DnsRequestAction" :json-name
                                      "dnsRequestAction")
                                     (network-connection-action :target-type
                                      network-connection-action :member-name
                                      "NetworkConnectionAction" :json-name
                                      "networkConnectionAction")
                                     (port-probe-action :target-type
                                      port-probe-action :member-name
                                      "PortProbeAction" :json-name
                                      "portProbeAction")
                                     (kubernetes-api-call-action :target-type
                                      kubernetes-api-call-action :member-name
                                      "KubernetesApiCallAction" :json-name
                                      "kubernetesApiCallAction")
                                     (rds-login-attempt-action :target-type
                                      rds-login-attempt-action :member-name
                                      "RdsLoginAttemptAction" :json-name
                                      "rdsLoginAttemptAction")
                                     (kubernetes-permission-checked-details
                                      :target-type
                                      kubernetes-permission-checked-details
                                      :member-name
                                      "KubernetesPermissionCheckedDetails"
                                      :json-name
                                      "kubernetesPermissionCheckedDetails")
                                     (kubernetes-role-binding-details
                                      :target-type
                                      kubernetes-role-binding-details
                                      :member-name
                                      "KubernetesRoleBindingDetails" :json-name
                                      "kubernetesRoleBindingDetails")
                                     (kubernetes-role-details :target-type
                                      kubernetes-role-details :member-name
                                      "KubernetesRoleDetails" :json-name
                                      "kubernetesRoleDetails"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-structure actor common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (user :target-type user :member-name
                                      "User" :json-name "user")
                                     (session :target-type session :member-name
                                      "Session" :json-name "session")
                                     (process :target-type actor-process
                                      :member-name "Process" :json-name
                                      "process"))
                                    (:shape-name "Actor"))

(smithy/sdk/shapes:define-list actor-ids :member string)

(smithy/sdk/shapes:define-structure actor-process common-lisp:nil
                                    ((name :target-type process-name :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (path :target-type process-path :required
                                      common-lisp:t :member-name "Path"
                                      :json-name "path")
                                     (sha256 :target-type process-sha256
                                      :member-name "Sha256" :json-name
                                      "sha256"))
                                    (:shape-name "ActorProcess"))

(smithy/sdk/shapes:define-list actors :member actor)

(smithy/sdk/shapes:define-list additional-sequence-types :member finding-type)

(smithy/sdk/shapes:define-structure addon-details common-lisp:nil
                                    ((addon-version :target-type string
                                      :member-name "AddonVersion" :json-name
                                      "addonVersion")
                                     (addon-status :target-type string
                                      :member-name "AddonStatus" :json-name
                                      "addonStatus"))
                                    (:shape-name "AddonDetails"))

(smithy/sdk/shapes:define-structure admin-account common-lisp:nil
                                    ((admin-account-id :target-type string
                                      :member-name "AdminAccountId" :json-name
                                      "adminAccountId")
                                     (admin-status :target-type admin-status
                                      :member-name "AdminStatus" :json-name
                                      "adminStatus"))
                                    (:shape-name "AdminAccount"))

(smithy/sdk/shapes:define-list admin-accounts :member admin-account)

(smithy/sdk/shapes:define-enum admin-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disable-in-progress "DISABLE_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure administrator common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (invitation-id :target-type string
                                      :member-name "InvitationId" :json-name
                                      "invitationId")
                                     (relationship-status :target-type string
                                      :member-name "RelationshipStatus"
                                      :json-name "relationshipStatus")
                                     (invited-at :target-type string
                                      :member-name "InvitedAt" :json-name
                                      "invitedAt"))
                                    (:shape-name "Administrator"))

(smithy/sdk/shapes:define-map affected-resources :key string :value string)

(smithy/sdk/shapes:define-structure agent-details common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version" :json-name "version"))
                                    (:shape-name "AgentDetails"))

(smithy/sdk/shapes:define-structure anomaly common-lisp:nil
                                    ((profiles :target-type anomaly-profiles
                                      :member-name "Profiles" :json-name
                                      "profiles")
                                     (unusual :target-type anomaly-unusual
                                      :member-name "Unusual" :json-name
                                      "unusual"))
                                    (:shape-name "Anomaly"))

(smithy/sdk/shapes:define-structure anomaly-object common-lisp:nil
                                    ((profile-type :target-type profile-type
                                      :member-name "ProfileType" :json-name
                                      "profileType")
                                     (profile-subtype :target-type
                                      profile-subtype :member-name
                                      "ProfileSubtype" :json-name
                                      "profileSubtype")
                                     (observations :target-type observations
                                      :member-name "Observations" :json-name
                                      "observations"))
                                    (:shape-name "AnomalyObject"))

(smithy/sdk/shapes:define-list anomaly-profile-feature-objects :member
                               anomaly-object)

(smithy/sdk/shapes:define-map anomaly-profile-features :key string :value
                              anomaly-profile-feature-objects)

(smithy/sdk/shapes:define-map anomaly-profiles :key string :value
                              anomaly-profile-features)

(smithy/sdk/shapes:define-structure anomaly-unusual common-lisp:nil
                                    ((behavior :target-type behavior
                                      :member-name "Behavior" :json-name
                                      "behavior"))
                                    (:shape-name "AnomalyUnusual"))

(smithy/sdk/shapes:define-map anomaly-unusual-behavior-feature :key string
                              :value anomaly-object)

(smithy/sdk/shapes:define-input archive-findings-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-ids :target-type finding-ids
                                  :required common-lisp:t :member-name
                                  "FindingIds" :json-name "findingIds"))
                                (:shape-name "ArchiveFindingsRequest"))

(smithy/sdk/shapes:define-output archive-findings-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ArchiveFindingsResponse"))

(smithy/sdk/shapes:define-enum auto-enable-members
    common-lisp:nil
  (:new "NEW")
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure autonomous-system common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (number :target-type integer :required
                                      common-lisp:t :member-name "Number"
                                      :json-name "number"))
                                    (:shape-name "AutonomousSystem"))

(smithy/sdk/shapes:define-structure aws-api-call-action common-lisp:nil
                                    ((api :target-type string :member-name
                                      "Api" :json-name "api")
                                     (caller-type :target-type string
                                      :member-name "CallerType" :json-name
                                      "callerType")
                                     (domain-details :target-type
                                      domain-details :member-name
                                      "DomainDetails" :json-name
                                      "domainDetails")
                                     (error-code :target-type string
                                      :member-name "ErrorCode" :json-name
                                      "errorCode")
                                     (user-agent :target-type string
                                      :member-name "UserAgent" :json-name
                                      "userAgent")
                                     (remote-ip-details :target-type
                                      remote-ip-details :member-name
                                      "RemoteIpDetails" :json-name
                                      "remoteIpDetails")
                                     (service-name :target-type string
                                      :member-name "ServiceName" :json-name
                                      "serviceName")
                                     (remote-account-details :target-type
                                      remote-account-details :member-name
                                      "RemoteAccountDetails" :json-name
                                      "remoteAccountDetails")
                                     (affected-resources :target-type
                                      affected-resources :member-name
                                      "AffectedResources" :json-name
                                      "affectedResources"))
                                    (:shape-name "AwsApiCallAction"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (type :target-type string :member-name "Type"
                                  :json-name "__type"))
                                (:shape-name "BadRequestException")
                                (:error-code 400) (:base-class guardduty-error))

(smithy/sdk/shapes:define-map behavior :key string :value
                              anomaly-unusual-behavior-feature)

(smithy/sdk/shapes:define-structure block-public-access common-lisp:nil
                                    ((ignore-public-acls :target-type boolean
                                      :member-name "IgnorePublicAcls"
                                      :json-name "ignorePublicAcls")
                                     (restrict-public-buckets :target-type
                                      boolean :member-name
                                      "RestrictPublicBuckets" :json-name
                                      "restrictPublicBuckets")
                                     (block-public-acls :target-type boolean
                                      :member-name "BlockPublicAcls" :json-name
                                      "blockPublicAcls")
                                     (block-public-policy :target-type boolean
                                      :member-name "BlockPublicPolicy"
                                      :json-name "blockPublicPolicy"))
                                    (:shape-name "BlockPublicAccess"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bucket-level-permissions common-lisp:nil
                                    ((access-control-list :target-type
                                      access-control-list :member-name
                                      "AccessControlList" :json-name
                                      "accessControlList")
                                     (bucket-policy :target-type bucket-policy
                                      :member-name "BucketPolicy" :json-name
                                      "bucketPolicy")
                                     (block-public-access :target-type
                                      block-public-access :member-name
                                      "BlockPublicAccess" :json-name
                                      "blockPublicAccess"))
                                    (:shape-name "BucketLevelPermissions"))

(smithy/sdk/shapes:define-structure bucket-policy common-lisp:nil
                                    ((allows-public-read-access :target-type
                                      boolean :member-name
                                      "AllowsPublicReadAccess" :json-name
                                      "allowsPublicReadAccess")
                                     (allows-public-write-access :target-type
                                      boolean :member-name
                                      "AllowsPublicWriteAccess" :json-name
                                      "allowsPublicWriteAccess"))
                                    (:shape-name "BucketPolicy"))

(smithy/sdk/shapes:define-structure city common-lisp:nil
                                    ((city-name :target-type string
                                      :member-name "CityName" :json-name
                                      "cityName"))
                                    (:shape-name "City"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-trail-configuration-result
                                    common-lisp:nil
                                    ((status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name
                                     "CloudTrailConfigurationResult"))

(smithy/sdk/shapes:define-enum cluster-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((eq :target-type eq :member-name "Eq"
                                      :json-name "eq")
                                     (neq :target-type neq :member-name "Neq"
                                      :json-name "neq")
                                     (gt :target-type integer :member-name "Gt"
                                      :json-name "gt")
                                     (gte :target-type integer :member-name
                                      "Gte" :json-name "gte")
                                     (lt :target-type integer :member-name "Lt"
                                      :json-name "lt")
                                     (lte :target-type integer :member-name
                                      "Lte" :json-name "lte")
                                     (equals :target-type equals :member-name
                                      "Equals" :json-name "equals")
                                     (not-equals :target-type not-equals
                                      :member-name "NotEquals" :json-name
                                      "notEquals")
                                     (greater-than :target-type long
                                      :member-name "GreaterThan" :json-name
                                      "greaterThan")
                                     (greater-than-or-equal :target-type long
                                      :member-name "GreaterThanOrEqual"
                                      :json-name "greaterThanOrEqual")
                                     (less-than :target-type long :member-name
                                      "LessThan" :json-name "lessThan")
                                     (less-than-or-equal :target-type long
                                      :member-name "LessThanOrEqual" :json-name
                                      "lessThanOrEqual"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (type :target-type string :member-name "Type"
                                  :json-name "__type"))
                                (:shape-name "ConflictException")
                                (:error-code 409) (:base-class guardduty-error))

(smithy/sdk/shapes:define-structure container common-lisp:nil
                                    ((container-runtime :target-type string
                                      :member-name "ContainerRuntime"
                                      :json-name "containerRuntime")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (image :target-type string :member-name
                                      "Image" :json-name "image")
                                     (image-prefix :target-type string
                                      :member-name "ImagePrefix" :json-name
                                      "imagePrefix")
                                     (volume-mounts :target-type volume-mounts
                                      :member-name "VolumeMounts" :json-name
                                      "volumeMounts")
                                     (security-context :target-type
                                      security-context :member-name
                                      "SecurityContext" :json-name
                                      "securityContext"))
                                    (:shape-name "Container"))

(smithy/sdk/shapes:define-structure container-finding-resource common-lisp:nil
                                    ((image :target-type string :required
                                      common-lisp:t :member-name "Image"
                                      :json-name "image")
                                     (image-uid :target-type
                                      container-image-uid :member-name
                                      "ImageUid" :json-name "imageUid"))
                                    (:shape-name "ContainerFindingResource"))

(smithy/sdk/shapes:define-type container-image-uid
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-instance-details common-lisp:nil
                                    ((covered-container-instances :target-type
                                      long :member-name
                                      "CoveredContainerInstances" :json-name
                                      "coveredContainerInstances")
                                     (compatible-container-instances
                                      :target-type long :member-name
                                      "CompatibleContainerInstances" :json-name
                                      "compatibleContainerInstances"))
                                    (:shape-name "ContainerInstanceDetails"))

(smithy/sdk/shapes:define-type container-uid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list container-uids :member container-uid)

(smithy/sdk/shapes:define-list containers :member container)

(smithy/sdk/shapes:define-map count-by-coverage-status :key coverage-status
                              :value long)

(smithy/sdk/shapes:define-map count-by-resource-type :key resource-type :value
                              long)

(smithy/sdk/shapes:define-map count-by-severity :key string :value integer)

(smithy/sdk/shapes:define-structure country common-lisp:nil
                                    ((country-code :target-type string
                                      :member-name "CountryCode" :json-name
                                      "countryCode")
                                     (country-name :target-type string
                                      :member-name "CountryName" :json-name
                                      "countryName"))
                                    (:shape-name "Country"))

(smithy/sdk/shapes:define-structure coverage-ec2instance-details
                                    common-lisp:nil
                                    ((instance-id :target-type string
                                      :member-name "InstanceId" :json-name
                                      "instanceId")
                                     (instance-type :target-type string
                                      :member-name "InstanceType" :json-name
                                      "instanceType")
                                     (cluster-arn :target-type string
                                      :member-name "ClusterArn" :json-name
                                      "clusterArn")
                                     (agent-details :target-type agent-details
                                      :member-name "AgentDetails" :json-name
                                      "agentDetails")
                                     (management-type :target-type
                                      management-type :member-name
                                      "ManagementType" :json-name
                                      "managementType"))
                                    (:shape-name "CoverageEc2InstanceDetails"))

(smithy/sdk/shapes:define-structure coverage-ecs-cluster-details
                                    common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "ClusterName" :json-name
                                      "clusterName")
                                     (fargate-details :target-type
                                      fargate-details :member-name
                                      "FargateDetails" :json-name
                                      "fargateDetails")
                                     (container-instance-details :target-type
                                      container-instance-details :member-name
                                      "ContainerInstanceDetails" :json-name
                                      "containerInstanceDetails"))
                                    (:shape-name "CoverageEcsClusterDetails"))

(smithy/sdk/shapes:define-structure coverage-eks-cluster-details
                                    common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "ClusterName" :json-name
                                      "clusterName")
                                     (covered-nodes :target-type long
                                      :member-name "CoveredNodes" :json-name
                                      "coveredNodes")
                                     (compatible-nodes :target-type long
                                      :member-name "CompatibleNodes" :json-name
                                      "compatibleNodes")
                                     (addon-details :target-type addon-details
                                      :member-name "AddonDetails" :json-name
                                      "addonDetails")
                                     (management-type :target-type
                                      management-type :member-name
                                      "ManagementType" :json-name
                                      "managementType"))
                                    (:shape-name "CoverageEksClusterDetails"))

(smithy/sdk/shapes:define-structure coverage-filter-condition common-lisp:nil
                                    ((equals :target-type equals :member-name
                                      "Equals" :json-name "equals")
                                     (not-equals :target-type not-equals
                                      :member-name "NotEquals" :json-name
                                      "notEquals"))
                                    (:shape-name "CoverageFilterCondition"))

(smithy/sdk/shapes:define-structure coverage-filter-criteria common-lisp:nil
                                    ((filter-criterion :target-type
                                      coverage-filter-criterion-list
                                      :member-name "FilterCriterion" :json-name
                                      "filterCriterion"))
                                    (:shape-name "CoverageFilterCriteria"))

(smithy/sdk/shapes:define-structure coverage-filter-criterion common-lisp:nil
                                    ((criterion-key :target-type
                                      coverage-filter-criterion-key
                                      :member-name "CriterionKey" :json-name
                                      "criterionKey")
                                     (filter-condition :target-type
                                      coverage-filter-condition :member-name
                                      "FilterCondition" :json-name
                                      "filterCondition"))
                                    (:shape-name "CoverageFilterCriterion"))

(smithy/sdk/shapes:define-enum coverage-filter-criterion-key
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:cluster-name "CLUSTER_NAME")
  (:resource-type "RESOURCE_TYPE")
  (:coverage-status "COVERAGE_STATUS")
  (:addon-version "ADDON_VERSION")
  (:management-type "MANAGEMENT_TYPE")
  (:eks-cluster-name "EKS_CLUSTER_NAME")
  (:ecs-cluster-name "ECS_CLUSTER_NAME")
  (:agent-version "AGENT_VERSION")
  (:instance-id "INSTANCE_ID")
  (:cluster-arn "CLUSTER_ARN"))

(smithy/sdk/shapes:define-list coverage-filter-criterion-list :member
                               coverage-filter-criterion)

(smithy/sdk/shapes:define-structure coverage-resource common-lisp:nil
                                    ((resource-id :target-type string
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (detector-id :target-type detector-id
                                      :member-name "DetectorId" :json-name
                                      "detectorId")
                                     (account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (resource-details :target-type
                                      coverage-resource-details :member-name
                                      "ResourceDetails" :json-name
                                      "resourceDetails")
                                     (coverage-status :target-type
                                      coverage-status :member-name
                                      "CoverageStatus" :json-name
                                      "coverageStatus")
                                     (issue :target-type string :member-name
                                      "Issue" :json-name "issue")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt" :json-name
                                      "updatedAt"))
                                    (:shape-name "CoverageResource"))

(smithy/sdk/shapes:define-structure coverage-resource-details common-lisp:nil
                                    ((eks-cluster-details :target-type
                                      coverage-eks-cluster-details :member-name
                                      "EksClusterDetails" :json-name
                                      "eksClusterDetails")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType" :json-name
                                      "resourceType")
                                     (ecs-cluster-details :target-type
                                      coverage-ecs-cluster-details :member-name
                                      "EcsClusterDetails" :json-name
                                      "ecsClusterDetails")
                                     (ec2instance-details :target-type
                                      coverage-ec2instance-details :member-name
                                      "Ec2InstanceDetails" :json-name
                                      "ec2InstanceDetails"))
                                    (:shape-name "CoverageResourceDetails"))

(smithy/sdk/shapes:define-list coverage-resources :member coverage-resource)

(smithy/sdk/shapes:define-structure coverage-sort-criteria common-lisp:nil
                                    ((attribute-name :target-type
                                      coverage-sort-key :member-name
                                      "AttributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "OrderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "CoverageSortCriteria"))

(smithy/sdk/shapes:define-enum coverage-sort-key
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:cluster-name "CLUSTER_NAME")
  (:coverage-status "COVERAGE_STATUS")
  (:issue "ISSUE")
  (:addon-version "ADDON_VERSION")
  (:updated-at "UPDATED_AT")
  (:eks-cluster-name "EKS_CLUSTER_NAME")
  (:ecs-cluster-name "ECS_CLUSTER_NAME")
  (:instance-id "INSTANCE_ID"))

(smithy/sdk/shapes:define-structure coverage-statistics common-lisp:nil
                                    ((count-by-resource-type :target-type
                                      count-by-resource-type :member-name
                                      "CountByResourceType" :json-name
                                      "countByResourceType")
                                     (count-by-coverage-status :target-type
                                      count-by-coverage-status :member-name
                                      "CountByCoverageStatus" :json-name
                                      "countByCoverageStatus"))
                                    (:shape-name "CoverageStatistics"))

(smithy/sdk/shapes:define-enum coverage-statistics-type
    common-lisp:nil
  (:count-by-resource-type "COUNT_BY_RESOURCE_TYPE")
  (:count-by-coverage-status "COUNT_BY_COVERAGE_STATUS"))

(smithy/sdk/shapes:define-list coverage-statistics-type-list :member
                               coverage-statistics-type)

(smithy/sdk/shapes:define-enum coverage-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-input create-detector-request common-lisp:nil
                                ((enable :target-type boolean :required
                                  common-lisp:t :member-name "Enable"
                                  :json-name "enable")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :json-name
                                  "clientToken")
                                 (finding-publishing-frequency :target-type
                                  finding-publishing-frequency :member-name
                                  "FindingPublishingFrequency" :json-name
                                  "findingPublishingFrequency")
                                 (data-sources :target-type
                                  data-source-configurations :member-name
                                  "DataSources" :json-name "dataSources")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (features :target-type
                                  detector-feature-configurations :member-name
                                  "Features" :json-name "features"))
                                (:shape-name "CreateDetectorRequest"))

(smithy/sdk/shapes:define-output create-detector-response common-lisp:nil
                                 ((detector-id :target-type detector-id
                                   :member-name "DetectorId" :json-name
                                   "detectorId")
                                  (unprocessed-data-sources :target-type
                                   unprocessed-data-sources-result :member-name
                                   "UnprocessedDataSources" :json-name
                                   "unprocessedDataSources"))
                                 (:shape-name "CreateDetectorResponse"))

(smithy/sdk/shapes:define-input create-filter-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (name :target-type filter-name :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (description :target-type filter-description
                                  :member-name "Description" :json-name
                                  "description")
                                 (action :target-type filter-action
                                  :member-name "Action" :json-name "action")
                                 (rank :target-type filter-rank :member-name
                                  "Rank" :json-name "rank")
                                 (finding-criteria :target-type
                                  finding-criteria :required common-lisp:t
                                  :member-name "FindingCriteria" :json-name
                                  "findingCriteria")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :json-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateFilterRequest"))

(smithy/sdk/shapes:define-output create-filter-response common-lisp:nil
                                 ((name :target-type filter-name :required
                                   common-lisp:t :member-name "Name" :json-name
                                   "name"))
                                 (:shape-name "CreateFilterResponse"))

(smithy/sdk/shapes:define-input create-ipset-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (format :target-type ip-set-format :required
                                  common-lisp:t :member-name "Format"
                                  :json-name "format")
                                 (location :target-type location :required
                                  common-lisp:t :member-name "Location"
                                  :json-name "location")
                                 (activate :target-type boolean :required
                                  common-lisp:t :member-name "Activate"
                                  :json-name "activate")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :json-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner" :json-name
                                  "expectedBucketOwner"))
                                (:shape-name "CreateIPSetRequest"))

(smithy/sdk/shapes:define-output create-ipset-response common-lisp:nil
                                 ((ip-set-id :target-type string :required
                                   common-lisp:t :member-name "IpSetId"
                                   :json-name "ipSetId"))
                                 (:shape-name "CreateIPSetResponse"))

(smithy/sdk/shapes:define-input create-malware-protection-plan-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken" :json-name
                                  "clientToken")
                                 (role :target-type string :required
                                  common-lisp:t :member-name "Role" :json-name
                                  "role")
                                 (protected-resource :target-type
                                  create-protected-resource :required
                                  common-lisp:t :member-name
                                  "ProtectedResource" :json-name
                                  "protectedResource")
                                 (actions :target-type
                                  malware-protection-plan-actions :member-name
                                  "Actions" :json-name "actions")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name
                                 "CreateMalwareProtectionPlanRequest"))

(smithy/sdk/shapes:define-output create-malware-protection-plan-response
                                 common-lisp:nil
                                 ((malware-protection-plan-id :target-type
                                   string :member-name
                                   "MalwareProtectionPlanId" :json-name
                                   "malwareProtectionPlanId"))
                                 (:shape-name
                                  "CreateMalwareProtectionPlanResponse"))

(smithy/sdk/shapes:define-input create-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-details :target-type account-details
                                  :required common-lisp:t :member-name
                                  "AccountDetails" :json-name
                                  "accountDetails"))
                                (:shape-name "CreateMembersRequest"))

(smithy/sdk/shapes:define-output create-members-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "CreateMembersResponse"))

(smithy/sdk/shapes:define-structure create-protected-resource common-lisp:nil
                                    ((s3bucket :target-type
                                      create-s3bucket-resource :member-name
                                      "S3Bucket" :json-name "s3Bucket"))
                                    (:shape-name "CreateProtectedResource"))

(smithy/sdk/shapes:define-input create-publishing-destination-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (destination-type :target-type
                                  destination-type :required common-lisp:t
                                  :member-name "DestinationType" :json-name
                                  "destinationType")
                                 (destination-properties :target-type
                                  destination-properties :required
                                  common-lisp:t :member-name
                                  "DestinationProperties" :json-name
                                  "destinationProperties")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :json-name
                                  "clientToken"))
                                (:shape-name
                                 "CreatePublishingDestinationRequest"))

(smithy/sdk/shapes:define-output create-publishing-destination-response
                                 common-lisp:nil
                                 ((destination-id :target-type string :required
                                   common-lisp:t :member-name "DestinationId"
                                   :json-name "destinationId"))
                                 (:shape-name
                                  "CreatePublishingDestinationResponse"))

(smithy/sdk/shapes:define-structure create-s3bucket-resource common-lisp:nil
                                    ((bucket-name :target-type string
                                      :member-name "BucketName" :json-name
                                      "bucketName")
                                     (object-prefixes :target-type
                                      malware-protection-plan-object-prefixes-list
                                      :member-name "ObjectPrefixes" :json-name
                                      "objectPrefixes"))
                                    (:shape-name "CreateS3BucketResource"))

(smithy/sdk/shapes:define-input create-sample-findings-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-types :target-type finding-types
                                  :member-name "FindingTypes" :json-name
                                  "findingTypes"))
                                (:shape-name "CreateSampleFindingsRequest"))

(smithy/sdk/shapes:define-output create-sample-findings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateSampleFindingsResponse"))

(smithy/sdk/shapes:define-input create-threat-intel-set-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (format :target-type threat-intel-set-format
                                  :required common-lisp:t :member-name "Format"
                                  :json-name "format")
                                 (location :target-type location :required
                                  common-lisp:t :member-name "Location"
                                  :json-name "location")
                                 (activate :target-type boolean :required
                                  common-lisp:t :member-name "Activate"
                                  :json-name "activate")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :json-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name "Tags"
                                  :json-name "tags")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner" :json-name
                                  "expectedBucketOwner"))
                                (:shape-name "CreateThreatIntelSetRequest"))

(smithy/sdk/shapes:define-output create-threat-intel-set-response
                                 common-lisp:nil
                                 ((threat-intel-set-id :target-type string
                                   :required common-lisp:t :member-name
                                   "ThreatIntelSetId" :json-name
                                   "threatIntelSetId"))
                                 (:shape-name "CreateThreatIntelSetResponse"))

(smithy/sdk/shapes:define-map criterion :key string :value condition)

(smithy/sdk/shapes:define-enum criterion-key
    common-lisp:nil
  (:ec2-instance-arn "EC2_INSTANCE_ARN")
  (:scan-id "SCAN_ID")
  (:account-id "ACCOUNT_ID")
  (:guardduty-finding-id "GUARDDUTY_FINDING_ID")
  (:scan-start-time "SCAN_START_TIME")
  (:scan-status "SCAN_STATUS")
  (:scan-type "SCAN_TYPE"))

(smithy/sdk/shapes:define-structure dnslogs-configuration-result
                                    common-lisp:nil
                                    ((status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "DNSLogsConfigurationResult"))

(smithy/sdk/shapes:define-enum data-source
    common-lisp:nil
  (:flow-logs "FLOW_LOGS")
  (:cloud-trail "CLOUD_TRAIL")
  (:dns-logs "DNS_LOGS")
  (:s3-logs "S3_LOGS")
  (:kubernetes-audit-logs "KUBERNETES_AUDIT_LOGS")
  (:ec2-malware-scan "EC2_MALWARE_SCAN"))

(smithy/sdk/shapes:define-structure data-source-configurations common-lisp:nil
                                    ((s3logs :target-type s3logs-configuration
                                      :member-name "S3Logs" :json-name
                                      "s3Logs")
                                     (kubernetes :target-type
                                      kubernetes-configuration :member-name
                                      "Kubernetes" :json-name "kubernetes")
                                     (malware-protection :target-type
                                      malware-protection-configuration
                                      :member-name "MalwareProtection"
                                      :json-name "malwareProtection"))
                                    (:shape-name "DataSourceConfigurations"))

(smithy/sdk/shapes:define-structure data-source-configurations-result
                                    common-lisp:nil
                                    ((cloud-trail :target-type
                                      cloud-trail-configuration-result
                                      :required common-lisp:t :member-name
                                      "CloudTrail" :json-name "cloudTrail")
                                     (dnslogs :target-type
                                      dnslogs-configuration-result :required
                                      common-lisp:t :member-name "DNSLogs"
                                      :json-name "dnsLogs")
                                     (flow-logs :target-type
                                      flow-logs-configuration-result :required
                                      common-lisp:t :member-name "FlowLogs"
                                      :json-name "flowLogs")
                                     (s3logs :target-type
                                      s3logs-configuration-result :required
                                      common-lisp:t :member-name "S3Logs"
                                      :json-name "s3Logs")
                                     (kubernetes :target-type
                                      kubernetes-configuration-result
                                      :member-name "Kubernetes" :json-name
                                      "kubernetes")
                                     (malware-protection :target-type
                                      malware-protection-configuration-result
                                      :member-name "MalwareProtection"
                                      :json-name "malwareProtection"))
                                    (:shape-name
                                     "DataSourceConfigurationsResult"))

(smithy/sdk/shapes:define-structure data-source-free-trial common-lisp:nil
                                    ((free-trial-days-remaining :target-type
                                      integer :member-name
                                      "FreeTrialDaysRemaining" :json-name
                                      "freeTrialDaysRemaining"))
                                    (:shape-name "DataSourceFreeTrial"))

(smithy/sdk/shapes:define-list data-source-list :member data-source)

(smithy/sdk/shapes:define-enum data-source-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure data-sources-free-trial common-lisp:nil
                                    ((cloud-trail :target-type
                                      data-source-free-trial :member-name
                                      "CloudTrail" :json-name "cloudTrail")
                                     (dns-logs :target-type
                                      data-source-free-trial :member-name
                                      "DnsLogs" :json-name "dnsLogs")
                                     (flow-logs :target-type
                                      data-source-free-trial :member-name
                                      "FlowLogs" :json-name "flowLogs")
                                     (s3logs :target-type
                                      data-source-free-trial :member-name
                                      "S3Logs" :json-name "s3Logs")
                                     (kubernetes :target-type
                                      kubernetes-data-source-free-trial
                                      :member-name "Kubernetes" :json-name
                                      "kubernetes")
                                     (malware-protection :target-type
                                      malware-protection-data-source-free-trial
                                      :member-name "MalwareProtection"
                                      :json-name "malwareProtection"))
                                    (:shape-name "DataSourcesFreeTrial"))

(smithy/sdk/shapes:define-structure date-statistics common-lisp:nil
                                    ((date :target-type timestamp :member-name
                                      "Date" :json-name "date")
                                     (last-generated-at :target-type timestamp
                                      :member-name "LastGeneratedAt" :json-name
                                      "lastGeneratedAt")
                                     (severity :target-type double :member-name
                                      "Severity" :json-name "severity")
                                     (total-findings :target-type integer
                                      :member-name "TotalFindings" :json-name
                                      "totalFindings"))
                                    (:shape-name "DateStatistics"))

(smithy/sdk/shapes:define-input decline-invitations-request common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "DeclineInvitationsRequest"))

(smithy/sdk/shapes:define-output decline-invitations-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "DeclineInvitationsResponse"))

(smithy/sdk/shapes:define-structure default-server-side-encryption
                                    common-lisp:nil
                                    ((encryption-type :target-type string
                                      :member-name "EncryptionType" :json-name
                                      "encryptionType")
                                     (kms-master-key-arn :target-type string
                                      :member-name "KmsMasterKeyArn" :json-name
                                      "kmsMasterKeyArn"))
                                    (:shape-name "DefaultServerSideEncryption"))

(smithy/sdk/shapes:define-input delete-detector-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name "DeleteDetectorRequest"))

(smithy/sdk/shapes:define-output delete-detector-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDetectorResponse"))

(smithy/sdk/shapes:define-input delete-filter-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (filter-name :target-type string :required
                                  common-lisp:t :member-name "FilterName"
                                  :http-label common-lisp:t :json-name
                                  "filterName"))
                                (:shape-name "DeleteFilterRequest"))

(smithy/sdk/shapes:define-output delete-filter-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFilterResponse"))

(smithy/sdk/shapes:define-input delete-ipset-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (ip-set-id :target-type string :required
                                  common-lisp:t :member-name "IpSetId"
                                  :http-label common-lisp:t :json-name
                                  "ipSetId"))
                                (:shape-name "DeleteIPSetRequest"))

(smithy/sdk/shapes:define-output delete-ipset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIPSetResponse"))

(smithy/sdk/shapes:define-input delete-invitations-request common-lisp:nil
                                ((account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "DeleteInvitationsRequest"))

(smithy/sdk/shapes:define-output delete-invitations-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "DeleteInvitationsResponse"))

(smithy/sdk/shapes:define-input delete-malware-protection-plan-request
                                common-lisp:nil
                                ((malware-protection-plan-id :target-type
                                  string :required common-lisp:t :member-name
                                  "MalwareProtectionPlanId" :http-label
                                  common-lisp:t :json-name
                                  "malwareProtectionPlanId"))
                                (:shape-name
                                 "DeleteMalwareProtectionPlanRequest"))

(smithy/sdk/shapes:define-input delete-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "DeleteMembersRequest"))

(smithy/sdk/shapes:define-output delete-members-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "DeleteMembersResponse"))

(smithy/sdk/shapes:define-input delete-publishing-destination-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (destination-id :target-type string :required
                                  common-lisp:t :member-name "DestinationId"
                                  :http-label common-lisp:t :json-name
                                  "destinationId"))
                                (:shape-name
                                 "DeletePublishingDestinationRequest"))

(smithy/sdk/shapes:define-output delete-publishing-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeletePublishingDestinationResponse"))

(smithy/sdk/shapes:define-input delete-threat-intel-set-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (threat-intel-set-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ThreatIntelSetId" :http-label common-lisp:t
                                  :json-name "threatIntelSetId"))
                                (:shape-name "DeleteThreatIntelSetRequest"))

(smithy/sdk/shapes:define-output delete-threat-intel-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteThreatIntelSetResponse"))

(smithy/sdk/shapes:define-input describe-malware-scans-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken")
                                 (max-results :target-type
                                  integer-value-with-max :member-name
                                  "MaxResults" :json-name "maxResults")
                                 (filter-criteria :target-type filter-criteria
                                  :member-name "FilterCriteria" :json-name
                                  "filterCriteria")
                                 (sort-criteria :target-type sort-criteria
                                  :member-name "SortCriteria" :json-name
                                  "sortCriteria"))
                                (:shape-name "DescribeMalwareScansRequest"))

(smithy/sdk/shapes:define-output describe-malware-scans-response
                                 common-lisp:nil
                                 ((scans :target-type scans :required
                                   common-lisp:t :member-name "Scans"
                                   :json-name "scans")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "DescribeMalwareScansResponse"))

(smithy/sdk/shapes:define-input describe-organization-configuration-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name
                                 "DescribeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-organization-configuration-response
                                 common-lisp:nil
                                 ((auto-enable :target-type boolean
                                   :member-name "AutoEnable" :json-name
                                   "autoEnable")
                                  (member-account-limit-reached :target-type
                                   boolean :required common-lisp:t :member-name
                                   "MemberAccountLimitReached" :json-name
                                   "memberAccountLimitReached")
                                  (data-sources :target-type
                                   organization-data-source-configurations-result
                                   :member-name "DataSources" :json-name
                                   "dataSources")
                                  (features :target-type
                                   organization-features-configurations-results
                                   :member-name "Features" :json-name
                                   "features")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (auto-enable-organization-members
                                   :target-type auto-enable-members
                                   :member-name "AutoEnableOrganizationMembers"
                                   :json-name "autoEnableOrganizationMembers"))
                                 (:shape-name
                                  "DescribeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-publishing-destination-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (destination-id :target-type string :required
                                  common-lisp:t :member-name "DestinationId"
                                  :http-label common-lisp:t :json-name
                                  "destinationId"))
                                (:shape-name
                                 "DescribePublishingDestinationRequest"))

(smithy/sdk/shapes:define-output describe-publishing-destination-response
                                 common-lisp:nil
                                 ((destination-id :target-type string :required
                                   common-lisp:t :member-name "DestinationId"
                                   :json-name "destinationId")
                                  (destination-type :target-type
                                   destination-type :required common-lisp:t
                                   :member-name "DestinationType" :json-name
                                   "destinationType")
                                  (status :target-type publishing-status
                                   :required common-lisp:t :member-name
                                   "Status" :json-name "status")
                                  (publishing-failure-start-timestamp
                                   :target-type long :required common-lisp:t
                                   :member-name
                                   "PublishingFailureStartTimestamp" :json-name
                                   "publishingFailureStartTimestamp")
                                  (destination-properties :target-type
                                   destination-properties :required
                                   common-lisp:t :member-name
                                   "DestinationProperties" :json-name
                                   "destinationProperties"))
                                 (:shape-name
                                  "DescribePublishingDestinationResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((destination-id :target-type string
                                      :required common-lisp:t :member-name
                                      "DestinationId" :json-name
                                      "destinationId")
                                     (destination-type :target-type
                                      destination-type :required common-lisp:t
                                      :member-name "DestinationType" :json-name
                                      "destinationType")
                                     (status :target-type publishing-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure destination-properties common-lisp:nil
                                    ((destination-arn :target-type string
                                      :member-name "DestinationArn" :json-name
                                      "destinationArn")
                                     (kms-key-arn :target-type string
                                      :member-name "KmsKeyArn" :json-name
                                      "kmsKeyArn"))
                                    (:shape-name "DestinationProperties"))

(smithy/sdk/shapes:define-enum destination-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-list destinations :member destination)

(smithy/sdk/shapes:define-structure detection common-lisp:nil
                                    ((anomaly :target-type anomaly :member-name
                                      "Anomaly" :json-name "anomaly")
                                     (sequence :target-type sequence
                                      :member-name "Sequence" :json-name
                                      "sequence"))
                                    (:shape-name "Detection"))

(smithy/sdk/shapes:define-structure detector-additional-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      feature-additional-configuration
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status"))
                                    (:shape-name
                                     "DetectorAdditionalConfiguration"))

(smithy/sdk/shapes:define-structure detector-additional-configuration-result
                                    common-lisp:nil
                                    ((name :target-type
                                      feature-additional-configuration
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt" :json-name
                                      "updatedAt"))
                                    (:shape-name
                                     "DetectorAdditionalConfigurationResult"))

(smithy/sdk/shapes:define-list detector-additional-configuration-results
                               :member detector-additional-configuration-result)

(smithy/sdk/shapes:define-list detector-additional-configurations :member
                               detector-additional-configuration)

(smithy/sdk/shapes:define-enum detector-feature
    common-lisp:nil
  (:s3-data-events "S3_DATA_EVENTS")
  (:eks-audit-logs "EKS_AUDIT_LOGS")
  (:ebs-malware-protection "EBS_MALWARE_PROTECTION")
  (:rds-login-events "RDS_LOGIN_EVENTS")
  (:eks-runtime-monitoring "EKS_RUNTIME_MONITORING")
  (:lambda-network-logs "LAMBDA_NETWORK_LOGS")
  (:runtime-monitoring "RUNTIME_MONITORING"))

(smithy/sdk/shapes:define-structure detector-feature-configuration
                                    common-lisp:nil
                                    ((name :target-type detector-feature
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (additional-configuration :target-type
                                      detector-additional-configurations
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name
                                     "DetectorFeatureConfiguration"))

(smithy/sdk/shapes:define-structure detector-feature-configuration-result
                                    common-lisp:nil
                                    ((name :target-type detector-feature-result
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt" :json-name
                                      "updatedAt")
                                     (additional-configuration :target-type
                                      detector-additional-configuration-results
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name
                                     "DetectorFeatureConfigurationResult"))

(smithy/sdk/shapes:define-list detector-feature-configurations :member
                               detector-feature-configuration)

(smithy/sdk/shapes:define-list detector-feature-configurations-results :member
                               detector-feature-configuration-result)

(smithy/sdk/shapes:define-enum detector-feature-result
    common-lisp:nil
  (:flow-logs "FLOW_LOGS")
  (:cloud-trail "CLOUD_TRAIL")
  (:dns-logs "DNS_LOGS")
  (:s3-data-events "S3_DATA_EVENTS")
  (:eks-audit-logs "EKS_AUDIT_LOGS")
  (:ebs-malware-protection "EBS_MALWARE_PROTECTION")
  (:rds-login-events "RDS_LOGIN_EVENTS")
  (:eks-runtime-monitoring "EKS_RUNTIME_MONITORING")
  (:lambda-network-logs "LAMBDA_NETWORK_LOGS")
  (:runtime-monitoring "RUNTIME_MONITORING"))

(smithy/sdk/shapes:define-type detector-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list detector-ids :member detector-id)

(smithy/sdk/shapes:define-enum detector-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input disable-organization-admin-account-request
                                common-lisp:nil
                                ((admin-account-id :target-type string
                                  :required common-lisp:t :member-name
                                  "AdminAccountId" :json-name
                                  "adminAccountId"))
                                (:shape-name
                                 "DisableOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output disable-organization-admin-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisableOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-input disassociate-from-administrator-account-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name
                                 "DisassociateFromAdministratorAccountRequest"))

(smithy/sdk/shapes:define-output
 disassociate-from-administrator-account-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateFromAdministratorAccountResponse"))

(smithy/sdk/shapes:define-input disassociate-from-master-account-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name
                                 "DisassociateFromMasterAccountRequest"))

(smithy/sdk/shapes:define-output disassociate-from-master-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateFromMasterAccountResponse"))

(smithy/sdk/shapes:define-input disassociate-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "DisassociateMembersRequest"))

(smithy/sdk/shapes:define-output disassociate-members-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "DisassociateMembersResponse"))

(smithy/sdk/shapes:define-structure dns-request-action common-lisp:nil
                                    ((domain :target-type string :member-name
                                      "Domain" :json-name "domain")
                                     (protocol :target-type string :member-name
                                      "Protocol" :json-name "protocol")
                                     (blocked :target-type boolean :member-name
                                      "Blocked" :json-name "blocked")
                                     (domain-with-suffix :target-type string
                                      :member-name "DomainWithSuffix"
                                      :json-name "domainWithSuffix"))
                                    (:shape-name "DnsRequestAction"))

(smithy/sdk/shapes:define-structure domain-details common-lisp:nil
                                    ((domain :target-type string :member-name
                                      "Domain" :json-name "domain"))
                                    (:shape-name "DomainDetails"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum ebs-snapshot-preservation
    common-lisp:nil
  (:no-retention "NO_RETENTION")
  (:retention-with-finding "RETENTION_WITH_FINDING"))

(smithy/sdk/shapes:define-structure ebs-volume-details common-lisp:nil
                                    ((scanned-volume-details :target-type
                                      volume-details :member-name
                                      "ScannedVolumeDetails" :json-name
                                      "scannedVolumeDetails")
                                     (skipped-volume-details :target-type
                                      volume-details :member-name
                                      "SkippedVolumeDetails" :json-name
                                      "skippedVolumeDetails"))
                                    (:shape-name "EbsVolumeDetails"))

(smithy/sdk/shapes:define-structure ebs-volume-scan-details common-lisp:nil
                                    ((scan-id :target-type string :member-name
                                      "ScanId" :json-name "scanId")
                                     (scan-started-at :target-type timestamp
                                      :member-name "ScanStartedAt" :json-name
                                      "scanStartedAt")
                                     (scan-completed-at :target-type timestamp
                                      :member-name "ScanCompletedAt" :json-name
                                      "scanCompletedAt")
                                     (trigger-finding-id :target-type string
                                      :member-name "TriggerFindingId"
                                      :json-name "triggerFindingId")
                                     (sources :target-type sources :member-name
                                      "Sources" :json-name "sources")
                                     (scan-detections :target-type
                                      scan-detections :member-name
                                      "ScanDetections" :json-name
                                      "scanDetections")
                                     (scan-type :target-type scan-type
                                      :member-name "ScanType" :json-name
                                      "scanType"))
                                    (:shape-name "EbsVolumeScanDetails"))

(smithy/sdk/shapes:define-structure ebs-volumes-result common-lisp:nil
                                    ((status :target-type data-source-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (reason :target-type string :member-name
                                      "Reason" :json-name "reason"))
                                    (:shape-name "EbsVolumesResult"))

(smithy/sdk/shapes:define-structure ec2instance common-lisp:nil
                                    ((availability-zone :target-type string
                                      :member-name "AvailabilityZone"
                                      :json-name "availabilityZone")
                                     (image-description :target-type string
                                      :member-name "ImageDescription"
                                      :json-name "imageDescription")
                                     (instance-state :target-type string
                                      :member-name "InstanceState" :json-name
                                      "instanceState")
                                     (iam-instance-profile :target-type
                                      iam-instance-profile :member-name
                                      "IamInstanceProfile")
                                     (instance-type :target-type string
                                      :member-name "InstanceType" :json-name
                                      "instanceType")
                                     (outpost-arn :target-type string
                                      :member-name "OutpostArn" :json-name
                                      "outpostArn")
                                     (platform :target-type string :member-name
                                      "Platform" :json-name "platform")
                                     (product-codes :target-type product-codes
                                      :member-name "ProductCodes" :json-name
                                      "productCodes")
                                     (ec2network-interface-uids :target-type
                                      ec2network-interface-uids :member-name
                                      "Ec2NetworkInterfaceUids" :json-name
                                      "ec2NetworkInterfaceUids"))
                                    (:shape-name "Ec2Instance"))

(smithy/sdk/shapes:define-type ec2instance-uid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ec2instance-uids :member ec2instance-uid)

(smithy/sdk/shapes:define-structure ec2network-interface common-lisp:nil
                                    ((ipv6addresses :target-type ipv6addresses
                                      :member-name "Ipv6Addresses" :json-name
                                      "ipv6Addresses")
                                     (private-ip-addresses :target-type
                                      private-ip-addresses :member-name
                                      "PrivateIpAddresses" :json-name
                                      "privateIpAddresses")
                                     (public-ip :target-type string
                                      :member-name "PublicIp" :json-name
                                      "publicIp")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups" :json-name
                                      "securityGroups")
                                     (sub-net-id :target-type string
                                      :member-name "SubNetId" :json-name
                                      "subNetId")
                                     (vpc-id :target-type string :member-name
                                      "VpcId" :json-name "vpcId"))
                                    (:shape-name "Ec2NetworkInterface"))

(smithy/sdk/shapes:define-list ec2network-interface-uids :member string)

(smithy/sdk/shapes:define-structure ecs-cluster-details common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (status :target-type string :member-name
                                      "Status" :json-name "status")
                                     (active-services-count :target-type
                                      integer :member-name
                                      "ActiveServicesCount" :json-name
                                      "activeServicesCount")
                                     (registered-container-instances-count
                                      :target-type integer :member-name
                                      "RegisteredContainerInstancesCount"
                                      :json-name
                                      "registeredContainerInstancesCount")
                                     (running-tasks-count :target-type integer
                                      :member-name "RunningTasksCount"
                                      :json-name "runningTasksCount")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (task-details :target-type
                                      ecs-task-details :member-name
                                      "TaskDetails" :json-name "taskDetails"))
                                    (:shape-name "EcsClusterDetails"))

(smithy/sdk/shapes:define-structure ecs-task-details common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (definition-arn :target-type string
                                      :member-name "DefinitionArn" :json-name
                                      "definitionArn")
                                     (version :target-type string :member-name
                                      "Version" :json-name "version")
                                     (task-created-at :target-type timestamp
                                      :member-name "TaskCreatedAt" :json-name
                                      "createdAt")
                                     (started-at :target-type timestamp
                                      :member-name "StartedAt" :json-name
                                      "startedAt")
                                     (started-by :target-type string
                                      :member-name "StartedBy" :json-name
                                      "startedBy")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (volumes :target-type volumes :member-name
                                      "Volumes" :json-name "volumes")
                                     (containers :target-type containers
                                      :member-name "Containers" :json-name
                                      "containers")
                                     (group :target-type string :member-name
                                      "Group" :json-name "group")
                                     (launch-type :target-type string
                                      :member-name "LaunchType" :json-name
                                      "launchType"))
                                    (:shape-name "EcsTaskDetails"))

(smithy/sdk/shapes:define-structure eks-cluster common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (status :target-type cluster-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (vpc-id :target-type string :member-name
                                      "VpcId" :json-name "vpcId")
                                     (ec2instance-uids :target-type
                                      ec2instance-uids :member-name
                                      "Ec2InstanceUids" :json-name
                                      "ec2InstanceUids"))
                                    (:shape-name "EksCluster"))

(smithy/sdk/shapes:define-structure eks-cluster-details common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (vpc-id :target-type string :member-name
                                      "VpcId" :json-name "vpcId")
                                     (status :target-type string :member-name
                                      "Status" :json-name "status")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt" :json-name
                                      "createdAt"))
                                    (:shape-name "EksClusterDetails"))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-organization-admin-account-request
                                common-lisp:nil
                                ((admin-account-id :target-type string
                                  :required common-lisp:t :member-name
                                  "AdminAccountId" :json-name
                                  "adminAccountId"))
                                (:shape-name
                                 "EnableOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output enable-organization-admin-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "EnableOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-list endpoint-ids :member string)

(smithy/sdk/shapes:define-list eq :member string)

(smithy/sdk/shapes:define-list equals :member string)

(smithy/sdk/shapes:define-structure evidence common-lisp:nil
                                    ((threat-intelligence-details :target-type
                                      threat-intelligence-details :member-name
                                      "ThreatIntelligenceDetails" :json-name
                                      "threatIntelligenceDetails"))
                                    (:shape-name "Evidence"))

(smithy/sdk/shapes:define-structure fargate-details common-lisp:nil
                                    ((issues :target-type issues :member-name
                                      "Issues" :json-name "issues")
                                     (management-type :target-type
                                      management-type :member-name
                                      "ManagementType" :json-name
                                      "managementType"))
                                    (:shape-name "FargateDetails"))

(smithy/sdk/shapes:define-enum feature-additional-configuration
    common-lisp:nil
  (:eks-addon-management "EKS_ADDON_MANAGEMENT")
  (:ecs-fargate-agent-management "ECS_FARGATE_AGENT_MANAGEMENT")
  (:ec2-agent-management "EC2_AGENT_MANAGEMENT"))

(smithy/sdk/shapes:define-enum feature-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum feedback
    common-lisp:nil
  (:useful "USEFUL")
  (:not-useful "NOT_USEFUL"))

(smithy/sdk/shapes:define-list file-paths :member scan-file-path)

(smithy/sdk/shapes:define-enum filter-action
    common-lisp:nil
  (:noop "NOOP")
  (:archive "ARCHIVE"))

(smithy/sdk/shapes:define-structure filter-condition common-lisp:nil
                                    ((equals-value :target-type
                                      non-empty-string :member-name
                                      "EqualsValue" :json-name "equalsValue")
                                     (greater-than :target-type long-value
                                      :member-name "GreaterThan" :json-name
                                      "greaterThan")
                                     (less-than :target-type long-value
                                      :member-name "LessThan" :json-name
                                      "lessThan"))
                                    (:shape-name "FilterCondition"))

(smithy/sdk/shapes:define-structure filter-criteria common-lisp:nil
                                    ((filter-criterion :target-type
                                      filter-criterion-list :member-name
                                      "FilterCriterion" :json-name
                                      "filterCriterion"))
                                    (:shape-name "FilterCriteria"))

(smithy/sdk/shapes:define-structure filter-criterion common-lisp:nil
                                    ((criterion-key :target-type criterion-key
                                      :member-name "CriterionKey" :json-name
                                      "criterionKey")
                                     (filter-condition :target-type
                                      filter-condition :member-name
                                      "FilterCondition" :json-name
                                      "filterCondition"))
                                    (:shape-name "FilterCriterion"))

(smithy/sdk/shapes:define-list filter-criterion-list :member filter-criterion)

(smithy/sdk/shapes:define-type filter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-names :member filter-name)

(smithy/sdk/shapes:define-type filter-rank smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((account-id :target-type string :required
                                      common-lisp:t :member-name "AccountId"
                                      :json-name "accountId")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn"
                                      :json-name "arn")
                                     (confidence :target-type double
                                      :member-name "Confidence" :json-name
                                      "confidence")
                                     (created-at :target-type string :required
                                      common-lisp:t :member-name "CreatedAt"
                                      :json-name "createdAt")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (partition :target-type string
                                      :member-name "Partition" :json-name
                                      "partition")
                                     (region :target-type string :required
                                      common-lisp:t :member-name "Region"
                                      :json-name "region")
                                     (resource :target-type resource :required
                                      common-lisp:t :member-name "Resource"
                                      :json-name "resource")
                                     (schema-version :target-type string
                                      :required common-lisp:t :member-name
                                      "SchemaVersion" :json-name
                                      "schemaVersion")
                                     (service :target-type service :member-name
                                      "Service" :json-name "service")
                                     (severity :target-type double :required
                                      common-lisp:t :member-name "Severity"
                                      :json-name "severity")
                                     (title :target-type string :member-name
                                      "Title" :json-name "title")
                                     (type :target-type finding-type :required
                                      common-lisp:t :member-name "Type"
                                      :json-name "type")
                                     (updated-at :target-type string :required
                                      common-lisp:t :member-name "UpdatedAt"
                                      :json-name "updatedAt")
                                     (associated-attack-sequence-arn
                                      :target-type string :member-name
                                      "AssociatedAttackSequenceArn" :json-name
                                      "associatedAttackSequenceArn"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-structure finding-criteria common-lisp:nil
                                    ((criterion :target-type criterion
                                      :member-name "Criterion" :json-name
                                      "criterion"))
                                    (:shape-name "FindingCriteria"))

(smithy/sdk/shapes:define-type finding-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-ids :member finding-id)

(smithy/sdk/shapes:define-enum finding-publishing-frequency
    common-lisp:nil
  (:fifteen-minutes "FIFTEEN_MINUTES")
  (:one-hour "ONE_HOUR")
  (:six-hours "SIX_HOURS"))

(smithy/sdk/shapes:define-enum finding-resource-type
    common-lisp:nil
  (:ec2-instance "EC2_INSTANCE")
  (:ec2-network-interface "EC2_NETWORK_INTERFACE")
  (:s3-bucket "S3_BUCKET")
  (:s3-object "S3_OBJECT")
  (:access-key "ACCESS_KEY")
  (:eks-cluster "EKS_CLUSTER")
  (:kubernetes-workload "KUBERNETES_WORKLOAD")
  (:container "CONTAINER"))

(smithy/sdk/shapes:define-enum finding-statistic-type
    common-lisp:nil
  (:count-by-severity "COUNT_BY_SEVERITY"))

(smithy/sdk/shapes:define-list finding-statistic-types :member
                               finding-statistic-type)

(smithy/sdk/shapes:define-structure finding-statistics common-lisp:nil
                                    ((count-by-severity :target-type
                                      count-by-severity :member-name
                                      "CountBySeverity" :json-name
                                      "countBySeverity")
                                     (grouped-by-account :target-type
                                      grouped-by-account :member-name
                                      "GroupedByAccount" :json-name
                                      "groupedByAccount")
                                     (grouped-by-date :target-type
                                      grouped-by-date :member-name
                                      "GroupedByDate" :json-name
                                      "groupedByDate")
                                     (grouped-by-finding-type :target-type
                                      grouped-by-finding-type :member-name
                                      "GroupedByFindingType" :json-name
                                      "groupedByFindingType")
                                     (grouped-by-resource :target-type
                                      grouped-by-resource :member-name
                                      "GroupedByResource" :json-name
                                      "groupedByResource")
                                     (grouped-by-severity :target-type
                                      grouped-by-severity :member-name
                                      "GroupedBySeverity" :json-name
                                      "groupedBySeverity"))
                                    (:shape-name "FindingStatistics"))

(smithy/sdk/shapes:define-type finding-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure finding-type-statistics common-lisp:nil
                                    ((finding-type :target-type string
                                      :member-name "FindingType" :json-name
                                      "findingType")
                                     (last-generated-at :target-type timestamp
                                      :member-name "LastGeneratedAt" :json-name
                                      "lastGeneratedAt")
                                     (total-findings :target-type integer
                                      :member-name "TotalFindings" :json-name
                                      "totalFindings"))
                                    (:shape-name "FindingTypeStatistics"))

(smithy/sdk/shapes:define-list finding-types :member finding-type)

(smithy/sdk/shapes:define-list findings :member finding)

(smithy/sdk/shapes:define-list flags-list :member string)

(smithy/sdk/shapes:define-structure flow-logs-configuration-result
                                    common-lisp:nil
                                    ((status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "FlowLogsConfigurationResult"))

(smithy/sdk/shapes:define-structure free-trial-feature-configuration-result
                                    common-lisp:nil
                                    ((name :target-type
                                      free-trial-feature-result :member-name
                                      "Name" :json-name "name")
                                     (free-trial-days-remaining :target-type
                                      integer :member-name
                                      "FreeTrialDaysRemaining" :json-name
                                      "freeTrialDaysRemaining"))
                                    (:shape-name
                                     "FreeTrialFeatureConfigurationResult"))

(smithy/sdk/shapes:define-list free-trial-feature-configurations-results
                               :member free-trial-feature-configuration-result)

(smithy/sdk/shapes:define-enum free-trial-feature-result
    common-lisp:nil
  (:flow-logs "FLOW_LOGS")
  (:cloud-trail "CLOUD_TRAIL")
  (:dns-logs "DNS_LOGS")
  (:s3-data-events "S3_DATA_EVENTS")
  (:eks-audit-logs "EKS_AUDIT_LOGS")
  (:ebs-malware-protection "EBS_MALWARE_PROTECTION")
  (:rds-login-events "RDS_LOGIN_EVENTS")
  (:eks-runtime-monitoring "EKS_RUNTIME_MONITORING")
  (:lambda-network-logs "LAMBDA_NETWORK_LOGS")
  (:fargate-runtime-monitoring "FARGATE_RUNTIME_MONITORING")
  (:ec2-runtime-monitoring "EC2_RUNTIME_MONITORING"))

(smithy/sdk/shapes:define-structure geo-location common-lisp:nil
                                    ((lat :target-type double :member-name
                                      "Lat" :json-name "lat")
                                     (lon :target-type double :member-name
                                      "Lon" :json-name "lon"))
                                    (:shape-name "GeoLocation"))

(smithy/sdk/shapes:define-input get-administrator-account-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name "GetAdministratorAccountRequest"))

(smithy/sdk/shapes:define-output get-administrator-account-response
                                 common-lisp:nil
                                 ((administrator :target-type administrator
                                   :required common-lisp:t :member-name
                                   "Administrator" :json-name "administrator"))
                                 (:shape-name
                                  "GetAdministratorAccountResponse"))

(smithy/sdk/shapes:define-input get-coverage-statistics-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (filter-criteria :target-type
                                  coverage-filter-criteria :member-name
                                  "FilterCriteria" :json-name "filterCriteria")
                                 (statistics-type :target-type
                                  coverage-statistics-type-list :required
                                  common-lisp:t :member-name "StatisticsType"
                                  :json-name "statisticsType"))
                                (:shape-name "GetCoverageStatisticsRequest"))

(smithy/sdk/shapes:define-output get-coverage-statistics-response
                                 common-lisp:nil
                                 ((coverage-statistics :target-type
                                   coverage-statistics :member-name
                                   "CoverageStatistics" :json-name
                                   "coverageStatistics"))
                                 (:shape-name "GetCoverageStatisticsResponse"))

(smithy/sdk/shapes:define-input get-detector-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name "GetDetectorRequest"))

(smithy/sdk/shapes:define-output get-detector-response common-lisp:nil
                                 ((created-at :target-type string :member-name
                                   "CreatedAt" :json-name "createdAt")
                                  (finding-publishing-frequency :target-type
                                   finding-publishing-frequency :member-name
                                   "FindingPublishingFrequency" :json-name
                                   "findingPublishingFrequency")
                                  (service-role :target-type string :required
                                   common-lisp:t :member-name "ServiceRole"
                                   :json-name "serviceRole")
                                  (status :target-type detector-status
                                   :required common-lisp:t :member-name
                                   "Status" :json-name "status")
                                  (updated-at :target-type string :member-name
                                   "UpdatedAt" :json-name "updatedAt")
                                  (data-sources :target-type
                                   data-source-configurations-result
                                   :member-name "DataSources" :json-name
                                   "dataSources")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (features :target-type
                                   detector-feature-configurations-results
                                   :member-name "Features" :json-name
                                   "features"))
                                 (:shape-name "GetDetectorResponse"))

(smithy/sdk/shapes:define-input get-filter-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (filter-name :target-type string :required
                                  common-lisp:t :member-name "FilterName"
                                  :http-label common-lisp:t :json-name
                                  "filterName"))
                                (:shape-name "GetFilterRequest"))

(smithy/sdk/shapes:define-output get-filter-response common-lisp:nil
                                 ((name :target-type filter-name :required
                                   common-lisp:t :member-name "Name" :json-name
                                   "name")
                                  (description :target-type filter-description
                                   :member-name "Description" :json-name
                                   "description")
                                  (action :target-type filter-action :required
                                   common-lisp:t :member-name "Action"
                                   :json-name "action")
                                  (rank :target-type filter-rank :member-name
                                   "Rank" :json-name "rank")
                                  (finding-criteria :target-type
                                   finding-criteria :required common-lisp:t
                                   :member-name "FindingCriteria" :json-name
                                   "findingCriteria")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "GetFilterResponse"))

(smithy/sdk/shapes:define-input get-findings-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-ids :target-type finding-ids
                                  :required common-lisp:t :member-name
                                  "FindingIds" :json-name "findingIds")
                                 (sort-criteria :target-type sort-criteria
                                  :member-name "SortCriteria" :json-name
                                  "sortCriteria"))
                                (:shape-name "GetFindingsRequest"))

(smithy/sdk/shapes:define-output get-findings-response common-lisp:nil
                                 ((findings :target-type findings :required
                                   common-lisp:t :member-name "Findings"
                                   :json-name "findings"))
                                 (:shape-name "GetFindingsResponse"))

(smithy/sdk/shapes:define-input get-findings-statistics-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-statistic-types :target-type
                                  finding-statistic-types :member-name
                                  "FindingStatisticTypes" :json-name
                                  "findingStatisticTypes")
                                 (finding-criteria :target-type
                                  finding-criteria :member-name
                                  "FindingCriteria" :json-name
                                  "findingCriteria")
                                 (group-by :target-type group-by-type
                                  :member-name "GroupBy" :json-name "groupBy")
                                 (order-by :target-type order-by :member-name
                                  "OrderBy" :json-name "orderBy")
                                 (max-results :target-type max-results100
                                  :member-name "MaxResults" :json-name
                                  "maxResults"))
                                (:shape-name "GetFindingsStatisticsRequest"))

(smithy/sdk/shapes:define-output get-findings-statistics-response
                                 common-lisp:nil
                                 ((finding-statistics :target-type
                                   finding-statistics :required common-lisp:t
                                   :member-name "FindingStatistics" :json-name
                                   "findingStatistics")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "GetFindingsStatisticsResponse"))

(smithy/sdk/shapes:define-input get-ipset-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (ip-set-id :target-type string :required
                                  common-lisp:t :member-name "IpSetId"
                                  :http-label common-lisp:t :json-name
                                  "ipSetId"))
                                (:shape-name "GetIPSetRequest"))

(smithy/sdk/shapes:define-output get-ipset-response common-lisp:nil
                                 ((name :target-type name :required
                                   common-lisp:t :member-name "Name" :json-name
                                   "name")
                                  (format :target-type ip-set-format :required
                                   common-lisp:t :member-name "Format"
                                   :json-name "format")
                                  (location :target-type location :required
                                   common-lisp:t :member-name "Location"
                                   :json-name "location")
                                  (status :target-type ip-set-status :required
                                   common-lisp:t :member-name "Status"
                                   :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (expected-bucket-owner :target-type
                                   account-id :member-name
                                   "ExpectedBucketOwner" :json-name
                                   "expectedBucketOwner"))
                                 (:shape-name "GetIPSetResponse"))

(smithy/sdk/shapes:define-input get-invitations-count-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetInvitationsCountRequest"))

(smithy/sdk/shapes:define-output get-invitations-count-response common-lisp:nil
                                 ((invitations-count :target-type integer
                                   :member-name "InvitationsCount" :json-name
                                   "invitationsCount"))
                                 (:shape-name "GetInvitationsCountResponse"))

(smithy/sdk/shapes:define-input get-malware-protection-plan-request
                                common-lisp:nil
                                ((malware-protection-plan-id :target-type
                                  string :required common-lisp:t :member-name
                                  "MalwareProtectionPlanId" :http-label
                                  common-lisp:t :json-name
                                  "malwareProtectionPlanId"))
                                (:shape-name "GetMalwareProtectionPlanRequest"))

(smithy/sdk/shapes:define-output get-malware-protection-plan-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "Arn"
                                   :json-name "arn")
                                  (role :target-type string :member-name "Role"
                                   :json-name "role")
                                  (protected-resource :target-type
                                   create-protected-resource :member-name
                                   "ProtectedResource" :json-name
                                   "protectedResource")
                                  (actions :target-type
                                   malware-protection-plan-actions :member-name
                                   "Actions" :json-name "actions")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt" :json-name
                                   "createdAt")
                                  (status :target-type
                                   malware-protection-plan-status :member-name
                                   "Status" :json-name "status")
                                  (status-reasons :target-type
                                   malware-protection-plan-status-reasons-list
                                   :member-name "StatusReasons" :json-name
                                   "statusReasons")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name
                                  "GetMalwareProtectionPlanResponse"))

(smithy/sdk/shapes:define-input get-malware-scan-settings-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name "GetMalwareScanSettingsRequest"))

(smithy/sdk/shapes:define-output get-malware-scan-settings-response
                                 common-lisp:nil
                                 ((scan-resource-criteria :target-type
                                   scan-resource-criteria :member-name
                                   "ScanResourceCriteria" :json-name
                                   "scanResourceCriteria")
                                  (ebs-snapshot-preservation :target-type
                                   ebs-snapshot-preservation :member-name
                                   "EbsSnapshotPreservation" :json-name
                                   "ebsSnapshotPreservation"))
                                 (:shape-name "GetMalwareScanSettingsResponse"))

(smithy/sdk/shapes:define-input get-master-account-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId"))
                                (:shape-name "GetMasterAccountRequest"))

(smithy/sdk/shapes:define-output get-master-account-response common-lisp:nil
                                 ((master :target-type master :required
                                   common-lisp:t :member-name "Master"
                                   :json-name "master"))
                                 (:shape-name "GetMasterAccountResponse"))

(smithy/sdk/shapes:define-input get-member-detectors-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "GetMemberDetectorsRequest"))

(smithy/sdk/shapes:define-output get-member-detectors-response common-lisp:nil
                                 ((member-data-source-configurations
                                   :target-type
                                   member-data-source-configurations :required
                                   common-lisp:t :member-name
                                   "MemberDataSourceConfigurations" :json-name
                                   "members")
                                  (unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "GetMemberDetectorsResponse"))

(smithy/sdk/shapes:define-input get-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "GetMembersRequest"))

(smithy/sdk/shapes:define-output get-members-response common-lisp:nil
                                 ((members :target-type members :required
                                   common-lisp:t :member-name "Members"
                                   :json-name "members")
                                  (unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "GetMembersResponse"))

(smithy/sdk/shapes:define-output get-organization-statistics-response
                                 common-lisp:nil
                                 ((organization-details :target-type
                                   organization-details :member-name
                                   "OrganizationDetails" :json-name
                                   "organizationDetails"))
                                 (:shape-name
                                  "GetOrganizationStatisticsResponse"))

(smithy/sdk/shapes:define-input get-remaining-free-trial-days-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :member-name "AccountIds" :json-name
                                  "accountIds"))
                                (:shape-name
                                 "GetRemainingFreeTrialDaysRequest"))

(smithy/sdk/shapes:define-output get-remaining-free-trial-days-response
                                 common-lisp:nil
                                 ((accounts :target-type
                                   account-free-trial-infos :member-name
                                   "Accounts" :json-name "accounts")
                                  (unprocessed-accounts :target-type
                                   unprocessed-accounts :member-name
                                   "UnprocessedAccounts" :json-name
                                   "unprocessedAccounts"))
                                 (:shape-name
                                  "GetRemainingFreeTrialDaysResponse"))

(smithy/sdk/shapes:define-input get-threat-intel-set-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (threat-intel-set-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ThreatIntelSetId" :http-label common-lisp:t
                                  :json-name "threatIntelSetId"))
                                (:shape-name "GetThreatIntelSetRequest"))

(smithy/sdk/shapes:define-output get-threat-intel-set-response common-lisp:nil
                                 ((name :target-type name :required
                                   common-lisp:t :member-name "Name" :json-name
                                   "name")
                                  (format :target-type threat-intel-set-format
                                   :required common-lisp:t :member-name
                                   "Format" :json-name "format")
                                  (location :target-type location :required
                                   common-lisp:t :member-name "Location"
                                   :json-name "location")
                                  (status :target-type threat-intel-set-status
                                   :required common-lisp:t :member-name
                                   "Status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags")
                                  (expected-bucket-owner :target-type
                                   account-id :member-name
                                   "ExpectedBucketOwner" :json-name
                                   "expectedBucketOwner"))
                                 (:shape-name "GetThreatIntelSetResponse"))

(smithy/sdk/shapes:define-input get-usage-statistics-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (usage-statistic-type :target-type
                                  usage-statistic-type :required common-lisp:t
                                  :member-name "UsageStatisticType" :json-name
                                  "usageStatisticsType")
                                 (usage-criteria :target-type usage-criteria
                                  :required common-lisp:t :member-name
                                  "UsageCriteria" :json-name "usageCriteria")
                                 (unit :target-type string :member-name "Unit"
                                  :json-name "unit")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :json-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken"))
                                (:shape-name "GetUsageStatisticsRequest"))

(smithy/sdk/shapes:define-output get-usage-statistics-response common-lisp:nil
                                 ((usage-statistics :target-type
                                   usage-statistics :member-name
                                   "UsageStatistics" :json-name
                                   "usageStatistics")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "GetUsageStatisticsResponse"))

(smithy/sdk/shapes:define-enum group-by-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:date "DATE")
  (:finding-type "FINDING_TYPE")
  (:resource "RESOURCE")
  (:severity "SEVERITY"))

(smithy/sdk/shapes:define-list grouped-by-account :member account-statistics)

(smithy/sdk/shapes:define-list grouped-by-date :member date-statistics)

(smithy/sdk/shapes:define-list grouped-by-finding-type :member
                               finding-type-statistics)

(smithy/sdk/shapes:define-list grouped-by-resource :member resource-statistics)

(smithy/sdk/shapes:define-list grouped-by-severity :member severity-statistics)

(smithy/sdk/shapes:define-list groups :member string)

(smithy/sdk/shapes:define-type guard-duty-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure highest-severity-threat-details
                                    common-lisp:nil
                                    ((severity :target-type string :member-name
                                      "Severity" :json-name "severity")
                                     (threat-name :target-type string
                                      :member-name "ThreatName" :json-name
                                      "threatName")
                                     (count :target-type integer :member-name
                                      "Count" :json-name "count"))
                                    (:shape-name
                                     "HighestSeverityThreatDetails"))

(smithy/sdk/shapes:define-structure host-path common-lisp:nil
                                    ((path :target-type string :member-name
                                      "Path" :json-name "path"))
                                    (:shape-name "HostPath"))

(smithy/sdk/shapes:define-structure iam-instance-profile common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (id :target-type string :member-name "Id"
                                      :json-name "id"))
                                    (:shape-name "IamInstanceProfile"))

(smithy/sdk/shapes:define-structure impersonated-user common-lisp:nil
                                    ((username :target-type string :member-name
                                      "Username" :json-name "username")
                                     (groups :target-type groups :member-name
                                      "Groups" :json-name "groups"))
                                    (:shape-name "ImpersonatedUser"))

(smithy/sdk/shapes:define-structure indicator common-lisp:nil
                                    ((key :target-type indicator-type :required
                                      common-lisp:t :member-name "Key"
                                      :json-name "key")
                                     (values :target-type indicator-values
                                      :member-name "Values" :json-name
                                      "values")
                                     (title :target-type indicator-title
                                      :member-name "Title" :json-name "title"))
                                    (:shape-name "Indicator"))

(smithy/sdk/shapes:define-type indicator-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum indicator-type
    common-lisp:nil
  (:suspicious-user-agent "SUSPICIOUS_USER_AGENT")
  (:suspicious-network "SUSPICIOUS_NETWORK")
  (:malicious-ip "MALICIOUS_IP")
  (:tor-ip "TOR_IP")
  (:attack-tactic "ATTACK_TACTIC")
  (:high-risk-api "HIGH_RISK_API")
  (:attack-technique "ATTACK_TECHNIQUE")
  (:unusual-api-for-account "UNUSUAL_API_FOR_ACCOUNT")
  (:unusual-asn-for-account "UNUSUAL_ASN_FOR_ACCOUNT")
  (:unusual-asn-for-user "UNUSUAL_ASN_FOR_USER")
  (:suspicious-process "SUSPICIOUS_PROCESS")
  (:malicious-domain "MALICIOUS_DOMAIN")
  (:malicious-process "MALICIOUS_PROCESS")
  (:cryptomining-ip "CRYPTOMINING_IP")
  (:cryptomining-domain "CRYPTOMINING_DOMAIN")
  (:cryptomining-process "CRYPTOMINING_PROCESS"))

(smithy/sdk/shapes:define-type indicator-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list indicator-values :member indicator-value-string)

(smithy/sdk/shapes:define-list indicators :member indicator)

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-details common-lisp:nil
                                    ((availability-zone :target-type string
                                      :member-name "AvailabilityZone"
                                      :json-name "availabilityZone")
                                     (iam-instance-profile :target-type
                                      iam-instance-profile :member-name
                                      "IamInstanceProfile" :json-name
                                      "iamInstanceProfile")
                                     (image-description :target-type string
                                      :member-name "ImageDescription"
                                      :json-name "imageDescription")
                                     (image-id :target-type string :member-name
                                      "ImageId" :json-name "imageId")
                                     (instance-id :target-type string
                                      :member-name "InstanceId" :json-name
                                      "instanceId")
                                     (instance-state :target-type string
                                      :member-name "InstanceState" :json-name
                                      "instanceState")
                                     (instance-type :target-type string
                                      :member-name "InstanceType" :json-name
                                      "instanceType")
                                     (outpost-arn :target-type string
                                      :member-name "OutpostArn" :json-name
                                      "outpostArn")
                                     (launch-time :target-type string
                                      :member-name "LaunchTime" :json-name
                                      "launchTime")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "NetworkInterfaces" :json-name
                                      "networkInterfaces")
                                     (platform :target-type string :member-name
                                      "Platform" :json-name "platform")
                                     (product-codes :target-type product-codes
                                      :member-name "ProductCodes" :json-name
                                      "productCodes")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "InstanceDetails"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-value-with-max
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (type :target-type string :member-name "Type"
                                  :json-name "__type"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500) (:base-class guardduty-error))

(smithy/sdk/shapes:define-structure invitation common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (invitation-id :target-type string
                                      :member-name "InvitationId" :json-name
                                      "invitationId")
                                     (relationship-status :target-type string
                                      :member-name "RelationshipStatus"
                                      :json-name "relationshipStatus")
                                     (invited-at :target-type string
                                      :member-name "InvitedAt" :json-name
                                      "invitedAt"))
                                    (:shape-name "Invitation"))

(smithy/sdk/shapes:define-list invitations :member invitation)

(smithy/sdk/shapes:define-input invite-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds")
                                 (disable-email-notification :target-type
                                  boolean :member-name
                                  "DisableEmailNotification" :json-name
                                  "disableEmailNotification")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InviteMembersRequest"))

(smithy/sdk/shapes:define-output invite-members-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "InviteMembersResponse"))

(smithy/sdk/shapes:define-enum ip-set-format
    common-lisp:nil
  (:txt "TXT")
  (:stix "STIX")
  (:otx-csv "OTX_CSV")
  (:alien-vault "ALIEN_VAULT")
  (:proof-point "PROOF_POINT")
  (:fire-eye "FIRE_EYE"))

(smithy/sdk/shapes:define-list ip-set-ids :member string)

(smithy/sdk/shapes:define-enum ip-set-status
    common-lisp:nil
  (:inactive "INACTIVE")
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:deactivating "DEACTIVATING")
  (:error "ERROR")
  (:delete-pending "DELETE_PENDING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list ipv6addresses :member string)

(smithy/sdk/shapes:define-list issues :member string)

(smithy/sdk/shapes:define-structure item-path common-lisp:nil
                                    ((nested-item-path :target-type string
                                      :member-name "NestedItemPath" :json-name
                                      "nestedItemPath")
                                     (hash :target-type string :member-name
                                      "Hash" :json-name "hash"))
                                    (:shape-name "ItemPath"))

(smithy/sdk/shapes:define-list item-paths :member item-path)

(smithy/sdk/shapes:define-structure kubernetes-api-call-action common-lisp:nil
                                    ((request-uri :target-type string
                                      :member-name "RequestUri" :json-name
                                      "requestUri")
                                     (verb :target-type string :member-name
                                      "Verb" :json-name "verb")
                                     (source-ips :target-type source-ips
                                      :member-name "SourceIps" :json-name
                                      "sourceIPs")
                                     (user-agent :target-type string
                                      :member-name "UserAgent" :json-name
                                      "userAgent")
                                     (remote-ip-details :target-type
                                      remote-ip-details :member-name
                                      "RemoteIpDetails" :json-name
                                      "remoteIpDetails")
                                     (status-code :target-type integer
                                      :member-name "StatusCode" :json-name
                                      "statusCode")
                                     (parameters :target-type string
                                      :member-name "Parameters" :json-name
                                      "parameters")
                                     (resource :target-type string :member-name
                                      "Resource" :json-name "resource")
                                     (subresource :target-type string
                                      :member-name "Subresource" :json-name
                                      "subresource")
                                     (namespace :target-type string
                                      :member-name "Namespace" :json-name
                                      "namespace")
                                     (resource-name :target-type string
                                      :member-name "ResourceName" :json-name
                                      "resourceName"))
                                    (:shape-name "KubernetesApiCallAction"))

(smithy/sdk/shapes:define-structure kubernetes-audit-logs-configuration
                                    common-lisp:nil
                                    ((enable :target-type boolean :required
                                      common-lisp:t :member-name "Enable"
                                      :json-name "enable"))
                                    (:shape-name
                                     "KubernetesAuditLogsConfiguration"))

(smithy/sdk/shapes:define-structure kubernetes-audit-logs-configuration-result
                                    common-lisp:nil
                                    ((status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name
                                     "KubernetesAuditLogsConfigurationResult"))

(smithy/sdk/shapes:define-structure kubernetes-configuration common-lisp:nil
                                    ((audit-logs :target-type
                                      kubernetes-audit-logs-configuration
                                      :required common-lisp:t :member-name
                                      "AuditLogs" :json-name "auditLogs"))
                                    (:shape-name "KubernetesConfiguration"))

(smithy/sdk/shapes:define-structure kubernetes-configuration-result
                                    common-lisp:nil
                                    ((audit-logs :target-type
                                      kubernetes-audit-logs-configuration-result
                                      :required common-lisp:t :member-name
                                      "AuditLogs" :json-name "auditLogs"))
                                    (:shape-name
                                     "KubernetesConfigurationResult"))

(smithy/sdk/shapes:define-structure kubernetes-data-source-free-trial
                                    common-lisp:nil
                                    ((audit-logs :target-type
                                      data-source-free-trial :member-name
                                      "AuditLogs" :json-name "auditLogs"))
                                    (:shape-name
                                     "KubernetesDataSourceFreeTrial"))

(smithy/sdk/shapes:define-structure kubernetes-details common-lisp:nil
                                    ((kubernetes-user-details :target-type
                                      kubernetes-user-details :member-name
                                      "KubernetesUserDetails" :json-name
                                      "kubernetesUserDetails")
                                     (kubernetes-workload-details :target-type
                                      kubernetes-workload-details :member-name
                                      "KubernetesWorkloadDetails" :json-name
                                      "kubernetesWorkloadDetails"))
                                    (:shape-name "KubernetesDetails"))

(smithy/sdk/shapes:define-structure kubernetes-permission-checked-details
                                    common-lisp:nil
                                    ((verb :target-type string :member-name
                                      "Verb" :json-name "verb")
                                     (resource :target-type string :member-name
                                      "Resource" :json-name "resource")
                                     (namespace :target-type string
                                      :member-name "Namespace" :json-name
                                      "namespace")
                                     (allowed :target-type boolean :member-name
                                      "Allowed" :json-name "allowed"))
                                    (:shape-name
                                     "KubernetesPermissionCheckedDetails"))

(smithy/sdk/shapes:define-enum kubernetes-resources-types
    common-lisp:nil
  (:pods "PODS")
  (:jobs "JOBS")
  (:cronjobs "CRONJOBS")
  (:deployments "DEPLOYMENTS")
  (:daemonsets "DAEMONSETS")
  (:statefulsets "STATEFULSETS")
  (:replicasets "REPLICASETS")
  (:replicationcontrollers "REPLICATIONCONTROLLERS"))

(smithy/sdk/shapes:define-structure kubernetes-role-binding-details
                                    common-lisp:nil
                                    ((kind :target-type string :member-name
                                      "Kind" :json-name "kind")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (uid :target-type string :member-name
                                      "Uid" :json-name "uid")
                                     (role-ref-name :target-type string
                                      :member-name "RoleRefName" :json-name
                                      "roleRefName")
                                     (role-ref-kind :target-type string
                                      :member-name "RoleRefKind" :json-name
                                      "roleRefKind"))
                                    (:shape-name
                                     "KubernetesRoleBindingDetails"))

(smithy/sdk/shapes:define-structure kubernetes-role-details common-lisp:nil
                                    ((kind :target-type string :member-name
                                      "Kind" :json-name "kind")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (uid :target-type string :member-name
                                      "Uid" :json-name "uid"))
                                    (:shape-name "KubernetesRoleDetails"))

(smithy/sdk/shapes:define-structure kubernetes-user-details common-lisp:nil
                                    ((username :target-type string :member-name
                                      "Username" :json-name "username")
                                     (uid :target-type string :member-name
                                      "Uid" :json-name "uid")
                                     (groups :target-type groups :member-name
                                      "Groups" :json-name "groups")
                                     (session-name :target-type
                                      session-name-list :member-name
                                      "SessionName" :json-name "sessionName")
                                     (impersonated-user :target-type
                                      impersonated-user :member-name
                                      "ImpersonatedUser" :json-name
                                      "impersonatedUser"))
                                    (:shape-name "KubernetesUserDetails"))

(smithy/sdk/shapes:define-structure kubernetes-workload common-lisp:nil
                                    ((container-uids :target-type
                                      container-uids :member-name
                                      "ContainerUids" :json-name
                                      "containerUids")
                                     (namespace :target-type string
                                      :member-name "Namespace" :json-name
                                      "namespace")
                                     (kubernetes-resources-types :target-type
                                      kubernetes-resources-types :member-name
                                      "KubernetesResourcesTypes" :json-name
                                      "type"))
                                    (:shape-name "KubernetesWorkload"))

(smithy/sdk/shapes:define-structure kubernetes-workload-details common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (type :target-type string :member-name
                                      "Type" :json-name "type")
                                     (uid :target-type string :member-name
                                      "Uid" :json-name "uid")
                                     (namespace :target-type string
                                      :member-name "Namespace" :json-name
                                      "namespace")
                                     (host-network :target-type boolean
                                      :member-name "HostNetwork" :json-name
                                      "hostNetwork")
                                     (containers :target-type containers
                                      :member-name "Containers" :json-name
                                      "containers")
                                     (volumes :target-type volumes :member-name
                                      "Volumes" :json-name "volumes")
                                     (service-account-name :target-type string
                                      :member-name "ServiceAccountName"
                                      :json-name "serviceAccountName")
                                     (host-ipc :target-type boolean
                                      :member-name "HostIPC" :json-name
                                      "hostIPC")
                                     (host-pid :target-type boolean
                                      :member-name "HostPID" :json-name
                                      "hostPID"))
                                    (:shape-name "KubernetesWorkloadDetails"))

(smithy/sdk/shapes:define-structure lambda-details common-lisp:nil
                                    ((function-arn :target-type string
                                      :member-name "FunctionArn" :json-name
                                      "functionArn")
                                     (function-name :target-type string
                                      :member-name "FunctionName" :json-name
                                      "functionName")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (last-modified-at :target-type timestamp
                                      :member-name "LastModifiedAt" :json-name
                                      "lastModifiedAt")
                                     (revision-id :target-type string
                                      :member-name "RevisionId" :json-name
                                      "revisionId")
                                     (function-version :target-type string
                                      :member-name "FunctionVersion" :json-name
                                      "functionVersion")
                                     (role :target-type string :member-name
                                      "Role" :json-name "role")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig" :json-name
                                      "vpcConfig")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "LambdaDetails"))

(smithy/sdk/shapes:define-list lineage :member lineage-object)

(smithy/sdk/shapes:define-structure lineage-object common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :member-name "StartTime" :json-name
                                      "startTime")
                                     (namespace-pid :target-type integer
                                      :member-name "NamespacePid" :json-name
                                      "namespacePid")
                                     (user-id :target-type integer :member-name
                                      "UserId" :json-name "userId")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (pid :target-type integer :member-name
                                      "Pid" :json-name "pid")
                                     (uuid :target-type string :member-name
                                      "Uuid" :json-name "uuid")
                                     (executable-path :target-type string
                                      :member-name "ExecutablePath" :json-name
                                      "executablePath")
                                     (euid :target-type integer :member-name
                                      "Euid" :json-name "euid")
                                     (parent-uuid :target-type string
                                      :member-name "ParentUuid" :json-name
                                      "parentUuid"))
                                    (:shape-name "LineageObject"))

(smithy/sdk/shapes:define-input list-coverage-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :json-name
                                  "maxResults")
                                 (filter-criteria :target-type
                                  coverage-filter-criteria :member-name
                                  "FilterCriteria" :json-name "filterCriteria")
                                 (sort-criteria :target-type
                                  coverage-sort-criteria :member-name
                                  "SortCriteria" :json-name "sortCriteria"))
                                (:shape-name "ListCoverageRequest"))

(smithy/sdk/shapes:define-output list-coverage-response common-lisp:nil
                                 ((resources :target-type coverage-resources
                                   :required common-lisp:t :member-name
                                   "Resources" :json-name "resources")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListCoverageResponse"))

(smithy/sdk/shapes:define-input list-detectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name "ListDetectorsRequest"))

(smithy/sdk/shapes:define-output list-detectors-response common-lisp:nil
                                 ((detector-ids :target-type detector-ids
                                   :required common-lisp:t :member-name
                                   "DetectorIds" :json-name "detectorIds")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListDetectorsResponse"))

(smithy/sdk/shapes:define-input list-filters-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name "ListFiltersRequest"))

(smithy/sdk/shapes:define-output list-filters-response common-lisp:nil
                                 ((filter-names :target-type filter-names
                                   :required common-lisp:t :member-name
                                   "FilterNames" :json-name "filterNames")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListFiltersResponse"))

(smithy/sdk/shapes:define-input list-findings-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-criteria :target-type
                                  finding-criteria :member-name
                                  "FindingCriteria" :json-name
                                  "findingCriteria")
                                 (sort-criteria :target-type sort-criteria
                                  :member-name "SortCriteria" :json-name
                                  "sortCriteria")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :json-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken"))
                                (:shape-name "ListFindingsRequest"))

(smithy/sdk/shapes:define-output list-findings-response common-lisp:nil
                                 ((finding-ids :target-type finding-ids
                                   :required common-lisp:t :member-name
                                   "FindingIds" :json-name "findingIds")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListFindingsResponse"))

(smithy/sdk/shapes:define-input list-ipsets-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name "ListIPSetsRequest"))

(smithy/sdk/shapes:define-output list-ipsets-response common-lisp:nil
                                 ((ip-set-ids :target-type ip-set-ids :required
                                   common-lisp:t :member-name "IpSetIds"
                                   :json-name "ipSetIds")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListIPSetsResponse"))

(smithy/sdk/shapes:define-input list-invitations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name "ListInvitationsRequest"))

(smithy/sdk/shapes:define-output list-invitations-response common-lisp:nil
                                 ((invitations :target-type invitations
                                   :member-name "Invitations" :json-name
                                   "invitations")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListInvitationsResponse"))

(smithy/sdk/shapes:define-input list-malware-protection-plans-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name
                                 "ListMalwareProtectionPlansRequest"))

(smithy/sdk/shapes:define-output list-malware-protection-plans-response
                                 common-lisp:nil
                                 ((malware-protection-plans :target-type
                                   malware-protection-plans-summary
                                   :member-name "MalwareProtectionPlans"
                                   :json-name "malwareProtectionPlans")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListMalwareProtectionPlansResponse"))

(smithy/sdk/shapes:define-input list-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken")
                                 (only-associated :target-type string
                                  :member-name "OnlyAssociated" :http-query
                                  "onlyAssociated" :json-name
                                  "onlyAssociated"))
                                (:shape-name "ListMembersRequest"))

(smithy/sdk/shapes:define-output list-members-response common-lisp:nil
                                 ((members :target-type members :member-name
                                   "Members" :json-name "members")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListMembersResponse"))

(smithy/sdk/shapes:define-input list-organization-admin-accounts-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name
                                 "ListOrganizationAdminAccountsRequest"))

(smithy/sdk/shapes:define-output list-organization-admin-accounts-response
                                 common-lisp:nil
                                 ((admin-accounts :target-type admin-accounts
                                   :member-name "AdminAccounts" :json-name
                                   "adminAccounts")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListOrganizationAdminAccountsResponse"))

(smithy/sdk/shapes:define-input list-publishing-destinations-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name
                                 "ListPublishingDestinationsRequest"))

(smithy/sdk/shapes:define-output list-publishing-destinations-response
                                 common-lisp:nil
                                 ((destinations :target-type destinations
                                   :required common-lisp:t :member-name
                                   "Destinations" :json-name "destinations")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListPublishingDestinationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type guard-duty-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t
                                  :json-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-threat-intel-sets-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"
                                  :json-name "nextToken"))
                                (:shape-name "ListThreatIntelSetsRequest"))

(smithy/sdk/shapes:define-output list-threat-intel-sets-response
                                 common-lisp:nil
                                 ((threat-intel-set-ids :target-type
                                   threat-intel-set-ids :required common-lisp:t
                                   :member-name "ThreatIntelSetIds" :json-name
                                   "threatIntelSetIds")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListThreatIntelSetsResponse"))

(smithy/sdk/shapes:define-structure local-ip-details common-lisp:nil
                                    ((ip-address-v4 :target-type
                                      sensitive-string :member-name
                                      "IpAddressV4" :json-name "ipAddressV4")
                                     (ip-address-v6 :target-type
                                      sensitive-string :member-name
                                      "IpAddressV6" :json-name "ipAddressV6"))
                                    (:shape-name "LocalIpDetails"))

(smithy/sdk/shapes:define-structure local-port-details common-lisp:nil
                                    ((port :target-type integer :member-name
                                      "Port" :json-name "port")
                                     (port-name :target-type string
                                      :member-name "PortName" :json-name
                                      "portName"))
                                    (:shape-name "LocalPortDetails"))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure login-attribute common-lisp:nil
                                    ((user :target-type string :member-name
                                      "User" :json-name "user")
                                     (application :target-type string
                                      :member-name "Application" :json-name
                                      "application")
                                     (failed-login-attempts :target-type
                                      integer :member-name
                                      "FailedLoginAttempts" :json-name
                                      "failedLoginAttempts")
                                     (successful-login-attempts :target-type
                                      integer :member-name
                                      "SuccessfulLoginAttempts" :json-name
                                      "successfulLoginAttempts"))
                                    (:shape-name "LoginAttribute"))

(smithy/sdk/shapes:define-list login-attributes :member login-attribute)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure malware-protection-configuration
                                    common-lisp:nil
                                    ((scan-ec2instance-with-findings
                                      :target-type
                                      scan-ec2instance-with-findings
                                      :member-name
                                      "ScanEc2InstanceWithFindings" :json-name
                                      "scanEc2InstanceWithFindings"))
                                    (:shape-name
                                     "MalwareProtectionConfiguration"))

(smithy/sdk/shapes:define-structure malware-protection-configuration-result
                                    common-lisp:nil
                                    ((scan-ec2instance-with-findings
                                      :target-type
                                      scan-ec2instance-with-findings-result
                                      :member-name
                                      "ScanEc2InstanceWithFindings" :json-name
                                      "scanEc2InstanceWithFindings")
                                     (service-role :target-type string
                                      :member-name "ServiceRole" :json-name
                                      "serviceRole"))
                                    (:shape-name
                                     "MalwareProtectionConfigurationResult"))

(smithy/sdk/shapes:define-structure malware-protection-data-source-free-trial
                                    common-lisp:nil
                                    ((scan-ec2instance-with-findings
                                      :target-type data-source-free-trial
                                      :member-name
                                      "ScanEc2InstanceWithFindings" :json-name
                                      "scanEc2InstanceWithFindings"))
                                    (:shape-name
                                     "MalwareProtectionDataSourceFreeTrial"))

(smithy/sdk/shapes:define-structure malware-protection-plan-actions
                                    common-lisp:nil
                                    ((tagging :target-type
                                      malware-protection-plan-tagging-action
                                      :member-name "Tagging" :json-name
                                      "tagging"))
                                    (:shape-name
                                     "MalwareProtectionPlanActions"))

(smithy/sdk/shapes:define-list malware-protection-plan-object-prefixes-list
                               :member string)

(smithy/sdk/shapes:define-enum malware-protection-plan-status
    common-lisp:nil
  (:active "ACTIVE")
  (:warning "WARNING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure malware-protection-plan-status-reason
                                    common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code" :json-name "code")
                                     (message :target-type string :member-name
                                      "Message" :json-name "message"))
                                    (:shape-name
                                     "MalwareProtectionPlanStatusReason"))

(smithy/sdk/shapes:define-list malware-protection-plan-status-reasons-list
                               :member malware-protection-plan-status-reason)

(smithy/sdk/shapes:define-structure malware-protection-plan-summary
                                    common-lisp:nil
                                    ((malware-protection-plan-id :target-type
                                      string :member-name
                                      "MalwareProtectionPlanId" :json-name
                                      "malwareProtectionPlanId"))
                                    (:shape-name
                                     "MalwareProtectionPlanSummary"))

(smithy/sdk/shapes:define-structure malware-protection-plan-tagging-action
                                    common-lisp:nil
                                    ((status :target-type
                                      malware-protection-plan-tagging-action-status
                                      :member-name "Status" :json-name
                                      "status"))
                                    (:shape-name
                                     "MalwareProtectionPlanTaggingAction"))

(smithy/sdk/shapes:define-enum malware-protection-plan-tagging-action-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list malware-protection-plans-summary :member
                               malware-protection-plan-summary)

(smithy/sdk/shapes:define-structure malware-scan-details common-lisp:nil
                                    ((threats :target-type threats :member-name
                                      "Threats" :json-name "threats"))
                                    (:shape-name "MalwareScanDetails"))

(smithy/sdk/shapes:define-enum management-type
    common-lisp:nil
  (:auto-managed "AUTO_MANAGED")
  (:manual "MANUAL")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list map-equals :member scan-condition-pair)

(smithy/sdk/shapes:define-structure master common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (invitation-id :target-type string
                                      :member-name "InvitationId" :json-name
                                      "invitationId")
                                     (relationship-status :target-type string
                                      :member-name "RelationshipStatus"
                                      :json-name "relationshipStatus")
                                     (invited-at :target-type string
                                      :member-name "InvitedAt" :json-name
                                      "invitedAt"))
                                    (:shape-name "Master"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId" :json-name "accountId")
                                     (detector-id :target-type detector-id
                                      :member-name "DetectorId" :json-name
                                      "detectorId")
                                     (master-id :target-type string :required
                                      common-lisp:t :member-name "MasterId"
                                      :json-name "masterId")
                                     (email :target-type email :required
                                      common-lisp:t :member-name "Email"
                                      :json-name "email")
                                     (relationship-status :target-type string
                                      :required common-lisp:t :member-name
                                      "RelationshipStatus" :json-name
                                      "relationshipStatus")
                                     (invited-at :target-type string
                                      :member-name "InvitedAt" :json-name
                                      "invitedAt")
                                     (updated-at :target-type string :required
                                      common-lisp:t :member-name "UpdatedAt"
                                      :json-name "updatedAt")
                                     (administrator-id :target-type string
                                      :member-name "AdministratorId" :json-name
                                      "administratorId"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-structure member-additional-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      org-feature-additional-configuration
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status"))
                                    (:shape-name
                                     "MemberAdditionalConfiguration"))

(smithy/sdk/shapes:define-structure member-additional-configuration-result
                                    common-lisp:nil
                                    ((name :target-type
                                      org-feature-additional-configuration
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt" :json-name
                                      "updatedAt"))
                                    (:shape-name
                                     "MemberAdditionalConfigurationResult"))

(smithy/sdk/shapes:define-list member-additional-configuration-results :member
                               member-additional-configuration-result)

(smithy/sdk/shapes:define-list member-additional-configurations :member
                               member-additional-configuration)

(smithy/sdk/shapes:define-structure member-data-source-configuration
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId" :json-name "accountId")
                                     (data-sources :target-type
                                      data-source-configurations-result
                                      :member-name "DataSources" :json-name
                                      "dataSources")
                                     (features :target-type
                                      member-features-configurations-results
                                      :member-name "Features" :json-name
                                      "features"))
                                    (:shape-name
                                     "MemberDataSourceConfiguration"))

(smithy/sdk/shapes:define-list member-data-source-configurations :member
                               member-data-source-configuration)

(smithy/sdk/shapes:define-structure member-features-configuration
                                    common-lisp:nil
                                    ((name :target-type org-feature
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (additional-configuration :target-type
                                      member-additional-configurations
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name "MemberFeaturesConfiguration"))

(smithy/sdk/shapes:define-structure member-features-configuration-result
                                    common-lisp:nil
                                    ((name :target-type org-feature
                                      :member-name "Name" :json-name "name")
                                     (status :target-type feature-status
                                      :member-name "Status" :json-name
                                      "status")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt" :json-name
                                      "updatedAt")
                                     (additional-configuration :target-type
                                      member-additional-configuration-results
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name
                                     "MemberFeaturesConfigurationResult"))

(smithy/sdk/shapes:define-list member-features-configurations :member
                               member-features-configuration)

(smithy/sdk/shapes:define-list member-features-configurations-results :member
                               member-features-configuration-result)

(smithy/sdk/shapes:define-list members :member member)

(smithy/sdk/shapes:define-list memory-regions-list :member string)

(smithy/sdk/shapes:define-enum mfa-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list neq :member string)

(smithy/sdk/shapes:define-structure network-connection common-lisp:nil
                                    ((direction :target-type network-direction
                                      :required common-lisp:t :member-name
                                      "Direction" :json-name "direction"))
                                    (:shape-name "NetworkConnection"))

(smithy/sdk/shapes:define-structure network-connection-action common-lisp:nil
                                    ((blocked :target-type boolean :member-name
                                      "Blocked" :json-name "blocked")
                                     (connection-direction :target-type string
                                      :member-name "ConnectionDirection"
                                      :json-name "connectionDirection")
                                     (local-port-details :target-type
                                      local-port-details :member-name
                                      "LocalPortDetails" :json-name
                                      "localPortDetails")
                                     (protocol :target-type string :member-name
                                      "Protocol" :json-name "protocol")
                                     (local-ip-details :target-type
                                      local-ip-details :member-name
                                      "LocalIpDetails" :json-name
                                      "localIpDetails")
                                     (local-network-interface :target-type
                                      string :member-name
                                      "LocalNetworkInterface" :json-name
                                      "localNetworkInterface")
                                     (remote-ip-details :target-type
                                      remote-ip-details :member-name
                                      "RemoteIpDetails" :json-name
                                      "remoteIpDetails")
                                     (remote-port-details :target-type
                                      remote-port-details :member-name
                                      "RemotePortDetails" :json-name
                                      "remotePortDetails"))
                                    (:shape-name "NetworkConnectionAction"))

(smithy/sdk/shapes:define-enum network-direction
    common-lisp:nil
  (:inbound "INBOUND")
  (:outbound "OUTBOUND"))

(smithy/sdk/shapes:define-structure network-endpoint common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id"
                                      :json-name "id")
                                     (ip :target-type string :member-name "Ip"
                                      :json-name "ip")
                                     (domain :target-type string :member-name
                                      "Domain" :json-name "domain")
                                     (port :target-type integer :member-name
                                      "Port" :json-name "port")
                                     (location :target-type
                                      network-geo-location :member-name
                                      "Location" :json-name "location")
                                     (autonomous-system :target-type
                                      autonomous-system :member-name
                                      "AutonomousSystem" :json-name
                                      "autonomousSystem")
                                     (connection :target-type
                                      network-connection :member-name
                                      "Connection" :json-name "connection"))
                                    (:shape-name "NetworkEndpoint"))

(smithy/sdk/shapes:define-list network-endpoints :member network-endpoint)

(smithy/sdk/shapes:define-structure network-geo-location common-lisp:nil
                                    ((city :target-type string :required
                                      common-lisp:t :member-name "City"
                                      :json-name "city")
                                     (country :target-type string :required
                                      common-lisp:t :member-name "Country"
                                      :json-name "country")
                                     (latitude :target-type double :required
                                      common-lisp:t :member-name "Latitude"
                                      :json-name "lat")
                                     (longitude :target-type double :required
                                      common-lisp:t :member-name "Longitude"
                                      :json-name "lon"))
                                    (:shape-name "NetworkGeoLocation"))

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((ipv6addresses :target-type ipv6addresses
                                      :member-name "Ipv6Addresses" :json-name
                                      "ipv6Addresses")
                                     (network-interface-id :target-type string
                                      :member-name "NetworkInterfaceId"
                                      :json-name "networkInterfaceId")
                                     (private-dns-name :target-type string
                                      :member-name "PrivateDnsName" :json-name
                                      "privateDnsName")
                                     (private-ip-address :target-type
                                      sensitive-string :member-name
                                      "PrivateIpAddress" :json-name
                                      "privateIpAddress")
                                     (private-ip-addresses :target-type
                                      private-ip-addresses :member-name
                                      "PrivateIpAddresses" :json-name
                                      "privateIpAddresses")
                                     (public-dns-name :target-type string
                                      :member-name "PublicDnsName" :json-name
                                      "publicDnsName")
                                     (public-ip :target-type string
                                      :member-name "PublicIp" :json-name
                                      "publicIp")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups" :json-name
                                      "securityGroups")
                                     (subnet-id :target-type string
                                      :member-name "SubnetId" :json-name
                                      "subnetId")
                                     (vpc-id :target-type string :member-name
                                      "VpcId" :json-name "vpcId"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list not-equals :member string)

(smithy/sdk/shapes:define-list observation-texts :member string)

(smithy/sdk/shapes:define-structure observations common-lisp:nil
                                    ((text :target-type observation-texts
                                      :member-name "Text" :json-name "text"))
                                    (:shape-name "Observations"))

(smithy/sdk/shapes:define-enum order-by
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-enum org-feature
    common-lisp:nil
  (:s3-data-events "S3_DATA_EVENTS")
  (:eks-audit-logs "EKS_AUDIT_LOGS")
  (:ebs-malware-protection "EBS_MALWARE_PROTECTION")
  (:rds-login-events "RDS_LOGIN_EVENTS")
  (:eks-runtime-monitoring "EKS_RUNTIME_MONITORING")
  (:lambda-network-logs "LAMBDA_NETWORK_LOGS")
  (:runtime-monitoring "RUNTIME_MONITORING"))

(smithy/sdk/shapes:define-enum org-feature-additional-configuration
    common-lisp:nil
  (:eks-addon-management "EKS_ADDON_MANAGEMENT")
  (:ecs-fargate-agent-management "ECS_FARGATE_AGENT_MANAGEMENT")
  (:ec2-agent-management "EC2_AGENT_MANAGEMENT"))

(smithy/sdk/shapes:define-enum org-feature-status
    common-lisp:nil
  (:new "NEW")
  (:none "NONE")
  (:all "ALL"))

(smithy/sdk/shapes:define-structure organization common-lisp:nil
                                    ((asn :target-type string :member-name
                                      "Asn" :json-name "asn")
                                     (asn-org :target-type string :member-name
                                      "AsnOrg" :json-name "asnOrg")
                                     (isp :target-type string :member-name
                                      "Isp" :json-name "isp")
                                     (org :target-type string :member-name
                                      "Org" :json-name "org"))
                                    (:shape-name "Organization"))

(smithy/sdk/shapes:define-structure organization-additional-configuration
                                    common-lisp:nil
                                    ((name :target-type
                                      org-feature-additional-configuration
                                      :member-name "Name" :json-name "name")
                                     (auto-enable :target-type
                                      org-feature-status :member-name
                                      "AutoEnable" :json-name "autoEnable"))
                                    (:shape-name
                                     "OrganizationAdditionalConfiguration"))

(smithy/sdk/shapes:define-structure
 organization-additional-configuration-result common-lisp:nil
 ((name :target-type org-feature-additional-configuration :member-name "Name"
   :json-name "name")
  (auto-enable :target-type org-feature-status :member-name "AutoEnable"
   :json-name "autoEnable"))
 (:shape-name "OrganizationAdditionalConfigurationResult"))

(smithy/sdk/shapes:define-list organization-additional-configuration-results
                               :member
                               organization-additional-configuration-result)

(smithy/sdk/shapes:define-list organization-additional-configurations :member
                               organization-additional-configuration)

(smithy/sdk/shapes:define-structure organization-data-source-configurations
                                    common-lisp:nil
                                    ((s3logs :target-type
                                      organization-s3logs-configuration
                                      :member-name "S3Logs" :json-name
                                      "s3Logs")
                                     (kubernetes :target-type
                                      organization-kubernetes-configuration
                                      :member-name "Kubernetes" :json-name
                                      "kubernetes")
                                     (malware-protection :target-type
                                      organization-malware-protection-configuration
                                      :member-name "MalwareProtection"
                                      :json-name "malwareProtection"))
                                    (:shape-name
                                     "OrganizationDataSourceConfigurations"))

(smithy/sdk/shapes:define-structure
 organization-data-source-configurations-result common-lisp:nil
 ((s3logs :target-type organization-s3logs-configuration-result :required
   common-lisp:t :member-name "S3Logs" :json-name "s3Logs")
  (kubernetes :target-type organization-kubernetes-configuration-result
   :member-name "Kubernetes" :json-name "kubernetes")
  (malware-protection :target-type
   organization-malware-protection-configuration-result :member-name
   "MalwareProtection" :json-name "malwareProtection"))
 (:shape-name "OrganizationDataSourceConfigurationsResult"))

(smithy/sdk/shapes:define-structure organization-details common-lisp:nil
                                    ((updated-at :target-type timestamp
                                      :member-name "UpdatedAt" :json-name
                                      "updatedAt")
                                     (organization-statistics :target-type
                                      organization-statistics :member-name
                                      "OrganizationStatistics" :json-name
                                      "organizationStatistics"))
                                    (:shape-name "OrganizationDetails"))

(smithy/sdk/shapes:define-structure organization-ebs-volumes common-lisp:nil
                                    ((auto-enable :target-type boolean
                                      :member-name "AutoEnable" :json-name
                                      "autoEnable"))
                                    (:shape-name "OrganizationEbsVolumes"))

(smithy/sdk/shapes:define-structure organization-ebs-volumes-result
                                    common-lisp:nil
                                    ((auto-enable :target-type boolean
                                      :member-name "AutoEnable" :json-name
                                      "autoEnable"))
                                    (:shape-name
                                     "OrganizationEbsVolumesResult"))

(smithy/sdk/shapes:define-structure organization-feature-configuration
                                    common-lisp:nil
                                    ((name :target-type org-feature
                                      :member-name "Name" :json-name "name")
                                     (auto-enable :target-type
                                      org-feature-status :member-name
                                      "AutoEnable" :json-name "autoEnable")
                                     (additional-configuration :target-type
                                      organization-additional-configurations
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name
                                     "OrganizationFeatureConfiguration"))

(smithy/sdk/shapes:define-structure organization-feature-configuration-result
                                    common-lisp:nil
                                    ((name :target-type org-feature
                                      :member-name "Name" :json-name "name")
                                     (auto-enable :target-type
                                      org-feature-status :member-name
                                      "AutoEnable" :json-name "autoEnable")
                                     (additional-configuration :target-type
                                      organization-additional-configuration-results
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name
                                     "OrganizationFeatureConfigurationResult"))

(smithy/sdk/shapes:define-structure organization-feature-statistics
                                    common-lisp:nil
                                    ((name :target-type org-feature
                                      :member-name "Name" :json-name "name")
                                     (enabled-accounts-count :target-type
                                      integer :member-name
                                      "EnabledAccountsCount" :json-name
                                      "enabledAccountsCount")
                                     (additional-configuration :target-type
                                      organization-feature-statistics-additional-configurations
                                      :member-name "AdditionalConfiguration"
                                      :json-name "additionalConfiguration"))
                                    (:shape-name
                                     "OrganizationFeatureStatistics"))

(smithy/sdk/shapes:define-structure
 organization-feature-statistics-additional-configuration common-lisp:nil
 ((name :target-type org-feature-additional-configuration :member-name "Name"
   :json-name "name")
  (enabled-accounts-count :target-type integer :member-name
   "EnabledAccountsCount" :json-name "enabledAccountsCount"))
 (:shape-name "OrganizationFeatureStatisticsAdditionalConfiguration"))

(smithy/sdk/shapes:define-list
 organization-feature-statistics-additional-configurations :member
 organization-feature-statistics-additional-configuration)

(smithy/sdk/shapes:define-list organization-feature-statistics-results :member
                               organization-feature-statistics)

(smithy/sdk/shapes:define-list organization-features-configurations :member
                               organization-feature-configuration)

(smithy/sdk/shapes:define-list organization-features-configurations-results
                               :member
                               organization-feature-configuration-result)

(smithy/sdk/shapes:define-structure
 organization-kubernetes-audit-logs-configuration common-lisp:nil
 ((auto-enable :target-type boolean :required common-lisp:t :member-name
   "AutoEnable" :json-name "autoEnable"))
 (:shape-name "OrganizationKubernetesAuditLogsConfiguration"))

(smithy/sdk/shapes:define-structure
 organization-kubernetes-audit-logs-configuration-result common-lisp:nil
 ((auto-enable :target-type boolean :required common-lisp:t :member-name
   "AutoEnable" :json-name "autoEnable"))
 (:shape-name "OrganizationKubernetesAuditLogsConfigurationResult"))

(smithy/sdk/shapes:define-structure organization-kubernetes-configuration
                                    common-lisp:nil
                                    ((audit-logs :target-type
                                      organization-kubernetes-audit-logs-configuration
                                      :required common-lisp:t :member-name
                                      "AuditLogs" :json-name "auditLogs"))
                                    (:shape-name
                                     "OrganizationKubernetesConfiguration"))

(smithy/sdk/shapes:define-structure
 organization-kubernetes-configuration-result common-lisp:nil
 ((audit-logs :target-type
   organization-kubernetes-audit-logs-configuration-result :required
   common-lisp:t :member-name "AuditLogs" :json-name "auditLogs"))
 (:shape-name "OrganizationKubernetesConfigurationResult"))

(smithy/sdk/shapes:define-structure
 organization-malware-protection-configuration common-lisp:nil
 ((scan-ec2instance-with-findings :target-type
   organization-scan-ec2instance-with-findings :member-name
   "ScanEc2InstanceWithFindings" :json-name "scanEc2InstanceWithFindings"))
 (:shape-name "OrganizationMalwareProtectionConfiguration"))

(smithy/sdk/shapes:define-structure
 organization-malware-protection-configuration-result common-lisp:nil
 ((scan-ec2instance-with-findings :target-type
   organization-scan-ec2instance-with-findings-result :member-name
   "ScanEc2InstanceWithFindings" :json-name "scanEc2InstanceWithFindings"))
 (:shape-name "OrganizationMalwareProtectionConfigurationResult"))

(smithy/sdk/shapes:define-structure organization-s3logs-configuration
                                    common-lisp:nil
                                    ((auto-enable :target-type boolean
                                      :required common-lisp:t :member-name
                                      "AutoEnable" :json-name "autoEnable"))
                                    (:shape-name
                                     "OrganizationS3LogsConfiguration"))

(smithy/sdk/shapes:define-structure organization-s3logs-configuration-result
                                    common-lisp:nil
                                    ((auto-enable :target-type boolean
                                      :required common-lisp:t :member-name
                                      "AutoEnable" :json-name "autoEnable"))
                                    (:shape-name
                                     "OrganizationS3LogsConfigurationResult"))

(smithy/sdk/shapes:define-structure organization-scan-ec2instance-with-findings
                                    common-lisp:nil
                                    ((ebs-volumes :target-type
                                      organization-ebs-volumes :member-name
                                      "EbsVolumes" :json-name "ebsVolumes"))
                                    (:shape-name
                                     "OrganizationScanEc2InstanceWithFindings"))

(smithy/sdk/shapes:define-structure
 organization-scan-ec2instance-with-findings-result common-lisp:nil
 ((ebs-volumes :target-type organization-ebs-volumes-result :member-name
   "EbsVolumes" :json-name "ebsVolumes"))
 (:shape-name "OrganizationScanEc2InstanceWithFindingsResult"))

(smithy/sdk/shapes:define-structure organization-statistics common-lisp:nil
                                    ((total-accounts-count :target-type integer
                                      :member-name "TotalAccountsCount"
                                      :json-name "totalAccountsCount")
                                     (member-accounts-count :target-type
                                      integer :member-name
                                      "MemberAccountsCount" :json-name
                                      "memberAccountsCount")
                                     (active-accounts-count :target-type
                                      integer :member-name
                                      "ActiveAccountsCount" :json-name
                                      "activeAccountsCount")
                                     (enabled-accounts-count :target-type
                                      integer :member-name
                                      "EnabledAccountsCount" :json-name
                                      "enabledAccountsCount")
                                     (count-by-feature :target-type
                                      organization-feature-statistics-results
                                      :member-name "CountByFeature" :json-name
                                      "countByFeature"))
                                    (:shape-name "OrganizationStatistics"))

(smithy/sdk/shapes:define-structure owner common-lisp:nil
                                    ((id :target-type string :member-name "Id"
                                      :json-name "id"))
                                    (:shape-name "Owner"))

(smithy/sdk/shapes:define-structure permission-configuration common-lisp:nil
                                    ((bucket-level-permissions :target-type
                                      bucket-level-permissions :member-name
                                      "BucketLevelPermissions" :json-name
                                      "bucketLevelPermissions")
                                     (account-level-permissions :target-type
                                      account-level-permissions :member-name
                                      "AccountLevelPermissions" :json-name
                                      "accountLevelPermissions"))
                                    (:shape-name "PermissionConfiguration"))

(smithy/sdk/shapes:define-structure port-probe-action common-lisp:nil
                                    ((blocked :target-type boolean :member-name
                                      "Blocked" :json-name "blocked")
                                     (port-probe-details :target-type
                                      port-probe-details :member-name
                                      "PortProbeDetails" :json-name
                                      "portProbeDetails"))
                                    (:shape-name "PortProbeAction"))

(smithy/sdk/shapes:define-structure port-probe-detail common-lisp:nil
                                    ((local-port-details :target-type
                                      local-port-details :member-name
                                      "LocalPortDetails" :json-name
                                      "localPortDetails")
                                     (local-ip-details :target-type
                                      local-ip-details :member-name
                                      "LocalIpDetails" :json-name
                                      "localIpDetails")
                                     (remote-ip-details :target-type
                                      remote-ip-details :member-name
                                      "RemoteIpDetails" :json-name
                                      "remoteIpDetails"))
                                    (:shape-name "PortProbeDetail"))

(smithy/sdk/shapes:define-list port-probe-details :member port-probe-detail)

(smithy/sdk/shapes:define-type positive-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure private-ip-address-details common-lisp:nil
                                    ((private-dns-name :target-type string
                                      :member-name "PrivateDnsName" :json-name
                                      "privateDnsName")
                                     (private-ip-address :target-type
                                      sensitive-string :member-name
                                      "PrivateIpAddress" :json-name
                                      "privateIpAddress"))
                                    (:shape-name "PrivateIpAddressDetails"))

(smithy/sdk/shapes:define-list private-ip-addresses :member
                               private-ip-address-details)

(smithy/sdk/shapes:define-structure process-details common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (executable-path :target-type string
                                      :member-name "ExecutablePath" :json-name
                                      "executablePath")
                                     (executable-sha256 :target-type string
                                      :member-name "ExecutableSha256"
                                      :json-name "executableSha256")
                                     (namespace-pid :target-type integer
                                      :member-name "NamespacePid" :json-name
                                      "namespacePid")
                                     (pwd :target-type string :member-name
                                      "Pwd" :json-name "pwd")
                                     (pid :target-type integer :member-name
                                      "Pid" :json-name "pid")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime" :json-name
                                      "startTime")
                                     (uuid :target-type string :member-name
                                      "Uuid" :json-name "uuid")
                                     (parent-uuid :target-type string
                                      :member-name "ParentUuid" :json-name
                                      "parentUuid")
                                     (user :target-type string :member-name
                                      "User" :json-name "user")
                                     (user-id :target-type integer :member-name
                                      "UserId" :json-name "userId")
                                     (euid :target-type integer :member-name
                                      "Euid" :json-name "euid")
                                     (lineage :target-type lineage :member-name
                                      "Lineage" :json-name "lineage"))
                                    (:shape-name "ProcessDetails"))

(smithy/sdk/shapes:define-type process-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type process-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type process-sha256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure product-code common-lisp:nil
                                    ((code :target-type string :member-name
                                      "Code" :json-name "productCodeId")
                                     (product-type :target-type string
                                      :member-name "ProductType" :json-name
                                      "productCodeType"))
                                    (:shape-name "ProductCode"))

(smithy/sdk/shapes:define-list product-codes :member product-code)

(smithy/sdk/shapes:define-enum profile-subtype
    common-lisp:nil
  (:frequent "FREQUENT")
  (:infrequent "INFREQUENT")
  (:unseen "UNSEEN")
  (:rare "RARE"))

(smithy/sdk/shapes:define-enum profile-type
    common-lisp:nil
  (:frequency "FREQUENCY"))

(smithy/sdk/shapes:define-structure public-access common-lisp:nil
                                    ((permission-configuration :target-type
                                      permission-configuration :member-name
                                      "PermissionConfiguration" :json-name
                                      "permissionConfiguration")
                                     (effective-permission :target-type string
                                      :member-name "EffectivePermission"
                                      :json-name "effectivePermission"))
                                    (:shape-name "PublicAccess"))

(smithy/sdk/shapes:define-structure public-access-configuration common-lisp:nil
                                    ((public-acl-access :target-type
                                      public-access-status :member-name
                                      "PublicAclAccess" :json-name
                                      "publicAclAccess")
                                     (public-policy-access :target-type
                                      public-access-status :member-name
                                      "PublicPolicyAccess" :json-name
                                      "publicPolicyAccess")
                                     (public-acl-ignore-behavior :target-type
                                      public-acl-ignore-behavior :member-name
                                      "PublicAclIgnoreBehavior" :json-name
                                      "publicAclIgnoreBehavior")
                                     (public-bucket-restrict-behavior
                                      :target-type
                                      public-bucket-restrict-behavior
                                      :member-name
                                      "PublicBucketRestrictBehavior" :json-name
                                      "publicBucketRestrictBehavior"))
                                    (:shape-name "PublicAccessConfiguration"))

(smithy/sdk/shapes:define-enum public-access-status
    common-lisp:nil
  (:blocked "BLOCKED")
  (:allowed "ALLOWED"))

(smithy/sdk/shapes:define-enum public-acl-ignore-behavior
    common-lisp:nil
  (:ignored "IGNORED")
  (:not-ignored "NOT_IGNORED"))

(smithy/sdk/shapes:define-enum public-bucket-restrict-behavior
    common-lisp:nil
  (:restricted "RESTRICTED")
  (:not-restricted "NOT_RESTRICTED"))

(smithy/sdk/shapes:define-enum publishing-status
    common-lisp:nil
  (:pending-verification "PENDING_VERIFICATION")
  (:publishing "PUBLISHING")
  (:unable-to-publish-fix-destination-property
   "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure rds-db-instance-details common-lisp:nil
                                    ((db-instance-identifier :target-type
                                      string :member-name
                                      "DbInstanceIdentifier" :json-name
                                      "dbInstanceIdentifier")
                                     (engine :target-type string :member-name
                                      "Engine" :json-name "engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion" :json-name
                                      "engineVersion")
                                     (db-cluster-identifier :target-type string
                                      :member-name "DbClusterIdentifier"
                                      :json-name "dbClusterIdentifier")
                                     (db-instance-arn :target-type string
                                      :member-name "DbInstanceArn" :json-name
                                      "dbInstanceArn")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "RdsDbInstanceDetails"))

(smithy/sdk/shapes:define-structure rds-db-user-details common-lisp:nil
                                    ((user :target-type string :member-name
                                      "User" :json-name "user")
                                     (application :target-type string
                                      :member-name "Application" :json-name
                                      "application")
                                     (database :target-type string :member-name
                                      "Database" :json-name "database")
                                     (ssl :target-type string :member-name
                                      "Ssl" :json-name "ssl")
                                     (auth-method :target-type string
                                      :member-name "AuthMethod" :json-name
                                      "authMethod"))
                                    (:shape-name "RdsDbUserDetails"))

(smithy/sdk/shapes:define-structure rds-limitless-db-details common-lisp:nil
                                    ((db-shard-group-identifier :target-type
                                      string :member-name
                                      "DbShardGroupIdentifier" :json-name
                                      "dbShardGroupIdentifier")
                                     (db-shard-group-resource-id :target-type
                                      string :member-name
                                      "DbShardGroupResourceId" :json-name
                                      "dbShardGroupResourceId")
                                     (db-shard-group-arn :target-type string
                                      :member-name "DbShardGroupArn" :json-name
                                      "dbShardGroupArn")
                                     (engine :target-type string :member-name
                                      "Engine" :json-name "engine")
                                     (engine-version :target-type string
                                      :member-name "EngineVersion" :json-name
                                      "engineVersion")
                                     (db-cluster-identifier :target-type string
                                      :member-name "DbClusterIdentifier"
                                      :json-name "dbClusterIdentifier")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "RdsLimitlessDbDetails"))

(smithy/sdk/shapes:define-structure rds-login-attempt-action common-lisp:nil
                                    ((remote-ip-details :target-type
                                      remote-ip-details :member-name
                                      "RemoteIpDetails" :json-name
                                      "remoteIpDetails")
                                     (login-attributes :target-type
                                      login-attributes :member-name
                                      "LoginAttributes"))
                                    (:shape-name "RdsLoginAttemptAction"))

(smithy/sdk/shapes:define-structure remote-account-details common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (affiliated :target-type boolean
                                      :member-name "Affiliated" :json-name
                                      "affiliated"))
                                    (:shape-name "RemoteAccountDetails"))

(smithy/sdk/shapes:define-structure remote-ip-details common-lisp:nil
                                    ((city :target-type city :member-name
                                      "City" :json-name "city")
                                     (country :target-type country :member-name
                                      "Country" :json-name "country")
                                     (geo-location :target-type geo-location
                                      :member-name "GeoLocation" :json-name
                                      "geoLocation")
                                     (ip-address-v4 :target-type
                                      sensitive-string :member-name
                                      "IpAddressV4" :json-name "ipAddressV4")
                                     (ip-address-v6 :target-type
                                      sensitive-string :member-name
                                      "IpAddressV6" :json-name "ipAddressV6")
                                     (organization :target-type organization
                                      :member-name "Organization" :json-name
                                      "organization"))
                                    (:shape-name "RemoteIpDetails"))

(smithy/sdk/shapes:define-structure remote-port-details common-lisp:nil
                                    ((port :target-type integer :member-name
                                      "Port" :json-name "port")
                                     (port-name :target-type string
                                      :member-name "PortName" :json-name
                                      "portName"))
                                    (:shape-name "RemotePortDetails"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((access-key-details :target-type
                                      access-key-details :member-name
                                      "AccessKeyDetails" :json-name
                                      "accessKeyDetails")
                                     (s3bucket-details :target-type
                                      s3bucket-details :member-name
                                      "S3BucketDetails" :json-name
                                      "s3BucketDetails")
                                     (instance-details :target-type
                                      instance-details :member-name
                                      "InstanceDetails" :json-name
                                      "instanceDetails")
                                     (eks-cluster-details :target-type
                                      eks-cluster-details :member-name
                                      "EksClusterDetails" :json-name
                                      "eksClusterDetails")
                                     (kubernetes-details :target-type
                                      kubernetes-details :member-name
                                      "KubernetesDetails" :json-name
                                      "kubernetesDetails")
                                     (resource-type :target-type string
                                      :member-name "ResourceType" :json-name
                                      "resourceType")
                                     (ebs-volume-details :target-type
                                      ebs-volume-details :member-name
                                      "EbsVolumeDetails" :json-name
                                      "ebsVolumeDetails")
                                     (ecs-cluster-details :target-type
                                      ecs-cluster-details :member-name
                                      "EcsClusterDetails" :json-name
                                      "ecsClusterDetails")
                                     (container-details :target-type container
                                      :member-name "ContainerDetails"
                                      :json-name "containerDetails")
                                     (rds-db-instance-details :target-type
                                      rds-db-instance-details :member-name
                                      "RdsDbInstanceDetails" :json-name
                                      "rdsDbInstanceDetails")
                                     (rds-limitless-db-details :target-type
                                      rds-limitless-db-details :member-name
                                      "RdsLimitlessDbDetails" :json-name
                                      "rdsLimitlessDbDetails")
                                     (rds-db-user-details :target-type
                                      rds-db-user-details :member-name
                                      "RdsDbUserDetails" :json-name
                                      "rdsDbUserDetails")
                                     (lambda-details :target-type
                                      lambda-details :member-name
                                      "LambdaDetails" :json-name
                                      "lambdaDetails"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-data common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "S3Bucket" :json-name
                                      "s3Bucket")
                                     (ec2instance :target-type ec2instance
                                      :member-name "Ec2Instance" :json-name
                                      "ec2Instance")
                                     (access-key :target-type access-key
                                      :member-name "AccessKey" :json-name
                                      "accessKey")
                                     (ec2network-interface :target-type
                                      ec2network-interface :member-name
                                      "Ec2NetworkInterface" :json-name
                                      "ec2NetworkInterface")
                                     (s3object :target-type s3object
                                      :member-name "S3Object" :json-name
                                      "s3Object")
                                     (eks-cluster :target-type eks-cluster
                                      :member-name "EksCluster" :json-name
                                      "eksCluster")
                                     (kubernetes-workload :target-type
                                      kubernetes-workload :member-name
                                      "KubernetesWorkload" :json-name
                                      "kubernetesWorkload")
                                     (container :target-type
                                      container-finding-resource :member-name
                                      "Container" :json-name "container"))
                                    (:shape-name "ResourceData"))

(smithy/sdk/shapes:define-structure resource-details common-lisp:nil
                                    ((instance-arn :target-type instance-arn
                                      :member-name "InstanceArn" :json-name
                                      "instanceArn"))
                                    (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-list resource-list :member string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (type :target-type string :member-name "Type"
                                  :json-name "__type"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class guardduty-error))

(smithy/sdk/shapes:define-structure resource-statistics common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (last-generated-at :target-type timestamp
                                      :member-name "LastGeneratedAt" :json-name
                                      "lastGeneratedAt")
                                     (resource-id :target-type string
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (resource-type :target-type string
                                      :member-name "ResourceType" :json-name
                                      "resourceType")
                                     (total-findings :target-type integer
                                      :member-name "TotalFindings" :json-name
                                      "totalFindings"))
                                    (:shape-name "ResourceStatistics"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:eks "EKS")
  (:ecs "ECS")
  (:ec2 "EC2"))

(smithy/sdk/shapes:define-list resource-uids :member string)

(smithy/sdk/shapes:define-structure resource-v2 common-lisp:nil
                                    ((uid :target-type string :required
                                      common-lisp:t :member-name "Uid"
                                      :json-name "uid")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (account-id :target-type string
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (resource-type :target-type
                                      finding-resource-type :required
                                      common-lisp:t :member-name "ResourceType"
                                      :json-name "resourceType")
                                     (region :target-type string :member-name
                                      "Region" :json-name "region")
                                     (service :target-type string :member-name
                                      "Service" :json-name "service")
                                     (cloud-partition :target-type string
                                      :member-name "CloudPartition" :json-name
                                      "cloudPartition")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (data :target-type resource-data
                                      :member-name "Data" :json-name "data"))
                                    (:shape-name "ResourceV2"))

(smithy/sdk/shapes:define-list resources :member resource-v2)

(smithy/sdk/shapes:define-structure runtime-context common-lisp:nil
                                    ((modifying-process :target-type
                                      process-details :member-name
                                      "ModifyingProcess" :json-name
                                      "modifyingProcess")
                                     (modified-at :target-type timestamp
                                      :member-name "ModifiedAt" :json-name
                                      "modifiedAt")
                                     (script-path :target-type string
                                      :member-name "ScriptPath" :json-name
                                      "scriptPath")
                                     (library-path :target-type string
                                      :member-name "LibraryPath" :json-name
                                      "libraryPath")
                                     (ld-preload-value :target-type string
                                      :member-name "LdPreloadValue" :json-name
                                      "ldPreloadValue")
                                     (socket-path :target-type string
                                      :member-name "SocketPath" :json-name
                                      "socketPath")
                                     (runc-binary-path :target-type string
                                      :member-name "RuncBinaryPath" :json-name
                                      "runcBinaryPath")
                                     (release-agent-path :target-type string
                                      :member-name "ReleaseAgentPath"
                                      :json-name "releaseAgentPath")
                                     (mount-source :target-type string
                                      :member-name "MountSource" :json-name
                                      "mountSource")
                                     (mount-target :target-type string
                                      :member-name "MountTarget" :json-name
                                      "mountTarget")
                                     (file-system-type :target-type string
                                      :member-name "FileSystemType" :json-name
                                      "fileSystemType")
                                     (flags :target-type flags-list
                                      :member-name "Flags" :json-name "flags")
                                     (module-name :target-type string
                                      :member-name "ModuleName" :json-name
                                      "moduleName")
                                     (module-file-path :target-type string
                                      :member-name "ModuleFilePath" :json-name
                                      "moduleFilePath")
                                     (module-sha256 :target-type string
                                      :member-name "ModuleSha256" :json-name
                                      "moduleSha256")
                                     (shell-history-file-path :target-type
                                      string :member-name
                                      "ShellHistoryFilePath" :json-name
                                      "shellHistoryFilePath")
                                     (target-process :target-type
                                      process-details :member-name
                                      "TargetProcess" :json-name
                                      "targetProcess")
                                     (address-family :target-type string
                                      :member-name "AddressFamily" :json-name
                                      "addressFamily")
                                     (iana-protocol-number :target-type integer
                                      :member-name "IanaProtocolNumber"
                                      :json-name "ianaProtocolNumber")
                                     (memory-regions :target-type
                                      memory-regions-list :member-name
                                      "MemoryRegions" :json-name
                                      "memoryRegions")
                                     (tool-name :target-type string
                                      :member-name "ToolName" :json-name
                                      "toolName")
                                     (tool-category :target-type string
                                      :member-name "ToolCategory" :json-name
                                      "toolCategory")
                                     (service-name :target-type string
                                      :member-name "ServiceName" :json-name
                                      "serviceName")
                                     (command-line-example :target-type string
                                      :member-name "CommandLineExample"
                                      :json-name "commandLineExample")
                                     (threat-file-path :target-type string
                                      :member-name "ThreatFilePath" :json-name
                                      "threatFilePath"))
                                    (:shape-name "RuntimeContext"))

(smithy/sdk/shapes:define-structure runtime-details common-lisp:nil
                                    ((process :target-type process-details
                                      :member-name "Process" :json-name
                                      "process")
                                     (context :target-type runtime-context
                                      :member-name "Context" :json-name
                                      "context"))
                                    (:shape-name "RuntimeDetails"))

(smithy/sdk/shapes:define-structure s3bucket common-lisp:nil
                                    ((owner-id :target-type string :member-name
                                      "OwnerId" :json-name "ownerId")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (encryption-type :target-type string
                                      :member-name "EncryptionType" :json-name
                                      "encryptionType")
                                     (encryption-key-arn :target-type string
                                      :member-name "EncryptionKeyArn"
                                      :json-name "encryptionKeyArn")
                                     (effective-permission :target-type string
                                      :member-name "EffectivePermission"
                                      :json-name "effectivePermission")
                                     (public-read-access :target-type
                                      public-access-status :member-name
                                      "PublicReadAccess" :json-name
                                      "publicReadAccess")
                                     (public-write-access :target-type
                                      public-access-status :member-name
                                      "PublicWriteAccess" :json-name
                                      "publicWriteAccess")
                                     (account-public-access :target-type
                                      public-access-configuration :member-name
                                      "AccountPublicAccess" :json-name
                                      "accountPublicAccess")
                                     (bucket-public-access :target-type
                                      public-access-configuration :member-name
                                      "BucketPublicAccess" :json-name
                                      "bucketPublicAccess")
                                     (s3object-uids :target-type s3object-uids
                                      :member-name "S3ObjectUids" :json-name
                                      "s3ObjectUids"))
                                    (:shape-name "S3Bucket"))

(smithy/sdk/shapes:define-structure s3bucket-detail common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (type :target-type string :member-name
                                      "Type" :json-name "type")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt" :json-name
                                      "createdAt")
                                     (owner :target-type owner :member-name
                                      "Owner" :json-name "owner")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (default-server-side-encryption
                                      :target-type
                                      default-server-side-encryption
                                      :member-name
                                      "DefaultServerSideEncryption" :json-name
                                      "defaultServerSideEncryption")
                                     (public-access :target-type public-access
                                      :member-name "PublicAccess" :json-name
                                      "publicAccess")
                                     (s3object-details :target-type
                                      s3object-details :member-name
                                      "S3ObjectDetails" :json-name
                                      "s3ObjectDetails"))
                                    (:shape-name "S3BucketDetail"))

(smithy/sdk/shapes:define-list s3bucket-details :member s3bucket-detail)

(smithy/sdk/shapes:define-structure s3logs-configuration common-lisp:nil
                                    ((enable :target-type boolean :required
                                      common-lisp:t :member-name "Enable"
                                      :json-name "enable"))
                                    (:shape-name "S3LogsConfiguration"))

(smithy/sdk/shapes:define-structure s3logs-configuration-result common-lisp:nil
                                    ((status :target-type data-source-status
                                      :required common-lisp:t :member-name
                                      "Status" :json-name "status"))
                                    (:shape-name "S3LogsConfigurationResult"))

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((etag :target-type string :member-name
                                      "ETag" :json-name "eTag")
                                     (key :target-type string :member-name
                                      "Key" :json-name "key")
                                     (version-id :target-type string
                                      :member-name "VersionId" :json-name
                                      "versionId"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-structure s3object-detail common-lisp:nil
                                    ((object-arn :target-type string
                                      :member-name "ObjectArn" :json-name
                                      "objectArn")
                                     (key :target-type string :member-name
                                      "Key" :json-name "key")
                                     (etag :target-type string :member-name
                                      "ETag" :json-name "eTag")
                                     (hash :target-type string :member-name
                                      "Hash" :json-name "hash")
                                     (version-id :target-type string
                                      :member-name "VersionId" :json-name
                                      "versionId"))
                                    (:shape-name "S3ObjectDetail"))

(smithy/sdk/shapes:define-list s3object-details :member s3object-detail)

(smithy/sdk/shapes:define-list s3object-uids :member string)

(smithy/sdk/shapes:define-structure scan common-lisp:nil
                                    ((detector-id :target-type detector-id
                                      :member-name "DetectorId" :json-name
                                      "detectorId")
                                     (admin-detector-id :target-type
                                      detector-id :member-name
                                      "AdminDetectorId" :json-name
                                      "adminDetectorId")
                                     (scan-id :target-type non-empty-string
                                      :member-name "ScanId" :json-name
                                      "scanId")
                                     (scan-status :target-type scan-status
                                      :member-name "ScanStatus" :json-name
                                      "scanStatus")
                                     (failure-reason :target-type
                                      non-empty-string :member-name
                                      "FailureReason" :json-name
                                      "failureReason")
                                     (scan-start-time :target-type timestamp
                                      :member-name "ScanStartTime" :json-name
                                      "scanStartTime")
                                     (scan-end-time :target-type timestamp
                                      :member-name "ScanEndTime" :json-name
                                      "scanEndTime")
                                     (trigger-details :target-type
                                      trigger-details :member-name
                                      "TriggerDetails" :json-name
                                      "triggerDetails")
                                     (resource-details :target-type
                                      resource-details :member-name
                                      "ResourceDetails" :json-name
                                      "resourceDetails")
                                     (scan-result-details :target-type
                                      scan-result-details :member-name
                                      "ScanResultDetails" :json-name
                                      "scanResultDetails")
                                     (account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (total-bytes :target-type positive-long
                                      :member-name "TotalBytes" :json-name
                                      "totalBytes")
                                     (file-count :target-type positive-long
                                      :member-name "FileCount" :json-name
                                      "fileCount")
                                     (attached-volumes :target-type
                                      volume-details :member-name
                                      "AttachedVolumes" :json-name
                                      "attachedVolumes")
                                     (scan-type :target-type scan-type
                                      :member-name "ScanType" :json-name
                                      "scanType"))
                                    (:shape-name "Scan"))

(smithy/sdk/shapes:define-structure scan-condition common-lisp:nil
                                    ((map-equals :target-type map-equals
                                      :required common-lisp:t :member-name
                                      "MapEquals" :json-name "mapEquals"))
                                    (:shape-name "ScanCondition"))

(smithy/sdk/shapes:define-structure scan-condition-pair common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key"
                                      :json-name "key")
                                     (value :target-type tag-value :member-name
                                      "Value" :json-name "value"))
                                    (:shape-name "ScanConditionPair"))

(smithy/sdk/shapes:define-map scan-criterion :key scan-criterion-key :value
                              scan-condition)

(smithy/sdk/shapes:define-enum scan-criterion-key
    common-lisp:nil
  (:ec2-instance-tag "EC2_INSTANCE_TAG"))

(smithy/sdk/shapes:define-structure scan-detections common-lisp:nil
                                    ((scanned-item-count :target-type
                                      scanned-item-count :member-name
                                      "ScannedItemCount" :json-name
                                      "scannedItemCount")
                                     (threats-detected-item-count :target-type
                                      threats-detected-item-count :member-name
                                      "ThreatsDetectedItemCount" :json-name
                                      "threatsDetectedItemCount")
                                     (highest-severity-threat-details
                                      :target-type
                                      highest-severity-threat-details
                                      :member-name
                                      "HighestSeverityThreatDetails" :json-name
                                      "highestSeverityThreatDetails")
                                     (threat-detected-by-name :target-type
                                      threat-detected-by-name :member-name
                                      "ThreatDetectedByName" :json-name
                                      "threatDetectedByName"))
                                    (:shape-name "ScanDetections"))

(smithy/sdk/shapes:define-structure scan-ec2instance-with-findings
                                    common-lisp:nil
                                    ((ebs-volumes :target-type boolean
                                      :member-name "EbsVolumes" :json-name
                                      "ebsVolumes"))
                                    (:shape-name "ScanEc2InstanceWithFindings"))

(smithy/sdk/shapes:define-structure scan-ec2instance-with-findings-result
                                    common-lisp:nil
                                    ((ebs-volumes :target-type
                                      ebs-volumes-result :member-name
                                      "EbsVolumes" :json-name "ebsVolumes"))
                                    (:shape-name
                                     "ScanEc2InstanceWithFindingsResult"))

(smithy/sdk/shapes:define-structure scan-file-path common-lisp:nil
                                    ((file-path :target-type string
                                      :member-name "FilePath" :json-name
                                      "filePath")
                                     (volume-arn :target-type string
                                      :member-name "VolumeArn" :json-name
                                      "volumeArn")
                                     (hash :target-type string :member-name
                                      "Hash" :json-name "hash")
                                     (file-name :target-type string
                                      :member-name "FileName" :json-name
                                      "fileName"))
                                    (:shape-name "ScanFilePath"))

(smithy/sdk/shapes:define-structure scan-resource-criteria common-lisp:nil
                                    ((include :target-type scan-criterion
                                      :member-name "Include" :json-name
                                      "include")
                                     (exclude :target-type scan-criterion
                                      :member-name "Exclude" :json-name
                                      "exclude"))
                                    (:shape-name "ScanResourceCriteria"))

(smithy/sdk/shapes:define-enum scan-result
    common-lisp:nil
  (:clean "CLEAN")
  (:infected "INFECTED"))

(smithy/sdk/shapes:define-structure scan-result-details common-lisp:nil
                                    ((scan-result :target-type scan-result
                                      :member-name "ScanResult" :json-name
                                      "scanResult"))
                                    (:shape-name "ScanResultDetails"))

(smithy/sdk/shapes:define-enum scan-status
    common-lisp:nil
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-structure scan-threat-name common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (severity :target-type string :member-name
                                      "Severity" :json-name "severity")
                                     (item-count :target-type integer
                                      :member-name "ItemCount" :json-name
                                      "itemCount")
                                     (file-paths :target-type file-paths
                                      :member-name "FilePaths" :json-name
                                      "filePaths"))
                                    (:shape-name "ScanThreatName"))

(smithy/sdk/shapes:define-list scan-threat-names :member scan-threat-name)

(smithy/sdk/shapes:define-enum scan-type
    common-lisp:nil
  (:guardduty-initiated "GUARDDUTY_INITIATED")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-structure scanned-item-count common-lisp:nil
                                    ((total-gb :target-type integer
                                      :member-name "TotalGb" :json-name
                                      "totalGb")
                                     (files :target-type integer :member-name
                                      "Files" :json-name "files")
                                     (volumes :target-type integer :member-name
                                      "Volumes" :json-name "volumes"))
                                    (:shape-name "ScannedItemCount"))

(smithy/sdk/shapes:define-list scans :member scan)

(smithy/sdk/shapes:define-structure security-context common-lisp:nil
                                    ((privileged :target-type boolean
                                      :member-name "Privileged" :json-name
                                      "privileged")
                                     (allow-privilege-escalation :target-type
                                      boolean :member-name
                                      "AllowPrivilegeEscalation" :json-name
                                      "allowPrivilegeEscalation"))
                                    (:shape-name "SecurityContext"))

(smithy/sdk/shapes:define-structure security-group common-lisp:nil
                                    ((group-id :target-type string :member-name
                                      "GroupId" :json-name "groupId")
                                     (group-name :target-type string
                                      :member-name "GroupName" :json-name
                                      "groupName"))
                                    (:shape-name "SecurityGroup"))

(smithy/sdk/shapes:define-list security-groups :member security-group)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sequence common-lisp:nil
                                    ((uid :target-type string :required
                                      common-lisp:t :member-name "Uid"
                                      :json-name "uid")
                                     (description :target-type
                                      sequence-description :required
                                      common-lisp:t :member-name "Description"
                                      :json-name "description")
                                     (actors :target-type actors :member-name
                                      "Actors" :json-name "actors")
                                     (resources :target-type resources
                                      :member-name "Resources" :json-name
                                      "resources")
                                     (endpoints :target-type network-endpoints
                                      :member-name "Endpoints" :json-name
                                      "endpoints")
                                     (signals :target-type signals :required
                                      common-lisp:t :member-name "Signals"
                                      :json-name "signals")
                                     (sequence-indicators :target-type
                                      indicators :member-name
                                      "SequenceIndicators" :json-name
                                      "sequenceIndicators")
                                     (additional-sequence-types :target-type
                                      additional-sequence-types :member-name
                                      "AdditionalSequenceTypes" :json-name
                                      "additionalSequenceTypes"))
                                    (:shape-name "Sequence"))

(smithy/sdk/shapes:define-type sequence-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action" :json-name "action")
                                     (evidence :target-type evidence
                                      :member-name "Evidence" :json-name
                                      "evidence")
                                     (archived :target-type boolean
                                      :member-name "Archived" :json-name
                                      "archived")
                                     (count :target-type integer :member-name
                                      "Count" :json-name "count")
                                     (detector-id :target-type detector-id
                                      :member-name "DetectorId" :json-name
                                      "detectorId")
                                     (event-first-seen :target-type string
                                      :member-name "EventFirstSeen" :json-name
                                      "eventFirstSeen")
                                     (event-last-seen :target-type string
                                      :member-name "EventLastSeen" :json-name
                                      "eventLastSeen")
                                     (resource-role :target-type string
                                      :member-name "ResourceRole" :json-name
                                      "resourceRole")
                                     (service-name :target-type string
                                      :member-name "ServiceName" :json-name
                                      "serviceName")
                                     (user-feedback :target-type string
                                      :member-name "UserFeedback" :json-name
                                      "userFeedback")
                                     (additional-info :target-type
                                      service-additional-info :member-name
                                      "AdditionalInfo" :json-name
                                      "additionalInfo")
                                     (feature-name :target-type string
                                      :member-name "FeatureName" :json-name
                                      "featureName")
                                     (ebs-volume-scan-details :target-type
                                      ebs-volume-scan-details :member-name
                                      "EbsVolumeScanDetails" :json-name
                                      "ebsVolumeScanDetails")
                                     (runtime-details :target-type
                                      runtime-details :member-name
                                      "RuntimeDetails" :json-name
                                      "runtimeDetails")
                                     (detection :target-type detection
                                      :member-name "Detection" :json-name
                                      "detection")
                                     (malware-scan-details :target-type
                                      malware-scan-details :member-name
                                      "MalwareScanDetails" :json-name
                                      "malwareScanDetails"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-structure service-additional-info common-lisp:nil
                                    ((value :target-type string :member-name
                                      "Value" :json-name "value")
                                     (type :target-type string :member-name
                                      "Type" :json-name "type"))
                                    (:shape-name "ServiceAdditionalInfo"))

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((uid :target-type string :member-name
                                      "Uid" :json-name "uid")
                                     (mfa-status :target-type mfa-status
                                      :member-name "MfaStatus" :json-name
                                      "mfaStatus")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime" :json-name
                                      "createdTime")
                                     (issuer :target-type string :member-name
                                      "Issuer" :json-name "issuer"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-list session-name-list :member string)

(smithy/sdk/shapes:define-structure severity-statistics common-lisp:nil
                                    ((last-generated-at :target-type timestamp
                                      :member-name "LastGeneratedAt" :json-name
                                      "lastGeneratedAt")
                                     (severity :target-type double :member-name
                                      "Severity" :json-name "severity")
                                     (total-findings :target-type integer
                                      :member-name "TotalFindings" :json-name
                                      "totalFindings"))
                                    (:shape-name "SeverityStatistics"))

(smithy/sdk/shapes:define-structure signal common-lisp:nil
                                    ((uid :target-type string :required
                                      common-lisp:t :member-name "Uid"
                                      :json-name "uid")
                                     (type :target-type signal-type :required
                                      common-lisp:t :member-name "Type"
                                      :json-name "type")
                                     (description :target-type
                                      signal-description :member-name
                                      "Description" :json-name "description")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt" :json-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt" :json-name "updatedAt")
                                     (first-seen-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "FirstSeenAt" :json-name "firstSeenAt")
                                     (last-seen-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastSeenAt" :json-name "lastSeenAt")
                                     (severity :target-type double :member-name
                                      "Severity" :json-name "severity")
                                     (count :target-type integer :required
                                      common-lisp:t :member-name "Count"
                                      :json-name "count")
                                     (resource-uids :target-type resource-uids
                                      :member-name "ResourceUids" :json-name
                                      "resourceUids")
                                     (actor-ids :target-type actor-ids
                                      :member-name "ActorIds" :json-name
                                      "actorIds")
                                     (endpoint-ids :target-type endpoint-ids
                                      :member-name "EndpointIds" :json-name
                                      "endpointIds")
                                     (signal-indicators :target-type indicators
                                      :member-name "SignalIndicators"
                                      :json-name "signalIndicators"))
                                    (:shape-name "Signal"))

(smithy/sdk/shapes:define-type signal-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum signal-type
    common-lisp:nil
  (:finding "FINDING")
  (:cloud-trail "CLOUD_TRAIL")
  (:s3-data-events "S3_DATA_EVENTS")
  (:eks-audit-logs "EKS_AUDIT_LOGS")
  (:flow-logs "FLOW_LOGS")
  (:dns-logs "DNS_LOGS")
  (:runtime-monitoring "RUNTIME_MONITORING"))

(smithy/sdk/shapes:define-list signals :member signal)

(smithy/sdk/shapes:define-structure sort-criteria common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "AttributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "OrderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "SortCriteria"))

(smithy/sdk/shapes:define-list source-ips :member string)

(smithy/sdk/shapes:define-list sources :member string)

(smithy/sdk/shapes:define-input start-malware-scan-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :json-name "resourceArn"))
                                (:shape-name "StartMalwareScanRequest"))

(smithy/sdk/shapes:define-output start-malware-scan-response common-lisp:nil
                                 ((scan-id :target-type non-empty-string
                                   :member-name "ScanId" :json-name "scanId"))
                                 (:shape-name "StartMalwareScanResponse"))

(smithy/sdk/shapes:define-input start-monitoring-members-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "StartMonitoringMembersRequest"))

(smithy/sdk/shapes:define-output start-monitoring-members-response
                                 common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "StartMonitoringMembersResponse"))

(smithy/sdk/shapes:define-input stop-monitoring-members-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds"))
                                (:shape-name "StopMonitoringMembersRequest"))

(smithy/sdk/shapes:define-output stop-monitoring-members-response
                                 common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "StopMonitoringMembersResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type string :member-name
                                      "Key" :json-name "key")
                                     (value :target-type string :member-name
                                      "Value" :json-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type guard-duty-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t
                                  :json-name "resourceArn")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure threat common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (source :target-type string :member-name
                                      "Source" :json-name "source")
                                     (item-paths :target-type item-paths
                                      :member-name "ItemPaths" :json-name
                                      "itemPaths"))
                                    (:shape-name "Threat"))

(smithy/sdk/shapes:define-structure threat-detected-by-name common-lisp:nil
                                    ((item-count :target-type integer
                                      :member-name "ItemCount" :json-name
                                      "itemCount")
                                     (unique-threat-name-count :target-type
                                      integer :member-name
                                      "UniqueThreatNameCount" :json-name
                                      "uniqueThreatNameCount")
                                     (shortened :target-type boolean
                                      :member-name "Shortened" :json-name
                                      "shortened")
                                     (threat-names :target-type
                                      scan-threat-names :member-name
                                      "ThreatNames" :json-name "threatNames"))
                                    (:shape-name "ThreatDetectedByName"))

(smithy/sdk/shapes:define-enum threat-intel-set-format
    common-lisp:nil
  (:txt "TXT")
  (:stix "STIX")
  (:otx-csv "OTX_CSV")
  (:alien-vault "ALIEN_VAULT")
  (:proof-point "PROOF_POINT")
  (:fire-eye "FIRE_EYE"))

(smithy/sdk/shapes:define-list threat-intel-set-ids :member string)

(smithy/sdk/shapes:define-enum threat-intel-set-status
    common-lisp:nil
  (:inactive "INACTIVE")
  (:activating "ACTIVATING")
  (:active "ACTIVE")
  (:deactivating "DEACTIVATING")
  (:error "ERROR")
  (:delete-pending "DELETE_PENDING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure threat-intelligence-detail common-lisp:nil
                                    ((threat-list-name :target-type string
                                      :member-name "ThreatListName" :json-name
                                      "threatListName")
                                     (threat-names :target-type threat-names
                                      :member-name "ThreatNames" :json-name
                                      "threatNames")
                                     (threat-file-sha256 :target-type string
                                      :member-name "ThreatFileSha256"
                                      :json-name "threatFileSha256"))
                                    (:shape-name "ThreatIntelligenceDetail"))

(smithy/sdk/shapes:define-list threat-intelligence-details :member
                               threat-intelligence-detail)

(smithy/sdk/shapes:define-list threat-names :member string)

(smithy/sdk/shapes:define-list threats :member threat)

(smithy/sdk/shapes:define-structure threats-detected-item-count common-lisp:nil
                                    ((files :target-type integer :member-name
                                      "Files" :json-name "files"))
                                    (:shape-name "ThreatsDetectedItemCount"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure total common-lisp:nil
                                    ((amount :target-type string :member-name
                                      "Amount" :json-name "amount")
                                     (unit :target-type string :member-name
                                      "Unit" :json-name "unit"))
                                    (:shape-name "Total"))

(smithy/sdk/shapes:define-structure trigger-details common-lisp:nil
                                    ((guard-duty-finding-id :target-type
                                      non-empty-string :member-name
                                      "GuardDutyFindingId" :json-name
                                      "guardDutyFindingId")
                                     (description :target-type non-empty-string
                                      :member-name "Description" :json-name
                                      "description"))
                                    (:shape-name "TriggerDetails"))

(smithy/sdk/shapes:define-input unarchive-findings-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-ids :target-type finding-ids
                                  :required common-lisp:t :member-name
                                  "FindingIds" :json-name "findingIds"))
                                (:shape-name "UnarchiveFindingsRequest"))

(smithy/sdk/shapes:define-output unarchive-findings-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UnarchiveFindingsResponse"))

(smithy/sdk/shapes:define-structure unprocessed-account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId" :json-name "accountId")
                                     (result :target-type string :required
                                      common-lisp:t :member-name "Result"
                                      :json-name "result"))
                                    (:shape-name "UnprocessedAccount"))

(smithy/sdk/shapes:define-list unprocessed-accounts :member unprocessed-account)

(smithy/sdk/shapes:define-structure unprocessed-data-sources-result
                                    common-lisp:nil
                                    ((malware-protection :target-type
                                      malware-protection-configuration-result
                                      :member-name "MalwareProtection"
                                      :json-name "malwareProtection"))
                                    (:shape-name
                                     "UnprocessedDataSourcesResult"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type guard-duty-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t
                                  :json-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys" :json-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-detector-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (enable :target-type boolean :member-name
                                  "Enable" :json-name "enable")
                                 (finding-publishing-frequency :target-type
                                  finding-publishing-frequency :member-name
                                  "FindingPublishingFrequency" :json-name
                                  "findingPublishingFrequency")
                                 (data-sources :target-type
                                  data-source-configurations :member-name
                                  "DataSources" :json-name "dataSources")
                                 (features :target-type
                                  detector-feature-configurations :member-name
                                  "Features" :json-name "features"))
                                (:shape-name "UpdateDetectorRequest"))

(smithy/sdk/shapes:define-output update-detector-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDetectorResponse"))

(smithy/sdk/shapes:define-input update-filter-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (filter-name :target-type string :required
                                  common-lisp:t :member-name "FilterName"
                                  :http-label common-lisp:t :json-name
                                  "filterName")
                                 (description :target-type filter-description
                                  :member-name "Description" :json-name
                                  "description")
                                 (action :target-type filter-action
                                  :member-name "Action" :json-name "action")
                                 (rank :target-type filter-rank :member-name
                                  "Rank" :json-name "rank")
                                 (finding-criteria :target-type
                                  finding-criteria :member-name
                                  "FindingCriteria" :json-name
                                  "findingCriteria"))
                                (:shape-name "UpdateFilterRequest"))

(smithy/sdk/shapes:define-output update-filter-response common-lisp:nil
                                 ((name :target-type filter-name :required
                                   common-lisp:t :member-name "Name" :json-name
                                   "name"))
                                 (:shape-name "UpdateFilterResponse"))

(smithy/sdk/shapes:define-input update-findings-feedback-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (finding-ids :target-type finding-ids
                                  :required common-lisp:t :member-name
                                  "FindingIds" :json-name "findingIds")
                                 (feedback :target-type feedback :required
                                  common-lisp:t :member-name "Feedback"
                                  :json-name "feedback")
                                 (comments :target-type string :member-name
                                  "Comments" :json-name "comments"))
                                (:shape-name "UpdateFindingsFeedbackRequest"))

(smithy/sdk/shapes:define-output update-findings-feedback-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateFindingsFeedbackResponse"))

(smithy/sdk/shapes:define-input update-ipset-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (ip-set-id :target-type string :required
                                  common-lisp:t :member-name "IpSetId"
                                  :http-label common-lisp:t :json-name
                                  "ipSetId")
                                 (name :target-type name :member-name "Name"
                                  :json-name "name")
                                 (location :target-type location :member-name
                                  "Location" :json-name "location")
                                 (activate :target-type boolean :member-name
                                  "Activate" :json-name "activate")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner" :json-name
                                  "expectedBucketOwner"))
                                (:shape-name "UpdateIPSetRequest"))

(smithy/sdk/shapes:define-output update-ipset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateIPSetResponse"))

(smithy/sdk/shapes:define-input update-malware-protection-plan-request
                                common-lisp:nil
                                ((malware-protection-plan-id :target-type
                                  string :required common-lisp:t :member-name
                                  "MalwareProtectionPlanId" :http-label
                                  common-lisp:t :json-name
                                  "malwareProtectionPlanId")
                                 (role :target-type string :member-name "Role"
                                  :json-name "role")
                                 (actions :target-type
                                  malware-protection-plan-actions :member-name
                                  "Actions" :json-name "actions")
                                 (protected-resource :target-type
                                  update-protected-resource :member-name
                                  "ProtectedResource" :json-name
                                  "protectedResource"))
                                (:shape-name
                                 "UpdateMalwareProtectionPlanRequest"))

(smithy/sdk/shapes:define-input update-malware-scan-settings-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (scan-resource-criteria :target-type
                                  scan-resource-criteria :member-name
                                  "ScanResourceCriteria" :json-name
                                  "scanResourceCriteria")
                                 (ebs-snapshot-preservation :target-type
                                  ebs-snapshot-preservation :member-name
                                  "EbsSnapshotPreservation" :json-name
                                  "ebsSnapshotPreservation"))
                                (:shape-name
                                 "UpdateMalwareScanSettingsRequest"))

(smithy/sdk/shapes:define-output update-malware-scan-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateMalwareScanSettingsResponse"))

(smithy/sdk/shapes:define-input update-member-detectors-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (account-ids :target-type account-ids
                                  :required common-lisp:t :member-name
                                  "AccountIds" :json-name "accountIds")
                                 (data-sources :target-type
                                  data-source-configurations :member-name
                                  "DataSources" :json-name "dataSources")
                                 (features :target-type
                                  member-features-configurations :member-name
                                  "Features" :json-name "features"))
                                (:shape-name "UpdateMemberDetectorsRequest"))

(smithy/sdk/shapes:define-output update-member-detectors-response
                                 common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   unprocessed-accounts :required common-lisp:t
                                   :member-name "UnprocessedAccounts"
                                   :json-name "unprocessedAccounts"))
                                 (:shape-name "UpdateMemberDetectorsResponse"))

(smithy/sdk/shapes:define-input update-organization-configuration-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (auto-enable :target-type boolean :member-name
                                  "AutoEnable" :json-name "autoEnable")
                                 (data-sources :target-type
                                  organization-data-source-configurations
                                  :member-name "DataSources" :json-name
                                  "dataSources")
                                 (features :target-type
                                  organization-features-configurations
                                  :member-name "Features" :json-name
                                  "features")
                                 (auto-enable-organization-members :target-type
                                  auto-enable-members :member-name
                                  "AutoEnableOrganizationMembers" :json-name
                                  "autoEnableOrganizationMembers"))
                                (:shape-name
                                 "UpdateOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output update-organization-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-protected-resource common-lisp:nil
                                    ((s3bucket :target-type
                                      update-s3bucket-resource :member-name
                                      "S3Bucket" :json-name "s3Bucket"))
                                    (:shape-name "UpdateProtectedResource"))

(smithy/sdk/shapes:define-input update-publishing-destination-request
                                common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (destination-id :target-type string :required
                                  common-lisp:t :member-name "DestinationId"
                                  :http-label common-lisp:t :json-name
                                  "destinationId")
                                 (destination-properties :target-type
                                  destination-properties :member-name
                                  "DestinationProperties" :json-name
                                  "destinationProperties"))
                                (:shape-name
                                 "UpdatePublishingDestinationRequest"))

(smithy/sdk/shapes:define-output update-publishing-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdatePublishingDestinationResponse"))

(smithy/sdk/shapes:define-structure update-s3bucket-resource common-lisp:nil
                                    ((object-prefixes :target-type
                                      malware-protection-plan-object-prefixes-list
                                      :member-name "ObjectPrefixes" :json-name
                                      "objectPrefixes"))
                                    (:shape-name "UpdateS3BucketResource"))

(smithy/sdk/shapes:define-input update-threat-intel-set-request common-lisp:nil
                                ((detector-id :target-type detector-id
                                  :required common-lisp:t :member-name
                                  "DetectorId" :http-label common-lisp:t
                                  :json-name "detectorId")
                                 (threat-intel-set-id :target-type string
                                  :required common-lisp:t :member-name
                                  "ThreatIntelSetId" :http-label common-lisp:t
                                  :json-name "threatIntelSetId")
                                 (name :target-type name :member-name "Name"
                                  :json-name "name")
                                 (location :target-type location :member-name
                                  "Location" :json-name "location")
                                 (activate :target-type boolean :member-name
                                  "Activate" :json-name "activate")
                                 (expected-bucket-owner :target-type account-id
                                  :member-name "ExpectedBucketOwner" :json-name
                                  "expectedBucketOwner"))
                                (:shape-name "UpdateThreatIntelSetRequest"))

(smithy/sdk/shapes:define-output update-threat-intel-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateThreatIntelSetResponse"))

(smithy/sdk/shapes:define-structure usage-account-result common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (total :target-type total :member-name
                                      "Total" :json-name "total"))
                                    (:shape-name "UsageAccountResult"))

(smithy/sdk/shapes:define-list usage-account-result-list :member
                               usage-account-result)

(smithy/sdk/shapes:define-structure usage-criteria common-lisp:nil
                                    ((account-ids :target-type account-ids
                                      :member-name "AccountIds" :json-name
                                      "accountIds")
                                     (data-sources :target-type
                                      data-source-list :member-name
                                      "DataSources" :json-name "dataSources")
                                     (resources :target-type resource-list
                                      :member-name "Resources" :json-name
                                      "resources")
                                     (features :target-type usage-feature-list
                                      :member-name "Features" :json-name
                                      "features"))
                                    (:shape-name "UsageCriteria"))

(smithy/sdk/shapes:define-structure usage-data-source-result common-lisp:nil
                                    ((data-source :target-type data-source
                                      :member-name "DataSource" :json-name
                                      "dataSource")
                                     (total :target-type total :member-name
                                      "Total" :json-name "total"))
                                    (:shape-name "UsageDataSourceResult"))

(smithy/sdk/shapes:define-list usage-data-source-result-list :member
                               usage-data-source-result)

(smithy/sdk/shapes:define-enum usage-feature
    common-lisp:nil
  (:flow-logs "FLOW_LOGS")
  (:cloud-trail "CLOUD_TRAIL")
  (:dns-logs "DNS_LOGS")
  (:s3-data-events "S3_DATA_EVENTS")
  (:eks-audit-logs "EKS_AUDIT_LOGS")
  (:ebs-malware-protection "EBS_MALWARE_PROTECTION")
  (:rds-login-events "RDS_LOGIN_EVENTS")
  (:lambda-network-logs "LAMBDA_NETWORK_LOGS")
  (:eks-runtime-monitoring "EKS_RUNTIME_MONITORING")
  (:fargate-runtime-monitoring "FARGATE_RUNTIME_MONITORING")
  (:ec2-runtime-monitoring "EC2_RUNTIME_MONITORING")
  (:rds-dbi-protection-provisioned "RDS_DBI_PROTECTION_PROVISIONED")
  (:rds-dbi-protection-serverless "RDS_DBI_PROTECTION_SERVERLESS"))

(smithy/sdk/shapes:define-list usage-feature-list :member usage-feature)

(smithy/sdk/shapes:define-structure usage-feature-result common-lisp:nil
                                    ((feature :target-type usage-feature
                                      :member-name "Feature" :json-name
                                      "feature")
                                     (total :target-type total :member-name
                                      "Total" :json-name "total"))
                                    (:shape-name "UsageFeatureResult"))

(smithy/sdk/shapes:define-list usage-feature-result-list :member
                               usage-feature-result)

(smithy/sdk/shapes:define-structure usage-resource-result common-lisp:nil
                                    ((resource :target-type string :member-name
                                      "Resource" :json-name "resource")
                                     (total :target-type total :member-name
                                      "Total" :json-name "total"))
                                    (:shape-name "UsageResourceResult"))

(smithy/sdk/shapes:define-list usage-resource-result-list :member
                               usage-resource-result)

(smithy/sdk/shapes:define-enum usage-statistic-type
    common-lisp:nil
  (:sum-by-account "SUM_BY_ACCOUNT")
  (:sum-by-data-source "SUM_BY_DATA_SOURCE")
  (:sum-by-resource "SUM_BY_RESOURCE")
  (:top-resources "TOP_RESOURCES")
  (:sum-by-features "SUM_BY_FEATURES")
  (:top-accounts-by-feature "TOP_ACCOUNTS_BY_FEATURE"))

(smithy/sdk/shapes:define-structure usage-statistics common-lisp:nil
                                    ((sum-by-account :target-type
                                      usage-account-result-list :member-name
                                      "SumByAccount" :json-name "sumByAccount")
                                     (top-accounts-by-feature :target-type
                                      usage-top-accounts-result-list
                                      :member-name "TopAccountsByFeature"
                                      :json-name "topAccountsByFeature")
                                     (sum-by-data-source :target-type
                                      usage-data-source-result-list
                                      :member-name "SumByDataSource" :json-name
                                      "sumByDataSource")
                                     (sum-by-resource :target-type
                                      usage-resource-result-list :member-name
                                      "SumByResource" :json-name
                                      "sumByResource")
                                     (top-resources :target-type
                                      usage-resource-result-list :member-name
                                      "TopResources" :json-name "topResources")
                                     (sum-by-feature :target-type
                                      usage-feature-result-list :member-name
                                      "SumByFeature" :json-name
                                      "sumByFeature"))
                                    (:shape-name "UsageStatistics"))

(smithy/sdk/shapes:define-structure usage-top-account-result common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId" :json-name
                                      "accountId")
                                     (total :target-type total :member-name
                                      "Total" :json-name "total"))
                                    (:shape-name "UsageTopAccountResult"))

(smithy/sdk/shapes:define-list usage-top-accounts-by-feature-list :member
                               usage-top-account-result)

(smithy/sdk/shapes:define-structure usage-top-accounts-result common-lisp:nil
                                    ((feature :target-type usage-feature
                                      :member-name "Feature" :json-name
                                      "feature")
                                     (accounts :target-type
                                      usage-top-accounts-by-feature-list
                                      :member-name "Accounts" :json-name
                                      "accounts"))
                                    (:shape-name "UsageTopAccountsResult"))

(smithy/sdk/shapes:define-list usage-top-accounts-result-list :member
                               usage-top-accounts-result)

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (uid :target-type string :required
                                      common-lisp:t :member-name "Uid"
                                      :json-name "uid")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type"
                                      :json-name "type")
                                     (credential-uid :target-type string
                                      :member-name "CredentialUid" :json-name
                                      "credentialUid")
                                     (account :target-type account :member-name
                                      "Account" :json-name "account"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-structure volume common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (host-path :target-type host-path
                                      :member-name "HostPath" :json-name
                                      "hostPath"))
                                    (:shape-name "Volume"))

(smithy/sdk/shapes:define-structure volume-detail common-lisp:nil
                                    ((volume-arn :target-type string
                                      :member-name "VolumeArn" :json-name
                                      "volumeArn")
                                     (volume-type :target-type string
                                      :member-name "VolumeType" :json-name
                                      "volumeType")
                                     (device-name :target-type string
                                      :member-name "DeviceName" :json-name
                                      "deviceName")
                                     (volume-size-in-gb :target-type integer
                                      :member-name "VolumeSizeInGB" :json-name
                                      "volumeSizeInGB")
                                     (encryption-type :target-type string
                                      :member-name "EncryptionType" :json-name
                                      "encryptionType")
                                     (snapshot-arn :target-type string
                                      :member-name "SnapshotArn" :json-name
                                      "snapshotArn")
                                     (kms-key-arn :target-type string
                                      :member-name "KmsKeyArn" :json-name
                                      "kmsKeyArn"))
                                    (:shape-name "VolumeDetail"))

(smithy/sdk/shapes:define-list volume-details :member volume-detail)

(smithy/sdk/shapes:define-structure volume-mount common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name" :json-name "name")
                                     (mount-path :target-type string
                                      :member-name "MountPath" :json-name
                                      "mountPath"))
                                    (:shape-name "VolumeMount"))

(smithy/sdk/shapes:define-list volume-mounts :member volume-mount)

(smithy/sdk/shapes:define-list volumes :member volume)

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds" :json-name
                                      "subnetIds")
                                     (vpc-id :target-type string :member-name
                                      "VpcId" :json-name "vpcId")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups" :json-name
                                      "securityGroups"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/operation:define-operation accept-administrator-invitation
                                       :shape-name
                                       "AcceptAdministratorInvitation" :input
                                       accept-administrator-invitation-request
                                       :output
                                       accept-administrator-invitation-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/administrator"
                                       :code 200)

(smithy/sdk/operation:define-operation accept-invitation :shape-name
                                       "AcceptInvitation" :input
                                       accept-invitation-request :output
                                       accept-invitation-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/master" :code
                                       200)

(smithy/sdk/operation:define-operation archive-findings :shape-name
                                       "ArchiveFindings" :input
                                       archive-findings-request :output
                                       archive-findings-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings/archive"
                                       :code 200)

(smithy/sdk/operation:define-operation create-detector :shape-name
                                       "CreateDetector" :input
                                       create-detector-request :output
                                       create-detector-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri "/detector" :code
                                       200)

(smithy/sdk/operation:define-operation create-filter :shape-name "CreateFilter"
                                       :input create-filter-request :output
                                       create-filter-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/filter" :code
                                       200)

(smithy/sdk/operation:define-operation create-ipset :shape-name "CreateIPSet"
                                       :input create-ipset-request :output
                                       create-ipset-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/ipset" :code 200)

(smithy/sdk/operation:define-operation create-malware-protection-plan
                                       :shape-name
                                       "CreateMalwareProtectionPlan" :input
                                       create-malware-protection-plan-request
                                       :output
                                       create-malware-protection-plan-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/malware-protection-plan" :code 200)

(smithy/sdk/operation:define-operation create-members :shape-name
                                       "CreateMembers" :input
                                       create-members-request :output
                                       create-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member" :code
                                       200)

(smithy/sdk/operation:define-operation create-publishing-destination
                                       :shape-name
                                       "CreatePublishingDestination" :input
                                       create-publishing-destination-request
                                       :output
                                       create-publishing-destination-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/publishingDestination"
                                       :code 200)

(smithy/sdk/operation:define-operation create-sample-findings :shape-name
                                       "CreateSampleFindings" :input
                                       create-sample-findings-request :output
                                       create-sample-findings-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-threat-intel-set :shape-name
                                       "CreateThreatIntelSet" :input
                                       create-threat-intel-set-request :output
                                       create-threat-intel-set-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/threatintelset"
                                       :code 200)

(smithy/sdk/operation:define-operation decline-invitations :shape-name
                                       "DeclineInvitations" :input
                                       decline-invitations-request :output
                                       decline-invitations-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/invitation/decline" :code 200)

(smithy/sdk/operation:define-operation delete-detector :shape-name
                                       "DeleteDetector" :input
                                       delete-detector-request :output
                                       delete-detector-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/detector/{DetectorId}" :code 200)

(smithy/sdk/operation:define-operation delete-filter :shape-name "DeleteFilter"
                                       :input delete-filter-request :output
                                       delete-filter-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/detector/{DetectorId}/filter/{FilterName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-ipset :shape-name "DeleteIPSet"
                                       :input delete-ipset-request :output
                                       delete-ipset-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/detector/{DetectorId}/ipset/{IpSetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-invitations :shape-name
                                       "DeleteInvitations" :input
                                       delete-invitations-request :output
                                       delete-invitations-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri "/invitation/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-malware-protection-plan
                                       :shape-name
                                       "DeleteMalwareProtectionPlan" :input
                                       delete-malware-protection-plan-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/malware-protection-plan/{MalwareProtectionPlanId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-members :shape-name
                                       "DeleteMembers" :input
                                       delete-members-request :output
                                       delete-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-publishing-destination
                                       :shape-name
                                       "DeletePublishingDestination" :input
                                       delete-publishing-destination-request
                                       :output
                                       delete-publishing-destination-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/detector/{DetectorId}/publishingDestination/{DestinationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-threat-intel-set :shape-name
                                       "DeleteThreatIntelSet" :input
                                       delete-threat-intel-set-request :output
                                       delete-threat-intel-set-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-malware-scans :shape-name
                                       "DescribeMalwareScans" :input
                                       describe-malware-scans-request :output
                                       describe-malware-scans-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/malware-scans"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-organization-configuration
                                       :shape-name
                                       "DescribeOrganizationConfiguration"
                                       :input
                                       describe-organization-configuration-request
                                       :output
                                       describe-organization-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/admin" :code 200)

(smithy/sdk/operation:define-operation describe-publishing-destination
                                       :shape-name
                                       "DescribePublishingDestination" :input
                                       describe-publishing-destination-request
                                       :output
                                       describe-publishing-destination-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/publishingDestination/{DestinationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-organization-admin-account
                                       :shape-name
                                       "DisableOrganizationAdminAccount" :input
                                       disable-organization-admin-account-request
                                       :output
                                       disable-organization-admin-account-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri "/admin/disable"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-from-administrator-account
                                       :shape-name
                                       "DisassociateFromAdministratorAccount"
                                       :input
                                       disassociate-from-administrator-account-request
                                       :output
                                       disassociate-from-administrator-account-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/administrator/disassociate"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-from-master-account
                                       :shape-name
                                       "DisassociateFromMasterAccount" :input
                                       disassociate-from-master-account-request
                                       :output
                                       disassociate-from-master-account-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/master/disassociate"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-members :shape-name
                                       "DisassociateMembers" :input
                                       disassociate-members-request :output
                                       disassociate-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/disassociate"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-organization-admin-account
                                       :shape-name
                                       "EnableOrganizationAdminAccount" :input
                                       enable-organization-admin-account-request
                                       :output
                                       enable-organization-admin-account-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri "/admin/enable"
                                       :code 200)

(smithy/sdk/operation:define-operation get-administrator-account :shape-name
                                       "GetAdministratorAccount" :input
                                       get-administrator-account-request
                                       :output
                                       get-administrator-account-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/administrator"
                                       :code 200)

(smithy/sdk/operation:define-operation get-coverage-statistics :shape-name
                                       "GetCoverageStatistics" :input
                                       get-coverage-statistics-request :output
                                       get-coverage-statistics-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/coverage/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-detector :shape-name "GetDetector"
                                       :input get-detector-request :output
                                       get-detector-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}" :code 200)

(smithy/sdk/operation:define-operation get-filter :shape-name "GetFilter"
                                       :input get-filter-request :output
                                       get-filter-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/filter/{FilterName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-findings :shape-name "GetFindings"
                                       :input get-findings-request :output
                                       get-findings-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-findings-statistics :shape-name
                                       "GetFindingsStatistics" :input
                                       get-findings-statistics-request :output
                                       get-findings-statistics-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-ipset :shape-name "GetIPSet" :input
                                       get-ipset-request :output
                                       get-ipset-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/ipset/{IpSetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-invitations-count :shape-name
                                       "GetInvitationsCount" :input
                                       get-invitations-count-request :output
                                       get-invitations-count-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/invitation/count"
                                       :code 200)

(smithy/sdk/operation:define-operation get-malware-protection-plan :shape-name
                                       "GetMalwareProtectionPlan" :input
                                       get-malware-protection-plan-request
                                       :output
                                       get-malware-protection-plan-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/malware-protection-plan/{MalwareProtectionPlanId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-malware-scan-settings :shape-name
                                       "GetMalwareScanSettings" :input
                                       get-malware-scan-settings-request
                                       :output
                                       get-malware-scan-settings-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/malware-scan-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation get-master-account :shape-name
                                       "GetMasterAccount" :input
                                       get-master-account-request :output
                                       get-master-account-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/master" :code
                                       200)

(smithy/sdk/operation:define-operation get-member-detectors :shape-name
                                       "GetMemberDetectors" :input
                                       get-member-detectors-request :output
                                       get-member-detectors-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/detector/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-members :shape-name "GetMembers"
                                       :input get-members-request :output
                                       get-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-organization-statistics :shape-name
                                       "GetOrganizationStatistics" :input
                                       common-lisp:null :output
                                       get-organization-statistics-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/organization/statistics" :code 200)

(smithy/sdk/operation:define-operation get-remaining-free-trial-days
                                       :shape-name "GetRemainingFreeTrialDays"
                                       :input
                                       get-remaining-free-trial-days-request
                                       :output
                                       get-remaining-free-trial-days-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/freeTrial/daysRemaining"
                                       :code 200)

(smithy/sdk/operation:define-operation get-threat-intel-set :shape-name
                                       "GetThreatIntelSet" :input
                                       get-threat-intel-set-request :output
                                       get-threat-intel-set-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-usage-statistics :shape-name
                                       "GetUsageStatistics" :input
                                       get-usage-statistics-request :output
                                       get-usage-statistics-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/usage/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation invite-members :shape-name
                                       "InviteMembers" :input
                                       invite-members-request :output
                                       invite-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/invite"
                                       :code 200)

(smithy/sdk/operation:define-operation list-coverage :shape-name "ListCoverage"
                                       :input list-coverage-request :output
                                       list-coverage-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/coverage" :code
                                       200)

(smithy/sdk/operation:define-operation list-detectors :shape-name
                                       "ListDetectors" :input
                                       list-detectors-request :output
                                       list-detectors-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/detector" :code 200)

(smithy/sdk/operation:define-operation list-filters :shape-name "ListFilters"
                                       :input list-filters-request :output
                                       list-filters-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/filter" :code
                                       200)

(smithy/sdk/operation:define-operation list-findings :shape-name "ListFindings"
                                       :input list-findings-request :output
                                       list-findings-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings" :code
                                       200)

(smithy/sdk/operation:define-operation list-ipsets :shape-name "ListIPSets"
                                       :input list-ipsets-request :output
                                       list-ipsets-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/ipset" :code 200)

(smithy/sdk/operation:define-operation list-invitations :shape-name
                                       "ListInvitations" :input
                                       list-invitations-request :output
                                       list-invitations-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/invitation" :code
                                       200)

(smithy/sdk/operation:define-operation list-malware-protection-plans
                                       :shape-name "ListMalwareProtectionPlans"
                                       :input
                                       list-malware-protection-plans-request
                                       :output
                                       list-malware-protection-plans-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/malware-protection-plan" :code 200)

(smithy/sdk/operation:define-operation list-members :shape-name "ListMembers"
                                       :input list-members-request :output
                                       list-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/member" :code
                                       200)

(smithy/sdk/operation:define-operation list-organization-admin-accounts
                                       :shape-name
                                       "ListOrganizationAdminAccounts" :input
                                       list-organization-admin-accounts-request
                                       :output
                                       list-organization-admin-accounts-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/admin" :code 200)

(smithy/sdk/operation:define-operation list-publishing-destinations :shape-name
                                       "ListPublishingDestinations" :input
                                       list-publishing-destinations-request
                                       :output
                                       list-publishing-destinations-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/publishingDestination"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-threat-intel-sets :shape-name
                                       "ListThreatIntelSets" :input
                                       list-threat-intel-sets-request :output
                                       list-threat-intel-sets-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "GET" :uri
                                       "/detector/{DetectorId}/threatintelset"
                                       :code 200)

(smithy/sdk/operation:define-operation start-malware-scan :shape-name
                                       "StartMalwareScan" :input
                                       start-malware-scan-request :output
                                       start-malware-scan-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/malware-scan/start" :code 200)

(smithy/sdk/operation:define-operation start-monitoring-members :shape-name
                                       "StartMonitoringMembers" :input
                                       start-monitoring-members-request :output
                                       start-monitoring-members-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/start"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-monitoring-members :shape-name
                                       "StopMonitoringMembers" :input
                                       stop-monitoring-members-request :output
                                       stop-monitoring-members-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation unarchive-findings :shape-name
                                       "UnarchiveFindings" :input
                                       unarchive-findings-request :output
                                       unarchive-findings-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings/unarchive"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-detector :shape-name
                                       "UpdateDetector" :input
                                       update-detector-request :output
                                       update-detector-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}" :code 200)

(smithy/sdk/operation:define-operation update-filter :shape-name "UpdateFilter"
                                       :input update-filter-request :output
                                       update-filter-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/filter/{FilterName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-findings-feedback :shape-name
                                       "UpdateFindingsFeedback" :input
                                       update-findings-feedback-request :output
                                       update-findings-feedback-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/findings/feedback"
                                       :code 200)

(smithy/sdk/operation:define-operation update-ipset :shape-name "UpdateIPSet"
                                       :input update-ipset-request :output
                                       update-ipset-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/ipset/{IpSetId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-malware-protection-plan
                                       :shape-name
                                       "UpdateMalwareProtectionPlan" :input
                                       update-malware-protection-plan-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/malware-protection-plan/{MalwareProtectionPlanId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-malware-scan-settings :shape-name
                                       "UpdateMalwareScanSettings" :input
                                       update-malware-scan-settings-request
                                       :output
                                       update-malware-scan-settings-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/malware-scan-settings"
                                       :code 200)

(smithy/sdk/operation:define-operation update-member-detectors :shape-name
                                       "UpdateMemberDetectors" :input
                                       update-member-detectors-request :output
                                       update-member-detectors-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/member/detector/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-organization-configuration
                                       :shape-name
                                       "UpdateOrganizationConfiguration" :input
                                       update-organization-configuration-request
                                       :output
                                       update-organization-configuration-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/admin" :code 200)

(smithy/sdk/operation:define-operation update-publishing-destination
                                       :shape-name
                                       "UpdatePublishingDestination" :input
                                       update-publishing-destination-request
                                       :output
                                       update-publishing-destination-response
                                       :errors
                                       (bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/publishingDestination/{DestinationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-threat-intel-set :shape-name
                                       "UpdateThreatIntelSet" :input
                                       update-threat-intel-set-request :output
                                       update-threat-intel-set-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception)
                                       :method "POST" :uri
                                       "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}"
                                       :code 200)
