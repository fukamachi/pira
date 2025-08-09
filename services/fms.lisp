(uiop/package:define-package #:pira/fms (:use)
                             (:export #:awsaccount-id #:awsaccount-id-list
                              #:awsfms-20180101 #:awsregion #:awsregion-list
                              #:account-id-list #:account-role-status
                              #:account-scope #:action-target
                              #:admin-account-summary
                              #:admin-account-summary-list #:admin-scope #:app
                              #:apps-list #:apps-list-data
                              #:apps-list-data-summary #:apps-lists-data
                              #:associate-admin-account
                              #:associate-third-party-firewall
                              #:aws-ec2instance-violation
                              #:aws-ec2network-interface-violation
                              #:aws-ec2network-interface-violations
                              #:aws-vpcsecurity-group-violation #:base62id
                              #:basic-integer #:batch-associate-resource
                              #:batch-disassociate-resource #:boolean
                              #:boolean-object #:cidr #:compliance-violator
                              #:compliance-violator-metadata
                              #:compliance-violators
                              #:create-network-acl-action
                              #:create-network-acl-entries-action
                              #:customer-policy-scope-id
                              #:customer-policy-scope-id-list
                              #:customer-policy-scope-id-type
                              #:customer-policy-scope-map
                              #:customer-policy-status #:delete-apps-list
                              #:delete-network-acl-entries-action
                              #:delete-notification-channel #:delete-policy
                              #:delete-protocols-list #:delete-resource-set
                              #:dependent-service-name #:description
                              #:destination-type #:detailed-info
                              #:disassociate-admin-account
                              #:disassociate-third-party-firewall
                              #:discovered-resource #:discovered-resource-list
                              #:dns-duplicate-rule-group-violation
                              #:dns-rule-group-limit-exceeded-violation
                              #:dns-rule-group-priorities
                              #:dns-rule-group-priority
                              #:dns-rule-group-priority-conflict-violation
                              #:ec2associate-route-table-action
                              #:ec2copy-route-table-action
                              #:ec2create-route-action
                              #:ec2create-route-table-action
                              #:ec2delete-route-action
                              #:ec2replace-route-action
                              #:ec2replace-route-table-association-action
                              #:entries-description #:entries-with-conflicts
                              #:entry-description #:entry-type
                              #:entry-violation #:entry-violation-reason
                              #:entry-violation-reasons #:entry-violations
                              #:error-message #:evaluation-result
                              #:evaluation-results #:expected-route
                              #:expected-routes
                              #:fmspolicy-update-firewall-creation-config-action
                              #:failed-item #:failed-item-list
                              #:failed-item-reason #:firewall-deployment-model
                              #:firewall-policy-id #:firewall-policy-name
                              #:firewall-subnet-is-out-of-scope-violation
                              #:firewall-subnet-missing-vpcendpoint-violation
                              #:get-admin-account #:get-admin-scope
                              #:get-apps-list #:get-compliance-detail
                              #:get-notification-channel #:get-policy
                              #:get-protection-status #:get-protocols-list
                              #:get-resource-set
                              #:get-third-party-firewall-association-status
                              #:get-violation-details #:ipport-number
                              #:ipport-number-integer #:identifier
                              #:identifier-list #:integer-object
                              #:integer-object-minimum0
                              #:invalid-network-acl-entries-violation
                              #:issue-info-map
                              #:length-bounded-non-empty-string
                              #:length-bounded-string
                              #:length-bounded-string-list
                              #:list-admin-accounts-for-organization
                              #:list-admins-managing-account #:list-apps-lists
                              #:list-compliance-status
                              #:list-discovered-resources #:list-id
                              #:list-member-accounts #:list-policies
                              #:list-protocols-lists
                              #:list-resource-set-resources
                              #:list-resource-sets #:list-tags-for-resource
                              #:list-third-party-firewall-firewall-policies
                              #:managed-service-data
                              #:marketplace-subscription-onboarding-status
                              #:member-accounts #:name
                              #:network-acl-common-policy #:network-acl-entries
                              #:network-acl-entry #:network-acl-entry-set
                              #:network-acl-icmp-type-code
                              #:network-acl-port-range
                              #:network-acl-rule-action
                              #:network-firewall-action
                              #:network-firewall-action-list
                              #:network-firewall-black-hole-route-detected-violation
                              #:network-firewall-internet-traffic-not-inspected-violation
                              #:network-firewall-invalid-route-configuration-violation
                              #:network-firewall-missing-expected-rtviolation
                              #:network-firewall-missing-expected-routes-violation
                              #:network-firewall-missing-firewall-violation
                              #:network-firewall-missing-subnet-violation
                              #:network-firewall-override-action
                              #:network-firewall-policy
                              #:network-firewall-policy-description
                              #:network-firewall-policy-modified-violation
                              #:network-firewall-resource-name
                              #:network-firewall-stateful-rule-group-override
                              #:network-firewall-unexpected-firewall-routes-violation
                              #:network-firewall-unexpected-gateway-routes-violation
                              #:ordered-remediation-actions
                              #:organization-status #:organizational-unit-id
                              #:organizational-unit-id-list
                              #:organizational-unit-scope
                              #:pagination-max-results #:pagination-token
                              #:partial-match #:partial-matches #:policy
                              #:policy-compliance-detail
                              #:policy-compliance-status
                              #:policy-compliance-status-list
                              #:policy-compliance-status-type #:policy-id
                              #:policy-option #:policy-summary
                              #:policy-summary-list #:policy-type-scope
                              #:policy-update-token
                              #:possible-remediation-action
                              #:possible-remediation-action-list
                              #:possible-remediation-actions
                              #:previous-apps-list #:previous-list-version
                              #:previous-protocols-list #:priority-number
                              #:protection-data #:protocol #:protocols-list
                              #:protocols-list-data
                              #:protocols-list-data-summary
                              #:protocols-lists-data #:put-admin-account
                              #:put-apps-list #:put-notification-channel
                              #:put-policy #:put-protocols-list
                              #:put-resource-set #:reference-rule
                              #:region-scope #:remediation-action
                              #:remediation-action-description
                              #:remediation-action-type
                              #:remediation-action-with-order
                              #:replace-network-acl-association-action
                              #:resource #:resource-arn #:resource-arn-list
                              #:resource-count #:resource-description
                              #:resource-id #:resource-id-list #:resource-list
                              #:resource-name #:resource-set #:resource-set-ids
                              #:resource-set-status #:resource-set-summary
                              #:resource-set-summary-list #:resource-tag
                              #:resource-tag-key
                              #:resource-tag-logical-operator
                              #:resource-tag-value #:resource-tags
                              #:resource-type #:resource-type-list
                              #:resource-violation #:resource-violations
                              #:route
                              #:route-has-out-of-scope-endpoint-violation
                              #:routes #:rule-order
                              #:security-group-remediation-action
                              #:security-group-remediation-actions
                              #:security-group-rule-description
                              #:security-service-policy-data
                              #:security-service-type
                              #:security-service-type-list
                              #:stateful-engine-options #:stateful-rule-group
                              #:stateful-rule-group-list #:stateless-rule-group
                              #:stateless-rule-group-list
                              #:stateless-rule-group-priority
                              #:stream-exception-policy #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target-type
                              #:target-violation-reason
                              #:target-violation-reasons #:third-party-firewall
                              #:third-party-firewall-association-status
                              #:third-party-firewall-firewall-policies
                              #:third-party-firewall-firewall-policy
                              #:third-party-firewall-missing-expected-route-table-violation
                              #:third-party-firewall-missing-firewall-violation
                              #:third-party-firewall-missing-subnet-violation
                              #:third-party-firewall-policy #:time-stamp
                              #:untag-resource #:update-token
                              #:violation-detail #:violation-reason
                              #:violation-target
                              #:web-aclhas-incompatible-configuration-violation
                              #:web-aclhas-out-of-scope-resources-violation))
(common-lisp:in-package #:pira/fms)

(smithy/sdk/service:define-service awsfms-20180101 :shape-name
                                   "AWSFMS_20180101" :version "2018-01-01"
                                   :title "Firewall Management Service" :traits
                                   '(("aws.api#service" ("sdkId" . "FMS")
                                      ("arnNamespace" . "fms")
                                      ("cloudFormationName" . "FMS")
                                      ("cloudTrailEventSource"
                                       . "fms.amazonaws.com")
                                      ("endpointPrefix" . "fms"))
                                     ("aws.auth#sigv4" ("name" . "fms"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list awsaccount-id-list :member awsaccount-id)

(smithy/sdk/shapes:define-type awsregion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list awsregion-list :member awsregion)

(smithy/sdk/shapes:define-list account-id-list :member awsaccount-id)

(smithy/sdk/shapes:define-enum account-role-status
    common-lisp:nil
  (:ready "READY")
  (:creating "CREATING")
  (:pending-deletion "PENDING_DELETION")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure account-scope common-lisp:nil
                                    ((accounts :target-type account-id-list
                                      :member-name "Accounts")
                                     (all-accounts-enabled :target-type boolean
                                      :member-name "AllAccountsEnabled")
                                     (exclude-specified-accounts :target-type
                                      boolean :member-name
                                      "ExcludeSpecifiedAccounts"))
                                    (:shape-name "AccountScope"))

(smithy/sdk/shapes:define-structure action-target common-lisp:nil
                                    ((resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (description :target-type
                                      length-bounded-string :member-name
                                      "Description"))
                                    (:shape-name "ActionTarget"))

(smithy/sdk/shapes:define-structure admin-account-summary common-lisp:nil
                                    ((admin-account :target-type awsaccount-id
                                      :member-name "AdminAccount")
                                     (default-admin :target-type boolean
                                      :member-name "DefaultAdmin")
                                     (status :target-type organization-status
                                      :member-name "Status"))
                                    (:shape-name "AdminAccountSummary"))

(smithy/sdk/shapes:define-list admin-account-summary-list :member
                               admin-account-summary)

(smithy/sdk/shapes:define-structure admin-scope common-lisp:nil
                                    ((account-scope :target-type account-scope
                                      :member-name "AccountScope")
                                     (organizational-unit-scope :target-type
                                      organizational-unit-scope :member-name
                                      "OrganizationalUnitScope")
                                     (region-scope :target-type region-scope
                                      :member-name "RegionScope")
                                     (policy-type-scope :target-type
                                      policy-type-scope :member-name
                                      "PolicyTypeScope"))
                                    (:shape-name "AdminScope"))

(smithy/sdk/shapes:define-structure app common-lisp:nil
                                    ((app-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "AppName")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol")
                                     (port :target-type ipport-number :required
                                      common-lisp:t :member-name "Port"))
                                    (:shape-name "App"))

(smithy/sdk/shapes:define-list apps-list :member app)

(smithy/sdk/shapes:define-structure apps-list-data common-lisp:nil
                                    ((list-id :target-type list-id :member-name
                                      "ListId")
                                     (list-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ListName")
                                     (list-update-token :target-type
                                      update-token :member-name
                                      "ListUpdateToken")
                                     (create-time :target-type time-stamp
                                      :member-name "CreateTime")
                                     (last-update-time :target-type time-stamp
                                      :member-name "LastUpdateTime")
                                     (apps-list :target-type apps-list
                                      :required common-lisp:t :member-name
                                      "AppsList")
                                     (previous-apps-list :target-type
                                      previous-apps-list :member-name
                                      "PreviousAppsList"))
                                    (:shape-name "AppsListData"))

(smithy/sdk/shapes:define-structure apps-list-data-summary common-lisp:nil
                                    ((list-arn :target-type resource-arn
                                      :member-name "ListArn")
                                     (list-id :target-type list-id :member-name
                                      "ListId")
                                     (list-name :target-type resource-name
                                      :member-name "ListName")
                                     (apps-list :target-type apps-list
                                      :member-name "AppsList"))
                                    (:shape-name "AppsListDataSummary"))

(smithy/sdk/shapes:define-list apps-lists-data :member apps-list-data-summary)

(smithy/sdk/shapes:define-input associate-admin-account-request common-lisp:nil
                                ((admin-account :target-type awsaccount-id
                                  :required common-lisp:t :member-name
                                  "AdminAccount"))
                                (:shape-name "AssociateAdminAccountRequest"))

(smithy/sdk/shapes:define-input associate-third-party-firewall-request
                                common-lisp:nil
                                ((third-party-firewall :target-type
                                  third-party-firewall :required common-lisp:t
                                  :member-name "ThirdPartyFirewall"))
                                (:shape-name
                                 "AssociateThirdPartyFirewallRequest"))

(smithy/sdk/shapes:define-output associate-third-party-firewall-response
                                 common-lisp:nil
                                 ((third-party-firewall-status :target-type
                                   third-party-firewall-association-status
                                   :member-name "ThirdPartyFirewallStatus"))
                                 (:shape-name
                                  "AssociateThirdPartyFirewallResponse"))

(smithy/sdk/shapes:define-structure aws-ec2instance-violation common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (aws-ec2network-interface-violations
                                      :target-type
                                      aws-ec2network-interface-violations
                                      :member-name
                                      "AwsEc2NetworkInterfaceViolations"))
                                    (:shape-name "AwsEc2InstanceViolation"))

(smithy/sdk/shapes:define-structure aws-ec2network-interface-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (violating-security-groups :target-type
                                      resource-id-list :member-name
                                      "ViolatingSecurityGroups"))
                                    (:shape-name
                                     "AwsEc2NetworkInterfaceViolation"))

(smithy/sdk/shapes:define-list aws-ec2network-interface-violations :member
                               aws-ec2network-interface-violation)

(smithy/sdk/shapes:define-structure aws-vpcsecurity-group-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (violation-target-description :target-type
                                      length-bounded-string :member-name
                                      "ViolationTargetDescription")
                                     (partial-matches :target-type
                                      partial-matches :member-name
                                      "PartialMatches")
                                     (possible-security-group-remediation-actions
                                      :target-type
                                      security-group-remediation-actions
                                      :member-name
                                      "PossibleSecurityGroupRemediationActions"))
                                    (:shape-name
                                     "AwsVPCSecurityGroupViolation"))

(smithy/sdk/shapes:define-type base62id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type basic-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input batch-associate-resource-request
                                common-lisp:nil
                                ((resource-set-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "ResourceSetIdentifier")
                                 (items :target-type identifier-list :required
                                  common-lisp:t :member-name "Items"))
                                (:shape-name "BatchAssociateResourceRequest"))

(smithy/sdk/shapes:define-output batch-associate-resource-response
                                 common-lisp:nil
                                 ((resource-set-identifier :target-type
                                   identifier :required common-lisp:t
                                   :member-name "ResourceSetIdentifier")
                                  (failed-items :target-type failed-item-list
                                   :required common-lisp:t :member-name
                                   "FailedItems"))
                                 (:shape-name "BatchAssociateResourceResponse"))

(smithy/sdk/shapes:define-input batch-disassociate-resource-request
                                common-lisp:nil
                                ((resource-set-identifier :target-type
                                  identifier :required common-lisp:t
                                  :member-name "ResourceSetIdentifier")
                                 (items :target-type identifier-list :required
                                  common-lisp:t :member-name "Items"))
                                (:shape-name
                                 "BatchDisassociateResourceRequest"))

(smithy/sdk/shapes:define-output batch-disassociate-resource-response
                                 common-lisp:nil
                                 ((resource-set-identifier :target-type
                                   identifier :required common-lisp:t
                                   :member-name "ResourceSetIdentifier")
                                  (failed-items :target-type failed-item-list
                                   :required common-lisp:t :member-name
                                   "FailedItems"))
                                 (:shape-name
                                  "BatchDisassociateResourceResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compliance-violator common-lisp:nil
                                    ((resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (violation-reason :target-type
                                      violation-reason :member-name
                                      "ViolationReason")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (metadata :target-type
                                      compliance-violator-metadata :member-name
                                      "Metadata"))
                                    (:shape-name "ComplianceViolator"))

(smithy/sdk/shapes:define-map compliance-violator-metadata :key
                              length-bounded-string :value
                              length-bounded-string)

(smithy/sdk/shapes:define-list compliance-violators :member compliance-violator)

(smithy/sdk/shapes:define-structure create-network-acl-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (vpc :target-type action-target
                                      :member-name "Vpc")
                                     (fmscan-remediate :target-type boolean
                                      :member-name "FMSCanRemediate"))
                                    (:shape-name "CreateNetworkAclAction"))

(smithy/sdk/shapes:define-structure create-network-acl-entries-action
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (network-acl-id :target-type action-target
                                      :member-name "NetworkAclId")
                                     (network-acl-entries-to-be-created
                                      :target-type entries-description
                                      :member-name
                                      "NetworkAclEntriesToBeCreated")
                                     (fmscan-remediate :target-type boolean
                                      :member-name "FMSCanRemediate"))
                                    (:shape-name
                                     "CreateNetworkAclEntriesAction"))

(smithy/sdk/shapes:define-type customer-policy-scope-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list customer-policy-scope-id-list :member
                               customer-policy-scope-id)

(smithy/sdk/shapes:define-enum customer-policy-scope-id-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:org-unit "ORG_UNIT"))

(smithy/sdk/shapes:define-map customer-policy-scope-map :key
                              customer-policy-scope-id-type :value
                              customer-policy-scope-id-list)

(smithy/sdk/shapes:define-enum customer-policy-status
    common-lisp:nil
  (:active "ACTIVE")
  (:out-of-admin-scope "OUT_OF_ADMIN_SCOPE"))

(smithy/sdk/shapes:define-input delete-apps-list-request common-lisp:nil
                                ((list-id :target-type list-id :required
                                  common-lisp:t :member-name "ListId"))
                                (:shape-name "DeleteAppsListRequest"))

(smithy/sdk/shapes:define-structure delete-network-acl-entries-action
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (network-acl-id :target-type action-target
                                      :member-name "NetworkAclId")
                                     (network-acl-entries-to-be-deleted
                                      :target-type entries-description
                                      :member-name
                                      "NetworkAclEntriesToBeDeleted")
                                     (fmscan-remediate :target-type boolean
                                      :member-name "FMSCanRemediate"))
                                    (:shape-name
                                     "DeleteNetworkAclEntriesAction"))

(smithy/sdk/shapes:define-input delete-notification-channel-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DeleteNotificationChannelRequest"))

(smithy/sdk/shapes:define-input delete-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (delete-all-policy-resources :target-type
                                  boolean :member-name
                                  "DeleteAllPolicyResources"))
                                (:shape-name "DeletePolicyRequest"))

(smithy/sdk/shapes:define-input delete-protocols-list-request common-lisp:nil
                                ((list-id :target-type list-id :required
                                  common-lisp:t :member-name "ListId"))
                                (:shape-name "DeleteProtocolsListRequest"))

(smithy/sdk/shapes:define-input delete-resource-set-request common-lisp:nil
                                ((identifier :target-type base62id :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "DeleteResourceSetRequest"))

(smithy/sdk/shapes:define-enum dependent-service-name
    common-lisp:nil
  (:awsconfig "AWSCONFIG")
  (:awswaf "AWSWAF")
  (:awsshield-advanced "AWSSHIELD_ADVANCED")
  (:awsvirtual-private-cloud "AWSVPC"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum destination-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:ipv6 "IPV6")
  (:prefix-list "PREFIX_LIST"))

(smithy/sdk/shapes:define-type detailed-info smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-admin-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DisassociateAdminAccountRequest"))

(smithy/sdk/shapes:define-input disassociate-third-party-firewall-request
                                common-lisp:nil
                                ((third-party-firewall :target-type
                                  third-party-firewall :required common-lisp:t
                                  :member-name "ThirdPartyFirewall"))
                                (:shape-name
                                 "DisassociateThirdPartyFirewallRequest"))

(smithy/sdk/shapes:define-output disassociate-third-party-firewall-response
                                 common-lisp:nil
                                 ((third-party-firewall-status :target-type
                                   third-party-firewall-association-status
                                   :member-name "ThirdPartyFirewallStatus"))
                                 (:shape-name
                                  "DisassociateThirdPartyFirewallResponse"))

(smithy/sdk/shapes:define-structure discovered-resource common-lisp:nil
                                    ((uri :target-type identifier :member-name
                                      "URI")
                                     (account-id :target-type awsaccount-id
                                      :member-name "AccountId")
                                     (type :target-type resource-type
                                      :member-name "Type")
                                     (name :target-type resource-name
                                      :member-name "Name"))
                                    (:shape-name "DiscoveredResource"))

(smithy/sdk/shapes:define-list discovered-resource-list :member
                               discovered-resource)

(smithy/sdk/shapes:define-structure dns-duplicate-rule-group-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (violation-target-description :target-type
                                      length-bounded-string :member-name
                                      "ViolationTargetDescription"))
                                    (:shape-name
                                     "DnsDuplicateRuleGroupViolation"))

(smithy/sdk/shapes:define-structure dns-rule-group-limit-exceeded-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (violation-target-description :target-type
                                      length-bounded-string :member-name
                                      "ViolationTargetDescription")
                                     (number-of-rule-groups-already-associated
                                      :target-type basic-integer :member-name
                                      "NumberOfRuleGroupsAlreadyAssociated"))
                                    (:shape-name
                                     "DnsRuleGroupLimitExceededViolation"))

(smithy/sdk/shapes:define-list dns-rule-group-priorities :member
                               dns-rule-group-priority)

(smithy/sdk/shapes:define-type dns-rule-group-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure dns-rule-group-priority-conflict-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (violation-target-description :target-type
                                      length-bounded-string :member-name
                                      "ViolationTargetDescription")
                                     (conflicting-priority :target-type
                                      dns-rule-group-priority :member-name
                                      "ConflictingPriority")
                                     (conflicting-policy-id :target-type
                                      policy-id :member-name
                                      "ConflictingPolicyId")
                                     (unavailable-priorities :target-type
                                      dns-rule-group-priorities :member-name
                                      "UnavailablePriorities"))
                                    (:shape-name
                                     "DnsRuleGroupPriorityConflictViolation"))

