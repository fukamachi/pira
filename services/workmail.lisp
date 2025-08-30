(uiop/package:define-package #:pira/workmail (:use)
                             (:export #:access-control-rule
                              #:access-control-rule-action
                              #:access-control-rule-description
                              #:access-control-rule-effect
                              #:access-control-rule-name
                              #:access-control-rule-name-list
                              #:access-control-rules-list #:access-effect
                              #:actions-list #:aliases #:amazon-resource-name
                              #:application-arn
                              #:associate-delegate-to-resource
                              #:associate-member-to-group
                              #:assume-impersonation-role
                              #:availability-configuration
                              #:availability-configuration-list
                              #:availability-provider-type #:booking-options
                              #:boolean #:boolean-object
                              #:cancel-mailbox-export-job #:create-alias
                              #:create-availability-configuration
                              #:create-group
                              #:create-identity-center-application
                              #:create-impersonation-role
                              #:create-mobile-device-access-rule
                              #:create-organization #:create-resource
                              #:create-user #:delegate
                              #:delete-access-control-rule #:delete-alias
                              #:delete-availability-configuration
                              #:delete-email-monitoring-configuration
                              #:delete-group
                              #:delete-identity-center-application
                              #:delete-identity-provider-configuration
                              #:delete-impersonation-role
                              #:delete-mailbox-permissions
                              #:delete-mobile-device-access-override
                              #:delete-mobile-device-access-rule
                              #:delete-organization
                              #:delete-personal-access-token #:delete-resource
                              #:delete-retention-policy #:delete-user
                              #:deregister-from-work-mail
                              #:deregister-mail-domain
                              #:describe-email-monitoring-configuration
                              #:describe-entity #:describe-group
                              #:describe-identity-provider-configuration
                              #:describe-inbound-dmarc-settings
                              #:describe-mailbox-export-job
                              #:describe-organization #:describe-resource
                              #:describe-user #:description #:device-id
                              #:device-model #:device-model-list
                              #:device-operating-system
                              #:device-operating-system-list #:device-type
                              #:device-type-list #:device-user-agent
                              #:device-user-agent-list #:directory-id
                              #:directory-in-use-exception
                              #:directory-service-authentication-failed-exception
                              #:directory-unavailable-exception
                              #:disassociate-delegate-from-resource
                              #:disassociate-member-from-group #:dns-record
                              #:dns-record-verification-status #:dns-records
                              #:domain #:domain-name #:domains #:email-address
                              #:email-address-in-use-exception
                              #:entity-already-registered-exception
                              #:entity-identifier #:entity-not-found-exception
                              #:entity-state #:entity-state-exception
                              #:entity-type #:ews-availability-provider
                              #:expires-in #:external-user-name
                              #:folder-configuration #:folder-configurations
                              #:folder-name #:get-access-control-effect
                              #:get-default-retention-policy
                              #:get-impersonation-role
                              #:get-impersonation-role-effect #:get-mail-domain
                              #:get-mailbox-details
                              #:get-mobile-device-access-effect
                              #:get-mobile-device-access-override
                              #:get-personal-access-token-metadata #:group
                              #:group-identifier #:group-identifiers
                              #:group-name #:groups #:hosted-zone-id
                              #:idempotency-client-token
                              #:identity-center-application-name
                              #:identity-center-configuration
                              #:identity-provider-authentication-mode
                              #:identity-provider-identity-store-id
                              #:identity-provider-user-id
                              #:identity-provider-user-id-for-update
                              #:identity-provider-user-id-prefix
                              #:impersonation-matched-rule
                              #:impersonation-matched-rule-list
                              #:impersonation-role
                              #:impersonation-role-description
                              #:impersonation-role-id
                              #:impersonation-role-id-list
                              #:impersonation-role-list
                              #:impersonation-role-name
                              #:impersonation-role-type #:impersonation-rule
                              #:impersonation-rule-description
                              #:impersonation-rule-id #:impersonation-rule-list
                              #:impersonation-rule-name #:impersonation-token
                              #:instance-arn #:invalid-configuration-exception
                              #:invalid-custom-ses-configuration-exception
                              #:invalid-parameter-exception
                              #:invalid-password-exception #:ip-address
                              #:ip-range #:ip-range-list #:jobs #:kms-key-arn
                              #:lambda-arn #:lambda-availability-provider
                              #:limit-exceeded-exception
                              #:list-access-control-rules #:list-aliases
                              #:list-availability-configurations
                              #:list-group-members #:list-groups
                              #:list-groups-filters #:list-groups-for-entity
                              #:list-groups-for-entity-filters
                              #:list-impersonation-roles #:list-mail-domains
                              #:list-mailbox-export-jobs
                              #:list-mailbox-permissions
                              #:list-mobile-device-access-overrides
                              #:list-mobile-device-access-rules
                              #:list-organizations
                              #:list-personal-access-tokens
                              #:list-resource-delegates #:list-resources
                              #:list-resources-filters #:list-tags-for-resource
                              #:list-users #:list-users-filters #:log-group-arn
                              #:mail-domain-in-use-exception
                              #:mail-domain-not-found-exception
                              #:mail-domain-state-exception
                              #:mail-domain-summary #:mail-domains
                              #:mailbox-export-error-info #:mailbox-export-job
                              #:mailbox-export-job-id
                              #:mailbox-export-job-state #:mailbox-quota
                              #:mailbox-size #:max-results #:member
                              #:member-type #:members
                              #:mobile-device-access-matched-rule
                              #:mobile-device-access-matched-rule-list
                              #:mobile-device-access-override
                              #:mobile-device-access-overrides-list
                              #:mobile-device-access-rule
                              #:mobile-device-access-rule-description
                              #:mobile-device-access-rule-effect
                              #:mobile-device-access-rule-id
                              #:mobile-device-access-rule-name
                              #:mobile-device-access-rules-list
                              #:name-availability-exception
                              #:new-resource-description #:next-token
                              #:organization-id #:organization-name
                              #:organization-not-found-exception
                              #:organization-state-exception
                              #:organization-summaries #:organization-summary
                              #:password #:percentage #:permission
                              #:permission-type #:permission-values
                              #:permissions
                              #:personal-access-token-configuration
                              #:personal-access-token-configuration-status
                              #:personal-access-token-id
                              #:personal-access-token-lifetime-in-days
                              #:personal-access-token-name
                              #:personal-access-token-scope
                              #:personal-access-token-scope-list
                              #:personal-access-token-summary
                              #:personal-access-token-summary-list
                              #:policy-description #:put-access-control-rule
                              #:put-email-monitoring-configuration
                              #:put-identity-provider-configuration
                              #:put-inbound-dmarc-settings
                              #:put-mailbox-permissions
                              #:put-mobile-device-access-override
                              #:put-retention-policy
                              #:redacted-ews-availability-provider
                              #:register-mail-domain #:register-to-work-mail
                              #:reserved-name-exception #:reset-password
                              #:resource #:resource-delegates
                              #:resource-description #:resource-id
                              #:resource-name #:resource-not-found-exception
                              #:resource-type #:resources #:retention-action
                              #:retention-period #:role-arn #:s3bucket-name
                              #:s3object-key #:short-string
                              #:start-mailbox-export-job #:string #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:target-users
                              #:test-availability-configuration #:timestamp
                              #:too-many-tags-exception
                              #:unsupported-operation-exception
                              #:untag-resource
                              #:update-availability-configuration
                              #:update-default-mail-domain #:update-group
                              #:update-impersonation-role
                              #:update-mailbox-quota
                              #:update-mobile-device-access-rule
                              #:update-primary-email-address #:update-resource
                              #:update-user #:url #:user #:user-attribute
                              #:user-id-list #:user-name #:user-role #:users
                              #:work-mail-domain-name #:work-mail-identifier
                              #:work-mail-service #:workmail-error))
(common-lisp:in-package #:pira/workmail)

(common-lisp:define-condition workmail-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service work-mail-service :shape-name
                                   "WorkMailService" :version "2017-10-01"
                                   :title "Amazon WorkMail" :operations
                                   '(associate-delegate-to-resource
                                     associate-member-to-group
                                     assume-impersonation-role
                                     cancel-mailbox-export-job create-alias
                                     create-availability-configuration
                                     create-group
                                     create-identity-center-application
                                     create-impersonation-role
                                     create-mobile-device-access-rule
                                     create-organization create-resource
                                     create-user delete-access-control-rule
                                     delete-alias
                                     delete-availability-configuration
                                     delete-email-monitoring-configuration
                                     delete-group
                                     delete-identity-center-application
                                     delete-identity-provider-configuration
                                     delete-impersonation-role
                                     delete-mailbox-permissions
                                     delete-mobile-device-access-override
                                     delete-mobile-device-access-rule
                                     delete-organization
                                     delete-personal-access-token
                                     delete-resource delete-retention-policy
                                     delete-user deregister-from-work-mail
                                     deregister-mail-domain
                                     describe-email-monitoring-configuration
                                     describe-entity describe-group
                                     describe-identity-provider-configuration
                                     describe-inbound-dmarc-settings
                                     describe-mailbox-export-job
                                     describe-organization describe-resource
                                     describe-user
                                     disassociate-delegate-from-resource
                                     disassociate-member-from-group
                                     get-access-control-effect
                                     get-default-retention-policy
                                     get-impersonation-role
                                     get-impersonation-role-effect
                                     get-mailbox-details get-mail-domain
                                     get-mobile-device-access-effect
                                     get-mobile-device-access-override
                                     get-personal-access-token-metadata
                                     list-access-control-rules list-aliases
                                     list-availability-configurations
                                     list-group-members list-groups
                                     list-groups-for-entity
                                     list-impersonation-roles
                                     list-mailbox-export-jobs
                                     list-mailbox-permissions list-mail-domains
                                     list-mobile-device-access-overrides
                                     list-mobile-device-access-rules
                                     list-organizations
                                     list-personal-access-tokens
                                     list-resource-delegates list-resources
                                     list-tags-for-resource list-users
                                     put-access-control-rule
                                     put-email-monitoring-configuration
                                     put-identity-provider-configuration
                                     put-inbound-dmarc-settings
                                     put-mailbox-permissions
                                     put-mobile-device-access-override
                                     put-retention-policy register-mail-domain
                                     register-to-work-mail reset-password
                                     start-mailbox-export-job tag-resource
                                     test-availability-configuration
                                     untag-resource
                                     update-availability-configuration
                                     update-default-mail-domain update-group
                                     update-impersonation-role
                                     update-mailbox-quota
                                     update-mobile-device-access-rule
                                     update-primary-email-address
                                     update-resource update-user)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "WorkMail")
                                      ("arnNamespace" . "workmail")
                                      ("cloudFormationName" . "WorkMail")
                                      ("cloudTrailEventSource"
                                       . "workmail.amazonaws.com")
                                      ("endpointPrefix" . "workmail"))
                                     ("aws.auth#sigv4" ("name" . "workmail"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure access-control-rule common-lisp:nil
                                    ((name :target-type
                                      access-control-rule-name :member-name
                                      "Name")
                                     (effect :target-type
                                      access-control-rule-effect :member-name
                                      "Effect")
                                     (description :target-type
                                      access-control-rule-description
                                      :member-name "Description")
                                     (ip-ranges :target-type ip-range-list
                                      :member-name "IpRanges")
                                     (not-ip-ranges :target-type ip-range-list
                                      :member-name "NotIpRanges")
                                     (actions :target-type actions-list
                                      :member-name "Actions")
                                     (not-actions :target-type actions-list
                                      :member-name "NotActions")
                                     (user-ids :target-type user-id-list
                                      :member-name "UserIds")
                                     (not-user-ids :target-type user-id-list
                                      :member-name "NotUserIds")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-modified :target-type timestamp
                                      :member-name "DateModified")
                                     (impersonation-role-ids :target-type
                                      impersonation-role-id-list :member-name
                                      "ImpersonationRoleIds")
                                     (not-impersonation-role-ids :target-type
                                      impersonation-role-id-list :member-name
                                      "NotImpersonationRoleIds"))
                                    (:shape-name "AccessControlRule"))

(smithy/sdk/shapes:define-type access-control-rule-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-control-rule-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum access-control-rule-effect
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-type access-control-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-control-rule-name-list :member
                               access-control-rule-name)

(smithy/sdk/shapes:define-list access-control-rules-list :member
                               access-control-rule)

(smithy/sdk/shapes:define-enum access-effect
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-list actions-list :member access-control-rule-action)

(smithy/sdk/shapes:define-list aliases :member email-address)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-delegate-to-resource-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (resource-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId"))
                                (:shape-name
                                 "AssociateDelegateToResourceRequest"))

(smithy/sdk/shapes:define-output associate-delegate-to-resource-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateDelegateToResourceResponse"))

(smithy/sdk/shapes:define-input associate-member-to-group-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (group-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GroupId")
                                 (member-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "MemberId"))
                                (:shape-name "AssociateMemberToGroupRequest"))

(smithy/sdk/shapes:define-output associate-member-to-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateMemberToGroupResponse"))

(smithy/sdk/shapes:define-input assume-impersonation-role-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (impersonation-role-id :target-type
                                  impersonation-role-id :required common-lisp:t
                                  :member-name "ImpersonationRoleId"))
                                (:shape-name "AssumeImpersonationRoleRequest"))

(smithy/sdk/shapes:define-output assume-impersonation-role-response
                                 common-lisp:nil
                                 ((token :target-type impersonation-token
                                   :member-name "Token")
                                  (expires-in :target-type expires-in
                                   :member-name "ExpiresIn"))
                                 (:shape-name
                                  "AssumeImpersonationRoleResponse"))

(smithy/sdk/shapes:define-structure availability-configuration common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (provider-type :target-type
                                      availability-provider-type :member-name
                                      "ProviderType")
                                     (ews-provider :target-type
                                      redacted-ews-availability-provider
                                      :member-name "EwsProvider")
                                     (lambda-provider :target-type
                                      lambda-availability-provider :member-name
                                      "LambdaProvider")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-modified :target-type timestamp
                                      :member-name "DateModified"))
                                    (:shape-name "AvailabilityConfiguration"))