(smithy/sdk/shapes:define-structure ec2associate-route-table-action
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (route-table-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "RouteTableId")
                                     (subnet-id :target-type action-target
                                      :member-name "SubnetId")
                                     (gateway-id :target-type action-target
                                      :member-name "GatewayId"))
                                    (:shape-name
                                     "EC2AssociateRouteTableAction"))

(smithy/sdk/shapes:define-structure ec2copy-route-table-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (vpc-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "VpcId")
                                     (route-table-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "RouteTableId"))
                                    (:shape-name "EC2CopyRouteTableAction"))

(smithy/sdk/shapes:define-structure ec2create-route-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (destination-cidr-block :target-type cidr
                                      :member-name "DestinationCidrBlock")
                                     (destination-prefix-list-id :target-type
                                      resource-id :member-name
                                      "DestinationPrefixListId")
                                     (destination-ipv6cidr-block :target-type
                                      cidr :member-name
                                      "DestinationIpv6CidrBlock")
                                     (vpc-endpoint-id :target-type
                                      action-target :member-name
                                      "VpcEndpointId")
                                     (gateway-id :target-type action-target
                                      :member-name "GatewayId")
                                     (route-table-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "RouteTableId"))
                                    (:shape-name "EC2CreateRouteAction"))

(smithy/sdk/shapes:define-structure ec2create-route-table-action
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (vpc-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "VpcId"))
                                    (:shape-name "EC2CreateRouteTableAction"))

(smithy/sdk/shapes:define-structure ec2delete-route-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (destination-cidr-block :target-type cidr
                                      :member-name "DestinationCidrBlock")
                                     (destination-prefix-list-id :target-type
                                      resource-id :member-name
                                      "DestinationPrefixListId")
                                     (destination-ipv6cidr-block :target-type
                                      cidr :member-name
                                      "DestinationIpv6CidrBlock")
                                     (route-table-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "RouteTableId"))
                                    (:shape-name "EC2DeleteRouteAction"))