(smithy/sdk/shapes:define-list availability-configuration-list :member
                               availability-configuration)

(smithy/sdk/shapes:define-enum availability-provider-type
    common-lisp:nil
  (:ews "EWS")
  (:lambda "LAMBDA"))

(smithy/sdk/shapes:define-structure booking-options common-lisp:nil
                                    ((auto-accept-requests :target-type boolean
                                      :member-name "AutoAcceptRequests")
                                     (auto-decline-recurring-requests
                                      :target-type boolean :member-name
                                      "AutoDeclineRecurringRequests")
                                     (auto-decline-conflicting-requests
                                      :target-type boolean :member-name
                                      "AutoDeclineConflictingRequests"))
                                    (:shape-name "BookingOptions"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-mailbox-export-job-request
                                common-lisp:nil
                                ((client-token :target-type
                                  idempotency-client-token :required
                                  common-lisp:t :member-name "ClientToken")
                                 (job-id :target-type mailbox-export-job-id
                                  :required common-lisp:t :member-name "JobId")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name "CancelMailboxExportJobRequest"))

(smithy/sdk/shapes:define-output cancel-mailbox-export-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CancelMailboxExportJobResponse"))

(smithy/sdk/shapes:define-input create-alias-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type work-mail-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (alias :target-type email-address :required
                                  common-lisp:t :member-name "Alias"))
                                (:shape-name "CreateAliasRequest"))

(smithy/sdk/shapes:define-output create-alias-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateAliasResponse"))

(smithy/sdk/shapes:define-input create-availability-configuration-request
                                common-lisp:nil
                                ((client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (ews-provider :target-type
                                  ews-availability-provider :member-name
                                  "EwsProvider")
                                 (lambda-provider :target-type
                                  lambda-availability-provider :member-name
                                  "LambdaProvider"))
                                (:shape-name
                                 "CreateAvailabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output create-availability-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateAvailabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (name :target-type group-name :required
                                  common-lisp:t :member-name "Name")
                                 (hidden-from-global-address-list :target-type
                                  boolean :member-name
                                  "HiddenFromGlobalAddressList"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-response common-lisp:nil
                                 ((group-id :target-type work-mail-identifier
                                   :member-name "GroupId"))
                                 (:shape-name "CreateGroupResponse"))

(smithy/sdk/shapes:define-input create-identity-center-application-request
                                common-lisp:nil
                                ((name :target-type
                                  identity-center-application-name :required
                                  common-lisp:t :member-name "Name")
                                 (instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken"))
                                (:shape-name
                                 "CreateIdentityCenterApplicationRequest"))

(smithy/sdk/shapes:define-output create-identity-center-application-response
                                 common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "ApplicationArn"))
                                 (:shape-name
                                  "CreateIdentityCenterApplicationResponse"))

(smithy/sdk/shapes:define-input create-impersonation-role-request
                                common-lisp:nil
                                ((client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (name :target-type impersonation-role-name
                                  :required common-lisp:t :member-name "Name")
                                 (type :target-type impersonation-role-type
                                  :required common-lisp:t :member-name "Type")
                                 (description :target-type
                                  impersonation-role-description :member-name
                                  "Description")
                                 (rules :target-type impersonation-rule-list
                                  :required common-lisp:t :member-name
                                  "Rules"))
                                (:shape-name "CreateImpersonationRoleRequest"))

(smithy/sdk/shapes:define-output create-impersonation-role-response
                                 common-lisp:nil
                                 ((impersonation-role-id :target-type
                                   impersonation-role-id :member-name
                                   "ImpersonationRoleId"))
                                 (:shape-name
                                  "CreateImpersonationRoleResponse"))

(smithy/sdk/shapes:define-input create-mobile-device-access-rule-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken")
                                 (name :target-type
                                  mobile-device-access-rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  mobile-device-access-rule-description
                                  :member-name "Description")
                                 (effect :target-type
                                  mobile-device-access-rule-effect :required
                                  common-lisp:t :member-name "Effect")
                                 (device-types :target-type device-type-list
                                  :member-name "DeviceTypes")
                                 (not-device-types :target-type
                                  device-type-list :member-name
                                  "NotDeviceTypes")
                                 (device-models :target-type device-model-list
                                  :member-name "DeviceModels")
                                 (not-device-models :target-type
                                  device-model-list :member-name
                                  "NotDeviceModels")
                                 (device-operating-systems :target-type
                                  device-operating-system-list :member-name
                                  "DeviceOperatingSystems")
                                 (not-device-operating-systems :target-type
                                  device-operating-system-list :member-name
                                  "NotDeviceOperatingSystems")
                                 (device-user-agents :target-type
                                  device-user-agent-list :member-name
                                  "DeviceUserAgents")
                                 (not-device-user-agents :target-type
                                  device-user-agent-list :member-name
                                  "NotDeviceUserAgents"))
                                (:shape-name
                                 "CreateMobileDeviceAccessRuleRequest"))

(smithy/sdk/shapes:define-output create-mobile-device-access-rule-response
                                 common-lisp:nil
                                 ((mobile-device-access-rule-id :target-type
                                   mobile-device-access-rule-id :member-name
                                   "MobileDeviceAccessRuleId"))
                                 (:shape-name
                                  "CreateMobileDeviceAccessRuleResponse"))

(smithy/sdk/shapes:define-input create-organization-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (alias :target-type organization-name
                                  :required common-lisp:t :member-name "Alias")
                                 (client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken")
                                 (domains :target-type domains :member-name
                                  "Domains")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyArn")
                                 (enable-interoperability :target-type boolean
                                  :member-name "EnableInteroperability"))
                                (:shape-name "CreateOrganizationRequest"))

(smithy/sdk/shapes:define-output create-organization-response common-lisp:nil
                                 ((organization-id :target-type organization-id
                                   :member-name "OrganizationId"))
                                 (:shape-name "CreateOrganizationResponse"))

(smithy/sdk/shapes:define-input create-resource-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "Name")
                                 (type :target-type resource-type :required
                                  common-lisp:t :member-name "Type")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (hidden-from-global-address-list :target-type
                                  boolean :member-name
                                  "HiddenFromGlobalAddressList"))
                                (:shape-name "CreateResourceRequest"))

(smithy/sdk/shapes:define-output create-resource-response common-lisp:nil
                                 ((resource-id :target-type resource-id
                                   :member-name "ResourceId"))
                                 (:shape-name "CreateResourceResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (name :target-type user-name :required
                                  common-lisp:t :member-name "Name")
                                 (display-name :target-type user-attribute
                                  :required common-lisp:t :member-name
                                  "DisplayName")
                                 (password :target-type password :member-name
                                  "Password")
                                 (role :target-type user-role :member-name
                                  "Role")
                                 (first-name :target-type user-attribute
                                  :member-name "FirstName")
                                 (last-name :target-type user-attribute
                                  :member-name "LastName")
                                 (hidden-from-global-address-list :target-type
                                  boolean :member-name
                                  "HiddenFromGlobalAddressList")
                                 (identity-provider-user-id :target-type
                                  identity-provider-user-id :member-name
                                  "IdentityProviderUserId"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((user-id :target-type work-mail-identifier
                                   :member-name "UserId"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-structure delegate common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (type :target-type member-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "Delegate"))

(smithy/sdk/shapes:define-input delete-access-control-rule-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (name :target-type access-control-rule-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteAccessControlRuleRequest"))

(smithy/sdk/shapes:define-output delete-access-control-rule-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAccessControlRuleResponse"))

(smithy/sdk/shapes:define-input delete-alias-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type work-mail-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (alias :target-type email-address :required
                                  common-lisp:t :member-name "Alias"))
                                (:shape-name "DeleteAliasRequest"))

(smithy/sdk/shapes:define-output delete-alias-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAliasResponse"))

(smithy/sdk/shapes:define-input delete-availability-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name
                                 "DeleteAvailabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-availability-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAvailabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-email-monitoring-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name
                                 "DeleteEmailMonitoringConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-email-monitoring-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteEmailMonitoringConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (group-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GroupId"))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-output delete-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGroupResponse"))

(smithy/sdk/shapes:define-input delete-identity-center-application-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn"))
                                (:shape-name
                                 "DeleteIdentityCenterApplicationRequest"))

(smithy/sdk/shapes:define-output delete-identity-center-application-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteIdentityCenterApplicationResponse"))

(smithy/sdk/shapes:define-input delete-identity-provider-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name
                                 "DeleteIdentityProviderConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-identity-provider-configuration-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteIdentityProviderConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-impersonation-role-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (impersonation-role-id :target-type
                                  impersonation-role-id :required common-lisp:t
                                  :member-name "ImpersonationRoleId"))
                                (:shape-name "DeleteImpersonationRoleRequest"))

(smithy/sdk/shapes:define-output delete-impersonation-role-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteImpersonationRoleResponse"))

(smithy/sdk/shapes:define-input delete-mailbox-permissions-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (grantee-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GranteeId"))
                                (:shape-name "DeleteMailboxPermissionsRequest"))

(smithy/sdk/shapes:define-output delete-mailbox-permissions-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMailboxPermissionsResponse"))

(smithy/sdk/shapes:define-input delete-mobile-device-access-override-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"))
                                (:shape-name
                                 "DeleteMobileDeviceAccessOverrideRequest"))

(smithy/sdk/shapes:define-output delete-mobile-device-access-override-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMobileDeviceAccessOverrideResponse"))

(smithy/sdk/shapes:define-input delete-mobile-device-access-rule-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (mobile-device-access-rule-id :target-type
                                  mobile-device-access-rule-id :required
                                  common-lisp:t :member-name
                                  "MobileDeviceAccessRuleId"))
                                (:shape-name
                                 "DeleteMobileDeviceAccessRuleRequest"))

(smithy/sdk/shapes:define-output delete-mobile-device-access-rule-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMobileDeviceAccessRuleResponse"))

(smithy/sdk/shapes:define-input delete-organization-request common-lisp:nil
                                ((client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (delete-directory :target-type boolean
                                  :required common-lisp:t :member-name
                                  "DeleteDirectory")
                                 (force-delete :target-type boolean
                                  :member-name "ForceDelete")
                                 (delete-identity-center-application
                                  :target-type boolean :member-name
                                  "DeleteIdentityCenterApplication"))
                                (:shape-name "DeleteOrganizationRequest"))

(smithy/sdk/shapes:define-output delete-organization-response common-lisp:nil
                                 ((organization-id :target-type organization-id
                                   :member-name "OrganizationId")
                                  (state :target-type string :member-name
                                   "State"))
                                 (:shape-name "DeleteOrganizationResponse"))

(smithy/sdk/shapes:define-input delete-personal-access-token-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (personal-access-token-id :target-type
                                  personal-access-token-id :required
                                  common-lisp:t :member-name
                                  "PersonalAccessTokenId"))
                                (:shape-name
                                 "DeletePersonalAccessTokenRequest"))

(smithy/sdk/shapes:define-output delete-personal-access-token-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeletePersonalAccessTokenResponse"))

(smithy/sdk/shapes:define-input delete-resource-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (resource-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "DeleteResourceRequest"))

(smithy/sdk/shapes:define-output delete-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteResourceResponse"))

(smithy/sdk/shapes:define-input delete-retention-policy-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (id :target-type short-string :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "DeleteRetentionPolicyRequest"))

(smithy/sdk/shapes:define-output delete-retention-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteRetentionPolicyResponse"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserResponse"))

(smithy/sdk/shapes:define-input deregister-from-work-mail-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId"))
                                (:shape-name "DeregisterFromWorkMailRequest"))

(smithy/sdk/shapes:define-output deregister-from-work-mail-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeregisterFromWorkMailResponse"))

(smithy/sdk/shapes:define-input deregister-mail-domain-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type
                                  work-mail-domain-name :required common-lisp:t
                                  :member-name "DomainName"))
                                (:shape-name "DeregisterMailDomainRequest"))

(smithy/sdk/shapes:define-output deregister-mail-domain-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeregisterMailDomainResponse"))

(smithy/sdk/shapes:define-input describe-email-monitoring-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name
                                 "DescribeEmailMonitoringConfigurationRequest"))

(smithy/sdk/shapes:define-output
 describe-email-monitoring-configuration-response common-lisp:nil
 ((role-arn :target-type role-arn :member-name "RoleArn")
  (log-group-arn :target-type log-group-arn :member-name "LogGroupArn"))
 (:shape-name "DescribeEmailMonitoringConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-entity-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (email :target-type email-address :required
                                  common-lisp:t :member-name "Email"))
                                (:shape-name "DescribeEntityRequest"))

(smithy/sdk/shapes:define-output describe-entity-response common-lisp:nil
                                 ((entity-id :target-type work-mail-identifier
                                   :member-name "EntityId")
                                  (name :target-type string :member-name
                                   "Name")
                                  (type :target-type entity-type :member-name
                                   "Type"))
                                 (:shape-name "DescribeEntityResponse"))

(smithy/sdk/shapes:define-input describe-group-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (group-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GroupId"))
                                (:shape-name "DescribeGroupRequest"))

(smithy/sdk/shapes:define-output describe-group-response common-lisp:nil
                                 ((group-id :target-type work-mail-identifier
                                   :member-name "GroupId")
                                  (name :target-type group-name :member-name
                                   "Name")
                                  (email :target-type email-address
                                   :member-name "Email")
                                  (state :target-type entity-state :member-name
                                   "State")
                                  (enabled-date :target-type timestamp
                                   :member-name "EnabledDate")
                                  (disabled-date :target-type timestamp
                                   :member-name "DisabledDate")
                                  (hidden-from-global-address-list :target-type
                                   boolean :member-name
                                   "HiddenFromGlobalAddressList"))
                                 (:shape-name "DescribeGroupResponse"))

(smithy/sdk/shapes:define-input
 describe-identity-provider-configuration-request common-lisp:nil
 ((organization-id :target-type organization-id :required common-lisp:t
   :member-name "OrganizationId"))
 (:shape-name "DescribeIdentityProviderConfigurationRequest"))

(smithy/sdk/shapes:define-output
 describe-identity-provider-configuration-response common-lisp:nil
 ((authentication-mode :target-type identity-provider-authentication-mode
   :member-name "AuthenticationMode")
  (identity-center-configuration :target-type identity-center-configuration
   :member-name "IdentityCenterConfiguration")
  (personal-access-token-configuration :target-type
   personal-access-token-configuration :member-name
   "PersonalAccessTokenConfiguration"))
 (:shape-name "DescribeIdentityProviderConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-inbound-dmarc-settings-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name
                                 "DescribeInboundDmarcSettingsRequest"))

(smithy/sdk/shapes:define-output describe-inbound-dmarc-settings-response
                                 common-lisp:nil
                                 ((enforced :target-type boolean :member-name
                                   "Enforced"))
                                 (:shape-name
                                  "DescribeInboundDmarcSettingsResponse"))

(smithy/sdk/shapes:define-input describe-mailbox-export-job-request
                                common-lisp:nil
                                ((job-id :target-type mailbox-export-job-id
                                  :required common-lisp:t :member-name "JobId")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name "DescribeMailboxExportJobRequest"))

(smithy/sdk/shapes:define-output describe-mailbox-export-job-response
                                 common-lisp:nil
                                 ((entity-id :target-type work-mail-identifier
                                   :member-name "EntityId")
                                  (description :target-type description
                                   :member-name "Description")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "KmsKeyArn")
                                  (s3bucket-name :target-type s3bucket-name
                                   :member-name "S3BucketName")
                                  (s3prefix :target-type s3object-key
                                   :member-name "S3Prefix")
                                  (s3path :target-type s3object-key
                                   :member-name "S3Path")
                                  (estimated-progress :target-type percentage
                                   :member-name "EstimatedProgress")
                                  (state :target-type mailbox-export-job-state
                                   :member-name "State")
                                  (error-info :target-type
                                   mailbox-export-error-info :member-name
                                   "ErrorInfo")
                                  (start-time :target-type timestamp
                                   :member-name "StartTime")
                                  (end-time :target-type timestamp :member-name
                                   "EndTime"))
                                 (:shape-name
                                  "DescribeMailboxExportJobResponse"))

(smithy/sdk/shapes:define-input describe-organization-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name "DescribeOrganizationRequest"))

(smithy/sdk/shapes:define-output describe-organization-response common-lisp:nil
                                 ((organization-id :target-type organization-id
                                   :member-name "OrganizationId")
                                  (alias :target-type organization-name
                                   :member-name "Alias")
                                  (state :target-type string :member-name
                                   "State")
                                  (directory-id :target-type string
                                   :member-name "DirectoryId")
                                  (directory-type :target-type string
                                   :member-name "DirectoryType")
                                  (default-mail-domain :target-type string
                                   :member-name "DefaultMailDomain")
                                  (completed-date :target-type timestamp
                                   :member-name "CompletedDate")
                                  (error-message :target-type string
                                   :member-name "ErrorMessage")
                                  (arn :target-type amazon-resource-name
                                   :member-name "ARN")
                                  (migration-admin :target-type
                                   work-mail-identifier :member-name
                                   "MigrationAdmin")
                                  (interoperability-enabled :target-type
                                   boolean :member-name
                                   "InteroperabilityEnabled"))
                                 (:shape-name "DescribeOrganizationResponse"))

(smithy/sdk/shapes:define-input describe-resource-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (resource-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "DescribeResourceRequest"))

(smithy/sdk/shapes:define-output describe-resource-response common-lisp:nil
                                 ((resource-id :target-type resource-id
                                   :member-name "ResourceId")
                                  (email :target-type email-address
                                   :member-name "Email")
                                  (name :target-type resource-name :member-name
                                   "Name")
                                  (type :target-type resource-type :member-name
                                   "Type")
                                  (booking-options :target-type booking-options
                                   :member-name "BookingOptions")
                                  (state :target-type entity-state :member-name
                                   "State")
                                  (enabled-date :target-type timestamp
                                   :member-name "EnabledDate")
                                  (disabled-date :target-type timestamp
                                   :member-name "DisabledDate")
                                  (description :target-type
                                   resource-description :member-name
                                   "Description")
                                  (hidden-from-global-address-list :target-type
                                   boolean :member-name
                                   "HiddenFromGlobalAddressList"))
                                 (:shape-name "DescribeResourceResponse"))

(smithy/sdk/shapes:define-input describe-user-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId"))
                                (:shape-name "DescribeUserRequest"))

(smithy/sdk/shapes:define-output describe-user-response common-lisp:nil
                                 ((user-id :target-type work-mail-identifier
                                   :member-name "UserId")
                                  (name :target-type user-name :member-name
                                   "Name")
                                  (email :target-type email-address
                                   :member-name "Email")
                                  (display-name :target-type user-attribute
                                   :member-name "DisplayName")
                                  (state :target-type entity-state :member-name
                                   "State")
                                  (user-role :target-type user-role
                                   :member-name "UserRole")
                                  (enabled-date :target-type timestamp
                                   :member-name "EnabledDate")
                                  (disabled-date :target-type timestamp
                                   :member-name "DisabledDate")
                                  (mailbox-provisioned-date :target-type
                                   timestamp :member-name
                                   "MailboxProvisionedDate")
                                  (mailbox-deprovisioned-date :target-type
                                   timestamp :member-name
                                   "MailboxDeprovisionedDate")
                                  (first-name :target-type user-attribute
                                   :member-name "FirstName")
                                  (last-name :target-type user-attribute
                                   :member-name "LastName")
                                  (hidden-from-global-address-list :target-type
                                   boolean :member-name
                                   "HiddenFromGlobalAddressList")
                                  (initials :target-type user-attribute
                                   :member-name "Initials")
                                  (telephone :target-type user-attribute
                                   :member-name "Telephone")
                                  (street :target-type user-attribute
                                   :member-name "Street")
                                  (job-title :target-type user-attribute
                                   :member-name "JobTitle")
                                  (city :target-type user-attribute
                                   :member-name "City")
                                  (company :target-type user-attribute
                                   :member-name "Company")
                                  (zip-code :target-type user-attribute
                                   :member-name "ZipCode")
                                  (department :target-type user-attribute
                                   :member-name "Department")
                                  (country :target-type user-attribute
                                   :member-name "Country")
                                  (office :target-type user-attribute
                                   :member-name "Office")
                                  (identity-provider-user-id :target-type
                                   identity-provider-user-id :member-name
                                   "IdentityProviderUserId")
                                  (identity-provider-identity-store-id
                                   :target-type
                                   identity-provider-identity-store-id
                                   :member-name
                                   "IdentityProviderIdentityStoreId"))
                                 (:shape-name "DescribeUserResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-model-list :member device-model)

(smithy/sdk/shapes:define-type device-operating-system
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-operating-system-list :member
                               device-operating-system)

(smithy/sdk/shapes:define-type device-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-type-list :member device-type)

(smithy/sdk/shapes:define-type device-user-agent smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-user-agent-list :member device-user-agent)

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error directory-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DirectoryInUseException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error
 directory-service-authentication-failed-exception common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "DirectoryServiceAuthenticationFailedException")
 (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error directory-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DirectoryUnavailableException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-input disassociate-delegate-from-resource-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (resource-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId"))
                                (:shape-name
                                 "DisassociateDelegateFromResourceRequest"))

(smithy/sdk/shapes:define-output disassociate-delegate-from-resource-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateDelegateFromResourceResponse"))

(smithy/sdk/shapes:define-input disassociate-member-from-group-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (group-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GroupId")
                                 (member-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "MemberId"))
                                (:shape-name
                                 "DisassociateMemberFromGroupRequest"))

(smithy/sdk/shapes:define-output disassociate-member-from-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateMemberFromGroupResponse"))

(smithy/sdk/shapes:define-structure dns-record common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type")
                                     (hostname :target-type string :member-name
                                      "Hostname")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "DnsRecord"))

(smithy/sdk/shapes:define-enum dns-record-verification-status
    common-lisp:nil
  (:pending "PENDING")
  (:verified "VERIFIED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list dns-records :member dns-record)

(smithy/sdk/shapes:define-structure domain common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (hosted-zone-id :target-type
                                      hosted-zone-id :member-name
                                      "HostedZoneId"))
                                    (:shape-name "Domain"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domains :member domain)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error email-address-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EmailAddressInUseException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error entity-already-registered-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "EntityAlreadyRegisteredException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-type entity-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error entity-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EntityNotFoundException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-enum entity-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-error entity-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EntityStateException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:group "GROUP")
  (:user "USER")
  (:resource "RESOURCE"))

(smithy/sdk/shapes:define-structure ews-availability-provider common-lisp:nil
                                    ((ews-endpoint :target-type url :required
                                      common-lisp:t :member-name "EwsEndpoint")
                                     (ews-username :target-type
                                      external-user-name :required
                                      common-lisp:t :member-name "EwsUsername")
                                     (ews-password :target-type password
                                      :required common-lisp:t :member-name
                                      "EwsPassword"))
                                    (:shape-name "EwsAvailabilityProvider"))

(smithy/sdk/shapes:define-type expires-in smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type external-user-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure folder-configuration common-lisp:nil
                                    ((name :target-type folder-name :required
                                      common-lisp:t :member-name "Name")
                                     (action :target-type retention-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (period :target-type retention-period
                                      :member-name "Period"))
                                    (:shape-name "FolderConfiguration"))

(smithy/sdk/shapes:define-list folder-configurations :member
                               folder-configuration)

(smithy/sdk/shapes:define-enum folder-name
    common-lisp:nil
  (:inbox "INBOX")
  (:deleted-items "DELETED_ITEMS")
  (:sent-items "SENT_ITEMS")
  (:drafts "DRAFTS")
  (:junk-email "JUNK_EMAIL"))

(smithy/sdk/shapes:define-input get-access-control-effect-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (ip-address :target-type ip-address :required
                                  common-lisp:t :member-name "IpAddress")
                                 (action :target-type
                                  access-control-rule-action :required
                                  common-lisp:t :member-name "Action")
                                 (user-id :target-type work-mail-identifier
                                  :member-name "UserId")
                                 (impersonation-role-id :target-type
                                  impersonation-role-id :member-name
                                  "ImpersonationRoleId"))
                                (:shape-name "GetAccessControlEffectRequest"))

(smithy/sdk/shapes:define-output get-access-control-effect-response
                                 common-lisp:nil
                                 ((effect :target-type
                                   access-control-rule-effect :member-name
                                   "Effect")
                                  (matched-rules :target-type
                                   access-control-rule-name-list :member-name
                                   "MatchedRules"))
                                 (:shape-name "GetAccessControlEffectResponse"))

(smithy/sdk/shapes:define-input get-default-retention-policy-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name
                                 "GetDefaultRetentionPolicyRequest"))

(smithy/sdk/shapes:define-output get-default-retention-policy-response
                                 common-lisp:nil
                                 ((id :target-type short-string :member-name
                                   "Id")
                                  (name :target-type short-string :member-name
                                   "Name")
                                  (description :target-type string :member-name
                                   "Description")
                                  (folder-configurations :target-type
                                   folder-configurations :member-name
                                   "FolderConfigurations"))
                                 (:shape-name
                                  "GetDefaultRetentionPolicyResponse"))

(smithy/sdk/shapes:define-input get-impersonation-role-effect-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (impersonation-role-id :target-type
                                  impersonation-role-id :required common-lisp:t
                                  :member-name "ImpersonationRoleId")
                                 (target-user :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "TargetUser"))
                                (:shape-name
                                 "GetImpersonationRoleEffectRequest"))

(smithy/sdk/shapes:define-output get-impersonation-role-effect-response
                                 common-lisp:nil
                                 ((type :target-type impersonation-role-type
                                   :member-name "Type")
                                  (effect :target-type access-effect
                                   :member-name "Effect")
                                  (matched-rules :target-type
                                   impersonation-matched-rule-list :member-name
                                   "MatchedRules"))
                                 (:shape-name
                                  "GetImpersonationRoleEffectResponse"))

(smithy/sdk/shapes:define-input get-impersonation-role-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (impersonation-role-id :target-type
                                  impersonation-role-id :required common-lisp:t
                                  :member-name "ImpersonationRoleId"))
                                (:shape-name "GetImpersonationRoleRequest"))

(smithy/sdk/shapes:define-output get-impersonation-role-response
                                 common-lisp:nil
                                 ((impersonation-role-id :target-type
                                   impersonation-role-id :member-name
                                   "ImpersonationRoleId")
                                  (name :target-type impersonation-role-name
                                   :member-name "Name")
                                  (type :target-type impersonation-role-type
                                   :member-name "Type")
                                  (description :target-type
                                   impersonation-role-description :member-name
                                   "Description")
                                  (rules :target-type impersonation-rule-list
                                   :member-name "Rules")
                                  (date-created :target-type timestamp
                                   :member-name "DateCreated")
                                  (date-modified :target-type timestamp
                                   :member-name "DateModified"))
                                 (:shape-name "GetImpersonationRoleResponse"))

(smithy/sdk/shapes:define-input get-mail-domain-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type
                                  work-mail-domain-name :required common-lisp:t
                                  :member-name "DomainName"))
                                (:shape-name "GetMailDomainRequest"))

(smithy/sdk/shapes:define-output get-mail-domain-response common-lisp:nil
                                 ((records :target-type dns-records
                                   :member-name "Records")
                                  (is-test-domain :target-type boolean
                                   :member-name "IsTestDomain")
                                  (is-default :target-type boolean :member-name
                                   "IsDefault")
                                  (ownership-verification-status :target-type
                                   dns-record-verification-status :member-name
                                   "OwnershipVerificationStatus")
                                  (dkim-verification-status :target-type
                                   dns-record-verification-status :member-name
                                   "DkimVerificationStatus"))
                                 (:shape-name "GetMailDomainResponse"))

(smithy/sdk/shapes:define-input get-mailbox-details-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId"))
                                (:shape-name "GetMailboxDetailsRequest"))

(smithy/sdk/shapes:define-output get-mailbox-details-response common-lisp:nil
                                 ((mailbox-quota :target-type mailbox-quota
                                   :member-name "MailboxQuota")
                                  (mailbox-size :target-type mailbox-size
                                   :member-name "MailboxSize"))
                                 (:shape-name "GetMailboxDetailsResponse"))

(smithy/sdk/shapes:define-input get-mobile-device-access-effect-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (device-type :target-type device-type
                                  :member-name "DeviceType")
                                 (device-model :target-type device-model
                                  :member-name "DeviceModel")
                                 (device-operating-system :target-type
                                  device-operating-system :member-name
                                  "DeviceOperatingSystem")
                                 (device-user-agent :target-type
                                  device-user-agent :member-name
                                  "DeviceUserAgent"))
                                (:shape-name
                                 "GetMobileDeviceAccessEffectRequest"))

(smithy/sdk/shapes:define-output get-mobile-device-access-effect-response
                                 common-lisp:nil
                                 ((effect :target-type
                                   mobile-device-access-rule-effect
                                   :member-name "Effect")
                                  (matched-rules :target-type
                                   mobile-device-access-matched-rule-list
                                   :member-name "MatchedRules"))
                                 (:shape-name
                                  "GetMobileDeviceAccessEffectResponse"))

(smithy/sdk/shapes:define-input get-mobile-device-access-override-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"))
                                (:shape-name
                                 "GetMobileDeviceAccessOverrideRequest"))

(smithy/sdk/shapes:define-output get-mobile-device-access-override-response
                                 common-lisp:nil
                                 ((user-id :target-type work-mail-identifier
                                   :member-name "UserId")
                                  (device-id :target-type device-id
                                   :member-name "DeviceId")
                                  (effect :target-type
                                   mobile-device-access-rule-effect
                                   :member-name "Effect")
                                  (description :target-type
                                   mobile-device-access-rule-description
                                   :member-name "Description")
                                  (date-created :target-type timestamp
                                   :member-name "DateCreated")
                                  (date-modified :target-type timestamp
                                   :member-name "DateModified"))
                                 (:shape-name
                                  "GetMobileDeviceAccessOverrideResponse"))

(smithy/sdk/shapes:define-input get-personal-access-token-metadata-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (personal-access-token-id :target-type
                                  personal-access-token-id :required
                                  common-lisp:t :member-name
                                  "PersonalAccessTokenId"))
                                (:shape-name
                                 "GetPersonalAccessTokenMetadataRequest"))

(smithy/sdk/shapes:define-output get-personal-access-token-metadata-response
                                 common-lisp:nil
                                 ((personal-access-token-id :target-type
                                   personal-access-token-id :member-name
                                   "PersonalAccessTokenId")
                                  (user-id :target-type work-mail-identifier
                                   :member-name "UserId")
                                  (name :target-type personal-access-token-name
                                   :member-name "Name")
                                  (date-created :target-type timestamp
                                   :member-name "DateCreated")
                                  (date-last-used :target-type timestamp
                                   :member-name "DateLastUsed")
                                  (expires-time :target-type timestamp
                                   :member-name "ExpiresTime")
                                  (scopes :target-type
                                   personal-access-token-scope-list
                                   :member-name "Scopes"))
                                 (:shape-name
                                  "GetPersonalAccessTokenMetadataResponse"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((id :target-type work-mail-identifier
                                      :member-name "Id")
                                     (email :target-type email-address
                                      :member-name "Email")
                                     (name :target-type group-name :member-name
                                      "Name")
                                     (state :target-type entity-state
                                      :member-name "State")
                                     (enabled-date :target-type timestamp
                                      :member-name "EnabledDate")
                                     (disabled-date :target-type timestamp
                                      :member-name "DisabledDate"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-structure group-identifier common-lisp:nil
                                    ((group-id :target-type
                                      work-mail-identifier :member-name
                                      "GroupId")
                                     (group-name :target-type group-name
                                      :member-name "GroupName"))
                                    (:shape-name "GroupIdentifier"))

(smithy/sdk/shapes:define-list group-identifiers :member group-identifier)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list groups :member group)

(smithy/sdk/shapes:define-type hosted-zone-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotency-client-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-application-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-center-configuration
                                    common-lisp:nil
                                    ((instance-arn :target-type instance-arn
                                      :required common-lisp:t :member-name
                                      "InstanceArn")
                                     (application-arn :target-type
                                      application-arn :required common-lisp:t
                                      :member-name "ApplicationArn"))
                                    (:shape-name "IdentityCenterConfiguration"))

(smithy/sdk/shapes:define-enum identity-provider-authentication-mode
    common-lisp:nil
  (:identity-provider-only "IDENTITY_PROVIDER_ONLY")
  (:identity-provider-and-directory "IDENTITY_PROVIDER_AND_DIRECTORY"))

(smithy/sdk/shapes:define-type identity-provider-identity-store-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-provider-user-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-provider-user-id-for-update
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-provider-user-id-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure impersonation-matched-rule common-lisp:nil
                                    ((impersonation-rule-id :target-type
                                      impersonation-rule-id :member-name
                                      "ImpersonationRuleId")
                                     (name :target-type impersonation-rule-name
                                      :member-name "Name"))
                                    (:shape-name "ImpersonationMatchedRule"))

(smithy/sdk/shapes:define-list impersonation-matched-rule-list :member
                               impersonation-matched-rule)

(smithy/sdk/shapes:define-structure impersonation-role common-lisp:nil
                                    ((impersonation-role-id :target-type
                                      impersonation-role-id :member-name
                                      "ImpersonationRoleId")
                                     (name :target-type impersonation-role-name
                                      :member-name "Name")
                                     (type :target-type impersonation-role-type
                                      :member-name "Type")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-modified :target-type timestamp
                                      :member-name "DateModified"))
                                    (:shape-name "ImpersonationRole"))

(smithy/sdk/shapes:define-type impersonation-role-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type impersonation-role-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list impersonation-role-id-list :member
                               impersonation-role-id)

(smithy/sdk/shapes:define-list impersonation-role-list :member
                               impersonation-role)

(smithy/sdk/shapes:define-type impersonation-role-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum impersonation-role-type
    common-lisp:nil
  (:full-access "FULL_ACCESS")
  (:read-only "READ_ONLY"))

(smithy/sdk/shapes:define-structure impersonation-rule common-lisp:nil
                                    ((impersonation-rule-id :target-type
                                      impersonation-rule-id :required
                                      common-lisp:t :member-name
                                      "ImpersonationRuleId")
                                     (name :target-type impersonation-rule-name
                                      :member-name "Name")
                                     (description :target-type
                                      impersonation-rule-description
                                      :member-name "Description")
                                     (effect :target-type access-effect
                                      :required common-lisp:t :member-name
                                      "Effect")
                                     (target-users :target-type target-users
                                      :member-name "TargetUsers")
                                     (not-target-users :target-type
                                      target-users :member-name
                                      "NotTargetUsers"))
                                    (:shape-name "ImpersonationRule"))

(smithy/sdk/shapes:define-type impersonation-rule-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type impersonation-rule-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list impersonation-rule-list :member
                               impersonation-rule)

(smithy/sdk/shapes:define-type impersonation-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type impersonation-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-configuration-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidConfigurationException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error invalid-custom-ses-configuration-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidCustomSesConfigurationException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error invalid-password-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidPasswordException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-range-list :member ip-range)

(smithy/sdk/shapes:define-list jobs :member mailbox-export-job)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-availability-provider
                                    common-lisp:nil
                                    ((lambda-arn :target-type lambda-arn
                                      :required common-lisp:t :member-name
                                      "LambdaArn"))
                                    (:shape-name "LambdaAvailabilityProvider"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-input list-access-control-rules-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name "ListAccessControlRulesRequest"))

(smithy/sdk/shapes:define-output list-access-control-rules-response
                                 common-lisp:nil
                                 ((rules :target-type access-control-rules-list
                                   :member-name "Rules"))
                                 (:shape-name "ListAccessControlRulesResponse"))

(smithy/sdk/shapes:define-input list-aliases-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type work-mail-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAliasesRequest"))

(smithy/sdk/shapes:define-output list-aliases-response common-lisp:nil
                                 ((aliases :target-type aliases :member-name
                                   "Aliases")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAliasesResponse"))

(smithy/sdk/shapes:define-input list-availability-configurations-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAvailabilityConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-availability-configurations-response
                                 common-lisp:nil
                                 ((availability-configurations :target-type
                                   availability-configuration-list :member-name
                                   "AvailabilityConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAvailabilityConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-group-members-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (group-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GroupId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGroupMembersRequest"))

(smithy/sdk/shapes:define-output list-group-members-response common-lisp:nil
                                 ((members :target-type members :member-name
                                   "Members")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupMembersResponse"))

(smithy/sdk/shapes:define-structure list-groups-filters common-lisp:nil
                                    ((name-prefix :target-type string
                                      :member-name "NamePrefix")
                                     (primary-email-prefix :target-type string
                                      :member-name "PrimaryEmailPrefix")
                                     (state :target-type entity-state
                                      :member-name "State"))
                                    (:shape-name "ListGroupsFilters"))

(smithy/sdk/shapes:define-structure list-groups-for-entity-filters
                                    common-lisp:nil
                                    ((group-name-prefix :target-type string
                                      :member-name "GroupNamePrefix"))
                                    (:shape-name "ListGroupsForEntityFilters"))

(smithy/sdk/shapes:define-input list-groups-for-entity-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (filters :target-type
                                  list-groups-for-entity-filters :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListGroupsForEntityRequest"))

(smithy/sdk/shapes:define-output list-groups-for-entity-response
                                 common-lisp:nil
                                 ((groups :target-type group-identifiers
                                   :member-name "Groups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupsForEntityResponse"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type list-groups-filters
                                  :member-name "Filters"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-response common-lisp:nil
                                 ((groups :target-type groups :member-name
                                   "Groups")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-input list-impersonation-roles-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListImpersonationRolesRequest"))

(smithy/sdk/shapes:define-output list-impersonation-roles-response
                                 common-lisp:nil
                                 ((roles :target-type impersonation-role-list
                                   :member-name "Roles")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListImpersonationRolesResponse"))

(smithy/sdk/shapes:define-input list-mail-domains-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListMailDomainsRequest"))

(smithy/sdk/shapes:define-output list-mail-domains-response common-lisp:nil
                                 ((mail-domains :target-type mail-domains
                                   :member-name "MailDomains")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMailDomainsResponse"))

(smithy/sdk/shapes:define-input list-mailbox-export-jobs-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListMailboxExportJobsRequest"))

(smithy/sdk/shapes:define-output list-mailbox-export-jobs-response
                                 common-lisp:nil
                                 ((jobs :target-type jobs :member-name "Jobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMailboxExportJobsResponse"))

(smithy/sdk/shapes:define-input list-mailbox-permissions-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListMailboxPermissionsRequest"))

(smithy/sdk/shapes:define-output list-mailbox-permissions-response
                                 common-lisp:nil
                                 ((permissions :target-type permissions
                                   :member-name "Permissions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMailboxPermissionsResponse"))

(smithy/sdk/shapes:define-input list-mobile-device-access-overrides-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :member-name "UserId")
                                 (device-id :target-type device-id :member-name
                                  "DeviceId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListMobileDeviceAccessOverridesRequest"))

(smithy/sdk/shapes:define-output list-mobile-device-access-overrides-response
                                 common-lisp:nil
                                 ((overrides :target-type
                                   mobile-device-access-overrides-list
                                   :member-name "Overrides")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListMobileDeviceAccessOverridesResponse"))

(smithy/sdk/shapes:define-input list-mobile-device-access-rules-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId"))
                                (:shape-name
                                 "ListMobileDeviceAccessRulesRequest"))

(smithy/sdk/shapes:define-output list-mobile-device-access-rules-response
                                 common-lisp:nil
                                 ((rules :target-type
                                   mobile-device-access-rules-list :member-name
                                   "Rules"))
                                 (:shape-name
                                  "ListMobileDeviceAccessRulesResponse"))

(smithy/sdk/shapes:define-input list-organizations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListOrganizationsRequest"))

(smithy/sdk/shapes:define-output list-organizations-response common-lisp:nil
                                 ((organization-summaries :target-type
                                   organization-summaries :member-name
                                   "OrganizationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOrganizationsResponse"))

(smithy/sdk/shapes:define-input list-personal-access-tokens-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :member-name "UserId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPersonalAccessTokensRequest"))

(smithy/sdk/shapes:define-output list-personal-access-tokens-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (personal-access-token-summaries :target-type
                                   personal-access-token-summary-list
                                   :member-name
                                   "PersonalAccessTokenSummaries"))
                                 (:shape-name
                                  "ListPersonalAccessTokensResponse"))

(smithy/sdk/shapes:define-input list-resource-delegates-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (resource-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListResourceDelegatesRequest"))

(smithy/sdk/shapes:define-output list-resource-delegates-response
                                 common-lisp:nil
                                 ((delegates :target-type resource-delegates
                                   :member-name "Delegates")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceDelegatesResponse"))

(smithy/sdk/shapes:define-structure list-resources-filters common-lisp:nil
                                    ((name-prefix :target-type string
                                      :member-name "NamePrefix")
                                     (primary-email-prefix :target-type string
                                      :member-name "PrimaryEmailPrefix")
                                     (state :target-type entity-state
                                      :member-name "State"))
                                    (:shape-name "ListResourcesFilters"))

(smithy/sdk/shapes:define-input list-resources-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type list-resources-filters
                                  :member-name "Filters"))
                                (:shape-name "ListResourcesRequest"))

(smithy/sdk/shapes:define-output list-resources-response common-lisp:nil
                                 ((resources :target-type resources
                                   :member-name "Resources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourcesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-users-filters common-lisp:nil
                                    ((username-prefix :target-type string
                                      :member-name "UsernamePrefix")
                                     (display-name-prefix :target-type
                                      user-attribute :member-name
                                      "DisplayNamePrefix")
                                     (primary-email-prefix :target-type string
                                      :member-name "PrimaryEmailPrefix")
                                     (state :target-type entity-state
                                      :member-name "State")
                                     (identity-provider-user-id-prefix
                                      :target-type
                                      identity-provider-user-id-prefix
                                      :member-name
                                      "IdentityProviderUserIdPrefix"))
                                    (:shape-name "ListUsersFilters"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type list-users-filters
                                  :member-name "Filters"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((users :target-type users :member-name
                                   "Users")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error mail-domain-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "MailDomainInUseException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error mail-domain-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "MailDomainNotFoundException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error mail-domain-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "MailDomainStateException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-structure mail-domain-summary common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (default-domain :target-type boolean
                                      :member-name "DefaultDomain"))
                                    (:shape-name "MailDomainSummary"))

(smithy/sdk/shapes:define-list mail-domains :member mail-domain-summary)

(smithy/sdk/shapes:define-type mailbox-export-error-info
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mailbox-export-job common-lisp:nil
                                    ((job-id :target-type mailbox-export-job-id
                                      :member-name "JobId")
                                     (entity-id :target-type
                                      work-mail-identifier :member-name
                                      "EntityId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (s3bucket-name :target-type s3bucket-name
                                      :member-name "S3BucketName")
                                     (s3path :target-type s3object-key
                                      :member-name "S3Path")
                                     (estimated-progress :target-type
                                      percentage :member-name
                                      "EstimatedProgress")
                                     (state :target-type
                                      mailbox-export-job-state :member-name
                                      "State")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime"))
                                    (:shape-name "MailboxExportJob"))

(smithy/sdk/shapes:define-type mailbox-export-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mailbox-export-job-state
    common-lisp:nil
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-type mailbox-quota smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mailbox-size smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (type :target-type member-type
                                      :member-name "Type")
                                     (state :target-type entity-state
                                      :member-name "State")
                                     (enabled-date :target-type timestamp
                                      :member-name "EnabledDate")
                                     (disabled-date :target-type timestamp
                                      :member-name "DisabledDate"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-enum member-type
    common-lisp:nil
  (:group "GROUP")
  (:user "USER"))

(smithy/sdk/shapes:define-list members :member member)

(smithy/sdk/shapes:define-structure mobile-device-access-matched-rule
                                    common-lisp:nil
                                    ((mobile-device-access-rule-id :target-type
                                      mobile-device-access-rule-id :member-name
                                      "MobileDeviceAccessRuleId")
                                     (name :target-type
                                      mobile-device-access-rule-name
                                      :member-name "Name"))
                                    (:shape-name
                                     "MobileDeviceAccessMatchedRule"))

(smithy/sdk/shapes:define-list mobile-device-access-matched-rule-list :member
                               mobile-device-access-matched-rule)

(smithy/sdk/shapes:define-structure mobile-device-access-override
                                    common-lisp:nil
                                    ((user-id :target-type work-mail-identifier
                                      :member-name "UserId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (effect :target-type
                                      mobile-device-access-rule-effect
                                      :member-name "Effect")
                                     (description :target-type
                                      mobile-device-access-rule-description
                                      :member-name "Description")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-modified :target-type timestamp
                                      :member-name "DateModified"))
                                    (:shape-name "MobileDeviceAccessOverride"))

(smithy/sdk/shapes:define-list mobile-device-access-overrides-list :member
                               mobile-device-access-override)

(smithy/sdk/shapes:define-structure mobile-device-access-rule common-lisp:nil
                                    ((mobile-device-access-rule-id :target-type
                                      mobile-device-access-rule-id :member-name
                                      "MobileDeviceAccessRuleId")
                                     (name :target-type
                                      mobile-device-access-rule-name
                                      :member-name "Name")
                                     (description :target-type
                                      mobile-device-access-rule-description
                                      :member-name "Description")
                                     (effect :target-type
                                      mobile-device-access-rule-effect
                                      :member-name "Effect")
                                     (device-types :target-type
                                      device-type-list :member-name
                                      "DeviceTypes")
                                     (not-device-types :target-type
                                      device-type-list :member-name
                                      "NotDeviceTypes")
                                     (device-models :target-type
                                      device-model-list :member-name
                                      "DeviceModels")
                                     (not-device-models :target-type
                                      device-model-list :member-name
                                      "NotDeviceModels")
                                     (device-operating-systems :target-type
                                      device-operating-system-list :member-name
                                      "DeviceOperatingSystems")
                                     (not-device-operating-systems :target-type
                                      device-operating-system-list :member-name
                                      "NotDeviceOperatingSystems")
                                     (device-user-agents :target-type
                                      device-user-agent-list :member-name
                                      "DeviceUserAgents")
                                     (not-device-user-agents :target-type
                                      device-user-agent-list :member-name
                                      "NotDeviceUserAgents")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-modified :target-type timestamp
                                      :member-name "DateModified"))
                                    (:shape-name "MobileDeviceAccessRule"))

(smithy/sdk/shapes:define-type mobile-device-access-rule-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum mobile-device-access-rule-effect
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-type mobile-device-access-rule-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mobile-device-access-rule-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list mobile-device-access-rules-list :member
                               mobile-device-access-rule)

(smithy/sdk/shapes:define-error name-availability-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NameAvailabilityException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-type new-resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error organization-not-found-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OrganizationNotFoundException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error organization-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OrganizationStateException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-list organization-summaries :member
                               organization-summary)

(smithy/sdk/shapes:define-structure organization-summary common-lisp:nil
                                    ((organization-id :target-type
                                      organization-id :member-name
                                      "OrganizationId")
                                     (alias :target-type organization-name
                                      :member-name "Alias")
                                     (default-mail-domain :target-type
                                      domain-name :member-name
                                      "DefaultMailDomain")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (state :target-type string :member-name
                                      "State"))
                                    (:shape-name "OrganizationSummary"))

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure permission common-lisp:nil
                                    ((grantee-id :target-type
                                      work-mail-identifier :required
                                      common-lisp:t :member-name "GranteeId")
                                     (grantee-type :target-type member-type
                                      :required common-lisp:t :member-name
                                      "GranteeType")
                                     (permission-values :target-type
                                      permission-values :required common-lisp:t
                                      :member-name "PermissionValues"))
                                    (:shape-name "Permission"))

(smithy/sdk/shapes:define-enum permission-type
    common-lisp:nil
  (:full-access "FULL_ACCESS")
  (:send-as "SEND_AS")
  (:send-on-behalf "SEND_ON_BEHALF"))

(smithy/sdk/shapes:define-list permission-values :member permission-type)

(smithy/sdk/shapes:define-list permissions :member permission)

(smithy/sdk/shapes:define-structure personal-access-token-configuration
                                    common-lisp:nil
                                    ((status :target-type
                                      personal-access-token-configuration-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (lifetime-in-days :target-type
                                      personal-access-token-lifetime-in-days
                                      :member-name "LifetimeInDays"))
                                    (:shape-name
                                     "PersonalAccessTokenConfiguration"))

(smithy/sdk/shapes:define-enum personal-access-token-configuration-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-type personal-access-token-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type personal-access-token-lifetime-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type personal-access-token-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type personal-access-token-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list personal-access-token-scope-list :member
                               personal-access-token-scope)

(smithy/sdk/shapes:define-structure personal-access-token-summary
                                    common-lisp:nil
                                    ((personal-access-token-id :target-type
                                      personal-access-token-id :member-name
                                      "PersonalAccessTokenId")
                                     (user-id :target-type work-mail-identifier
                                      :member-name "UserId")
                                     (name :target-type
                                      personal-access-token-name :member-name
                                      "Name")
                                     (date-created :target-type timestamp
                                      :member-name "DateCreated")
                                     (date-last-used :target-type timestamp
                                      :member-name "DateLastUsed")
                                     (expires-time :target-type timestamp
                                      :member-name "ExpiresTime")
                                     (scopes :target-type
                                      personal-access-token-scope-list
                                      :member-name "Scopes"))
                                    (:shape-name "PersonalAccessTokenSummary"))

(smithy/sdk/shapes:define-list personal-access-token-summary-list :member
                               personal-access-token-summary)

(smithy/sdk/shapes:define-type policy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-access-control-rule-request common-lisp:nil
                                ((name :target-type access-control-rule-name
                                  :required common-lisp:t :member-name "Name")
                                 (effect :target-type
                                  access-control-rule-effect :required
                                  common-lisp:t :member-name "Effect")
                                 (description :target-type
                                  access-control-rule-description :required
                                  common-lisp:t :member-name "Description")
                                 (ip-ranges :target-type ip-range-list
                                  :member-name "IpRanges")
                                 (not-ip-ranges :target-type ip-range-list
                                  :member-name "NotIpRanges")
                                 (actions :target-type actions-list
                                  :member-name "Actions")
                                 (not-actions :target-type actions-list
                                  :member-name "NotActions")
                                 (user-ids :target-type user-id-list
                                  :member-name "UserIds")
                                 (not-user-ids :target-type user-id-list
                                  :member-name "NotUserIds")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (impersonation-role-ids :target-type
                                  impersonation-role-id-list :member-name
                                  "ImpersonationRoleIds")
                                 (not-impersonation-role-ids :target-type
                                  impersonation-role-id-list :member-name
                                  "NotImpersonationRoleIds"))
                                (:shape-name "PutAccessControlRuleRequest"))

(smithy/sdk/shapes:define-output put-access-control-rule-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutAccessControlRuleResponse"))

(smithy/sdk/shapes:define-input put-email-monitoring-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (log-group-arn :target-type log-group-arn
                                  :required common-lisp:t :member-name
                                  "LogGroupArn"))
                                (:shape-name
                                 "PutEmailMonitoringConfigurationRequest"))

(smithy/sdk/shapes:define-output put-email-monitoring-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutEmailMonitoringConfigurationResponse"))

(smithy/sdk/shapes:define-input put-identity-provider-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (authentication-mode :target-type
                                  identity-provider-authentication-mode
                                  :required common-lisp:t :member-name
                                  "AuthenticationMode")
                                 (identity-center-configuration :target-type
                                  identity-center-configuration :required
                                  common-lisp:t :member-name
                                  "IdentityCenterConfiguration")
                                 (personal-access-token-configuration
                                  :target-type
                                  personal-access-token-configuration :required
                                  common-lisp:t :member-name
                                  "PersonalAccessTokenConfiguration"))
                                (:shape-name
                                 "PutIdentityProviderConfigurationRequest"))

(smithy/sdk/shapes:define-output put-identity-provider-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutIdentityProviderConfigurationResponse"))

(smithy/sdk/shapes:define-input put-inbound-dmarc-settings-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (enforced :target-type boolean-object
                                  :required common-lisp:t :member-name
                                  "Enforced"))
                                (:shape-name "PutInboundDmarcSettingsRequest"))

(smithy/sdk/shapes:define-output put-inbound-dmarc-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutInboundDmarcSettingsResponse"))

(smithy/sdk/shapes:define-input put-mailbox-permissions-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (grantee-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GranteeId")
                                 (permission-values :target-type
                                  permission-values :required common-lisp:t
                                  :member-name "PermissionValues"))
                                (:shape-name "PutMailboxPermissionsRequest"))

(smithy/sdk/shapes:define-output put-mailbox-permissions-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutMailboxPermissionsResponse"))

(smithy/sdk/shapes:define-input put-mobile-device-access-override-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId")
                                 (effect :target-type
                                  mobile-device-access-rule-effect :required
                                  common-lisp:t :member-name "Effect")
                                 (description :target-type
                                  mobile-device-access-rule-description
                                  :member-name "Description"))
                                (:shape-name
                                 "PutMobileDeviceAccessOverrideRequest"))

(smithy/sdk/shapes:define-output put-mobile-device-access-override-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutMobileDeviceAccessOverrideResponse"))

(smithy/sdk/shapes:define-input put-retention-policy-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (id :target-type short-string :member-name
                                  "Id")
                                 (name :target-type short-string :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type policy-description
                                  :member-name "Description")
                                 (folder-configurations :target-type
                                  folder-configurations :required common-lisp:t
                                  :member-name "FolderConfigurations"))
                                (:shape-name "PutRetentionPolicyRequest"))

(smithy/sdk/shapes:define-output put-retention-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutRetentionPolicyResponse"))

(smithy/sdk/shapes:define-structure redacted-ews-availability-provider
                                    common-lisp:nil
                                    ((ews-endpoint :target-type url
                                      :member-name "EwsEndpoint")
                                     (ews-username :target-type
                                      external-user-name :member-name
                                      "EwsUsername"))
                                    (:shape-name
                                     "RedactedEwsAvailabilityProvider"))

(smithy/sdk/shapes:define-input register-mail-domain-request common-lisp:nil
                                ((client-token :target-type
                                  idempotency-client-token :member-name
                                  "ClientToken")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type
                                  work-mail-domain-name :required common-lisp:t
                                  :member-name "DomainName"))
                                (:shape-name "RegisterMailDomainRequest"))

(smithy/sdk/shapes:define-output register-mail-domain-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RegisterMailDomainResponse"))

(smithy/sdk/shapes:define-input register-to-work-mail-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (email :target-type email-address :required
                                  common-lisp:t :member-name "Email"))
                                (:shape-name "RegisterToWorkMailRequest"))

(smithy/sdk/shapes:define-output register-to-work-mail-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RegisterToWorkMailResponse"))

(smithy/sdk/shapes:define-error reserved-name-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ReservedNameException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-input reset-password-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type work-mail-identifier
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (password :target-type password :required
                                  common-lisp:t :member-name "Password"))
                                (:shape-name "ResetPasswordRequest"))

(smithy/sdk/shapes:define-output reset-password-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ResetPasswordResponse"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((id :target-type work-mail-identifier
                                      :member-name "Id")
                                     (email :target-type email-address
                                      :member-name "Email")
                                     (name :target-type resource-name
                                      :member-name "Name")
                                     (type :target-type resource-type
                                      :member-name "Type")
                                     (state :target-type entity-state
                                      :member-name "State")
                                     (enabled-date :target-type timestamp
                                      :member-name "EnabledDate")
                                     (disabled-date :target-type timestamp
                                      :member-name "DisabledDate")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-list resource-delegates :member delegate)

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class workmail-error))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:room "ROOM")
  (:equipment "EQUIPMENT"))

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-enum retention-action
    common-lisp:nil
  (:none "NONE")
  (:delete "DELETE")
  (:permanently-delete "PERMANENTLY_DELETE"))

(smithy/sdk/shapes:define-type retention-period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type short-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-mailbox-export-job-request
                                common-lisp:nil
                                ((client-token :target-type
                                  idempotency-client-token :required
                                  common-lisp:t :member-name "ClientToken")
                                 (organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (description :target-type description
                                  :member-name "Description")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (kms-key-arn :target-type kms-key-arn
                                  :required common-lisp:t :member-name
                                  "KmsKeyArn")
                                 (s3bucket-name :target-type s3bucket-name
                                  :required common-lisp:t :member-name
                                  "S3BucketName")
                                 (s3prefix :target-type s3object-key :required
                                  common-lisp:t :member-name "S3Prefix"))
                                (:shape-name "StartMailboxExportJobRequest"))

(smithy/sdk/shapes:define-output start-mailbox-export-job-response
                                 common-lisp:nil
                                 ((job-id :target-type mailbox-export-job-id
                                   :member-name "JobId"))
                                 (:shape-name "StartMailboxExportJobResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-users :member entity-identifier)

(smithy/sdk/shapes:define-input test-availability-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type domain-name
                                  :member-name "DomainName")
                                 (ews-provider :target-type
                                  ews-availability-provider :member-name
                                  "EwsProvider")
                                 (lambda-provider :target-type
                                  lambda-availability-provider :member-name
                                  "LambdaProvider"))
                                (:shape-name
                                 "TestAvailabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output test-availability-configuration-response
                                 common-lisp:nil
                                 ((test-passed :target-type boolean
                                   :member-name "TestPassed")
                                  (failure-reason :target-type string
                                   :member-name "FailureReason"))
                                 (:shape-name
                                  "TestAvailabilityConfigurationResponse"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400) (:base-class workmail-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-availability-configuration-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (ews-provider :target-type
                                  ews-availability-provider :member-name
                                  "EwsProvider")
                                 (lambda-provider :target-type
                                  lambda-availability-provider :member-name
                                  "LambdaProvider"))
                                (:shape-name
                                 "UpdateAvailabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output update-availability-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateAvailabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input update-default-mail-domain-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (domain-name :target-type
                                  work-mail-domain-name :required common-lisp:t
                                  :member-name "DomainName"))
                                (:shape-name "UpdateDefaultMailDomainRequest"))

(smithy/sdk/shapes:define-output update-default-mail-domain-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateDefaultMailDomainResponse"))

(smithy/sdk/shapes:define-input update-group-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (group-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "GroupId")
                                 (hidden-from-global-address-list :target-type
                                  boolean-object :member-name
                                  "HiddenFromGlobalAddressList"))
                                (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-output update-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateGroupResponse"))

(smithy/sdk/shapes:define-input update-impersonation-role-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (impersonation-role-id :target-type
                                  impersonation-role-id :required common-lisp:t
                                  :member-name "ImpersonationRoleId")
                                 (name :target-type impersonation-role-name
                                  :required common-lisp:t :member-name "Name")
                                 (type :target-type impersonation-role-type
                                  :required common-lisp:t :member-name "Type")
                                 (description :target-type
                                  impersonation-role-description :member-name
                                  "Description")
                                 (rules :target-type impersonation-rule-list
                                  :required common-lisp:t :member-name
                                  "Rules"))
                                (:shape-name "UpdateImpersonationRoleRequest"))

(smithy/sdk/shapes:define-output update-impersonation-role-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateImpersonationRoleResponse"))

(smithy/sdk/shapes:define-input update-mailbox-quota-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (mailbox-quota :target-type mailbox-quota
                                  :required common-lisp:t :member-name
                                  "MailboxQuota"))
                                (:shape-name "UpdateMailboxQuotaRequest"))

(smithy/sdk/shapes:define-output update-mailbox-quota-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMailboxQuotaResponse"))

(smithy/sdk/shapes:define-input update-mobile-device-access-rule-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (mobile-device-access-rule-id :target-type
                                  mobile-device-access-rule-id :required
                                  common-lisp:t :member-name
                                  "MobileDeviceAccessRuleId")
                                 (name :target-type
                                  mobile-device-access-rule-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type
                                  mobile-device-access-rule-description
                                  :member-name "Description")
                                 (effect :target-type
                                  mobile-device-access-rule-effect :required
                                  common-lisp:t :member-name "Effect")
                                 (device-types :target-type device-type-list
                                  :member-name "DeviceTypes")
                                 (not-device-types :target-type
                                  device-type-list :member-name
                                  "NotDeviceTypes")
                                 (device-models :target-type device-model-list
                                  :member-name "DeviceModels")
                                 (not-device-models :target-type
                                  device-model-list :member-name
                                  "NotDeviceModels")
                                 (device-operating-systems :target-type
                                  device-operating-system-list :member-name
                                  "DeviceOperatingSystems")
                                 (not-device-operating-systems :target-type
                                  device-operating-system-list :member-name
                                  "NotDeviceOperatingSystems")
                                 (device-user-agents :target-type
                                  device-user-agent-list :member-name
                                  "DeviceUserAgents")
                                 (not-device-user-agents :target-type
                                  device-user-agent-list :member-name
                                  "NotDeviceUserAgents"))
                                (:shape-name
                                 "UpdateMobileDeviceAccessRuleRequest"))

(smithy/sdk/shapes:define-output update-mobile-device-access-rule-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateMobileDeviceAccessRuleResponse"))

(smithy/sdk/shapes:define-input update-primary-email-address-request
                                common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (entity-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "EntityId")
                                 (email :target-type email-address :required
                                  common-lisp:t :member-name "Email"))
                                (:shape-name
                                 "UpdatePrimaryEmailAddressRequest"))

(smithy/sdk/shapes:define-output update-primary-email-address-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdatePrimaryEmailAddressResponse"))

(smithy/sdk/shapes:define-input update-resource-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (resource-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (name :target-type resource-name :member-name
                                  "Name")
                                 (booking-options :target-type booking-options
                                  :member-name "BookingOptions")
                                 (description :target-type
                                  new-resource-description :member-name
                                  "Description")
                                 (type :target-type resource-type :member-name
                                  "Type")
                                 (hidden-from-global-address-list :target-type
                                  boolean-object :member-name
                                  "HiddenFromGlobalAddressList"))
                                (:shape-name "UpdateResourceRequest"))

(smithy/sdk/shapes:define-output update-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateResourceResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((organization-id :target-type organization-id
                                  :required common-lisp:t :member-name
                                  "OrganizationId")
                                 (user-id :target-type entity-identifier
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (role :target-type user-role :member-name
                                  "Role")
                                 (display-name :target-type user-attribute
                                  :member-name "DisplayName")
                                 (first-name :target-type user-attribute
                                  :member-name "FirstName")
                                 (last-name :target-type user-attribute
                                  :member-name "LastName")
                                 (hidden-from-global-address-list :target-type
                                  boolean-object :member-name
                                  "HiddenFromGlobalAddressList")
                                 (initials :target-type user-attribute
                                  :member-name "Initials")
                                 (telephone :target-type user-attribute
                                  :member-name "Telephone")
                                 (street :target-type user-attribute
                                  :member-name "Street")
                                 (job-title :target-type user-attribute
                                  :member-name "JobTitle")
                                 (city :target-type user-attribute :member-name
                                  "City")
                                 (company :target-type user-attribute
                                  :member-name "Company")
                                 (zip-code :target-type user-attribute
                                  :member-name "ZipCode")
                                 (department :target-type user-attribute
                                  :member-name "Department")
                                 (country :target-type user-attribute
                                  :member-name "Country")
                                 (office :target-type user-attribute
                                  :member-name "Office")
                                 (identity-provider-user-id :target-type
                                  identity-provider-user-id-for-update
                                  :member-name "IdentityProviderUserId"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((id :target-type work-mail-identifier
                                      :member-name "Id")
                                     (email :target-type email-address
                                      :member-name "Email")
                                     (name :target-type user-name :member-name
                                      "Name")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (state :target-type entity-state
                                      :member-name "State")
                                     (user-role :target-type user-role
                                      :member-name "UserRole")
                                     (enabled-date :target-type timestamp
                                      :member-name "EnabledDate")
                                     (disabled-date :target-type timestamp
                                      :member-name "DisabledDate")
                                     (identity-provider-user-id :target-type
                                      identity-provider-user-id :member-name
                                      "IdentityProviderUserId")
                                     (identity-provider-identity-store-id
                                      :target-type
                                      identity-provider-identity-store-id
                                      :member-name
                                      "IdentityProviderIdentityStoreId"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-type user-attribute smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-id-list :member work-mail-identifier)

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum user-role
    common-lisp:nil
  (:user "USER")
  (:resource "RESOURCE")
  (:system-user "SYSTEM_USER")
  (:remote-user "REMOTE_USER"))

(smithy/sdk/shapes:define-list users :member user)

(smithy/sdk/shapes:define-type work-mail-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type work-mail-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-delegate-to-resource
                                       :shape-name
                                       "AssociateDelegateToResource" :input
                                       associate-delegate-to-resource-request
                                       :output
                                       associate-delegate-to-resource-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation associate-member-to-group :shape-name
                                       "AssociateMemberToGroup" :input
                                       associate-member-to-group-request
                                       :output
                                       associate-member-to-group-response
                                       :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation assume-impersonation-role :shape-name
                                       "AssumeImpersonationRole" :input
                                       assume-impersonation-role-request
                                       :output
                                       assume-impersonation-role-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation cancel-mailbox-export-job :shape-name
                                       "CancelMailboxExportJob" :input
                                       cancel-mailbox-export-job-request
                                       :output
                                       cancel-mailbox-export-job-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation create-alias :shape-name "CreateAlias"
                                       :input create-alias-request :output
                                       create-alias-response :errors
                                       (email-address-in-use-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        mail-domain-not-found-exception
                                        mail-domain-state-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation create-availability-configuration
                                       :shape-name
                                       "CreateAvailabilityConfiguration" :input
                                       create-availability-configuration-request
                                       :output
                                       create-availability-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        name-availability-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        invalid-parameter-exception
                                        name-availability-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        reserved-name-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-identity-center-application
                                       :shape-name
                                       "CreateIdentityCenterApplication" :input
                                       create-identity-center-application-request
                                       :output
                                       create-identity-center-application-response
                                       :errors (invalid-parameter-exception))

(smithy/sdk/operation:define-operation create-impersonation-role :shape-name
                                       "CreateImpersonationRole" :input
                                       create-impersonation-role-request
                                       :output
                                       create-impersonation-role-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation create-mobile-device-access-rule
                                       :shape-name
                                       "CreateMobileDeviceAccessRule" :input
                                       create-mobile-device-access-rule-request
                                       :output
                                       create-mobile-device-access-rule-response
                                       :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation create-organization :shape-name
                                       "CreateOrganization" :input
                                       create-organization-request :output
                                       create-organization-response :errors
                                       (directory-in-use-exception
                                        directory-unavailable-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        name-availability-exception))

(smithy/sdk/operation:define-operation create-resource :shape-name
                                       "CreateResource" :input
                                       create-resource-request :output
                                       create-resource-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        invalid-parameter-exception
                                        name-availability-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        reserved-name-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        name-availability-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        reserved-name-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-access-control-rule :shape-name
                                       "DeleteAccessControlRule" :input
                                       delete-access-control-rule-request
                                       :output
                                       delete-access-control-rule-response
                                       :errors
                                       (organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-alias :shape-name "DeleteAlias"
                                       :input delete-alias-request :output
                                       delete-alias-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-availability-configuration
                                       :shape-name
                                       "DeleteAvailabilityConfiguration" :input
                                       delete-availability-configuration-request
                                       :output
                                       delete-availability-configuration-response
                                       :errors
                                       (organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-email-monitoring-configuration
                                       :shape-name
                                       "DeleteEmailMonitoringConfiguration"
                                       :input
                                       delete-email-monitoring-configuration-request
                                       :output
                                       delete-email-monitoring-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       delete-group-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-identity-center-application
                                       :shape-name
                                       "DeleteIdentityCenterApplication" :input
                                       delete-identity-center-application-request
                                       :output
                                       delete-identity-center-application-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-identity-provider-configuration
                                       :shape-name
                                       "DeleteIdentityProviderConfiguration"
                                       :input
                                       delete-identity-provider-configuration-request
                                       :output
                                       delete-identity-provider-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-impersonation-role :shape-name
                                       "DeleteImpersonationRole" :input
                                       delete-impersonation-role-request
                                       :output
                                       delete-impersonation-role-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-mailbox-permissions :shape-name
                                       "DeleteMailboxPermissions" :input
                                       delete-mailbox-permissions-request
                                       :output
                                       delete-mailbox-permissions-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-mobile-device-access-override
                                       :shape-name
                                       "DeleteMobileDeviceAccessOverride"
                                       :input
                                       delete-mobile-device-access-override-request
                                       :output
                                       delete-mobile-device-access-override-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-mobile-device-access-rule
                                       :shape-name
                                       "DeleteMobileDeviceAccessRule" :input
                                       delete-mobile-device-access-rule-request
                                       :output
                                       delete-mobile-device-access-rule-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-organization :shape-name
                                       "DeleteOrganization" :input
                                       delete-organization-request :output
                                       delete-organization-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-personal-access-token :shape-name
                                       "DeletePersonalAccessToken" :input
                                       delete-personal-access-token-request
                                       :output
                                       delete-personal-access-token-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-resource :shape-name
                                       "DeleteResource" :input
                                       delete-resource-request :output
                                       delete-resource-response :errors
                                       (entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-retention-policy :shape-name
                                       "DeleteRetentionPolicy" :input
                                       delete-retention-policy-request :output
                                       delete-retention-policy-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation deregister-from-work-mail :shape-name
                                       "DeregisterFromWorkMail" :input
                                       deregister-from-work-mail-request
                                       :output
                                       deregister-from-work-mail-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation deregister-mail-domain :shape-name
                                       "DeregisterMailDomain" :input
                                       deregister-mail-domain-request :output
                                       deregister-mail-domain-response :errors
                                       (invalid-custom-ses-configuration-exception
                                        invalid-parameter-exception
                                        mail-domain-in-use-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation describe-email-monitoring-configuration
                                       :shape-name
                                       "DescribeEmailMonitoringConfiguration"
                                       :input
                                       describe-email-monitoring-configuration-request
                                       :output
                                       describe-email-monitoring-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-entity :shape-name
                                       "DescribeEntity" :input
                                       describe-entity-request :output
                                       describe-entity-response :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation describe-group :shape-name
                                       "DescribeGroup" :input
                                       describe-group-request :output
                                       describe-group-response :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation describe-identity-provider-configuration
                                       :shape-name
                                       "DescribeIdentityProviderConfiguration"
                                       :input
                                       describe-identity-provider-configuration-request
                                       :output
                                       describe-identity-provider-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-inbound-dmarc-settings
                                       :shape-name
                                       "DescribeInboundDmarcSettings" :input
                                       describe-inbound-dmarc-settings-request
                                       :output
                                       describe-inbound-dmarc-settings-response
                                       :errors
                                       (organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation describe-mailbox-export-job :shape-name
                                       "DescribeMailboxExportJob" :input
                                       describe-mailbox-export-job-request
                                       :output
                                       describe-mailbox-export-job-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation describe-organization :shape-name
                                       "DescribeOrganization" :input
                                       describe-organization-request :output
                                       describe-organization-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception))

(smithy/sdk/operation:define-operation describe-resource :shape-name
                                       "DescribeResource" :input
                                       describe-resource-request :output
                                       describe-resource-response :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-user :shape-name "DescribeUser"
                                       :input describe-user-request :output
                                       describe-user-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation disassociate-delegate-from-resource
                                       :shape-name
                                       "DisassociateDelegateFromResource"
                                       :input
                                       disassociate-delegate-from-resource-request
                                       :output
                                       disassociate-delegate-from-resource-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation disassociate-member-from-group
                                       :shape-name
                                       "DisassociateMemberFromGroup" :input
                                       disassociate-member-from-group-request
                                       :output
                                       disassociate-member-from-group-response
                                       :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-access-control-effect :shape-name
                                       "GetAccessControlEffect" :input
                                       get-access-control-effect-request
                                       :output
                                       get-access-control-effect-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-default-retention-policy :shape-name
                                       "GetDefaultRetentionPolicy" :input
                                       get-default-retention-policy-request
                                       :output
                                       get-default-retention-policy-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation get-impersonation-role :shape-name
                                       "GetImpersonationRole" :input
                                       get-impersonation-role-request :output
                                       get-impersonation-role-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-impersonation-role-effect
                                       :shape-name "GetImpersonationRoleEffect"
                                       :input
                                       get-impersonation-role-effect-request
                                       :output
                                       get-impersonation-role-effect-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-mail-domain :shape-name
                                       "GetMailDomain" :input
                                       get-mail-domain-request :output
                                       get-mail-domain-response :errors
                                       (invalid-parameter-exception
                                        mail-domain-not-found-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation get-mailbox-details :shape-name
                                       "GetMailboxDetails" :input
                                       get-mailbox-details-request :output
                                       get-mailbox-details-response :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation get-mobile-device-access-effect
                                       :shape-name
                                       "GetMobileDeviceAccessEffect" :input
                                       get-mobile-device-access-effect-request
                                       :output
                                       get-mobile-device-access-effect-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation get-mobile-device-access-override
                                       :shape-name
                                       "GetMobileDeviceAccessOverride" :input
                                       get-mobile-device-access-override-request
                                       :output
                                       get-mobile-device-access-override-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-personal-access-token-metadata
                                       :shape-name
                                       "GetPersonalAccessTokenMetadata" :input
                                       get-personal-access-token-metadata-request
                                       :output
                                       get-personal-access-token-metadata-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-access-control-rules :shape-name
                                       "ListAccessControlRules" :input
                                       list-access-control-rules-request
                                       :output
                                       list-access-control-rules-response
                                       :errors
                                       (organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-aliases :shape-name "ListAliases"
                                       :input list-aliases-request :output
                                       list-aliases-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-availability-configurations
                                       :shape-name
                                       "ListAvailabilityConfigurations" :input
                                       list-availability-configurations-request
                                       :output
                                       list-availability-configurations-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-group-members :shape-name
                                       "ListGroupMembers" :input
                                       list-group-members-request :output
                                       list-group-members-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-groups-for-entity :shape-name
                                       "ListGroupsForEntity" :input
                                       list-groups-for-entity-request :output
                                       list-groups-for-entity-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-impersonation-roles :shape-name
                                       "ListImpersonationRoles" :input
                                       list-impersonation-roles-request :output
                                       list-impersonation-roles-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-mail-domains :shape-name
                                       "ListMailDomains" :input
                                       list-mail-domains-request :output
                                       list-mail-domains-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-mailbox-export-jobs :shape-name
                                       "ListMailboxExportJobs" :input
                                       list-mailbox-export-jobs-request :output
                                       list-mailbox-export-jobs-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-mailbox-permissions :shape-name
                                       "ListMailboxPermissions" :input
                                       list-mailbox-permissions-request :output
                                       list-mailbox-permissions-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-mobile-device-access-overrides
                                       :shape-name
                                       "ListMobileDeviceAccessOverrides" :input
                                       list-mobile-device-access-overrides-request
                                       :output
                                       list-mobile-device-access-overrides-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-mobile-device-access-rules
                                       :shape-name
                                       "ListMobileDeviceAccessRules" :input
                                       list-mobile-device-access-rules-request
                                       :output
                                       list-mobile-device-access-rules-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-organizations :shape-name
                                       "ListOrganizations" :input
                                       list-organizations-request :output
                                       list-organizations-response :errors
                                       (invalid-parameter-exception))

(smithy/sdk/operation:define-operation list-personal-access-tokens :shape-name
                                       "ListPersonalAccessTokens" :input
                                       list-personal-access-tokens-request
                                       :output
                                       list-personal-access-tokens-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation list-resource-delegates :shape-name
                                       "ListResourceDelegates" :input
                                       list-resource-delegates-request :output
                                       list-resource-delegates-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-resources :shape-name
                                       "ListResources" :input
                                       list-resources-request :output
                                       list-resources-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation put-access-control-rule :shape-name
                                       "PutAccessControlRule" :input
                                       put-access-control-rule-request :output
                                       put-access-control-rule-response :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-email-monitoring-configuration
                                       :shape-name
                                       "PutEmailMonitoringConfiguration" :input
                                       put-email-monitoring-configuration-request
                                       :output
                                       put-email-monitoring-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-identity-provider-configuration
                                       :shape-name
                                       "PutIdentityProviderConfiguration"
                                       :input
                                       put-identity-provider-configuration-request
                                       :output
                                       put-identity-provider-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-inbound-dmarc-settings :shape-name
                                       "PutInboundDmarcSettings" :input
                                       put-inbound-dmarc-settings-request
                                       :output
                                       put-inbound-dmarc-settings-response
                                       :errors
                                       (organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation put-mailbox-permissions :shape-name
                                       "PutMailboxPermissions" :input
                                       put-mailbox-permissions-request :output
                                       put-mailbox-permissions-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation put-mobile-device-access-override
                                       :shape-name
                                       "PutMobileDeviceAccessOverride" :input
                                       put-mobile-device-access-override-request
                                       :output
                                       put-mobile-device-access-override-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation put-retention-policy :shape-name
                                       "PutRetentionPolicy" :input
                                       put-retention-policy-request :output
                                       put-retention-policy-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation register-mail-domain :shape-name
                                       "RegisterMailDomain" :input
                                       register-mail-domain-request :output
                                       register-mail-domain-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        mail-domain-in-use-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation register-to-work-mail :shape-name
                                       "RegisterToWorkMail" :input
                                       register-to-work-mail-request :output
                                       register-to-work-mail-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        email-address-in-use-exception
                                        entity-already-registered-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        mail-domain-not-found-exception
                                        mail-domain-state-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation reset-password :shape-name
                                       "ResetPassword" :input
                                       reset-password-request :output
                                       reset-password-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-mailbox-export-job :shape-name
                                       "StartMailboxExportJob" :input
                                       start-mailbox-export-job-request :output
                                       start-mailbox-export-job-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-parameter-exception
                                        organization-state-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation test-availability-configuration
                                       :shape-name
                                       "TestAvailabilityConfiguration" :input
                                       test-availability-configuration-request
                                       :output
                                       test-availability-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-availability-configuration
                                       :shape-name
                                       "UpdateAvailabilityConfiguration" :input
                                       update-availability-configuration-request
                                       :output
                                       update-availability-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-default-mail-domain :shape-name
                                       "UpdateDefaultMailDomain" :input
                                       update-default-mail-domain-request
                                       :output
                                       update-default-mail-domain-response
                                       :errors
                                       (invalid-parameter-exception
                                        mail-domain-not-found-exception
                                        mail-domain-state-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       update-group-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-impersonation-role :shape-name
                                       "UpdateImpersonationRole" :input
                                       update-impersonation-role-request
                                       :output
                                       update-impersonation-role-response
                                       :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-mailbox-quota :shape-name
                                       "UpdateMailboxQuota" :input
                                       update-mailbox-quota-request :output
                                       update-mailbox-quota-response :errors
                                       (entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation update-mobile-device-access-rule
                                       :shape-name
                                       "UpdateMobileDeviceAccessRule" :input
                                       update-mobile-device-access-rule-request
                                       :output
                                       update-mobile-device-access-rule-response
                                       :errors
                                       (entity-not-found-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception))

(smithy/sdk/operation:define-operation update-primary-email-address :shape-name
                                       "UpdatePrimaryEmailAddress" :input
                                       update-primary-email-address-request
                                       :output
                                       update-primary-email-address-response
                                       :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        email-address-in-use-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        mail-domain-not-found-exception
                                        mail-domain-state-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-resource :shape-name
                                       "UpdateResource" :input
                                       update-resource-request :output
                                       update-resource-response :errors
                                       (directory-unavailable-exception
                                        email-address-in-use-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-configuration-exception
                                        invalid-parameter-exception
                                        mail-domain-not-found-exception
                                        mail-domain-state-exception
                                        name-availability-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (directory-service-authentication-failed-exception
                                        directory-unavailable-exception
                                        entity-not-found-exception
                                        entity-state-exception
                                        invalid-parameter-exception
                                        organization-not-found-exception
                                        organization-state-exception
                                        unsupported-operation-exception))