(smithy/sdk/shapes:define-structure ec2replace-route-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (destination-cidr-block :target-type cidr
                                      :member-name "DestinationCidrBlock")
                                     (destination-prefix-list-id :target-type
                                      resource-id :member-name
                                      "DestinationPrefixListId")
                                     (destination-ipv6cidr-block :target-type
                                      cidr :member-name
                                      "DestinationIpv6CidrBlock")
                                     (gateway-id :target-type action-target
                                      :member-name "GatewayId")
                                     (route-table-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "RouteTableId"))
                                    (:shape-name "EC2ReplaceRouteAction"))

(smithy/sdk/shapes:define-structure ec2replace-route-table-association-action
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (association-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "AssociationId")
                                     (route-table-id :target-type action-target
                                      :required common-lisp:t :member-name
                                      "RouteTableId"))
                                    (:shape-name
                                     "EC2ReplaceRouteTableAssociationAction"))

(smithy/sdk/shapes:define-list entries-description :member entry-description)

(smithy/sdk/shapes:define-list entries-with-conflicts :member entry-description)

(smithy/sdk/shapes:define-structure entry-description common-lisp:nil
                                    ((entry-detail :target-type
                                      network-acl-entry :member-name
                                      "EntryDetail")
                                     (entry-rule-number :target-type
                                      integer-object-minimum0 :member-name
                                      "EntryRuleNumber")
                                     (entry-type :target-type entry-type
                                      :member-name "EntryType"))
                                    (:shape-name "EntryDescription"))

(smithy/sdk/shapes:define-enum entry-type
    common-lisp:nil
  (:fmsmanaged-first-entry "FMS_MANAGED_FIRST_ENTRY")
  (:fmsmanaged-last-entry "FMS_MANAGED_LAST_ENTRY")
  (:custom-entry "CUSTOM_ENTRY"))

(smithy/sdk/shapes:define-structure entry-violation common-lisp:nil
                                    ((expected-entry :target-type
                                      entry-description :member-name
                                      "ExpectedEntry")
                                     (expected-evaluation-order :target-type
                                      length-bounded-string :member-name
                                      "ExpectedEvaluationOrder")
                                     (actual-evaluation-order :target-type
                                      length-bounded-string :member-name
                                      "ActualEvaluationOrder")
                                     (entry-at-expected-evaluation-order
                                      :target-type entry-description
                                      :member-name
                                      "EntryAtExpectedEvaluationOrder")
                                     (entries-with-conflicts :target-type
                                      entries-with-conflicts :member-name
                                      "EntriesWithConflicts")
                                     (entry-violation-reasons :target-type
                                      entry-violation-reasons :member-name
                                      "EntryViolationReasons"))
                                    (:shape-name "EntryViolation"))

(smithy/sdk/shapes:define-enum entry-violation-reason
    common-lisp:nil
  (:missing-expected-entry "MISSING_EXPECTED_ENTRY")
  (:incorrect-entry-order "INCORRECT_ENTRY_ORDER")
  (:entry-conflict "ENTRY_CONFLICT"))

(smithy/sdk/shapes:define-list entry-violation-reasons :member
                               entry-violation-reason)

(smithy/sdk/shapes:define-list entry-violations :member entry-violation)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation-result common-lisp:nil
                                    ((compliance-status :target-type
                                      policy-compliance-status-type
                                      :member-name "ComplianceStatus")
                                     (violator-count :target-type
                                      resource-count :member-name
                                      "ViolatorCount")
                                     (evaluation-limit-exceeded :target-type
                                      boolean :member-name
                                      "EvaluationLimitExceeded"))
                                    (:shape-name "EvaluationResult"))

(smithy/sdk/shapes:define-list evaluation-results :member evaluation-result)

(smithy/sdk/shapes:define-structure expected-route common-lisp:nil
                                    ((ip-v4cidr :target-type cidr :member-name
                                      "IpV4Cidr")
                                     (prefix-list-id :target-type cidr
                                      :member-name "PrefixListId")
                                     (ip-v6cidr :target-type cidr :member-name
                                      "IpV6Cidr")
                                     (contributing-subnets :target-type
                                      resource-id-list :member-name
                                      "ContributingSubnets")
                                     (allowed-targets :target-type
                                      length-bounded-string-list :member-name
                                      "AllowedTargets")
                                     (route-table-id :target-type resource-id
                                      :member-name "RouteTableId"))
                                    (:shape-name "ExpectedRoute"))

(smithy/sdk/shapes:define-list expected-routes :member expected-route)

(smithy/sdk/shapes:define-structure
 fmspolicy-update-firewall-creation-config-action common-lisp:nil
 ((description :target-type length-bounded-string :member-name "Description")
  (firewall-creation-config :target-type managed-service-data :member-name
   "FirewallCreationConfig"))
 (:shape-name "FMSPolicyUpdateFirewallCreationConfigAction"))

(smithy/sdk/shapes:define-structure failed-item common-lisp:nil
                                    ((uri :target-type identifier :member-name
                                      "URI")
                                     (reason :target-type failed-item-reason
                                      :member-name "Reason"))
                                    (:shape-name "FailedItem"))

(smithy/sdk/shapes:define-list failed-item-list :member failed-item)

(smithy/sdk/shapes:define-enum failed-item-reason
    common-lisp:nil
  (:not-valid-arn "NOT_VALID_ARN")
  (:not-valid-partition "NOT_VALID_PARTITION")
  (:not-valid-region "NOT_VALID_REGION")
  (:not-valid-service "NOT_VALID_SERVICE")
  (:not-valid-resource-type "NOT_VALID_RESOURCE_TYPE")
  (:not-valid-account-id "NOT_VALID_ACCOUNT_ID"))

(smithy/sdk/shapes:define-enum firewall-deployment-model
    common-lisp:nil
  (:centralized "CENTRALIZED")
  (:distributed "DISTRIBUTED"))

(smithy/sdk/shapes:define-type firewall-policy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type firewall-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure firewall-subnet-is-out-of-scope-violation
                                    common-lisp:nil
                                    ((firewall-subnet-id :target-type
                                      resource-id :member-name
                                      "FirewallSubnetId")
                                     (vpc-id :target-type resource-id
                                      :member-name "VpcId")
                                     (subnet-availability-zone :target-type
                                      length-bounded-string :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-availability-zone-id :target-type
                                      length-bounded-string :member-name
                                      "SubnetAvailabilityZoneId")
                                     (vpc-endpoint-id :target-type resource-id
                                      :member-name "VpcEndpointId"))
                                    (:shape-name
                                     "FirewallSubnetIsOutOfScopeViolation"))

(smithy/sdk/shapes:define-structure
 firewall-subnet-missing-vpcendpoint-violation common-lisp:nil
 ((firewall-subnet-id :target-type resource-id :member-name "FirewallSubnetId")
  (vpc-id :target-type resource-id :member-name "VpcId")
  (subnet-availability-zone :target-type length-bounded-string :member-name
   "SubnetAvailabilityZone")
  (subnet-availability-zone-id :target-type length-bounded-string :member-name
   "SubnetAvailabilityZoneId"))
 (:shape-name "FirewallSubnetMissingVPCEndpointViolation"))

(smithy/sdk/shapes:define-input get-admin-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAdminAccountRequest"))

(smithy/sdk/shapes:define-output get-admin-account-response common-lisp:nil
                                 ((admin-account :target-type awsaccount-id
                                   :member-name "AdminAccount")
                                  (role-status :target-type account-role-status
                                   :member-name "RoleStatus"))
                                 (:shape-name "GetAdminAccountResponse"))

(smithy/sdk/shapes:define-input get-admin-scope-request common-lisp:nil
                                ((admin-account :target-type awsaccount-id
                                  :required common-lisp:t :member-name
                                  "AdminAccount"))
                                (:shape-name "GetAdminScopeRequest"))

(smithy/sdk/shapes:define-output get-admin-scope-response common-lisp:nil
                                 ((admin-scope :target-type admin-scope
                                   :member-name "AdminScope")
                                  (status :target-type organization-status
                                   :member-name "Status"))
                                 (:shape-name "GetAdminScopeResponse"))

(smithy/sdk/shapes:define-input get-apps-list-request common-lisp:nil
                                ((list-id :target-type list-id :required
                                  common-lisp:t :member-name "ListId")
                                 (default-list :target-type boolean
                                  :member-name "DefaultList"))
                                (:shape-name "GetAppsListRequest"))

(smithy/sdk/shapes:define-output get-apps-list-response common-lisp:nil
                                 ((apps-list :target-type apps-list-data
                                   :member-name "AppsList")
                                  (apps-list-arn :target-type resource-arn
                                   :member-name "AppsListArn"))
                                 (:shape-name "GetAppsListResponse"))

(smithy/sdk/shapes:define-input get-compliance-detail-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (member-account :target-type awsaccount-id
                                  :required common-lisp:t :member-name
                                  "MemberAccount"))
                                (:shape-name "GetComplianceDetailRequest"))

(smithy/sdk/shapes:define-output get-compliance-detail-response common-lisp:nil
                                 ((policy-compliance-detail :target-type
                                   policy-compliance-detail :member-name
                                   "PolicyComplianceDetail"))
                                 (:shape-name "GetComplianceDetailResponse"))

(smithy/sdk/shapes:define-input get-notification-channel-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetNotificationChannelRequest"))

(smithy/sdk/shapes:define-output get-notification-channel-response
                                 common-lisp:nil
                                 ((sns-topic-arn :target-type resource-arn
                                   :member-name "SnsTopicArn")
                                  (sns-role-name :target-type resource-arn
                                   :member-name "SnsRoleName"))
                                 (:shape-name "GetNotificationChannelResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId"))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy")
                                  (policy-arn :target-type resource-arn
                                   :member-name "PolicyArn"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-protection-status-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (member-account-id :target-type awsaccount-id
                                  :member-name "MemberAccountId")
                                 (start-time :target-type time-stamp
                                  :member-name "StartTime")
                                 (end-time :target-type time-stamp :member-name
                                  "EndTime")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "GetProtectionStatusRequest"))

(smithy/sdk/shapes:define-output get-protection-status-response common-lisp:nil
                                 ((admin-account-id :target-type awsaccount-id
                                   :member-name "AdminAccountId")
                                  (service-type :target-type
                                   security-service-type :member-name
                                   "ServiceType")
                                  (data :target-type protection-data
                                   :member-name "Data")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetProtectionStatusResponse"))

(smithy/sdk/shapes:define-input get-protocols-list-request common-lisp:nil
                                ((list-id :target-type list-id :required
                                  common-lisp:t :member-name "ListId")
                                 (default-list :target-type boolean
                                  :member-name "DefaultList"))
                                (:shape-name "GetProtocolsListRequest"))

(smithy/sdk/shapes:define-output get-protocols-list-response common-lisp:nil
                                 ((protocols-list :target-type
                                   protocols-list-data :member-name
                                   "ProtocolsList")
                                  (protocols-list-arn :target-type resource-arn
                                   :member-name "ProtocolsListArn"))
                                 (:shape-name "GetProtocolsListResponse"))

(smithy/sdk/shapes:define-input get-resource-set-request common-lisp:nil
                                ((identifier :target-type base62id :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "GetResourceSetRequest"))

(smithy/sdk/shapes:define-output get-resource-set-response common-lisp:nil
                                 ((resource-set :target-type resource-set
                                   :required common-lisp:t :member-name
                                   "ResourceSet")
                                  (resource-set-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "ResourceSetArn"))
                                 (:shape-name "GetResourceSetResponse"))

(smithy/sdk/shapes:define-input
 get-third-party-firewall-association-status-request common-lisp:nil
 ((third-party-firewall :target-type third-party-firewall :required
   common-lisp:t :member-name "ThirdPartyFirewall"))
 (:shape-name "GetThirdPartyFirewallAssociationStatusRequest"))

(smithy/sdk/shapes:define-output
 get-third-party-firewall-association-status-response common-lisp:nil
 ((third-party-firewall-status :target-type
   third-party-firewall-association-status :member-name
   "ThirdPartyFirewallStatus")
  (marketplace-onboarding-status :target-type
   marketplace-subscription-onboarding-status :member-name
   "MarketplaceOnboardingStatus"))
 (:shape-name "GetThirdPartyFirewallAssociationStatusResponse"))

(smithy/sdk/shapes:define-input get-violation-details-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (member-account :target-type awsaccount-id
                                  :required common-lisp:t :member-name
                                  "MemberAccount")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "GetViolationDetailsRequest"))

(smithy/sdk/shapes:define-output get-violation-details-response common-lisp:nil
                                 ((violation-detail :target-type
                                   violation-detail :member-name
                                   "ViolationDetail"))
                                 (:shape-name "GetViolationDetailsResponse"))

(smithy/sdk/shapes:define-type ipport-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type ipport-number-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list identifier-list :member identifier)

(smithy/sdk/shapes:define-type integer-object smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-object-minimum0
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure invalid-network-acl-entries-violation
                                    common-lisp:nil
                                    ((vpc :target-type resource-id :member-name
                                      "Vpc")
                                     (subnet :target-type resource-id
                                      :member-name "Subnet")
                                     (subnet-availability-zone :target-type
                                      length-bounded-string :member-name
                                      "SubnetAvailabilityZone")
                                     (current-associated-network-acl
                                      :target-type resource-id :member-name
                                      "CurrentAssociatedNetworkAcl")
                                     (entry-violations :target-type
                                      entry-violations :member-name
                                      "EntryViolations"))
                                    (:shape-name
                                     "InvalidNetworkAclEntriesViolation"))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-type-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map issue-info-map :key dependent-service-name :value
                              detailed-info)

(smithy/sdk/shapes:define-type length-bounded-non-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type length-bounded-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list length-bounded-string-list :member
                               length-bounded-string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-admin-accounts-for-organization-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "ListAdminAccountsForOrganizationRequest"))

(smithy/sdk/shapes:define-output list-admin-accounts-for-organization-response
                                 common-lisp:nil
                                 ((admin-accounts :target-type
                                   admin-account-summary-list :member-name
                                   "AdminAccounts")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAdminAccountsForOrganizationResponse"))

(smithy/sdk/shapes:define-input list-admins-managing-account-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "ListAdminsManagingAccountRequest"))

(smithy/sdk/shapes:define-output list-admins-managing-account-response
                                 common-lisp:nil
                                 ((admin-accounts :target-type account-id-list
                                   :member-name "AdminAccounts")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAdminsManagingAccountResponse"))

(smithy/sdk/shapes:define-input list-apps-lists-request common-lisp:nil
                                ((default-lists :target-type boolean
                                  :member-name "DefaultLists")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :required
                                  common-lisp:t :member-name "MaxResults"))
                                (:shape-name "ListAppsListsRequest"))

(smithy/sdk/shapes:define-output list-apps-lists-response common-lisp:nil
                                 ((apps-lists :target-type apps-lists-data
                                   :member-name "AppsLists")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAppsListsResponse"))

(smithy/sdk/shapes:define-input list-compliance-status-request common-lisp:nil
                                ((policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "PolicyId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListComplianceStatusRequest"))

(smithy/sdk/shapes:define-output list-compliance-status-response
                                 common-lisp:nil
                                 ((policy-compliance-status-list :target-type
                                   policy-compliance-status-list :member-name
                                   "PolicyComplianceStatusList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListComplianceStatusResponse"))

(smithy/sdk/shapes:define-input list-discovered-resources-request
                                common-lisp:nil
                                ((member-account-ids :target-type
                                  awsaccount-id-list :required common-lisp:t
                                  :member-name "MemberAccountIds")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListDiscoveredResourcesRequest"))

(smithy/sdk/shapes:define-output list-discovered-resources-response
                                 common-lisp:nil
                                 ((items :target-type discovered-resource-list
                                   :member-name "Items")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDiscoveredResourcesResponse"))

(smithy/sdk/shapes:define-type list-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-member-accounts-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListMemberAccountsRequest"))

(smithy/sdk/shapes:define-output list-member-accounts-response common-lisp:nil
                                 ((member-accounts :target-type member-accounts
                                   :member-name "MemberAccounts")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMemberAccountsResponse"))

(smithy/sdk/shapes:define-input list-policies-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListPoliciesRequest"))

(smithy/sdk/shapes:define-output list-policies-response common-lisp:nil
                                 ((policy-list :target-type policy-summary-list
                                   :member-name "PolicyList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPoliciesResponse"))

(smithy/sdk/shapes:define-input list-protocols-lists-request common-lisp:nil
                                ((default-lists :target-type boolean
                                  :member-name "DefaultLists")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :required
                                  common-lisp:t :member-name "MaxResults"))
                                (:shape-name "ListProtocolsListsRequest"))

(smithy/sdk/shapes:define-output list-protocols-lists-response common-lisp:nil
                                 ((protocols-lists :target-type
                                   protocols-lists-data :member-name
                                   "ProtocolsLists")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListProtocolsListsResponse"))

(smithy/sdk/shapes:define-input list-resource-set-resources-request
                                common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "Identifier")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListResourceSetResourcesRequest"))

(smithy/sdk/shapes:define-output list-resource-set-resources-response
                                 common-lisp:nil
                                 ((items :target-type resource-list :required
                                   common-lisp:t :member-name "Items")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListResourceSetResourcesResponse"))

(smithy/sdk/shapes:define-input list-resource-sets-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListResourceSetsRequest"))

(smithy/sdk/shapes:define-output list-resource-sets-response common-lisp:nil
                                 ((resource-sets :target-type
                                   resource-set-summary-list :member-name
                                   "ResourceSets")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceSetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input
 list-third-party-firewall-firewall-policies-request common-lisp:nil
 ((third-party-firewall :target-type third-party-firewall :required
   common-lisp:t :member-name "ThirdPartyFirewall")
  (next-token :target-type pagination-token :member-name "NextToken")
  (max-results :target-type pagination-max-results :required common-lisp:t
   :member-name "MaxResults"))
 (:shape-name "ListThirdPartyFirewallFirewallPoliciesRequest"))

(smithy/sdk/shapes:define-output
 list-third-party-firewall-firewall-policies-response common-lisp:nil
 ((third-party-firewall-firewall-policies :target-type
   third-party-firewall-firewall-policies :member-name
   "ThirdPartyFirewallFirewallPolicies")
  (next-token :target-type pagination-token :member-name "NextToken"))
 (:shape-name "ListThirdPartyFirewallFirewallPoliciesResponse"))

(smithy/sdk/shapes:define-type managed-service-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum marketplace-subscription-onboarding-status
    common-lisp:nil
  (:no-subscription "NO_SUBSCRIPTION")
  (:not-complete "NOT_COMPLETE")
  (:complete "COMPLETE"))

(smithy/sdk/shapes:define-list member-accounts :member awsaccount-id)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-acl-common-policy common-lisp:nil
                                    ((network-acl-entry-set :target-type
                                      network-acl-entry-set :required
                                      common-lisp:t :member-name
                                      "NetworkAclEntrySet"))
                                    (:shape-name "NetworkAclCommonPolicy"))

(smithy/sdk/shapes:define-list network-acl-entries :member network-acl-entry)

(smithy/sdk/shapes:define-structure network-acl-entry common-lisp:nil
                                    ((icmp-type-code :target-type
                                      network-acl-icmp-type-code :member-name
                                      "IcmpTypeCode")
                                     (protocol :target-type
                                      length-bounded-string :required
                                      common-lisp:t :member-name "Protocol")
                                     (port-range :target-type
                                      network-acl-port-range :member-name
                                      "PortRange")
                                     (cidr-block :target-type
                                      length-bounded-non-empty-string
                                      :member-name "CidrBlock")
                                     (ipv6cidr-block :target-type
                                      length-bounded-non-empty-string
                                      :member-name "Ipv6CidrBlock")
                                     (rule-action :target-type
                                      network-acl-rule-action :required
                                      common-lisp:t :member-name "RuleAction")
                                     (egress :target-type boolean-object
                                      :required common-lisp:t :member-name
                                      "Egress"))
                                    (:shape-name "NetworkAclEntry"))

(smithy/sdk/shapes:define-structure network-acl-entry-set common-lisp:nil
                                    ((first-entries :target-type
                                      network-acl-entries :member-name
                                      "FirstEntries")
                                     (force-remediate-for-first-entries
                                      :target-type boolean-object :required
                                      common-lisp:t :member-name
                                      "ForceRemediateForFirstEntries")
                                     (last-entries :target-type
                                      network-acl-entries :member-name
                                      "LastEntries")
                                     (force-remediate-for-last-entries
                                      :target-type boolean-object :required
                                      common-lisp:t :member-name
                                      "ForceRemediateForLastEntries"))
                                    (:shape-name "NetworkAclEntrySet"))

(smithy/sdk/shapes:define-structure network-acl-icmp-type-code common-lisp:nil
                                    ((code :target-type integer-object
                                      :member-name "Code")
                                     (type :target-type integer-object
                                      :member-name "Type"))
                                    (:shape-name "NetworkAclIcmpTypeCode"))

(smithy/sdk/shapes:define-structure network-acl-port-range common-lisp:nil
                                    ((from :target-type ipport-number-integer
                                      :member-name "From")
                                     (to :target-type ipport-number-integer
                                      :member-name "To"))
                                    (:shape-name "NetworkAclPortRange"))

(smithy/sdk/shapes:define-enum network-acl-rule-action
    common-lisp:nil
  (:allow "allow")
  (:deny "deny"))

(smithy/sdk/shapes:define-type network-firewall-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-firewall-action-list :member
                               network-firewall-action)

(smithy/sdk/shapes:define-structure
 network-firewall-black-hole-route-detected-violation common-lisp:nil
 ((violation-target :target-type violation-target :member-name
   "ViolationTarget")
  (route-table-id :target-type resource-id :member-name "RouteTableId")
  (vpc-id :target-type resource-id :member-name "VpcId")
  (violating-routes :target-type routes :member-name "ViolatingRoutes"))
 (:shape-name "NetworkFirewallBlackHoleRouteDetectedViolation"))

(smithy/sdk/shapes:define-structure
 network-firewall-internet-traffic-not-inspected-violation common-lisp:nil
 ((subnet-id :target-type resource-id :member-name "SubnetId")
  (subnet-availability-zone :target-type length-bounded-string :member-name
   "SubnetAvailabilityZone")
  (route-table-id :target-type resource-id :member-name "RouteTableId")
  (violating-routes :target-type routes :member-name "ViolatingRoutes")
  (is-route-table-used-in-different-az :target-type boolean :member-name
   "IsRouteTableUsedInDifferentAZ")
  (current-firewall-subnet-route-table :target-type resource-id :member-name
   "CurrentFirewallSubnetRouteTable")
  (expected-firewall-endpoint :target-type resource-id :member-name
   "ExpectedFirewallEndpoint")
  (firewall-subnet-id :target-type resource-id :member-name "FirewallSubnetId")
  (expected-firewall-subnet-routes :target-type expected-routes :member-name
   "ExpectedFirewallSubnetRoutes")
  (actual-firewall-subnet-routes :target-type routes :member-name
   "ActualFirewallSubnetRoutes")
  (internet-gateway-id :target-type resource-id :member-name
   "InternetGatewayId")
  (current-internet-gateway-route-table :target-type resource-id :member-name
   "CurrentInternetGatewayRouteTable")
  (expected-internet-gateway-routes :target-type expected-routes :member-name
   "ExpectedInternetGatewayRoutes")
  (actual-internet-gateway-routes :target-type routes :member-name
   "ActualInternetGatewayRoutes")
  (vpc-id :target-type resource-id :member-name "VpcId"))
 (:shape-name "NetworkFirewallInternetTrafficNotInspectedViolation"))

(smithy/sdk/shapes:define-structure
 network-firewall-invalid-route-configuration-violation common-lisp:nil
 ((affected-subnets :target-type resource-id-list :member-name
   "AffectedSubnets")
  (route-table-id :target-type resource-id :member-name "RouteTableId")
  (is-route-table-used-in-different-az :target-type boolean :member-name
   "IsRouteTableUsedInDifferentAZ")
  (violating-route :target-type route :member-name "ViolatingRoute")
  (current-firewall-subnet-route-table :target-type resource-id :member-name
   "CurrentFirewallSubnetRouteTable")
  (expected-firewall-endpoint :target-type resource-id :member-name
   "ExpectedFirewallEndpoint")
  (actual-firewall-endpoint :target-type resource-id :member-name
   "ActualFirewallEndpoint")
  (expected-firewall-subnet-id :target-type resource-id :member-name
   "ExpectedFirewallSubnetId")
  (actual-firewall-subnet-id :target-type resource-id :member-name
   "ActualFirewallSubnetId")
  (expected-firewall-subnet-routes :target-type expected-routes :member-name
   "ExpectedFirewallSubnetRoutes")
  (actual-firewall-subnet-routes :target-type routes :member-name
   "ActualFirewallSubnetRoutes")
  (internet-gateway-id :target-type resource-id :member-name
   "InternetGatewayId")
  (current-internet-gateway-route-table :target-type resource-id :member-name
   "CurrentInternetGatewayRouteTable")
  (expected-internet-gateway-routes :target-type expected-routes :member-name
   "ExpectedInternetGatewayRoutes")
  (actual-internet-gateway-routes :target-type routes :member-name
   "ActualInternetGatewayRoutes")
  (vpc-id :target-type resource-id :member-name "VpcId"))
 (:shape-name "NetworkFirewallInvalidRouteConfigurationViolation"))

(smithy/sdk/shapes:define-structure
 network-firewall-missing-expected-rtviolation common-lisp:nil
 ((violation-target :target-type violation-target :member-name
   "ViolationTarget")
  (vpc :target-type resource-id :member-name "VPC")
  (availability-zone :target-type length-bounded-string :member-name
   "AvailabilityZone")
  (current-route-table :target-type resource-id :member-name
   "CurrentRouteTable")
  (expected-route-table :target-type resource-id :member-name
   "ExpectedRouteTable"))
 (:shape-name "NetworkFirewallMissingExpectedRTViolation"))

(smithy/sdk/shapes:define-structure
 network-firewall-missing-expected-routes-violation common-lisp:nil
 ((violation-target :target-type violation-target :member-name
   "ViolationTarget")
  (expected-routes :target-type expected-routes :member-name "ExpectedRoutes")
  (vpc-id :target-type resource-id :member-name "VpcId"))
 (:shape-name "NetworkFirewallMissingExpectedRoutesViolation"))

(smithy/sdk/shapes:define-structure network-firewall-missing-firewall-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (vpc :target-type resource-id :member-name
                                      "VPC")
                                     (availability-zone :target-type
                                      length-bounded-string :member-name
                                      "AvailabilityZone")
                                     (target-violation-reason :target-type
                                      target-violation-reason :member-name
                                      "TargetViolationReason"))
                                    (:shape-name
                                     "NetworkFirewallMissingFirewallViolation"))

(smithy/sdk/shapes:define-structure network-firewall-missing-subnet-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (vpc :target-type resource-id :member-name
                                      "VPC")
                                     (availability-zone :target-type
                                      length-bounded-string :member-name
                                      "AvailabilityZone")
                                     (target-violation-reason :target-type
                                      target-violation-reason :member-name
                                      "TargetViolationReason"))
                                    (:shape-name
                                     "NetworkFirewallMissingSubnetViolation"))

(smithy/sdk/shapes:define-enum network-firewall-override-action
    common-lisp:nil
  (:drop-to-alert "DROP_TO_ALERT"))

(smithy/sdk/shapes:define-structure network-firewall-policy common-lisp:nil
                                    ((firewall-deployment-model :target-type
                                      firewall-deployment-model :member-name
                                      "FirewallDeploymentModel"))
                                    (:shape-name "NetworkFirewallPolicy"))

(smithy/sdk/shapes:define-structure network-firewall-policy-description
                                    common-lisp:nil
                                    ((stateless-rule-groups :target-type
                                      stateless-rule-group-list :member-name
                                      "StatelessRuleGroups")
                                     (stateless-default-actions :target-type
                                      network-firewall-action-list :member-name
                                      "StatelessDefaultActions")
                                     (stateless-fragment-default-actions
                                      :target-type network-firewall-action-list
                                      :member-name
                                      "StatelessFragmentDefaultActions")
                                     (stateless-custom-actions :target-type
                                      network-firewall-action-list :member-name
                                      "StatelessCustomActions")
                                     (stateful-rule-groups :target-type
                                      stateful-rule-group-list :member-name
                                      "StatefulRuleGroups")
                                     (stateful-default-actions :target-type
                                      network-firewall-action-list :member-name
                                      "StatefulDefaultActions")
                                     (stateful-engine-options :target-type
                                      stateful-engine-options :member-name
                                      "StatefulEngineOptions"))
                                    (:shape-name
                                     "NetworkFirewallPolicyDescription"))

(smithy/sdk/shapes:define-structure network-firewall-policy-modified-violation
                                    common-lisp:nil
                                    ((violation-target :target-type
                                      violation-target :member-name
                                      "ViolationTarget")
                                     (current-policy-description :target-type
                                      network-firewall-policy-description
                                      :member-name "CurrentPolicyDescription")
                                     (expected-policy-description :target-type
                                      network-firewall-policy-description
                                      :member-name
                                      "ExpectedPolicyDescription"))
                                    (:shape-name
                                     "NetworkFirewallPolicyModifiedViolation"))

(smithy/sdk/shapes:define-type network-firewall-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 network-firewall-stateful-rule-group-override common-lisp:nil
 ((action :target-type network-firewall-override-action :member-name "Action"))
 (:shape-name "NetworkFirewallStatefulRuleGroupOverride"))

(smithy/sdk/shapes:define-structure
 network-firewall-unexpected-firewall-routes-violation common-lisp:nil
 ((firewall-subnet-id :target-type resource-id :member-name "FirewallSubnetId")
  (violating-routes :target-type routes :member-name "ViolatingRoutes")
  (route-table-id :target-type resource-id :member-name "RouteTableId")
  (firewall-endpoint :target-type resource-id :member-name "FirewallEndpoint")
  (vpc-id :target-type resource-id :member-name "VpcId"))
 (:shape-name "NetworkFirewallUnexpectedFirewallRoutesViolation"))

(smithy/sdk/shapes:define-structure
 network-firewall-unexpected-gateway-routes-violation common-lisp:nil
 ((gateway-id :target-type resource-id :member-name "GatewayId")
  (violating-routes :target-type routes :member-name "ViolatingRoutes")
  (route-table-id :target-type resource-id :member-name "RouteTableId")
  (vpc-id :target-type resource-id :member-name "VpcId"))
 (:shape-name "NetworkFirewallUnexpectedGatewayRoutesViolation"))

(smithy/sdk/shapes:define-list ordered-remediation-actions :member
                               remediation-action-with-order)

(smithy/sdk/shapes:define-enum organization-status
    common-lisp:nil
  (:onboarding "ONBOARDING")
  (:onboarding-complete "ONBOARDING_COMPLETE")
  (:offboarding "OFFBOARDING")
  (:offboarding-complete "OFFBOARDING_COMPLETE"))

(smithy/sdk/shapes:define-type organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organizational-unit-id-list :member
                               organizational-unit-id)

(smithy/sdk/shapes:define-structure organizational-unit-scope common-lisp:nil
                                    ((organizational-units :target-type
                                      organizational-unit-id-list :member-name
                                      "OrganizationalUnits")
                                     (all-organizational-units-enabled
                                      :target-type boolean :member-name
                                      "AllOrganizationalUnitsEnabled")
                                     (exclude-specified-organizational-units
                                      :target-type boolean :member-name
                                      "ExcludeSpecifiedOrganizationalUnits"))
                                    (:shape-name "OrganizationalUnitScope"))

(smithy/sdk/shapes:define-type pagination-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure partial-match common-lisp:nil
                                    ((reference :target-type reference-rule
                                      :member-name "Reference")
                                     (target-violation-reasons :target-type
                                      target-violation-reasons :member-name
                                      "TargetViolationReasons"))
                                    (:shape-name "PartialMatch"))

(smithy/sdk/shapes:define-list partial-matches :member partial-match)

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (policy-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "PolicyName")
                                     (policy-update-token :target-type
                                      policy-update-token :member-name
                                      "PolicyUpdateToken")
                                     (security-service-policy-data :target-type
                                      security-service-policy-data :required
                                      common-lisp:t :member-name
                                      "SecurityServicePolicyData")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-type-list :target-type
                                      resource-type-list :member-name
                                      "ResourceTypeList")
                                     (resource-tags :target-type resource-tags
                                      :member-name "ResourceTags")
                                     (exclude-resource-tags :target-type
                                      boolean :required common-lisp:t
                                      :member-name "ExcludeResourceTags")
                                     (remediation-enabled :target-type boolean
                                      :required common-lisp:t :member-name
                                      "RemediationEnabled")
                                     (delete-unused-fmmanaged-resources
                                      :target-type boolean :member-name
                                      "DeleteUnusedFMManagedResources")
                                     (include-map :target-type
                                      customer-policy-scope-map :member-name
                                      "IncludeMap")
                                     (exclude-map :target-type
                                      customer-policy-scope-map :member-name
                                      "ExcludeMap")
                                     (resource-set-ids :target-type
                                      resource-set-ids :member-name
                                      "ResourceSetIds")
                                     (policy-description :target-type
                                      resource-description :member-name
                                      "PolicyDescription")
                                     (policy-status :target-type
                                      customer-policy-status :member-name
                                      "PolicyStatus")
                                     (resource-tag-logical-operator
                                      :target-type
                                      resource-tag-logical-operator
                                      :member-name
                                      "ResourceTagLogicalOperator"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-structure policy-compliance-detail common-lisp:nil
                                    ((policy-owner :target-type awsaccount-id
                                      :member-name "PolicyOwner")
                                     (policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (member-account :target-type awsaccount-id
                                      :member-name "MemberAccount")
                                     (violators :target-type
                                      compliance-violators :member-name
                                      "Violators")
                                     (evaluation-limit-exceeded :target-type
                                      boolean :member-name
                                      "EvaluationLimitExceeded")
                                     (expired-at :target-type time-stamp
                                      :member-name "ExpiredAt")
                                     (issue-info-map :target-type
                                      issue-info-map :member-name
                                      "IssueInfoMap"))
                                    (:shape-name "PolicyComplianceDetail"))

(smithy/sdk/shapes:define-structure policy-compliance-status common-lisp:nil
                                    ((policy-owner :target-type awsaccount-id
                                      :member-name "PolicyOwner")
                                     (policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (policy-name :target-type resource-name
                                      :member-name "PolicyName")
                                     (member-account :target-type awsaccount-id
                                      :member-name "MemberAccount")
                                     (evaluation-results :target-type
                                      evaluation-results :member-name
                                      "EvaluationResults")
                                     (last-updated :target-type time-stamp
                                      :member-name "LastUpdated")
                                     (issue-info-map :target-type
                                      issue-info-map :member-name
                                      "IssueInfoMap"))
                                    (:shape-name "PolicyComplianceStatus"))

(smithy/sdk/shapes:define-list policy-compliance-status-list :member
                               policy-compliance-status)

(smithy/sdk/shapes:define-enum policy-compliance-status-type
    common-lisp:nil
  (:compliant "COMPLIANT")
  (:non-compliant "NON_COMPLIANT"))

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-option common-lisp:nil
                                    ((network-firewall-policy :target-type
                                      network-firewall-policy :member-name
                                      "NetworkFirewallPolicy")
                                     (third-party-firewall-policy :target-type
                                      third-party-firewall-policy :member-name
                                      "ThirdPartyFirewallPolicy")
                                     (network-acl-common-policy :target-type
                                      network-acl-common-policy :member-name
                                      "NetworkAclCommonPolicy"))
                                    (:shape-name "PolicyOption"))

(smithy/sdk/shapes:define-structure policy-summary common-lisp:nil
                                    ((policy-arn :target-type resource-arn
                                      :member-name "PolicyArn")
                                     (policy-id :target-type policy-id
                                      :member-name "PolicyId")
                                     (policy-name :target-type resource-name
                                      :member-name "PolicyName")
                                     (resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (security-service-type :target-type
                                      security-service-type :member-name
                                      "SecurityServiceType")
                                     (remediation-enabled :target-type boolean
                                      :member-name "RemediationEnabled")
                                     (delete-unused-fmmanaged-resources
                                      :target-type boolean :member-name
                                      "DeleteUnusedFMManagedResources")
                                     (policy-status :target-type
                                      customer-policy-status :member-name
                                      "PolicyStatus"))
                                    (:shape-name "PolicySummary"))

(smithy/sdk/shapes:define-list policy-summary-list :member policy-summary)

(smithy/sdk/shapes:define-structure policy-type-scope common-lisp:nil
                                    ((policy-types :target-type
                                      security-service-type-list :member-name
                                      "PolicyTypes")
                                     (all-policy-types-enabled :target-type
                                      boolean :member-name
                                      "AllPolicyTypesEnabled"))
                                    (:shape-name "PolicyTypeScope"))

(smithy/sdk/shapes:define-type policy-update-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure possible-remediation-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (ordered-remediation-actions :target-type
                                      ordered-remediation-actions :required
                                      common-lisp:t :member-name
                                      "OrderedRemediationActions")
                                     (is-default-action :target-type boolean
                                      :member-name "IsDefaultAction"))
                                    (:shape-name "PossibleRemediationAction"))

(smithy/sdk/shapes:define-list possible-remediation-action-list :member
                               possible-remediation-action)

(smithy/sdk/shapes:define-structure possible-remediation-actions
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (actions :target-type
                                      possible-remediation-action-list
                                      :member-name "Actions"))
                                    (:shape-name "PossibleRemediationActions"))

(smithy/sdk/shapes:define-map previous-apps-list :key previous-list-version
                              :value apps-list)

(smithy/sdk/shapes:define-type previous-list-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map previous-protocols-list :key
                              previous-list-version :value protocols-list)

(smithy/sdk/shapes:define-type priority-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type protection-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list protocols-list :member protocol)

(smithy/sdk/shapes:define-structure protocols-list-data common-lisp:nil
                                    ((list-id :target-type list-id :member-name
                                      "ListId")
                                     (list-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ListName")
                                     (list-update-token :target-type
                                      update-token :member-name
                                      "ListUpdateToken")
                                     (create-time :target-type time-stamp
                                      :member-name "CreateTime")
                                     (last-update-time :target-type time-stamp
                                      :member-name "LastUpdateTime")
                                     (protocols-list :target-type
                                      protocols-list :required common-lisp:t
                                      :member-name "ProtocolsList")
                                     (previous-protocols-list :target-type
                                      previous-protocols-list :member-name
                                      "PreviousProtocolsList"))
                                    (:shape-name "ProtocolsListData"))

(smithy/sdk/shapes:define-structure protocols-list-data-summary common-lisp:nil
                                    ((list-arn :target-type resource-arn
                                      :member-name "ListArn")
                                     (list-id :target-type list-id :member-name
                                      "ListId")
                                     (list-name :target-type resource-name
                                      :member-name "ListName")
                                     (protocols-list :target-type
                                      protocols-list :member-name
                                      "ProtocolsList"))
                                    (:shape-name "ProtocolsListDataSummary"))

(smithy/sdk/shapes:define-list protocols-lists-data :member
                               protocols-list-data-summary)

(smithy/sdk/shapes:define-input put-admin-account-request common-lisp:nil
                                ((admin-account :target-type awsaccount-id
                                  :required common-lisp:t :member-name
                                  "AdminAccount")
                                 (admin-scope :target-type admin-scope
                                  :member-name "AdminScope"))
                                (:shape-name "PutAdminAccountRequest"))

(smithy/sdk/shapes:define-input put-apps-list-request common-lisp:nil
                                ((apps-list :target-type apps-list-data
                                  :required common-lisp:t :member-name
                                  "AppsList")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name "PutAppsListRequest"))

(smithy/sdk/shapes:define-output put-apps-list-response common-lisp:nil
                                 ((apps-list :target-type apps-list-data
                                   :member-name "AppsList")
                                  (apps-list-arn :target-type resource-arn
                                   :member-name "AppsListArn"))
                                 (:shape-name "PutAppsListResponse"))

(smithy/sdk/shapes:define-input put-notification-channel-request
                                common-lisp:nil
                                ((sns-topic-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "SnsTopicArn")
                                 (sns-role-name :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "SnsRoleName"))
                                (:shape-name "PutNotificationChannelRequest"))

(smithy/sdk/shapes:define-input put-policy-request common-lisp:nil
                                ((policy :target-type policy :required
                                  common-lisp:t :member-name "Policy")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name "PutPolicyRequest"))

(smithy/sdk/shapes:define-output put-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy")
                                  (policy-arn :target-type resource-arn
                                   :member-name "PolicyArn"))
                                 (:shape-name "PutPolicyResponse"))

(smithy/sdk/shapes:define-input put-protocols-list-request common-lisp:nil
                                ((protocols-list :target-type
                                  protocols-list-data :required common-lisp:t
                                  :member-name "ProtocolsList")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name "PutProtocolsListRequest"))

(smithy/sdk/shapes:define-output put-protocols-list-response common-lisp:nil
                                 ((protocols-list :target-type
                                   protocols-list-data :member-name
                                   "ProtocolsList")
                                  (protocols-list-arn :target-type resource-arn
                                   :member-name "ProtocolsListArn"))
                                 (:shape-name "PutProtocolsListResponse"))

(smithy/sdk/shapes:define-input put-resource-set-request common-lisp:nil
                                ((resource-set :target-type resource-set
                                  :required common-lisp:t :member-name
                                  "ResourceSet")
                                 (tag-list :target-type tag-list :member-name
                                  "TagList"))
                                (:shape-name "PutResourceSetRequest"))

(smithy/sdk/shapes:define-output put-resource-set-response common-lisp:nil
                                 ((resource-set :target-type resource-set
                                   :required common-lisp:t :member-name
                                   "ResourceSet")
                                  (resource-set-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "ResourceSetArn"))
                                 (:shape-name "PutResourceSetResponse"))

(smithy/sdk/shapes:define-type reference-rule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure region-scope common-lisp:nil
                                    ((regions :target-type awsregion-list
                                      :member-name "Regions")
                                     (all-regions-enabled :target-type boolean
                                      :member-name "AllRegionsEnabled"))
                                    (:shape-name "RegionScope"))

(smithy/sdk/shapes:define-structure remediation-action common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (ec2create-route-action :target-type
                                      ec2create-route-action :member-name
                                      "EC2CreateRouteAction")
                                     (ec2replace-route-action :target-type
                                      ec2replace-route-action :member-name
                                      "EC2ReplaceRouteAction")
                                     (ec2delete-route-action :target-type
                                      ec2delete-route-action :member-name
                                      "EC2DeleteRouteAction")
                                     (ec2copy-route-table-action :target-type
                                      ec2copy-route-table-action :member-name
                                      "EC2CopyRouteTableAction")
                                     (ec2replace-route-table-association-action
                                      :target-type
                                      ec2replace-route-table-association-action
                                      :member-name
                                      "EC2ReplaceRouteTableAssociationAction")
                                     (ec2associate-route-table-action
                                      :target-type
                                      ec2associate-route-table-action
                                      :member-name
                                      "EC2AssociateRouteTableAction")
                                     (ec2create-route-table-action :target-type
                                      ec2create-route-table-action :member-name
                                      "EC2CreateRouteTableAction")
                                     (fmspolicy-update-firewall-creation-config-action
                                      :target-type
                                      fmspolicy-update-firewall-creation-config-action
                                      :member-name
                                      "FMSPolicyUpdateFirewallCreationConfigAction")
                                     (create-network-acl-action :target-type
                                      create-network-acl-action :member-name
                                      "CreateNetworkAclAction")
                                     (replace-network-acl-association-action
                                      :target-type
                                      replace-network-acl-association-action
                                      :member-name
                                      "ReplaceNetworkAclAssociationAction")
                                     (create-network-acl-entries-action
                                      :target-type
                                      create-network-acl-entries-action
                                      :member-name
                                      "CreateNetworkAclEntriesAction")
                                     (delete-network-acl-entries-action
                                      :target-type
                                      delete-network-acl-entries-action
                                      :member-name
                                      "DeleteNetworkAclEntriesAction"))
                                    (:shape-name "RemediationAction"))

(smithy/sdk/shapes:define-type remediation-action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum remediation-action-type
    common-lisp:nil
  (:remove "REMOVE")
  (:modify "MODIFY"))

(smithy/sdk/shapes:define-structure remediation-action-with-order
                                    common-lisp:nil
                                    ((remediation-action :target-type
                                      remediation-action :member-name
                                      "RemediationAction")
                                     (order :target-type basic-integer
                                      :member-name "Order"))
                                    (:shape-name "RemediationActionWithOrder"))

(smithy/sdk/shapes:define-structure replace-network-acl-association-action
                                    common-lisp:nil
                                    ((description :target-type
                                      length-bounded-string :member-name
                                      "Description")
                                     (association-id :target-type action-target
                                      :member-name "AssociationId")
                                     (network-acl-id :target-type action-target
                                      :member-name "NetworkAclId")
                                     (fmscan-remediate :target-type boolean
                                      :member-name "FMSCanRemediate"))
                                    (:shape-name
                                     "ReplaceNetworkAclAssociationAction"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((uri :target-type identifier :required
                                      common-lisp:t :member-name "URI")
                                     (account-id :target-type awsaccount-id
                                      :member-name "AccountId"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arn-list :member resource-arn)

(smithy/sdk/shapes:define-type resource-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-id-list :member resource-id)

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-set common-lisp:nil
                                    ((id :target-type base62id :member-name
                                      "Id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (update-token :target-type update-token
                                      :member-name "UpdateToken")
                                     (resource-type-list :target-type
                                      resource-type-list :required
                                      common-lisp:t :member-name
                                      "ResourceTypeList")
                                     (last-update-time :target-type time-stamp
                                      :member-name "LastUpdateTime")
                                     (resource-set-status :target-type
                                      resource-set-status :member-name
                                      "ResourceSetStatus"))
                                    (:shape-name "ResourceSet"))

(smithy/sdk/shapes:define-list resource-set-ids :member base62id)

(smithy/sdk/shapes:define-enum resource-set-status
    common-lisp:nil
  (:active "ACTIVE")
  (:out-of-admin-scope "OUT_OF_ADMIN_SCOPE"))

(smithy/sdk/shapes:define-structure resource-set-summary common-lisp:nil
                                    ((id :target-type base62id :member-name
                                      "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (last-update-time :target-type time-stamp
                                      :member-name "LastUpdateTime")
                                     (resource-set-status :target-type
                                      resource-set-status :member-name
                                      "ResourceSetStatus"))
                                    (:shape-name "ResourceSetSummary"))

(smithy/sdk/shapes:define-list resource-set-summary-list :member
                               resource-set-summary)

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((key :target-type resource-tag-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type resource-tag-value
                                      :member-name "Value"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-tag-logical-operator
    common-lisp:nil
  (:and "AND")
  (:or "OR"))

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tags :member resource-tag)

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-type-list :member resource-type)

(smithy/sdk/shapes:define-structure resource-violation common-lisp:nil
                                    ((aws-vpcsecurity-group-violation
                                      :target-type
                                      aws-vpcsecurity-group-violation
                                      :member-name
                                      "AwsVPCSecurityGroupViolation")
                                     (aws-ec2network-interface-violation
                                      :target-type
                                      aws-ec2network-interface-violation
                                      :member-name
                                      "AwsEc2NetworkInterfaceViolation")
                                     (aws-ec2instance-violation :target-type
                                      aws-ec2instance-violation :member-name
                                      "AwsEc2InstanceViolation")
                                     (network-firewall-missing-firewall-violation
                                      :target-type
                                      network-firewall-missing-firewall-violation
                                      :member-name
                                      "NetworkFirewallMissingFirewallViolation")
                                     (network-firewall-missing-subnet-violation
                                      :target-type
                                      network-firewall-missing-subnet-violation
                                      :member-name
                                      "NetworkFirewallMissingSubnetViolation")
                                     (network-firewall-missing-expected-rtviolation
                                      :target-type
                                      network-firewall-missing-expected-rtviolation
                                      :member-name
                                      "NetworkFirewallMissingExpectedRTViolation")
                                     (network-firewall-policy-modified-violation
                                      :target-type
                                      network-firewall-policy-modified-violation
                                      :member-name
                                      "NetworkFirewallPolicyModifiedViolation")
                                     (network-firewall-internet-traffic-not-inspected-violation
                                      :target-type
                                      network-firewall-internet-traffic-not-inspected-violation
                                      :member-name
                                      "NetworkFirewallInternetTrafficNotInspectedViolation")
                                     (network-firewall-invalid-route-configuration-violation
                                      :target-type
                                      network-firewall-invalid-route-configuration-violation
                                      :member-name
                                      "NetworkFirewallInvalidRouteConfigurationViolation")
                                     (network-firewall-black-hole-route-detected-violation
                                      :target-type
                                      network-firewall-black-hole-route-detected-violation
                                      :member-name
                                      "NetworkFirewallBlackHoleRouteDetectedViolation")
                                     (network-firewall-unexpected-firewall-routes-violation
                                      :target-type
                                      network-firewall-unexpected-firewall-routes-violation
                                      :member-name
                                      "NetworkFirewallUnexpectedFirewallRoutesViolation")
                                     (network-firewall-unexpected-gateway-routes-violation
                                      :target-type
                                      network-firewall-unexpected-gateway-routes-violation
                                      :member-name
                                      "NetworkFirewallUnexpectedGatewayRoutesViolation")
                                     (network-firewall-missing-expected-routes-violation
                                      :target-type
                                      network-firewall-missing-expected-routes-violation
                                      :member-name
                                      "NetworkFirewallMissingExpectedRoutesViolation")
                                     (dns-rule-group-priority-conflict-violation
                                      :target-type
                                      dns-rule-group-priority-conflict-violation
                                      :member-name
                                      "DnsRuleGroupPriorityConflictViolation")
                                     (dns-duplicate-rule-group-violation
                                      :target-type
                                      dns-duplicate-rule-group-violation
                                      :member-name
                                      "DnsDuplicateRuleGroupViolation")
                                     (dns-rule-group-limit-exceeded-violation
                                      :target-type
                                      dns-rule-group-limit-exceeded-violation
                                      :member-name
                                      "DnsRuleGroupLimitExceededViolation")
                                     (firewall-subnet-is-out-of-scope-violation
                                      :target-type
                                      firewall-subnet-is-out-of-scope-violation
                                      :member-name
                                      "FirewallSubnetIsOutOfScopeViolation")
                                     (route-has-out-of-scope-endpoint-violation
                                      :target-type
                                      route-has-out-of-scope-endpoint-violation
                                      :member-name
                                      "RouteHasOutOfScopeEndpointViolation")
                                     (third-party-firewall-missing-firewall-violation
                                      :target-type
                                      third-party-firewall-missing-firewall-violation
                                      :member-name
                                      "ThirdPartyFirewallMissingFirewallViolation")
                                     (third-party-firewall-missing-subnet-violation
                                      :target-type
                                      third-party-firewall-missing-subnet-violation
                                      :member-name
                                      "ThirdPartyFirewallMissingSubnetViolation")
                                     (third-party-firewall-missing-expected-route-table-violation
                                      :target-type
                                      third-party-firewall-missing-expected-route-table-violation
                                      :member-name
                                      "ThirdPartyFirewallMissingExpectedRouteTableViolation")
                                     (firewall-subnet-missing-vpcendpoint-violation
                                      :target-type
                                      firewall-subnet-missing-vpcendpoint-violation
                                      :member-name
                                      "FirewallSubnetMissingVPCEndpointViolation")
                                     (invalid-network-acl-entries-violation
                                      :target-type
                                      invalid-network-acl-entries-violation
                                      :member-name
                                      "InvalidNetworkAclEntriesViolation")
                                     (possible-remediation-actions :target-type
                                      possible-remediation-actions :member-name
                                      "PossibleRemediationActions")
                                     (web-aclhas-incompatible-configuration-violation
                                      :target-type
                                      web-aclhas-incompatible-configuration-violation
                                      :member-name
                                      "WebACLHasIncompatibleConfigurationViolation")
                                     (web-aclhas-out-of-scope-resources-violation
                                      :target-type
                                      web-aclhas-out-of-scope-resources-violation
                                      :member-name
                                      "WebACLHasOutOfScopeResourcesViolation"))
                                    (:shape-name "ResourceViolation"))

(smithy/sdk/shapes:define-list resource-violations :member resource-violation)

(smithy/sdk/shapes:define-structure route common-lisp:nil
                                    ((destination-type :target-type
                                      destination-type :member-name
                                      "DestinationType")
                                     (target-type :target-type target-type
                                      :member-name "TargetType")
                                     (destination :target-type
                                      length-bounded-string :member-name
                                      "Destination")
                                     (target :target-type length-bounded-string
                                      :member-name "Target"))
                                    (:shape-name "Route"))

(smithy/sdk/shapes:define-structure route-has-out-of-scope-endpoint-violation
                                    common-lisp:nil
                                    ((subnet-id :target-type resource-id
                                      :member-name "SubnetId")
                                     (vpc-id :target-type resource-id
                                      :member-name "VpcId")
                                     (route-table-id :target-type resource-id
                                      :member-name "RouteTableId")
                                     (violating-routes :target-type routes
                                      :member-name "ViolatingRoutes")
                                     (subnet-availability-zone :target-type
                                      length-bounded-string :member-name
                                      "SubnetAvailabilityZone")
                                     (subnet-availability-zone-id :target-type
                                      length-bounded-string :member-name
                                      "SubnetAvailabilityZoneId")
                                     (current-firewall-subnet-route-table
                                      :target-type resource-id :member-name
                                      "CurrentFirewallSubnetRouteTable")
                                     (firewall-subnet-id :target-type
                                      resource-id :member-name
                                      "FirewallSubnetId")
                                     (firewall-subnet-routes :target-type
                                      routes :member-name
                                      "FirewallSubnetRoutes")
                                     (internet-gateway-id :target-type
                                      resource-id :member-name
                                      "InternetGatewayId")
                                     (current-internet-gateway-route-table
                                      :target-type resource-id :member-name
                                      "CurrentInternetGatewayRouteTable")
                                     (internet-gateway-routes :target-type
                                      routes :member-name
                                      "InternetGatewayRoutes"))
                                    (:shape-name
                                     "RouteHasOutOfScopeEndpointViolation"))

(smithy/sdk/shapes:define-list routes :member route)

(smithy/sdk/shapes:define-enum rule-order
    common-lisp:nil
  (:strict-order "STRICT_ORDER")
  (:default-action-order "DEFAULT_ACTION_ORDER"))

(smithy/sdk/shapes:define-structure security-group-remediation-action
                                    common-lisp:nil
                                    ((remediation-action-type :target-type
                                      remediation-action-type :member-name
                                      "RemediationActionType")
                                     (description :target-type
                                      remediation-action-description
                                      :member-name "Description")
                                     (remediation-result :target-type
                                      security-group-rule-description
                                      :member-name "RemediationResult")
                                     (is-default-action :target-type boolean
                                      :member-name "IsDefaultAction"))
                                    (:shape-name
                                     "SecurityGroupRemediationAction"))

(smithy/sdk/shapes:define-list security-group-remediation-actions :member
                               security-group-remediation-action)

(smithy/sdk/shapes:define-structure security-group-rule-description
                                    common-lisp:nil
                                    ((ipv4range :target-type cidr :member-name
                                      "IPV4Range")
                                     (ipv6range :target-type cidr :member-name
                                      "IPV6Range")
                                     (prefix-list-id :target-type resource-id
                                      :member-name "PrefixListId")
                                     (protocol :target-type
                                      length-bounded-string :member-name
                                      "Protocol")
                                     (from-port :target-type ipport-number
                                      :member-name "FromPort")
                                     (to-port :target-type ipport-number
                                      :member-name "ToPort"))
                                    (:shape-name
                                     "SecurityGroupRuleDescription"))

(smithy/sdk/shapes:define-structure security-service-policy-data
                                    common-lisp:nil
                                    ((type :target-type security-service-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (managed-service-data :target-type
                                      managed-service-data :member-name
                                      "ManagedServiceData")
                                     (policy-option :target-type policy-option
                                      :member-name "PolicyOption"))
                                    (:shape-name "SecurityServicePolicyData"))

(smithy/sdk/shapes:define-enum security-service-type
    common-lisp:nil
  (:waf "WAF")
  (:wafv2 "WAFV2")
  (:shield-advanced "SHIELD_ADVANCED")
  (:security-groups-common "SECURITY_GROUPS_COMMON")
  (:security-groups-content-audit "SECURITY_GROUPS_CONTENT_AUDIT")
  (:security-groups-usage-audit "SECURITY_GROUPS_USAGE_AUDIT")
  (:network-firewall "NETWORK_FIREWALL")
  (:dns-firewall "DNS_FIREWALL")
  (:third-party-firewall "THIRD_PARTY_FIREWALL")
  (:import-network-firewall "IMPORT_NETWORK_FIREWALL")
  (:network-acl-common "NETWORK_ACL_COMMON"))

(smithy/sdk/shapes:define-list security-service-type-list :member
                               security-service-type)

(smithy/sdk/shapes:define-structure stateful-engine-options common-lisp:nil
                                    ((rule-order :target-type rule-order
                                      :member-name "RuleOrder")
                                     (stream-exception-policy :target-type
                                      stream-exception-policy :member-name
                                      "StreamExceptionPolicy"))
                                    (:shape-name "StatefulEngineOptions"))

(smithy/sdk/shapes:define-structure stateful-rule-group common-lisp:nil
                                    ((rule-group-name :target-type
                                      network-firewall-resource-name
                                      :member-name "RuleGroupName")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (priority :target-type priority-number
                                      :member-name "Priority")
                                     (override :target-type
                                      network-firewall-stateful-rule-group-override
                                      :member-name "Override"))
                                    (:shape-name "StatefulRuleGroup"))

(smithy/sdk/shapes:define-list stateful-rule-group-list :member
                               stateful-rule-group)

(smithy/sdk/shapes:define-structure stateless-rule-group common-lisp:nil
                                    ((rule-group-name :target-type
                                      network-firewall-resource-name
                                      :member-name "RuleGroupName")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (priority :target-type
                                      stateless-rule-group-priority
                                      :member-name "Priority"))
                                    (:shape-name "StatelessRuleGroup"))

(smithy/sdk/shapes:define-list stateless-rule-group-list :member
                               stateless-rule-group)

(smithy/sdk/shapes:define-type stateless-rule-group-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum stream-exception-policy
    common-lisp:nil
  (:drop "DROP")
  (:continue "CONTINUE")
  (:reject "REJECT")
  (:fms-ignore "FMS_IGNORE"))

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
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-list :target-type tag-list :required
                                  common-lisp:t :member-name "TagList"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:gateway "GATEWAY")
  (:carrier-gateway "CARRIER_GATEWAY")
  (:instance "INSTANCE")
  (:local-gateway "LOCAL_GATEWAY")
  (:nat-gateway "NAT_GATEWAY")
  (:network-interface "NETWORK_INTERFACE")
  (:vpcendpoint "VPC_ENDPOINT")
  (:vpcpeering-connection "VPC_PEERING_CONNECTION")
  (:egress-only-internet-gateway "EGRESS_ONLY_INTERNET_GATEWAY")
  (:transit-gateway "TRANSIT_GATEWAY"))

(smithy/sdk/shapes:define-type target-violation-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-violation-reasons :member
                               target-violation-reason)

(smithy/sdk/shapes:define-enum third-party-firewall
    common-lisp:nil
  (:palo-alto-networks-cloud-ngfw "PALO_ALTO_NETWORKS_CLOUD_NGFW")
  (:fortigate-cloud-native-firewall "FORTIGATE_CLOUD_NATIVE_FIREWALL"))

(smithy/sdk/shapes:define-enum third-party-firewall-association-status
    common-lisp:nil
  (:onboarding "ONBOARDING")
  (:onboard-complete "ONBOARD_COMPLETE")
  (:offboarding "OFFBOARDING")
  (:offboard-complete "OFFBOARD_COMPLETE")
  (:not-exist "NOT_EXIST"))

(smithy/sdk/shapes:define-list third-party-firewall-firewall-policies :member
                               third-party-firewall-firewall-policy)

(smithy/sdk/shapes:define-structure third-party-firewall-firewall-policy
                                    common-lisp:nil
                                    ((firewall-policy-id :target-type
                                      firewall-policy-id :member-name
                                      "FirewallPolicyId")
                                     (firewall-policy-name :target-type
                                      firewall-policy-name :member-name
                                      "FirewallPolicyName"))
                                    (:shape-name
                                     "ThirdPartyFirewallFirewallPolicy"))

(smithy/sdk/shapes:define-structure
 third-party-firewall-missing-expected-route-table-violation common-lisp:nil
 ((violation-target :target-type violation-target :member-name
   "ViolationTarget")
  (vpc :target-type resource-id :member-name "VPC")
  (availability-zone :target-type length-bounded-string :member-name
   "AvailabilityZone")
  (current-route-table :target-type resource-id :member-name
   "CurrentRouteTable")
  (expected-route-table :target-type resource-id :member-name
   "ExpectedRouteTable"))
 (:shape-name "ThirdPartyFirewallMissingExpectedRouteTableViolation"))

(smithy/sdk/shapes:define-structure
 third-party-firewall-missing-firewall-violation common-lisp:nil
 ((violation-target :target-type violation-target :member-name
   "ViolationTarget")
  (vpc :target-type resource-id :member-name "VPC")
  (availability-zone :target-type length-bounded-string :member-name
   "AvailabilityZone")
  (target-violation-reason :target-type target-violation-reason :member-name
   "TargetViolationReason"))
 (:shape-name "ThirdPartyFirewallMissingFirewallViolation"))

(smithy/sdk/shapes:define-structure
 third-party-firewall-missing-subnet-violation common-lisp:nil
 ((violation-target :target-type violation-target :member-name
   "ViolationTarget")
  (vpc :target-type resource-id :member-name "VPC")
  (availability-zone :target-type length-bounded-string :member-name
   "AvailabilityZone")
  (target-violation-reason :target-type target-violation-reason :member-name
   "TargetViolationReason"))
 (:shape-name "ThirdPartyFirewallMissingSubnetViolation"))

(smithy/sdk/shapes:define-structure third-party-firewall-policy common-lisp:nil
                                    ((firewall-deployment-model :target-type
                                      firewall-deployment-model :member-name
                                      "FirewallDeploymentModel"))
                                    (:shape-name "ThirdPartyFirewallPolicy"))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type update-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure violation-detail common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "PolicyId")
                                     (member-account :target-type awsaccount-id
                                      :required common-lisp:t :member-name
                                      "MemberAccount")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "ResourceId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-violations :target-type
                                      resource-violations :required
                                      common-lisp:t :member-name
                                      "ResourceViolations")
                                     (resource-tags :target-type tag-list
                                      :member-name "ResourceTags")
                                     (resource-description :target-type
                                      length-bounded-string :member-name
                                      "ResourceDescription"))
                                    (:shape-name "ViolationDetail"))

(smithy/sdk/shapes:define-enum violation-reason
    common-lisp:nil
  (:web-acl-missing-rule-group "WEB_ACL_MISSING_RULE_GROUP")
  (:resource-missing-web-acl "RESOURCE_MISSING_WEB_ACL")
  (:resource-incorrect-web-acl "RESOURCE_INCORRECT_WEB_ACL")
  (:resource-missing-shield-protection "RESOURCE_MISSING_SHIELD_PROTECTION")
  (:resource-missing-webacl-or-shield-protection
   "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION")
  (:resource-missing-security-group "RESOURCE_MISSING_SECURITY_GROUP")
  (:resource-violates-audit-security-group
   "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP")
  (:security-group-unused "SECURITY_GROUP_UNUSED")
  (:security-group-redundant "SECURITY_GROUP_REDUNDANT")
  (:fmscreated-security-group-edited "FMS_CREATED_SECURITY_GROUP_EDITED")
  (:missing-firewall "MISSING_FIREWALL")
  (:missing-firewall-subnet-in-az "MISSING_FIREWALL_SUBNET_IN_AZ")
  (:missing-expected-route-table "MISSING_EXPECTED_ROUTE_TABLE")
  (:network-firewall-policy-modified "NETWORK_FIREWALL_POLICY_MODIFIED")
  (:firewall-subnet-is-out-of-scope "FIREWALL_SUBNET_IS_OUT_OF_SCOPE")
  (:internet-gateway-missing-expected-route
   "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE")
  (:firewall-subnet-missing-expected-route
   "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE")
  (:unexpected-firewall-routes "UNEXPECTED_FIREWALL_ROUTES")
  (:unexpected-target-gateway-routes "UNEXPECTED_TARGET_GATEWAY_ROUTES")
  (:traffic-inspection-crosses-azboundary
   "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY")
  (:invalid-route-configuration "INVALID_ROUTE_CONFIGURATION")
  (:missing-target-gateway "MISSING_TARGET_GATEWAY")
  (:internet-traffic-not-inspected "INTERNET_TRAFFIC_NOT_INSPECTED")
  (:black-hole-route-detected "BLACK_HOLE_ROUTE_DETECTED")
  (:black-hole-route-detected-in-firewall-subnet
   "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET")
  (:resource-missing-dns-firewall "RESOURCE_MISSING_DNS_FIREWALL")
  (:route-has-out-of-scope-endpoint "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT")
  (:firewall-subnet-missing-vpcendpoint "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT")
  (:invalid-network-acl-entry "INVALID_NETWORK_ACL_ENTRY")
  (:web-aclconfiguration-or-scope-of-use
   "WEB_ACL_CONFIGURATION_OR_SCOPE_OF_USE"))

(smithy/sdk/shapes:define-type violation-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 web-aclhas-incompatible-configuration-violation common-lisp:nil
 ((web-aclarn :target-type resource-arn :member-name "WebACLArn")
  (description :target-type length-bounded-string :member-name "Description"))
 (:shape-name "WebACLHasIncompatibleConfigurationViolation"))

(smithy/sdk/shapes:define-structure web-aclhas-out-of-scope-resources-violation
                                    common-lisp:nil
                                    ((web-aclarn :target-type resource-arn
                                      :member-name "WebACLArn")
                                     (out-of-scope-resource-list :target-type
                                      resource-arn-list :member-name
                                      "OutOfScopeResourceList"))
                                    (:shape-name
                                     "WebACLHasOutOfScopeResourcesViolation"))

(smithy/sdk/operation:define-operation associate-admin-account :shape-name
                                       "AssociateAdminAccount" :input
                                       associate-admin-account-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-third-party-firewall
                                       :shape-name
                                       "AssociateThirdPartyFirewall" :input
                                       associate-third-party-firewall-request
                                       :output
                                       associate-third-party-firewall-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation batch-associate-resource :shape-name
                                       "BatchAssociateResource" :input
                                       batch-associate-resource-request :output
                                       batch-associate-resource-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation batch-disassociate-resource :shape-name
                                       "BatchDisassociateResource" :input
                                       batch-disassociate-resource-request
                                       :output
                                       batch-disassociate-resource-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-apps-list :shape-name
                                       "DeleteAppsList" :input
                                       delete-apps-list-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-notification-channel :shape-name
                                       "DeleteNotificationChannel" :input
                                       delete-notification-channel-request
                                       :output common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-protocols-list :shape-name
                                       "DeleteProtocolsList" :input
                                       delete-protocols-list-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-resource-set :shape-name
                                       "DeleteResourceSet" :input
                                       delete-resource-set-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-admin-account :shape-name
                                       "DisassociateAdminAccount" :input
                                       disassociate-admin-account-request
                                       :output common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-third-party-firewall
                                       :shape-name
                                       "DisassociateThirdPartyFirewall" :input
                                       disassociate-third-party-firewall-request
                                       :output
                                       disassociate-third-party-firewall-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-admin-account :shape-name
                                       "GetAdminAccount" :input
                                       get-admin-account-request :output
                                       get-admin-account-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-admin-scope :shape-name
                                       "GetAdminScope" :input
                                       get-admin-scope-request :output
                                       get-admin-scope-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-apps-list :shape-name "GetAppsList"
                                       :input get-apps-list-request :output
                                       get-apps-list-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-compliance-detail :shape-name
                                       "GetComplianceDetail" :input
                                       get-compliance-detail-request :output
                                       get-compliance-detail-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-notification-channel :shape-name
                                       "GetNotificationChannel" :input
                                       get-notification-channel-request :output
                                       get-notification-channel-response
                                       :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        invalid-type-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-protection-status :shape-name
                                       "GetProtectionStatus" :input
                                       get-protection-status-request :output
                                       get-protection-status-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-protocols-list :shape-name
                                       "GetProtocolsList" :input
                                       get-protocols-list-request :output
                                       get-protocols-list-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-resource-set :shape-name
                                       "GetResourceSet" :input
                                       get-resource-set-request :output
                                       get-resource-set-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 get-third-party-firewall-association-status :shape-name
 "GetThirdPartyFirewallAssociationStatus" :input
 get-third-party-firewall-association-status-request :output
 get-third-party-firewall-association-status-response :errors
 (internal-error-exception invalid-input-exception invalid-operation-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation get-violation-details :shape-name
                                       "GetViolationDetails" :input
                                       get-violation-details-request :output
                                       get-violation-details-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-admin-accounts-for-organization
                                       :shape-name
                                       "ListAdminAccountsForOrganization"
                                       :input
                                       list-admin-accounts-for-organization-request
                                       :output
                                       list-admin-accounts-for-organization-response
                                       :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-admins-managing-account :shape-name
                                       "ListAdminsManagingAccount" :input
                                       list-admins-managing-account-request
                                       :output
                                       list-admins-managing-account-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-apps-lists :shape-name
                                       "ListAppsLists" :input
                                       list-apps-lists-request :output
                                       list-apps-lists-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-compliance-status :shape-name
                                       "ListComplianceStatus" :input
                                       list-compliance-status-request :output
                                       list-compliance-status-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-discovered-resources :shape-name
                                       "ListDiscoveredResources" :input
                                       list-discovered-resources-request
                                       :output
                                       list-discovered-resources-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception))

(smithy/sdk/operation:define-operation list-member-accounts :shape-name
                                       "ListMemberAccounts" :input
                                       list-member-accounts-request :output
                                       list-member-accounts-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-policies :shape-name "ListPolicies"
                                       :input list-policies-request :output
                                       list-policies-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-protocols-lists :shape-name
                                       "ListProtocolsLists" :input
                                       list-protocols-lists-request :output
                                       list-protocols-lists-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-resource-set-resources :shape-name
                                       "ListResourceSetResources" :input
                                       list-resource-set-resources-request
                                       :output
                                       list-resource-set-resources-response
                                       :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-resource-sets :shape-name
                                       "ListResourceSets" :input
                                       list-resource-sets-request :output
                                       list-resource-sets-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 list-third-party-firewall-firewall-policies :shape-name
 "ListThirdPartyFirewallFirewallPolicies" :input
 list-third-party-firewall-firewall-policies-request :output
 list-third-party-firewall-firewall-policies-response :errors
 (internal-error-exception invalid-input-exception invalid-operation-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation put-admin-account :shape-name
                                       "PutAdminAccount" :input
                                       put-admin-account-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation put-apps-list :shape-name "PutAppsList"
                                       :input put-apps-list-request :output
                                       put-apps-list-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-notification-channel :shape-name
                                       "PutNotificationChannel" :input
                                       put-notification-channel-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-policy :shape-name "PutPolicy"
                                       :input put-policy-request :output
                                       put-policy-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        invalid-type-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-protocols-list :shape-name
                                       "PutProtocolsList" :input
                                       put-protocols-list-request :output
                                       put-protocols-list-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-resource-set :shape-name
                                       "PutResourceSet" :input
                                       put-resource-set-request :output
                                       put-resource-set-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-error-exception
                                        invalid-input-exception
                                        invalid-operation-exception
                                        resource-not-found-exception))
