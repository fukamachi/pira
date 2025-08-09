(uiop/package:define-package #:pira/workspaces (:use)
                             (:export #:agamode-for-directory-enum
                              #:agamode-for-work-space-enum
                              #:agapreferred-protocol-for-directory
                              #:agapreferred-protocol-for-work-space #:arn
                              #:accept-account-link-invitation
                              #:accept-account-link-invitation-request
                              #:accept-account-link-invitation-result
                              #:access-denied-exception #:access-endpoint
                              #:access-endpoint-config #:access-endpoint-list
                              #:access-endpoint-type #:access-property-value
                              #:account-link #:account-link-list
                              #:account-link-status-enum #:account-modification
                              #:account-modification-list
                              #:active-directory-config #:active-user-sessions
                              #:actual-user-sessions #:add-in-name #:add-in-url
                              #:alias
                              #:alphanumeric-dash-underscore-non-empty-string
                              #:amazon-uuid #:application
                              #:application-associated-resource-type
                              #:application-associated-resource-type-list
                              #:application-list
                              #:application-not-supported-exception
                              #:application-resource-association
                              #:application-resource-association-list
                              #:application-settings-request
                              #:application-settings-response
                              #:application-settings-status-enum
                              #:associate-connection-alias
                              #:associate-connection-alias-request
                              #:associate-connection-alias-result
                              #:associate-ip-groups
                              #:associate-ip-groups-request
                              #:associate-ip-groups-result
                              #:associate-workspace-application
                              #:associate-workspace-application-request
                              #:associate-workspace-application-result
                              #:association-error-code #:association-state
                              #:association-state-reason #:association-status
                              #:authentication-type #:authorize-ip-rules
                              #:authorize-ip-rules-request
                              #:authorize-ip-rules-result
                              #:available-user-sessions #:aws-account
                              #:boolean-object
                              #:bundle-associated-resource-type
                              #:bundle-associated-resource-type-list
                              #:bundle-id #:bundle-id-list #:bundle-list
                              #:bundle-owner #:bundle-resource-association
                              #:bundle-resource-association-list #:bundle-type
                              #:capacity #:capacity-status
                              #:certificate-authority-arn
                              #:certificate-based-auth-properties
                              #:certificate-based-auth-status-enum
                              #:client-device-type #:client-device-type-list
                              #:client-email #:client-locale
                              #:client-login-message #:client-properties
                              #:client-properties-list
                              #:client-properties-result #:client-token
                              #:client-url #:compute #:compute-list
                              #:compute-not-compatible-exception #:compute-type
                              #:computer-name #:conflict-exception
                              #:connect-client-add-in
                              #:connect-client-add-in-list #:connection-alias
                              #:connection-alias-association
                              #:connection-alias-association-list
                              #:connection-alias-id #:connection-alias-id-list
                              #:connection-alias-list
                              #:connection-alias-permission
                              #:connection-alias-permissions
                              #:connection-alias-state #:connection-identifier
                              #:connection-state #:connection-string
                              #:copy-workspace-image
                              #:copy-workspace-image-request
                              #:copy-workspace-image-result
                              #:create-account-link-invitation
                              #:create-account-link-invitation-request
                              #:create-account-link-invitation-result
                              #:create-connect-client-add-in
                              #:create-connect-client-add-in-request
                              #:create-connect-client-add-in-result
                              #:create-connection-alias
                              #:create-connection-alias-request
                              #:create-connection-alias-result
                              #:create-ip-group #:create-ip-group-request
                              #:create-ip-group-result
                              #:create-standby-workspaces
                              #:create-standby-workspaces-request
                              #:create-standby-workspaces-result #:create-tags
                              #:create-tags-request #:create-tags-result
                              #:create-updated-workspace-image
                              #:create-updated-workspace-image-request
                              #:create-updated-workspace-image-result
                              #:create-workspace-bundle
                              #:create-workspace-bundle-request
                              #:create-workspace-bundle-result
                              #:create-workspace-image
                              #:create-workspace-image-request
                              #:create-workspace-image-result
                              #:create-workspaces #:create-workspaces-pool
                              #:create-workspaces-pool-request
                              #:create-workspaces-pool-result
                              #:create-workspaces-request
                              #:create-workspaces-result #:data-replication
                              #:data-replication-settings
                              #:dedicated-tenancy-account-type
                              #:dedicated-tenancy-cidr-range-list
                              #:dedicated-tenancy-management-cidr-range
                              #:dedicated-tenancy-modification-state-enum
                              #:dedicated-tenancy-support-enum
                              #:dedicated-tenancy-support-result-enum
                              #:default-client-branding-attributes
                              #:default-import-client-branding-attributes
                              #:default-logo #:default-ou
                              #:default-workspace-creation-properties
                              #:deletable-certificate-based-auth-properties-list
                              #:deletable-certificate-based-auth-property
                              #:deletable-saml-properties-list
                              #:deletable-saml-property
                              #:delete-account-link-invitation
                              #:delete-account-link-invitation-request
                              #:delete-account-link-invitation-result
                              #:delete-client-branding
                              #:delete-client-branding-request
                              #:delete-client-branding-result
                              #:delete-connect-client-add-in
                              #:delete-connect-client-add-in-request
                              #:delete-connect-client-add-in-result
                              #:delete-connection-alias
                              #:delete-connection-alias-request
                              #:delete-connection-alias-result
                              #:delete-ip-group #:delete-ip-group-request
                              #:delete-ip-group-result #:delete-tags
                              #:delete-tags-request #:delete-tags-result
                              #:delete-workspace-bundle
                              #:delete-workspace-bundle-request
                              #:delete-workspace-bundle-result
                              #:delete-workspace-image
                              #:delete-workspace-image-request
                              #:delete-workspace-image-result
                              #:deploy-workspace-applications
                              #:deploy-workspace-applications-request
                              #:deploy-workspace-applications-result
                              #:deregister-workspace-directory
                              #:deregister-workspace-directory-request
                              #:deregister-workspace-directory-result
                              #:describe-account
                              #:describe-account-modifications
                              #:describe-account-modifications-request
                              #:describe-account-modifications-result
                              #:describe-account-request
                              #:describe-account-result
                              #:describe-application-associations
                              #:describe-application-associations-request
                              #:describe-application-associations-result
                              #:describe-applications
                              #:describe-applications-request
                              #:describe-applications-result
                              #:describe-bundle-associations
                              #:describe-bundle-associations-request
                              #:describe-bundle-associations-result
                              #:describe-client-branding
                              #:describe-client-branding-request
                              #:describe-client-branding-result
                              #:describe-client-properties
                              #:describe-client-properties-request
                              #:describe-client-properties-result
                              #:describe-connect-client-add-ins
                              #:describe-connect-client-add-ins-request
                              #:describe-connect-client-add-ins-result
                              #:describe-connection-alias-permissions
                              #:describe-connection-alias-permissions-request
                              #:describe-connection-alias-permissions-result
                              #:describe-connection-aliases
                              #:describe-connection-aliases-request
                              #:describe-connection-aliases-result
                              #:describe-image-associations
                              #:describe-image-associations-request
                              #:describe-image-associations-result
                              #:describe-ip-groups #:describe-ip-groups-request
                              #:describe-ip-groups-result #:describe-tags
                              #:describe-tags-request #:describe-tags-result
                              #:describe-workspace-associations
                              #:describe-workspace-associations-request
                              #:describe-workspace-associations-result
                              #:describe-workspace-bundles
                              #:describe-workspace-bundles-request
                              #:describe-workspace-bundles-result
                              #:describe-workspace-directories
                              #:describe-workspace-directories-filter
                              #:describe-workspace-directories-filter-list
                              #:describe-workspace-directories-filter-name
                              #:describe-workspace-directories-filter-value
                              #:describe-workspace-directories-filter-values
                              #:describe-workspace-directories-request
                              #:describe-workspace-directories-result
                              #:describe-workspace-image-permissions
                              #:describe-workspace-image-permissions-request
                              #:describe-workspace-image-permissions-result
                              #:describe-workspace-images
                              #:describe-workspace-images-request
                              #:describe-workspace-images-result
                              #:describe-workspace-snapshots
                              #:describe-workspace-snapshots-request
                              #:describe-workspace-snapshots-result
                              #:describe-workspaces
                              #:describe-workspaces-connection-status
                              #:describe-workspaces-connection-status-request
                              #:describe-workspaces-connection-status-result
                              #:describe-workspaces-pool-sessions
                              #:describe-workspaces-pool-sessions-request
                              #:describe-workspaces-pool-sessions-result
                              #:describe-workspaces-pools
                              #:describe-workspaces-pools-filter
                              #:describe-workspaces-pools-filter-name
                              #:describe-workspaces-pools-filter-operator
                              #:describe-workspaces-pools-filter-value
                              #:describe-workspaces-pools-filter-values
                              #:describe-workspaces-pools-filters
                              #:describe-workspaces-pools-request
                              #:describe-workspaces-pools-result
                              #:describe-workspaces-request
                              #:describe-workspaces-result #:description
                              #:desired-user-sessions #:directory-id
                              #:directory-id-list #:directory-list
                              #:directory-name #:disassociate-connection-alias
                              #:disassociate-connection-alias-request
                              #:disassociate-connection-alias-result
                              #:disassociate-ip-groups
                              #:disassociate-ip-groups-request
                              #:disassociate-ip-groups-result
                              #:disassociate-workspace-application
                              #:disassociate-workspace-application-request
                              #:disassociate-workspace-application-result
                              #:disconnect-timeout-in-seconds
                              #:dns-ip-addresses #:domain-name #:ec2image-id
                              #:endpoint-encryption-mode #:error-details
                              #:error-details-list #:error-message #:error-type
                              #:exception-error-code #:exception-message
                              #:failed-create-standby-workspaces-request
                              #:failed-create-standby-workspaces-request-list
                              #:failed-create-workspace-request
                              #:failed-create-workspace-requests
                              #:failed-reboot-workspace-requests
                              #:failed-rebuild-workspace-requests
                              #:failed-start-workspace-requests
                              #:failed-stop-workspace-requests
                              #:failed-terminate-workspace-requests
                              #:failed-workspace-change-request
                              #:get-account-link #:get-account-link-request
                              #:get-account-link-result
                              #:global-accelerator-for-directory
                              #:global-accelerator-for-work-space #:idcconfig
                              #:idle-disconnect-timeout-in-seconds
                              #:image-associated-resource-type
                              #:image-associated-resource-type-list
                              #:image-permission #:image-permissions
                              #:image-resource-association
                              #:image-resource-association-list #:image-type
                              #:import-client-branding
                              #:import-client-branding-request
                              #:import-client-branding-result
                              #:import-workspace-image
                              #:import-workspace-image-request
                              #:import-workspace-image-result
                              #:incompatible-applications-exception
                              #:internal-server-exception
                              #:internet-fallback-protocol
                              #:internet-fallback-protocol-list
                              #:invalid-parameter-combination-exception
                              #:invalid-parameter-values-exception
                              #:invalid-resource-state-exception #:ios2xlogo
                              #:ios3xlogo #:ios-client-branding-attributes
                              #:ios-import-client-branding-attributes
                              #:ios-logo #:ip-address #:ip-group-desc
                              #:ip-group-id #:ip-group-id-list #:ip-group-name
                              #:ip-revoked-rule-list #:ip-rule #:ip-rule-desc
                              #:ip-rule-item #:ip-rule-list #:limit #:limit50
                              #:link-id #:link-status-filter-list
                              #:list-account-links #:list-account-links-request
                              #:list-account-links-result
                              #:list-available-management-cidr-ranges
                              #:list-available-management-cidr-ranges-request
                              #:list-available-management-cidr-ranges-result
                              #:log-upload-enum #:login-message
                              #:management-cidr-range-constraint
                              #:management-cidr-range-max-results
                              #:max-user-duration-in-seconds #:maximum-length
                              #:microsoft-entra-config
                              #:microsoft-entra-config-tenant-id
                              #:migrate-workspace #:migrate-workspace-request
                              #:migrate-workspace-result
                              #:modification-resource-enum #:modification-state
                              #:modification-state-enum
                              #:modification-state-list #:modify-account
                              #:modify-account-request #:modify-account-result
                              #:modify-certificate-based-auth-properties
                              #:modify-certificate-based-auth-properties-request
                              #:modify-certificate-based-auth-properties-result
                              #:modify-client-properties
                              #:modify-client-properties-request
                              #:modify-client-properties-result
                              #:modify-endpoint-encryption-mode
                              #:modify-endpoint-encryption-mode-request
                              #:modify-endpoint-encryption-mode-response
                              #:modify-saml-properties
                              #:modify-saml-properties-request
                              #:modify-saml-properties-result
                              #:modify-selfservice-permissions
                              #:modify-selfservice-permissions-request
                              #:modify-selfservice-permissions-result
                              #:modify-streaming-properties
                              #:modify-streaming-properties-request
                              #:modify-streaming-properties-result
                              #:modify-workspace-access-properties
                              #:modify-workspace-access-properties-request
                              #:modify-workspace-access-properties-result
                              #:modify-workspace-creation-properties
                              #:modify-workspace-creation-properties-request
                              #:modify-workspace-creation-properties-result
                              #:modify-workspace-properties
                              #:modify-workspace-properties-request
                              #:modify-workspace-properties-result
                              #:modify-workspace-state
                              #:modify-workspace-state-request
                              #:modify-workspace-state-result
                              #:network-access-configuration #:non-empty-string
                              #:operating-system #:operating-system-name
                              #:operating-system-name-list
                              #:operating-system-not-compatible-exception
                              #:operating-system-type
                              #:operation-in-progress-exception
                              #:operation-not-supported-exception
                              #:pagination-token
                              #:pending-create-standby-workspaces-request
                              #:pending-create-standby-workspaces-request-list
                              #:pools-running-mode #:protocol #:protocol-list
                              #:reboot-request #:reboot-workspace-requests
                              #:reboot-workspaces #:reboot-workspaces-request
                              #:reboot-workspaces-result #:rebuild-request
                              #:rebuild-workspace-requests #:rebuild-workspaces
                              #:rebuild-workspaces-request
                              #:rebuild-workspaces-result #:reconnect-enum
                              #:region #:register-workspace-directory
                              #:register-workspace-directory-request
                              #:register-workspace-directory-result
                              #:registration-code
                              #:reject-account-link-invitation
                              #:reject-account-link-invitation-request
                              #:reject-account-link-invitation-result
                              #:related-workspace-properties
                              #:related-workspaces
                              #:resource-already-exists-exception
                              #:resource-associated-exception
                              #:resource-creation-failed-exception
                              #:resource-id-list #:resource-in-use-exception
                              #:resource-limit-exceeded-exception
                              #:resource-not-found-exception
                              #:resource-unavailable-exception
                              #:restore-workspace #:restore-workspace-request
                              #:restore-workspace-result #:revoke-ip-rules
                              #:revoke-ip-rules-request
                              #:revoke-ip-rules-result #:root-storage
                              #:root-volume-size-gib #:running-mode
                              #:running-mode-auto-stop-timeout-in-minutes
                              #:s3bucket-name #:saml-properties
                              #:saml-status-enum #:saml-user-access-url
                              #:secrets-manager-arn #:security-group-id
                              #:selfservice-permissions
                              #:session-connection-state #:session-instance-id
                              #:settings-group #:snapshot #:snapshot-list
                              #:standby-workspace
                              #:standby-workspace-relationship-type
                              #:standby-workspaces-list
                              #:standby-workspaces-properties
                              #:standby-workspaces-properties-list
                              #:start-request #:start-workspace-requests
                              #:start-workspaces #:start-workspaces-pool
                              #:start-workspaces-pool-request
                              #:start-workspaces-pool-result
                              #:start-workspaces-request
                              #:start-workspaces-result #:stop-request
                              #:stop-workspace-requests #:stop-workspaces
                              #:stop-workspaces-pool
                              #:stop-workspaces-pool-request
                              #:stop-workspaces-pool-result
                              #:stop-workspaces-request
                              #:stop-workspaces-result #:storage-connector
                              #:storage-connector-status-enum
                              #:storage-connector-type-enum
                              #:storage-connectors
                              #:streaming-experience-preferred-protocol-enum
                              #:streaming-properties #:string2048 #:subnet-id
                              #:subnet-ids #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-value #:target-workspace-state
                              #:tenancy #:terminate-request
                              #:terminate-workspace-requests
                              #:terminate-workspaces
                              #:terminate-workspaces-pool
                              #:terminate-workspaces-pool-request
                              #:terminate-workspaces-pool-result
                              #:terminate-workspaces-pool-session
                              #:terminate-workspaces-pool-session-request
                              #:terminate-workspaces-pool-session-result
                              #:terminate-workspaces-request
                              #:terminate-workspaces-result #:timeout-settings
                              #:timestamp
                              #:unsupported-network-configuration-exception
                              #:unsupported-workspace-configuration-exception
                              #:update-connect-client-add-in
                              #:update-connect-client-add-in-request
                              #:update-connect-client-add-in-result
                              #:update-connection-alias-permission
                              #:update-connection-alias-permission-request
                              #:update-connection-alias-permission-result
                              #:update-description #:update-result
                              #:update-rules-of-ip-group
                              #:update-rules-of-ip-group-request
                              #:update-rules-of-ip-group-result
                              #:update-workspace-bundle
                              #:update-workspace-bundle-request
                              #:update-workspace-bundle-result
                              #:update-workspace-image-permission
                              #:update-workspace-image-permission-request
                              #:update-workspace-image-permission-result
                              #:update-workspaces-pool
                              #:update-workspaces-pool-request
                              #:update-workspaces-pool-result
                              #:user-identity-type #:user-name #:user-setting
                              #:user-setting-action-enum
                              #:user-setting-permission-enum #:user-settings
                              #:user-storage #:user-volume-size-gib
                              #:validation-exception #:volume-encryption-key
                              #:work-space-application
                              #:work-space-application-deployment
                              #:work-space-application-id
                              #:work-space-application-id-list
                              #:work-space-application-license-type
                              #:work-space-application-list
                              #:work-space-application-owner
                              #:work-space-application-state
                              #:work-space-associated-resource-type
                              #:work-space-associated-resource-type-list
                              #:workspace #:workspace-access-properties
                              #:workspace-bundle #:workspace-bundle-description
                              #:workspace-bundle-name #:workspace-bundle-state
                              #:workspace-connection-status
                              #:workspace-connection-status-list
                              #:workspace-creation-properties
                              #:workspace-directory
                              #:workspace-directory-description
                              #:workspace-directory-name
                              #:workspace-directory-name-list
                              #:workspace-directory-state
                              #:workspace-directory-type #:workspace-error-code
                              #:workspace-id #:workspace-id-list
                              #:workspace-image #:workspace-image-description
                              #:workspace-image-error-code
                              #:workspace-image-error-detail-code
                              #:workspace-image-id #:workspace-image-id-list
                              #:workspace-image-ingestion-process
                              #:workspace-image-list #:workspace-image-name
                              #:workspace-image-required-tenancy
                              #:workspace-image-state #:workspace-list
                              #:workspace-name #:workspace-properties
                              #:workspace-request #:workspace-request-list
                              #:workspace-resource-association
                              #:workspace-resource-association-list
                              #:workspace-state #:workspace-type
                              #:workspaces-default-role-not-found-exception
                              #:workspaces-ip-group #:workspaces-ip-groups-list
                              #:workspaces-pool #:workspaces-pool-error
                              #:workspaces-pool-error-code
                              #:workspaces-pool-errors #:workspaces-pool-id
                              #:workspaces-pool-ids #:workspaces-pool-name
                              #:workspaces-pool-session
                              #:workspaces-pool-sessions
                              #:workspaces-pool-state #:workspaces-pool-user-id
                              #:workspaces-pools #:workspaces-service))
(common-lisp:in-package #:pira/workspaces)

(smithy/sdk/service:define-service workspaces-service :shape-name
                                   "WorkspacesService" :version "2015-04-08"
                                   :title "Amazon WorkSpaces" :xml-namespace
                                   '(:uri
                                     "http://workspaces.amazonaws.com/api/v1"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "WorkSpaces")
                                      ("arnNamespace" . "workspaces")
                                      ("cloudFormationName" . "WorkSpaces")
                                      ("cloudTrailEventSource"
                                       . "workspaces.amazonaws.com")
                                      ("endpointPrefix" . "workspaces"))
                                     ("aws.auth#sigv4" ("name" . "workspaces"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-enum agamode-for-directory-enum
    common-lisp:nil
  (:enabled-auto "ENABLED_AUTO")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum agamode-for-work-space-enum
    common-lisp:nil
  (:enabled-auto "ENABLED_AUTO")
  (:disabled "DISABLED")
  (:inherited "INHERITED"))

(smithy/sdk/shapes:define-enum agapreferred-protocol-for-directory
    common-lisp:nil
  (:tcp "TCP")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum agapreferred-protocol-for-work-space
    common-lisp:nil
  (:tcp "TCP")
  (:none "NONE")
  (:inherited "INHERITED"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input accept-account-link-invitation-request
                                common-lisp:nil
                                ((link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "AcceptAccountLinkInvitationRequest"))

(smithy/sdk/shapes:define-output accept-account-link-invitation-result
                                 common-lisp:nil
                                 ((account-link :target-type account-link
                                   :member-name "AccountLink"))
                                 (:shape-name
                                  "AcceptAccountLinkInvitationResult"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure access-endpoint common-lisp:nil
                                    ((access-endpoint-type :target-type
                                      access-endpoint-type :member-name
                                      "AccessEndpointType")
                                     (vpc-endpoint-id :target-type
                                      alphanumeric-dash-underscore-non-empty-string
                                      :member-name "VpcEndpointId"))
                                    (:shape-name "AccessEndpoint"))

(smithy/sdk/shapes:define-structure access-endpoint-config common-lisp:nil
                                    ((access-endpoints :target-type
                                      access-endpoint-list :required
                                      common-lisp:t :member-name
                                      "AccessEndpoints")
                                     (internet-fallback-protocols :target-type
                                      internet-fallback-protocol-list
                                      :member-name
                                      "InternetFallbackProtocols"))
                                    (:shape-name "AccessEndpointConfig"))

(smithy/sdk/shapes:define-list access-endpoint-list :member access-endpoint)

(smithy/sdk/shapes:define-enum access-endpoint-type
    common-lisp:nil
  (:streaming-wsp "STREAMING_WSP"))

(smithy/sdk/shapes:define-enum access-property-value
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-structure account-link common-lisp:nil
                                    ((account-link-id :target-type link-id
                                      :member-name "AccountLinkId")
                                     (account-link-status :target-type
                                      account-link-status-enum :member-name
                                      "AccountLinkStatus")
                                     (source-account-id :target-type
                                      aws-account :member-name
                                      "SourceAccountId")
                                     (target-account-id :target-type
                                      aws-account :member-name
                                      "TargetAccountId"))
                                    (:shape-name "AccountLink"))

(smithy/sdk/shapes:define-list account-link-list :member account-link)

(smithy/sdk/shapes:define-enum account-link-status-enum
    common-lisp:nil
  (:linked "LINKED")
  (:linking-failed "LINKING_FAILED")
  (:link-not-found "LINK_NOT_FOUND")
  (:pending-acceptance-by-target-account "PENDING_ACCEPTANCE_BY_TARGET_ACCOUNT")
  (:rejected "REJECTED"))

(smithy/sdk/shapes:define-structure account-modification common-lisp:nil
                                    ((modification-state :target-type
                                      dedicated-tenancy-modification-state-enum
                                      :member-name "ModificationState")
                                     (dedicated-tenancy-support :target-type
                                      dedicated-tenancy-support-result-enum
                                      :member-name "DedicatedTenancySupport")
                                     (dedicated-tenancy-management-cidr-range
                                      :target-type
                                      dedicated-tenancy-management-cidr-range
                                      :member-name
                                      "DedicatedTenancyManagementCidrRange")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (error-code :target-type
                                      workspace-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage"))
                                    (:shape-name "AccountModification"))

(smithy/sdk/shapes:define-list account-modification-list :member
                               account-modification)

(smithy/sdk/shapes:define-structure active-directory-config common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (service-account-secret-arn :target-type
                                      secrets-manager-arn :required
                                      common-lisp:t :member-name
                                      "ServiceAccountSecretArn"))
                                    (:shape-name "ActiveDirectoryConfig"))

(smithy/sdk/shapes:define-type active-user-sessions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type actual-user-sessions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type add-in-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type add-in-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alphanumeric-dash-underscore-non-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application
    common-lisp:nil
  (:microsoft-office-2016 "Microsoft_Office_2016")
  (:microsoft-office-2019 "Microsoft_Office_2019"))

(smithy/sdk/shapes:define-enum application-associated-resource-type
    common-lisp:nil
  (:workspace "WORKSPACE")
  (:bundle "BUNDLE")
  (:image "IMAGE"))

(smithy/sdk/shapes:define-list application-associated-resource-type-list
                               :member application-associated-resource-type)

(smithy/sdk/shapes:define-list application-list :member application)

(smithy/sdk/shapes:define-error application-not-supported-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ApplicationNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure application-resource-association
                                    common-lisp:nil
                                    ((application-id :target-type
                                      work-space-application-id :member-name
                                      "ApplicationId")
                                     (associated-resource-id :target-type
                                      non-empty-string :member-name
                                      "AssociatedResourceId")
                                     (associated-resource-type :target-type
                                      application-associated-resource-type
                                      :member-name "AssociatedResourceType")
                                     (created :target-type timestamp
                                      :member-name "Created")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (state :target-type association-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      association-state-reason :member-name
                                      "StateReason"))
                                    (:shape-name
                                     "ApplicationResourceAssociation"))

(smithy/sdk/shapes:define-list application-resource-association-list :member
                               application-resource-association)

(smithy/sdk/shapes:define-structure application-settings-request
                                    common-lisp:nil
                                    ((status :target-type
                                      application-settings-status-enum
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (settings-group :target-type
                                      settings-group :member-name
                                      "SettingsGroup"))
                                    (:shape-name "ApplicationSettingsRequest"))

(smithy/sdk/shapes:define-structure application-settings-response
                                    common-lisp:nil
                                    ((status :target-type
                                      application-settings-status-enum
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (settings-group :target-type
                                      settings-group :member-name
                                      "SettingsGroup")
                                     (s3bucket-name :target-type s3bucket-name
                                      :member-name "S3BucketName"))
                                    (:shape-name "ApplicationSettingsResponse"))

(smithy/sdk/shapes:define-enum application-settings-status-enum
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-input associate-connection-alias-request
                                common-lisp:nil
                                ((alias-id :target-type connection-alias-id
                                  :required common-lisp:t :member-name
                                  "AliasId")
                                 (resource-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "AssociateConnectionAliasRequest"))

(smithy/sdk/shapes:define-output associate-connection-alias-result
                                 common-lisp:nil
                                 ((connection-identifier :target-type
                                   connection-identifier :member-name
                                   "ConnectionIdentifier"))
                                 (:shape-name "AssociateConnectionAliasResult"))

(smithy/sdk/shapes:define-input associate-ip-groups-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (group-ids :target-type ip-group-id-list
                                  :required common-lisp:t :member-name
                                  "GroupIds"))
                                (:shape-name "AssociateIpGroupsRequest"))

(smithy/sdk/shapes:define-output associate-ip-groups-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateIpGroupsResult"))

(smithy/sdk/shapes:define-input associate-workspace-application-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (application-id :target-type
                                  work-space-application-id :required
                                  common-lisp:t :member-name "ApplicationId"))
                                (:shape-name
                                 "AssociateWorkspaceApplicationRequest"))

(smithy/sdk/shapes:define-output associate-workspace-application-result
                                 common-lisp:nil
                                 ((association :target-type
                                   workspace-resource-association :member-name
                                   "Association"))
                                 (:shape-name
                                  "AssociateWorkspaceApplicationResult"))

(smithy/sdk/shapes:define-enum association-error-code
    common-lisp:nil
  (:insufficient-diskspace "ValidationError.InsufficientDiskSpace")
  (:insufficient-memory "ValidationError.InsufficientMemory")
  (:unsupported-operating-system "ValidationError.UnsupportedOperatingSystem")
  (:internal-server-error "DeploymentError.InternalServerError")
  (:workspace-unreachable "DeploymentError.WorkspaceUnreachable"))

(smithy/sdk/shapes:define-enum association-state
    common-lisp:nil
  (:pending-install "PENDING_INSTALL")
  (:pending-install-deployment "PENDING_INSTALL_DEPLOYMENT")
  (:pending-uninstall "PENDING_UNINSTALL")
  (:pending-uninstall-deployment "PENDING_UNINSTALL_DEPLOYMENT")
  (:installing "INSTALLING")
  (:uninstalling "UNINSTALLING")
  (:error "ERROR")
  (:completed "COMPLETED")
  (:removed "REMOVED"))

(smithy/sdk/shapes:define-structure association-state-reason common-lisp:nil
                                    ((error-code :target-type
                                      association-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type string2048
                                      :member-name "ErrorMessage"))
                                    (:shape-name "AssociationStateReason"))

(smithy/sdk/shapes:define-enum association-status
    common-lisp:nil
  (:not-associated "NOT_ASSOCIATED")
  (:associated-with-owner-account "ASSOCIATED_WITH_OWNER_ACCOUNT")
  (:associated-with-shared-account "ASSOCIATED_WITH_SHARED_ACCOUNT")
  (:pending-association "PENDING_ASSOCIATION")
  (:pending-disassociation "PENDING_DISASSOCIATION"))

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:saml "SAML"))

(smithy/sdk/shapes:define-input authorize-ip-rules-request common-lisp:nil
                                ((group-id :target-type ip-group-id :required
                                  common-lisp:t :member-name "GroupId")
                                 (user-rules :target-type ip-rule-list
                                  :required common-lisp:t :member-name
                                  "UserRules"))
                                (:shape-name "AuthorizeIpRulesRequest"))

(smithy/sdk/shapes:define-output authorize-ip-rules-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AuthorizeIpRulesResult"))

(smithy/sdk/shapes:define-type available-user-sessions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type aws-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum bundle-associated-resource-type
    common-lisp:nil
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-list bundle-associated-resource-type-list :member
                               bundle-associated-resource-type)

(smithy/sdk/shapes:define-type bundle-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list bundle-id-list :member bundle-id)

(smithy/sdk/shapes:define-list bundle-list :member workspace-bundle)

(smithy/sdk/shapes:define-type bundle-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bundle-resource-association common-lisp:nil
                                    ((associated-resource-id :target-type
                                      non-empty-string :member-name
                                      "AssociatedResourceId")
                                     (associated-resource-type :target-type
                                      bundle-associated-resource-type
                                      :member-name "AssociatedResourceType")
                                     (bundle-id :target-type bundle-id
                                      :member-name "BundleId")
                                     (created :target-type timestamp
                                      :member-name "Created")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (state :target-type association-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      association-state-reason :member-name
                                      "StateReason"))
                                    (:shape-name "BundleResourceAssociation"))

(smithy/sdk/shapes:define-list bundle-resource-association-list :member
                               bundle-resource-association)

(smithy/sdk/shapes:define-enum bundle-type
    common-lisp:nil
  (:regular "REGULAR")
  (:standby "STANDBY"))

(smithy/sdk/shapes:define-structure capacity common-lisp:nil
                                    ((desired-user-sessions :target-type
                                      desired-user-sessions :required
                                      common-lisp:t :member-name
                                      "DesiredUserSessions"))
                                    (:shape-name "Capacity"))

(smithy/sdk/shapes:define-structure capacity-status common-lisp:nil
                                    ((available-user-sessions :target-type
                                      available-user-sessions :required
                                      common-lisp:t :member-name
                                      "AvailableUserSessions")
                                     (desired-user-sessions :target-type
                                      desired-user-sessions :required
                                      common-lisp:t :member-name
                                      "DesiredUserSessions")
                                     (actual-user-sessions :target-type
                                      actual-user-sessions :required
                                      common-lisp:t :member-name
                                      "ActualUserSessions")
                                     (active-user-sessions :target-type
                                      active-user-sessions :required
                                      common-lisp:t :member-name
                                      "ActiveUserSessions"))
                                    (:shape-name "CapacityStatus"))

(smithy/sdk/shapes:define-type certificate-authority-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificate-based-auth-properties
                                    common-lisp:nil
                                    ((status :target-type
                                      certificate-based-auth-status-enum
                                      :member-name "Status")
                                     (certificate-authority-arn :target-type
                                      certificate-authority-arn :member-name
                                      "CertificateAuthorityArn"))
                                    (:shape-name
                                     "CertificateBasedAuthProperties"))

(smithy/sdk/shapes:define-enum certificate-based-auth-status-enum
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum client-device-type
    common-lisp:nil
  (:device-type-windows "DeviceTypeWindows")
  (:device-type-osx "DeviceTypeOsx")
  (:device-type-android "DeviceTypeAndroid")
  (:device-type-ios "DeviceTypeIos")
  (:device-type-linux "DeviceTypeLinux")
  (:device-type-web "DeviceTypeWeb"))

(smithy/sdk/shapes:define-list client-device-type-list :member
                               client-device-type)

(smithy/sdk/shapes:define-type client-email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-locale smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-login-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure client-properties common-lisp:nil
                                    ((reconnect-enabled :target-type
                                      reconnect-enum :member-name
                                      "ReconnectEnabled")
                                     (log-upload-enabled :target-type
                                      log-upload-enum :member-name
                                      "LogUploadEnabled"))
                                    (:shape-name "ClientProperties"))

(smithy/sdk/shapes:define-list client-properties-list :member
                               client-properties-result)

(smithy/sdk/shapes:define-structure client-properties-result common-lisp:nil
                                    ((resource-id :target-type non-empty-string
                                      :member-name "ResourceId")
                                     (client-properties :target-type
                                      client-properties :member-name
                                      "ClientProperties"))
                                    (:shape-name "ClientPropertiesResult"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum compute
    common-lisp:nil
  (:value "VALUE")
  (:standard "STANDARD")
  (:performance "PERFORMANCE")
  (:power "POWER")
  (:graphics "GRAPHICS")
  (:powerpro "POWERPRO")
  (:generalpurpose-4xlarge "GENERALPURPOSE_4XLARGE")
  (:generalpurpose-8xlarge "GENERALPURPOSE_8XLARGE")
  (:graphicspro "GRAPHICSPRO")
  (:graphics-g4dn "GRAPHICS_G4DN")
  (:graphicspro-g4dn "GRAPHICSPRO_G4DN"))

(smithy/sdk/shapes:define-list compute-list :member compute)

(smithy/sdk/shapes:define-error compute-not-compatible-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name "ComputeNotCompatibleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure compute-type common-lisp:nil
                                    ((name :target-type compute :member-name
                                      "Name"))
                                    (:shape-name "ComputeType"))

(smithy/sdk/shapes:define-type computer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure connect-client-add-in common-lisp:nil
                                    ((add-in-id :target-type amazon-uuid
                                      :member-name "AddInId")
                                     (resource-id :target-type directory-id
                                      :member-name "ResourceId")
                                     (name :target-type add-in-name
                                      :member-name "Name")
                                     (url :target-type add-in-url :member-name
                                      "URL"))
                                    (:shape-name "ConnectClientAddIn"))

(smithy/sdk/shapes:define-list connect-client-add-in-list :member
                               connect-client-add-in)

(smithy/sdk/shapes:define-structure connection-alias common-lisp:nil
                                    ((connection-string :target-type
                                      connection-string :member-name
                                      "ConnectionString")
                                     (alias-id :target-type connection-alias-id
                                      :member-name "AliasId")
                                     (state :target-type connection-alias-state
                                      :member-name "State")
                                     (owner-account-id :target-type aws-account
                                      :member-name "OwnerAccountId")
                                     (associations :target-type
                                      connection-alias-association-list
                                      :member-name "Associations"))
                                    (:shape-name "ConnectionAlias"))

(smithy/sdk/shapes:define-structure connection-alias-association
                                    common-lisp:nil
                                    ((association-status :target-type
                                      association-status :member-name
                                      "AssociationStatus")
                                     (associated-account-id :target-type
                                      aws-account :member-name
                                      "AssociatedAccountId")
                                     (resource-id :target-type non-empty-string
                                      :member-name "ResourceId")
                                     (connection-identifier :target-type
                                      connection-identifier :member-name
                                      "ConnectionIdentifier"))
                                    (:shape-name "ConnectionAliasAssociation"))

(smithy/sdk/shapes:define-list connection-alias-association-list :member
                               connection-alias-association)

(smithy/sdk/shapes:define-type connection-alias-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connection-alias-id-list :member
                               connection-alias-id)

(smithy/sdk/shapes:define-list connection-alias-list :member connection-alias)

(smithy/sdk/shapes:define-structure connection-alias-permission common-lisp:nil
                                    ((shared-account-id :target-type
                                      aws-account :required common-lisp:t
                                      :member-name "SharedAccountId")
                                     (allow-association :target-type
                                      boolean-object :required common-lisp:t
                                      :member-name "AllowAssociation"))
                                    (:shape-name "ConnectionAliasPermission"))

(smithy/sdk/shapes:define-list connection-alias-permissions :member
                               connection-alias-permission)

(smithy/sdk/shapes:define-enum connection-alias-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type connection-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-state
    common-lisp:nil
  (:connected "CONNECTED")
  (:disconnected "DISCONNECTED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-type connection-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input copy-workspace-image-request common-lisp:nil
                                ((name :target-type workspace-image-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  workspace-image-description :member-name
                                  "Description")
                                 (source-image-id :target-type
                                  workspace-image-id :required common-lisp:t
                                  :member-name "SourceImageId")
                                 (source-region :target-type region :required
                                  common-lisp:t :member-name "SourceRegion")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CopyWorkspaceImageRequest"))

(smithy/sdk/shapes:define-output copy-workspace-image-result common-lisp:nil
                                 ((image-id :target-type workspace-image-id
                                   :member-name "ImageId"))
                                 (:shape-name "CopyWorkspaceImageResult"))

(smithy/sdk/shapes:define-input create-account-link-invitation-request
                                common-lisp:nil
                                ((target-account-id :target-type aws-account
                                  :required common-lisp:t :member-name
                                  "TargetAccountId")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateAccountLinkInvitationRequest"))

(smithy/sdk/shapes:define-output create-account-link-invitation-result
                                 common-lisp:nil
                                 ((account-link :target-type account-link
                                   :member-name "AccountLink"))
                                 (:shape-name
                                  "CreateAccountLinkInvitationResult"))

(smithy/sdk/shapes:define-input create-connect-client-add-in-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (name :target-type add-in-name :required
                                  common-lisp:t :member-name "Name")
                                 (url :target-type add-in-url :required
                                  common-lisp:t :member-name "URL"))
                                (:shape-name "CreateConnectClientAddInRequest"))

(smithy/sdk/shapes:define-output create-connect-client-add-in-result
                                 common-lisp:nil
                                 ((add-in-id :target-type amazon-uuid
                                   :member-name "AddInId"))
                                 (:shape-name "CreateConnectClientAddInResult"))

(smithy/sdk/shapes:define-input create-connection-alias-request common-lisp:nil
                                ((connection-string :target-type
                                  connection-string :required common-lisp:t
                                  :member-name "ConnectionString")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateConnectionAliasRequest"))

(smithy/sdk/shapes:define-output create-connection-alias-result common-lisp:nil
                                 ((alias-id :target-type connection-alias-id
                                   :member-name "AliasId"))
                                 (:shape-name "CreateConnectionAliasResult"))

(smithy/sdk/shapes:define-input create-ip-group-request common-lisp:nil
                                ((group-name :target-type ip-group-name
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (group-desc :target-type ip-group-desc
                                  :member-name "GroupDesc")
                                 (user-rules :target-type ip-rule-list
                                  :member-name "UserRules")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateIpGroupRequest"))

(smithy/sdk/shapes:define-output create-ip-group-result common-lisp:nil
                                 ((group-id :target-type ip-group-id
                                   :member-name "GroupId"))
                                 (:shape-name "CreateIpGroupResult"))

(smithy/sdk/shapes:define-input create-standby-workspaces-request
                                common-lisp:nil
                                ((primary-region :target-type region :required
                                  common-lisp:t :member-name "PrimaryRegion")
                                 (standby-workspaces :target-type
                                  standby-workspaces-list :required
                                  common-lisp:t :member-name
                                  "StandbyWorkspaces"))
                                (:shape-name "CreateStandbyWorkspacesRequest"))

(smithy/sdk/shapes:define-output create-standby-workspaces-result
                                 common-lisp:nil
                                 ((failed-standby-requests :target-type
                                   failed-create-standby-workspaces-request-list
                                   :member-name "FailedStandbyRequests")
                                  (pending-standby-requests :target-type
                                   pending-create-standby-workspaces-request-list
                                   :member-name "PendingStandbyRequests"))
                                 (:shape-name "CreateStandbyWorkspacesResult"))

(smithy/sdk/shapes:define-input create-tags-request common-lisp:nil
                                ((resource-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "CreateTagsRequest"))

(smithy/sdk/shapes:define-output create-tags-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateTagsResult"))

(smithy/sdk/shapes:define-input create-updated-workspace-image-request
                                common-lisp:nil
                                ((name :target-type workspace-image-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  workspace-image-description :required
                                  common-lisp:t :member-name "Description")
                                 (source-image-id :target-type
                                  workspace-image-id :required common-lisp:t
                                  :member-name "SourceImageId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateUpdatedWorkspaceImageRequest"))

(smithy/sdk/shapes:define-output create-updated-workspace-image-result
                                 common-lisp:nil
                                 ((image-id :target-type workspace-image-id
                                   :member-name "ImageId"))
                                 (:shape-name
                                  "CreateUpdatedWorkspaceImageResult"))

(smithy/sdk/shapes:define-input create-workspace-bundle-request common-lisp:nil
                                ((bundle-name :target-type
                                  workspace-bundle-name :required common-lisp:t
                                  :member-name "BundleName")
                                 (bundle-description :target-type
                                  workspace-bundle-description :required
                                  common-lisp:t :member-name
                                  "BundleDescription")
                                 (image-id :target-type workspace-image-id
                                  :required common-lisp:t :member-name
                                  "ImageId")
                                 (compute-type :target-type compute-type
                                  :required common-lisp:t :member-name
                                  "ComputeType")
                                 (user-storage :target-type user-storage
                                  :required common-lisp:t :member-name
                                  "UserStorage")
                                 (root-storage :target-type root-storage
                                  :member-name "RootStorage")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateWorkspaceBundleRequest"))

(smithy/sdk/shapes:define-output create-workspace-bundle-result common-lisp:nil
                                 ((workspace-bundle :target-type
                                   workspace-bundle :member-name
                                   "WorkspaceBundle"))
                                 (:shape-name "CreateWorkspaceBundleResult"))

(smithy/sdk/shapes:define-input create-workspace-image-request common-lisp:nil
                                ((name :target-type workspace-image-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  workspace-image-description :required
                                  common-lisp:t :member-name "Description")
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateWorkspaceImageRequest"))

(smithy/sdk/shapes:define-output create-workspace-image-result common-lisp:nil
                                 ((image-id :target-type workspace-image-id
                                   :member-name "ImageId")
                                  (name :target-type workspace-image-name
                                   :member-name "Name")
                                  (description :target-type
                                   workspace-image-description :member-name
                                   "Description")
                                  (operating-system :target-type
                                   operating-system :member-name
                                   "OperatingSystem")
                                  (state :target-type workspace-image-state
                                   :member-name "State")
                                  (required-tenancy :target-type
                                   workspace-image-required-tenancy
                                   :member-name "RequiredTenancy")
                                  (created :target-type timestamp :member-name
                                   "Created")
                                  (owner-account-id :target-type aws-account
                                   :member-name "OwnerAccountId"))
                                 (:shape-name "CreateWorkspaceImageResult"))

(smithy/sdk/shapes:define-input create-workspaces-pool-request common-lisp:nil
                                ((pool-name :target-type workspaces-pool-name
                                  :required common-lisp:t :member-name
                                  "PoolName")
                                 (description :target-type update-description
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (bundle-id :target-type bundle-id :required
                                  common-lisp:t :member-name "BundleId")
                                 (directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (capacity :target-type capacity :required
                                  common-lisp:t :member-name "Capacity")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (application-settings :target-type
                                  application-settings-request :member-name
                                  "ApplicationSettings")
                                 (timeout-settings :target-type
                                  timeout-settings :member-name
                                  "TimeoutSettings")
                                 (running-mode :target-type pools-running-mode
                                  :member-name "RunningMode"))
                                (:shape-name "CreateWorkspacesPoolRequest"))

(smithy/sdk/shapes:define-output create-workspaces-pool-result common-lisp:nil
                                 ((workspaces-pool :target-type workspaces-pool
                                   :member-name "WorkspacesPool"))
                                 (:shape-name "CreateWorkspacesPoolResult"))

(smithy/sdk/shapes:define-input create-workspaces-request common-lisp:nil
                                ((workspaces :target-type
                                  workspace-request-list :required
                                  common-lisp:t :member-name "Workspaces"))
                                (:shape-name "CreateWorkspacesRequest"))

(smithy/sdk/shapes:define-output create-workspaces-result common-lisp:nil
                                 ((failed-requests :target-type
                                   failed-create-workspace-requests
                                   :member-name "FailedRequests")
                                  (pending-requests :target-type workspace-list
                                   :member-name "PendingRequests"))
                                 (:shape-name "CreateWorkspacesResult"))

(smithy/sdk/shapes:define-enum data-replication
    common-lisp:nil
  (:no-replication "NO_REPLICATION")
  (:primary-as-source "PRIMARY_AS_SOURCE"))

(smithy/sdk/shapes:define-structure data-replication-settings common-lisp:nil
                                    ((data-replication :target-type
                                      data-replication :member-name
                                      "DataReplication")
                                     (recovery-snapshot-time :target-type
                                      timestamp :member-name
                                      "RecoverySnapshotTime"))
                                    (:shape-name "DataReplicationSettings"))

(smithy/sdk/shapes:define-enum dedicated-tenancy-account-type
    common-lisp:nil
  (:source-account "SOURCE_ACCOUNT")
  (:target-account "TARGET_ACCOUNT"))

(smithy/sdk/shapes:define-list dedicated-tenancy-cidr-range-list :member
                               dedicated-tenancy-management-cidr-range)

(smithy/sdk/shapes:define-type dedicated-tenancy-management-cidr-range
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dedicated-tenancy-modification-state-enum
    common-lisp:nil
  (:pending "PENDING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum dedicated-tenancy-support-enum
    common-lisp:nil
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum dedicated-tenancy-support-result-enum
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure default-client-branding-attributes
                                    common-lisp:nil
                                    ((logo-url :target-type client-url
                                      :member-name "LogoUrl")
                                     (support-email :target-type client-email
                                      :member-name "SupportEmail")
                                     (support-link :target-type client-url
                                      :member-name "SupportLink")
                                     (forgot-password-link :target-type
                                      client-url :member-name
                                      "ForgotPasswordLink")
                                     (login-message :target-type login-message
                                      :member-name "LoginMessage"))
                                    (:shape-name
                                     "DefaultClientBrandingAttributes"))

(smithy/sdk/shapes:define-structure default-import-client-branding-attributes
                                    common-lisp:nil
                                    ((logo :target-type default-logo
                                      :member-name "Logo")
                                     (support-email :target-type client-email
                                      :member-name "SupportEmail")
                                     (support-link :target-type client-url
                                      :member-name "SupportLink")
                                     (forgot-password-link :target-type
                                      client-url :member-name
                                      "ForgotPasswordLink")
                                     (login-message :target-type login-message
                                      :member-name "LoginMessage"))
                                    (:shape-name
                                     "DefaultImportClientBrandingAttributes"))

(smithy/sdk/shapes:define-type default-logo smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type default-ou smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure default-workspace-creation-properties
                                    common-lisp:nil
                                    ((enable-internet-access :target-type
                                      boolean-object :member-name
                                      "EnableInternetAccess")
                                     (default-ou :target-type default-ou
                                      :member-name "DefaultOu")
                                     (custom-security-group-id :target-type
                                      security-group-id :member-name
                                      "CustomSecurityGroupId")
                                     (user-enabled-as-local-administrator
                                      :target-type boolean-object :member-name
                                      "UserEnabledAsLocalAdministrator")
                                     (enable-maintenance-mode :target-type
                                      boolean-object :member-name
                                      "EnableMaintenanceMode")
                                     (instance-iam-role-arn :target-type arn
                                      :member-name "InstanceIamRoleArn"))
                                    (:shape-name
                                     "DefaultWorkspaceCreationProperties"))

(smithy/sdk/shapes:define-list deletable-certificate-based-auth-properties-list
                               :member
                               deletable-certificate-based-auth-property)

(smithy/sdk/shapes:define-enum deletable-certificate-based-auth-property
    common-lisp:nil
  (:certificate-based-auth-properties-certificate-authority-arn
   "CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN"))

(smithy/sdk/shapes:define-list deletable-saml-properties-list :member
                               deletable-saml-property)

(smithy/sdk/shapes:define-enum deletable-saml-property
    common-lisp:nil
  (:saml-properties-user-access-url "SAML_PROPERTIES_USER_ACCESS_URL")
  (:saml-properties-relay-state-parameter-name
   "SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME"))

(smithy/sdk/shapes:define-input delete-account-link-invitation-request
                                common-lisp:nil
                                ((link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "DeleteAccountLinkInvitationRequest"))

(smithy/sdk/shapes:define-output delete-account-link-invitation-result
                                 common-lisp:nil
                                 ((account-link :target-type account-link
                                   :member-name "AccountLink"))
                                 (:shape-name
                                  "DeleteAccountLinkInvitationResult"))

(smithy/sdk/shapes:define-input delete-client-branding-request common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (platforms :target-type
                                  client-device-type-list :required
                                  common-lisp:t :member-name "Platforms"))
                                (:shape-name "DeleteClientBrandingRequest"))

(smithy/sdk/shapes:define-output delete-client-branding-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteClientBrandingResult"))

(smithy/sdk/shapes:define-input delete-connect-client-add-in-request
                                common-lisp:nil
                                ((add-in-id :target-type amazon-uuid :required
                                  common-lisp:t :member-name "AddInId")
                                 (resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "DeleteConnectClientAddInRequest"))

(smithy/sdk/shapes:define-output delete-connect-client-add-in-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteConnectClientAddInResult"))

(smithy/sdk/shapes:define-input delete-connection-alias-request common-lisp:nil
                                ((alias-id :target-type connection-alias-id
                                  :required common-lisp:t :member-name
                                  "AliasId"))
                                (:shape-name "DeleteConnectionAliasRequest"))

(smithy/sdk/shapes:define-output delete-connection-alias-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteConnectionAliasResult"))

(smithy/sdk/shapes:define-input delete-ip-group-request common-lisp:nil
                                ((group-id :target-type ip-group-id :required
                                  common-lisp:t :member-name "GroupId"))
                                (:shape-name "DeleteIpGroupRequest"))

(smithy/sdk/shapes:define-output delete-ip-group-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIpGroupResult"))

(smithy/sdk/shapes:define-input delete-tags-request common-lisp:nil
                                ((resource-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "DeleteTagsRequest"))

(smithy/sdk/shapes:define-output delete-tags-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTagsResult"))

(smithy/sdk/shapes:define-input delete-workspace-bundle-request common-lisp:nil
                                ((bundle-id :target-type bundle-id :member-name
                                  "BundleId"))
                                (:shape-name "DeleteWorkspaceBundleRequest"))

(smithy/sdk/shapes:define-output delete-workspace-bundle-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorkspaceBundleResult"))

(smithy/sdk/shapes:define-input delete-workspace-image-request common-lisp:nil
                                ((image-id :target-type workspace-image-id
                                  :required common-lisp:t :member-name
                                  "ImageId"))
                                (:shape-name "DeleteWorkspaceImageRequest"))

(smithy/sdk/shapes:define-output delete-workspace-image-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorkspaceImageResult"))

(smithy/sdk/shapes:define-input deploy-workspace-applications-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (force :target-type boolean-object
                                  :member-name "Force"))
                                (:shape-name
                                 "DeployWorkspaceApplicationsRequest"))

(smithy/sdk/shapes:define-output deploy-workspace-applications-result
                                 common-lisp:nil
                                 ((deployment :target-type
                                   work-space-application-deployment
                                   :member-name "Deployment"))
                                 (:shape-name
                                  "DeployWorkspaceApplicationsResult"))

(smithy/sdk/shapes:define-input deregister-workspace-directory-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name
                                 "DeregisterWorkspaceDirectoryRequest"))

(smithy/sdk/shapes:define-output deregister-workspace-directory-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterWorkspaceDirectoryResult"))

(smithy/sdk/shapes:define-input describe-account-modifications-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeAccountModificationsRequest"))

(smithy/sdk/shapes:define-output describe-account-modifications-result
                                 common-lisp:nil
                                 ((account-modifications :target-type
                                   account-modification-list :member-name
                                   "AccountModifications")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAccountModificationsResult"))

(smithy/sdk/shapes:define-input describe-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeAccountRequest"))

(smithy/sdk/shapes:define-output describe-account-result common-lisp:nil
                                 ((dedicated-tenancy-support :target-type
                                   dedicated-tenancy-support-result-enum
                                   :member-name "DedicatedTenancySupport")
                                  (dedicated-tenancy-management-cidr-range
                                   :target-type
                                   dedicated-tenancy-management-cidr-range
                                   :member-name
                                   "DedicatedTenancyManagementCidrRange")
                                  (dedicated-tenancy-account-type :target-type
                                   dedicated-tenancy-account-type :member-name
                                   "DedicatedTenancyAccountType"))
                                 (:shape-name "DescribeAccountResult"))

(smithy/sdk/shapes:define-input describe-application-associations-request
                                common-lisp:nil
                                ((max-results :target-type limit :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (application-id :target-type
                                  work-space-application-id :required
                                  common-lisp:t :member-name "ApplicationId")
                                 (associated-resource-types :target-type
                                  application-associated-resource-type-list
                                  :required common-lisp:t :member-name
                                  "AssociatedResourceTypes"))
                                (:shape-name
                                 "DescribeApplicationAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-application-associations-result
                                 common-lisp:nil
                                 ((associations :target-type
                                   application-resource-association-list
                                   :member-name "Associations")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeApplicationAssociationsResult"))

(smithy/sdk/shapes:define-input describe-applications-request common-lisp:nil
                                ((application-ids :target-type
                                  work-space-application-id-list :member-name
                                  "ApplicationIds")
                                 (compute-type-names :target-type compute-list
                                  :member-name "ComputeTypeNames")
                                 (license-type :target-type
                                  work-space-application-license-type
                                  :member-name "LicenseType")
                                 (operating-system-names :target-type
                                  operating-system-name-list :member-name
                                  "OperatingSystemNames")
                                 (owner :target-type
                                  work-space-application-owner :member-name
                                  "Owner")
                                 (max-results :target-type limit :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeApplicationsRequest"))

(smithy/sdk/shapes:define-output describe-applications-result common-lisp:nil
                                 ((applications :target-type
                                   work-space-application-list :member-name
                                   "Applications")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeApplicationsResult"))

(smithy/sdk/shapes:define-input describe-bundle-associations-request
                                common-lisp:nil
                                ((bundle-id :target-type bundle-id :required
                                  common-lisp:t :member-name "BundleId")
                                 (associated-resource-types :target-type
                                  bundle-associated-resource-type-list
                                  :required common-lisp:t :member-name
                                  "AssociatedResourceTypes"))
                                (:shape-name
                                 "DescribeBundleAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-bundle-associations-result
                                 common-lisp:nil
                                 ((associations :target-type
                                   bundle-resource-association-list
                                   :member-name "Associations"))
                                 (:shape-name
                                  "DescribeBundleAssociationsResult"))

(smithy/sdk/shapes:define-input describe-client-branding-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "DescribeClientBrandingRequest"))

(smithy/sdk/shapes:define-output describe-client-branding-result
                                 common-lisp:nil
                                 ((device-type-windows :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeWindows")
                                  (device-type-osx :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeOsx")
                                  (device-type-android :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeAndroid")
                                  (device-type-ios :target-type
                                   ios-client-branding-attributes :member-name
                                   "DeviceTypeIos")
                                  (device-type-linux :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeLinux")
                                  (device-type-web :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeWeb"))
                                 (:shape-name "DescribeClientBrandingResult"))

(smithy/sdk/shapes:define-input describe-client-properties-request
                                common-lisp:nil
                                ((resource-ids :target-type resource-id-list
                                  :required common-lisp:t :member-name
                                  "ResourceIds"))
                                (:shape-name "DescribeClientPropertiesRequest"))

(smithy/sdk/shapes:define-output describe-client-properties-result
                                 common-lisp:nil
                                 ((client-properties-list :target-type
                                   client-properties-list :member-name
                                   "ClientPropertiesList"))
                                 (:shape-name "DescribeClientPropertiesResult"))

(smithy/sdk/shapes:define-input describe-connect-client-add-ins-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "DescribeConnectClientAddInsRequest"))

(smithy/sdk/shapes:define-output describe-connect-client-add-ins-result
                                 common-lisp:nil
                                 ((add-ins :target-type
                                   connect-client-add-in-list :member-name
                                   "AddIns")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConnectClientAddInsResult"))

(smithy/sdk/shapes:define-input describe-connection-alias-permissions-request
                                common-lisp:nil
                                ((alias-id :target-type connection-alias-id
                                  :required common-lisp:t :member-name
                                  "AliasId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "DescribeConnectionAliasPermissionsRequest"))

(smithy/sdk/shapes:define-output describe-connection-alias-permissions-result
                                 common-lisp:nil
                                 ((alias-id :target-type connection-alias-id
                                   :member-name "AliasId")
                                  (connection-alias-permissions :target-type
                                   connection-alias-permissions :member-name
                                   "ConnectionAliasPermissions")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConnectionAliasPermissionsResult"))

(smithy/sdk/shapes:define-input describe-connection-aliases-request
                                common-lisp:nil
                                ((alias-ids :target-type
                                  connection-alias-id-list :member-name
                                  "AliasIds")
                                 (resource-id :target-type non-empty-string
                                  :member-name "ResourceId")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeConnectionAliasesRequest"))

(smithy/sdk/shapes:define-output describe-connection-aliases-result
                                 common-lisp:nil
                                 ((connection-aliases :target-type
                                   connection-alias-list :member-name
                                   "ConnectionAliases")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConnectionAliasesResult"))

(smithy/sdk/shapes:define-input describe-image-associations-request
                                common-lisp:nil
                                ((image-id :target-type workspace-image-id
                                  :required common-lisp:t :member-name
                                  "ImageId")
                                 (associated-resource-types :target-type
                                  image-associated-resource-type-list :required
                                  common-lisp:t :member-name
                                  "AssociatedResourceTypes"))
                                (:shape-name
                                 "DescribeImageAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-image-associations-result
                                 common-lisp:nil
                                 ((associations :target-type
                                   image-resource-association-list :member-name
                                   "Associations"))
                                 (:shape-name
                                  "DescribeImageAssociationsResult"))

(smithy/sdk/shapes:define-input describe-ip-groups-request common-lisp:nil
                                ((group-ids :target-type ip-group-id-list
                                  :member-name "GroupIds")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeIpGroupsRequest"))

(smithy/sdk/shapes:define-output describe-ip-groups-result common-lisp:nil
                                 ((result :target-type
                                   workspaces-ip-groups-list :member-name
                                   "Result")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeIpGroupsResult"))

(smithy/sdk/shapes:define-input describe-tags-request common-lisp:nil
                                ((resource-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "DescribeTagsRequest"))

(smithy/sdk/shapes:define-output describe-tags-result common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "DescribeTagsResult"))

(smithy/sdk/shapes:define-input describe-workspace-associations-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (associated-resource-types :target-type
                                  work-space-associated-resource-type-list
                                  :required common-lisp:t :member-name
                                  "AssociatedResourceTypes"))
                                (:shape-name
                                 "DescribeWorkspaceAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-workspace-associations-result
                                 common-lisp:nil
                                 ((associations :target-type
                                   workspace-resource-association-list
                                   :member-name "Associations"))
                                 (:shape-name
                                  "DescribeWorkspaceAssociationsResult"))

(smithy/sdk/shapes:define-input describe-workspace-bundles-request
                                common-lisp:nil
                                ((bundle-ids :target-type bundle-id-list
                                  :member-name "BundleIds")
                                 (owner :target-type bundle-owner :member-name
                                  "Owner")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeWorkspaceBundlesRequest"))

(smithy/sdk/shapes:define-output describe-workspace-bundles-result
                                 common-lisp:nil
                                 ((bundles :target-type bundle-list
                                   :member-name "Bundles")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeWorkspaceBundlesResult"))

(smithy/sdk/shapes:define-structure describe-workspace-directories-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      describe-workspace-directories-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type
                                      describe-workspace-directories-filter-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "DescribeWorkspaceDirectoriesFilter"))

(smithy/sdk/shapes:define-list describe-workspace-directories-filter-list
                               :member describe-workspace-directories-filter)

(smithy/sdk/shapes:define-enum describe-workspace-directories-filter-name
    common-lisp:nil
  (:user-identity-type "USER_IDENTITY_TYPE")
  (:workspace-type "WORKSPACE_TYPE"))

(smithy/sdk/shapes:define-type describe-workspace-directories-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list describe-workspace-directories-filter-values
                               :member
                               describe-workspace-directories-filter-value)

(smithy/sdk/shapes:define-input describe-workspace-directories-request
                                common-lisp:nil
                                ((directory-ids :target-type directory-id-list
                                  :member-name "DirectoryIds")
                                 (workspace-directory-names :target-type
                                  workspace-directory-name-list :member-name
                                  "WorkspaceDirectoryNames")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (filters :target-type
                                  describe-workspace-directories-filter-list
                                  :member-name "Filters"))
                                (:shape-name
                                 "DescribeWorkspaceDirectoriesRequest"))

(smithy/sdk/shapes:define-output describe-workspace-directories-result
                                 common-lisp:nil
                                 ((directories :target-type directory-list
                                   :member-name "Directories")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeWorkspaceDirectoriesResult"))

(smithy/sdk/shapes:define-input describe-workspace-image-permissions-request
                                common-lisp:nil
                                ((image-id :target-type workspace-image-id
                                  :required common-lisp:t :member-name
                                  "ImageId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "DescribeWorkspaceImagePermissionsRequest"))

(smithy/sdk/shapes:define-output describe-workspace-image-permissions-result
                                 common-lisp:nil
                                 ((image-id :target-type workspace-image-id
                                   :member-name "ImageId")
                                  (image-permissions :target-type
                                   image-permissions :member-name
                                   "ImagePermissions")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeWorkspaceImagePermissionsResult"))

(smithy/sdk/shapes:define-input describe-workspace-images-request
                                common-lisp:nil
                                ((image-ids :target-type
                                  workspace-image-id-list :member-name
                                  "ImageIds")
                                 (image-type :target-type image-type
                                  :member-name "ImageType")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeWorkspaceImagesRequest"))

(smithy/sdk/shapes:define-output describe-workspace-images-result
                                 common-lisp:nil
                                 ((images :target-type workspace-image-list
                                   :member-name "Images")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeWorkspaceImagesResult"))

(smithy/sdk/shapes:define-input describe-workspace-snapshots-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId"))
                                (:shape-name
                                 "DescribeWorkspaceSnapshotsRequest"))

(smithy/sdk/shapes:define-output describe-workspace-snapshots-result
                                 common-lisp:nil
                                 ((rebuild-snapshots :target-type snapshot-list
                                   :member-name "RebuildSnapshots")
                                  (restore-snapshots :target-type snapshot-list
                                   :member-name "RestoreSnapshots"))
                                 (:shape-name
                                  "DescribeWorkspaceSnapshotsResult"))

(smithy/sdk/shapes:define-input describe-workspaces-connection-status-request
                                common-lisp:nil
                                ((workspace-ids :target-type workspace-id-list
                                  :member-name "WorkspaceIds")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeWorkspacesConnectionStatusRequest"))

(smithy/sdk/shapes:define-output describe-workspaces-connection-status-result
                                 common-lisp:nil
                                 ((workspaces-connection-status :target-type
                                   workspace-connection-status-list
                                   :member-name "WorkspacesConnectionStatus")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeWorkspacesConnectionStatusResult"))

(smithy/sdk/shapes:define-input describe-workspaces-pool-sessions-request
                                common-lisp:nil
                                ((pool-id :target-type workspaces-pool-id
                                  :required common-lisp:t :member-name
                                  "PoolId")
                                 (user-id :target-type workspaces-pool-user-id
                                  :member-name "UserId")
                                 (limit :target-type limit50 :member-name
                                  "Limit")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "DescribeWorkspacesPoolSessionsRequest"))

(smithy/sdk/shapes:define-output describe-workspaces-pool-sessions-result
                                 common-lisp:nil
                                 ((sessions :target-type
                                   workspaces-pool-sessions :member-name
                                   "Sessions")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeWorkspacesPoolSessionsResult"))

(smithy/sdk/shapes:define-structure describe-workspaces-pools-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      describe-workspaces-pools-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type
                                      describe-workspaces-pools-filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (operator :target-type
                                      describe-workspaces-pools-filter-operator
                                      :required common-lisp:t :member-name
                                      "Operator"))
                                    (:shape-name
                                     "DescribeWorkspacesPoolsFilter"))

(smithy/sdk/shapes:define-enum describe-workspaces-pools-filter-name
    common-lisp:nil
  (:poolname "PoolName"))

(smithy/sdk/shapes:define-enum describe-workspaces-pools-filter-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:notequals "NOTEQUALS")
  (:contains "CONTAINS")
  (:notcontains "NOTCONTAINS"))

(smithy/sdk/shapes:define-type describe-workspaces-pools-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list describe-workspaces-pools-filter-values :member
                               describe-workspaces-pools-filter-value)

(smithy/sdk/shapes:define-list describe-workspaces-pools-filters :member
                               describe-workspaces-pools-filter)

(smithy/sdk/shapes:define-input describe-workspaces-pools-request
                                common-lisp:nil
                                ((pool-ids :target-type workspaces-pool-ids
                                  :member-name "PoolIds")
                                 (filters :target-type
                                  describe-workspaces-pools-filters
                                  :member-name "Filters")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeWorkspacesPoolsRequest"))

(smithy/sdk/shapes:define-output describe-workspaces-pools-result
                                 common-lisp:nil
                                 ((workspaces-pools :target-type
                                   workspaces-pools :member-name
                                   "WorkspacesPools")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeWorkspacesPoolsResult"))

(smithy/sdk/shapes:define-input describe-workspaces-request common-lisp:nil
                                ((workspace-ids :target-type workspace-id-list
                                  :member-name "WorkspaceIds")
                                 (directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (user-name :target-type user-name :member-name
                                  "UserName")
                                 (bundle-id :target-type bundle-id :member-name
                                  "BundleId")
                                 (limit :target-type limit :member-name
                                  "Limit")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (workspace-name :target-type workspace-name
                                  :member-name "WorkspaceName"))
                                (:shape-name "DescribeWorkspacesRequest"))

(smithy/sdk/shapes:define-output describe-workspaces-result common-lisp:nil
                                 ((workspaces :target-type workspace-list
                                   :member-name "Workspaces")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeWorkspacesResult"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type desired-user-sessions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list directory-id-list :member directory-id)

(smithy/sdk/shapes:define-list directory-list :member workspace-directory)

(smithy/sdk/shapes:define-type directory-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-connection-alias-request
                                common-lisp:nil
                                ((alias-id :target-type connection-alias-id
                                  :required common-lisp:t :member-name
                                  "AliasId"))
                                (:shape-name
                                 "DisassociateConnectionAliasRequest"))

(smithy/sdk/shapes:define-output disassociate-connection-alias-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateConnectionAliasResult"))

(smithy/sdk/shapes:define-input disassociate-ip-groups-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (group-ids :target-type ip-group-id-list
                                  :required common-lisp:t :member-name
                                  "GroupIds"))
                                (:shape-name "DisassociateIpGroupsRequest"))

(smithy/sdk/shapes:define-output disassociate-ip-groups-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateIpGroupsResult"))

(smithy/sdk/shapes:define-input disassociate-workspace-application-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (application-id :target-type
                                  work-space-application-id :required
                                  common-lisp:t :member-name "ApplicationId"))
                                (:shape-name
                                 "DisassociateWorkspaceApplicationRequest"))

(smithy/sdk/shapes:define-output disassociate-workspace-application-result
                                 common-lisp:nil
                                 ((association :target-type
                                   workspace-resource-association :member-name
                                   "Association"))
                                 (:shape-name
                                  "DisassociateWorkspaceApplicationResult"))

(smithy/sdk/shapes:define-type disconnect-timeout-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list dns-ip-addresses :member ip-address)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2image-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-encryption-mode
    common-lisp:nil
  (:standard-tls "STANDARD_TLS")
  (:fips-validated "FIPS_VALIDATED"))

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((error-code :target-type
                                      workspace-image-error-detail-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-list error-details-list :member error-details)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failed-create-standby-workspaces-request
                                    common-lisp:nil
                                    ((standby-workspace-request :target-type
                                      standby-workspace :member-name
                                      "StandbyWorkspaceRequest")
                                     (error-code :target-type
                                      workspace-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "FailedCreateStandbyWorkspacesRequest"))

(smithy/sdk/shapes:define-list failed-create-standby-workspaces-request-list
                               :member failed-create-standby-workspaces-request)

(smithy/sdk/shapes:define-structure failed-create-workspace-request
                                    common-lisp:nil
                                    ((workspace-request :target-type
                                      workspace-request :member-name
                                      "WorkspaceRequest")
                                     (error-code :target-type error-type
                                      :member-name "ErrorCode")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "FailedCreateWorkspaceRequest"))

(smithy/sdk/shapes:define-list failed-create-workspace-requests :member
                               failed-create-workspace-request)

(smithy/sdk/shapes:define-list failed-reboot-workspace-requests :member
                               failed-workspace-change-request)

(smithy/sdk/shapes:define-list failed-rebuild-workspace-requests :member
                               failed-workspace-change-request)

(smithy/sdk/shapes:define-list failed-start-workspace-requests :member
                               failed-workspace-change-request)

(smithy/sdk/shapes:define-list failed-stop-workspace-requests :member
                               failed-workspace-change-request)

(smithy/sdk/shapes:define-list failed-terminate-workspace-requests :member
                               failed-workspace-change-request)

(smithy/sdk/shapes:define-structure failed-workspace-change-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId")
                                     (error-code :target-type error-type
                                      :member-name "ErrorCode")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "FailedWorkspaceChangeRequest"))

(smithy/sdk/shapes:define-input get-account-link-request common-lisp:nil
                                ((link-id :target-type link-id :member-name
                                  "LinkId")
                                 (linked-account-id :target-type aws-account
                                  :member-name "LinkedAccountId"))
                                (:shape-name "GetAccountLinkRequest"))

(smithy/sdk/shapes:define-output get-account-link-result common-lisp:nil
                                 ((account-link :target-type account-link
                                   :member-name "AccountLink"))
                                 (:shape-name "GetAccountLinkResult"))

(smithy/sdk/shapes:define-structure global-accelerator-for-directory
                                    common-lisp:nil
                                    ((mode :target-type
                                      agamode-for-directory-enum :required
                                      common-lisp:t :member-name "Mode")
                                     (preferred-protocol :target-type
                                      agapreferred-protocol-for-directory
                                      :member-name "PreferredProtocol"))
                                    (:shape-name
                                     "GlobalAcceleratorForDirectory"))

(smithy/sdk/shapes:define-structure global-accelerator-for-work-space
                                    common-lisp:nil
                                    ((mode :target-type
                                      agamode-for-work-space-enum :required
                                      common-lisp:t :member-name "Mode")
                                     (preferred-protocol :target-type
                                      agapreferred-protocol-for-work-space
                                      :member-name "PreferredProtocol"))
                                    (:shape-name
                                     "GlobalAcceleratorForWorkSpace"))

(smithy/sdk/shapes:define-structure idcconfig common-lisp:nil
                                    ((instance-arn :target-type arn
                                      :member-name "InstanceArn")
                                     (application-arn :target-type arn
                                      :member-name "ApplicationArn"))
                                    (:shape-name "IDCConfig"))

(smithy/sdk/shapes:define-type idle-disconnect-timeout-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum image-associated-resource-type
    common-lisp:nil
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-list image-associated-resource-type-list :member
                               image-associated-resource-type)

(smithy/sdk/shapes:define-structure image-permission common-lisp:nil
                                    ((shared-account-id :target-type
                                      aws-account :member-name
                                      "SharedAccountId"))
                                    (:shape-name "ImagePermission"))

(smithy/sdk/shapes:define-list image-permissions :member image-permission)

(smithy/sdk/shapes:define-structure image-resource-association common-lisp:nil
                                    ((associated-resource-id :target-type
                                      non-empty-string :member-name
                                      "AssociatedResourceId")
                                     (associated-resource-type :target-type
                                      image-associated-resource-type
                                      :member-name "AssociatedResourceType")
                                     (created :target-type timestamp
                                      :member-name "Created")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (image-id :target-type workspace-image-id
                                      :member-name "ImageId")
                                     (state :target-type association-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      association-state-reason :member-name
                                      "StateReason"))
                                    (:shape-name "ImageResourceAssociation"))

(smithy/sdk/shapes:define-list image-resource-association-list :member
                               image-resource-association)

(smithy/sdk/shapes:define-enum image-type
    common-lisp:nil
  (:owned "OWNED")
  (:shared "SHARED"))

(smithy/sdk/shapes:define-input import-client-branding-request common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (device-type-windows :target-type
                                  default-import-client-branding-attributes
                                  :member-name "DeviceTypeWindows")
                                 (device-type-osx :target-type
                                  default-import-client-branding-attributes
                                  :member-name "DeviceTypeOsx")
                                 (device-type-android :target-type
                                  default-import-client-branding-attributes
                                  :member-name "DeviceTypeAndroid")
                                 (device-type-ios :target-type
                                  ios-import-client-branding-attributes
                                  :member-name "DeviceTypeIos")
                                 (device-type-linux :target-type
                                  default-import-client-branding-attributes
                                  :member-name "DeviceTypeLinux")
                                 (device-type-web :target-type
                                  default-import-client-branding-attributes
                                  :member-name "DeviceTypeWeb"))
                                (:shape-name "ImportClientBrandingRequest"))

(smithy/sdk/shapes:define-output import-client-branding-result common-lisp:nil
                                 ((device-type-windows :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeWindows")
                                  (device-type-osx :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeOsx")
                                  (device-type-android :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeAndroid")
                                  (device-type-ios :target-type
                                   ios-client-branding-attributes :member-name
                                   "DeviceTypeIos")
                                  (device-type-linux :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeLinux")
                                  (device-type-web :target-type
                                   default-client-branding-attributes
                                   :member-name "DeviceTypeWeb"))
                                 (:shape-name "ImportClientBrandingResult"))

(smithy/sdk/shapes:define-input import-workspace-image-request common-lisp:nil
                                ((ec2image-id :target-type ec2image-id
                                  :required common-lisp:t :member-name
                                  "Ec2ImageId")
                                 (ingestion-process :target-type
                                  workspace-image-ingestion-process :required
                                  common-lisp:t :member-name
                                  "IngestionProcess")
                                 (image-name :target-type workspace-image-name
                                  :required common-lisp:t :member-name
                                  "ImageName")
                                 (image-description :target-type
                                  workspace-image-description :required
                                  common-lisp:t :member-name
                                  "ImageDescription")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (applications :target-type application-list
                                  :member-name "Applications"))
                                (:shape-name "ImportWorkspaceImageRequest"))

(smithy/sdk/shapes:define-output import-workspace-image-result common-lisp:nil
                                 ((image-id :target-type workspace-image-id
                                   :member-name "ImageId"))
                                 (:shape-name "ImportWorkspaceImageResult"))

(smithy/sdk/shapes:define-error incompatible-applications-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "IncompatibleApplicationsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum internet-fallback-protocol
    common-lisp:nil
  (:pcoip "PCOIP"))

(smithy/sdk/shapes:define-list internet-fallback-protocol-list :member
                               internet-fallback-protocol)

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-values-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValuesException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-resource-state-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidResourceStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ios2xlogo smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type ios3xlogo smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure ios-client-branding-attributes
                                    common-lisp:nil
                                    ((logo-url :target-type client-url
                                      :member-name "LogoUrl")
                                     (logo2x-url :target-type client-url
                                      :member-name "Logo2xUrl")
                                     (logo3x-url :target-type client-url
                                      :member-name "Logo3xUrl")
                                     (support-email :target-type client-email
                                      :member-name "SupportEmail")
                                     (support-link :target-type client-url
                                      :member-name "SupportLink")
                                     (forgot-password-link :target-type
                                      client-url :member-name
                                      "ForgotPasswordLink")
                                     (login-message :target-type login-message
                                      :member-name "LoginMessage"))
                                    (:shape-name "IosClientBrandingAttributes"))

(smithy/sdk/shapes:define-structure ios-import-client-branding-attributes
                                    common-lisp:nil
                                    ((logo :target-type ios-logo :member-name
                                      "Logo")
                                     (logo2x :target-type ios2xlogo
                                      :member-name "Logo2x")
                                     (logo3x :target-type ios3xlogo
                                      :member-name "Logo3x")
                                     (support-email :target-type client-email
                                      :member-name "SupportEmail")
                                     (support-link :target-type client-url
                                      :member-name "SupportLink")
                                     (forgot-password-link :target-type
                                      client-url :member-name
                                      "ForgotPasswordLink")
                                     (login-message :target-type login-message
                                      :member-name "LoginMessage"))
                                    (:shape-name
                                     "IosImportClientBrandingAttributes"))

(smithy/sdk/shapes:define-type ios-logo smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-group-desc smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-group-id-list :member ip-group-id)

(smithy/sdk/shapes:define-type ip-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-revoked-rule-list :member ip-rule)

(smithy/sdk/shapes:define-type ip-rule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-rule-desc smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ip-rule-item common-lisp:nil
                                    ((ip-rule :target-type ip-rule :member-name
                                      "ipRule")
                                     (rule-desc :target-type ip-rule-desc
                                      :member-name "ruleDesc"))
                                    (:shape-name "IpRuleItem"))

(smithy/sdk/shapes:define-list ip-rule-list :member ip-rule-item)

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type limit50 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type link-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list link-status-filter-list :member
                               account-link-status-enum)

(smithy/sdk/shapes:define-input list-account-links-request common-lisp:nil
                                ((link-status-filter :target-type
                                  link-status-filter-list :member-name
                                  "LinkStatusFilter")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type limit :member-name
                                  "MaxResults"))
                                (:shape-name "ListAccountLinksRequest"))

(smithy/sdk/shapes:define-output list-account-links-result common-lisp:nil
                                 ((account-links :target-type account-link-list
                                   :member-name "AccountLinks")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAccountLinksResult"))

(smithy/sdk/shapes:define-input list-available-management-cidr-ranges-request
                                common-lisp:nil
                                ((management-cidr-range-constraint :target-type
                                  management-cidr-range-constraint :required
                                  common-lisp:t :member-name
                                  "ManagementCidrRangeConstraint")
                                 (max-results :target-type
                                  management-cidr-range-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAvailableManagementCidrRangesRequest"))

(smithy/sdk/shapes:define-output list-available-management-cidr-ranges-result
                                 common-lisp:nil
                                 ((management-cidr-ranges :target-type
                                   dedicated-tenancy-cidr-range-list
                                   :member-name "ManagementCidrRanges")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAvailableManagementCidrRangesResult"))

(smithy/sdk/shapes:define-enum log-upload-enum
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-map login-message :key client-locale :value
                              client-login-message)

(smithy/sdk/shapes:define-type management-cidr-range-constraint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type management-cidr-range-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-user-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-length smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure microsoft-entra-config common-lisp:nil
                                    ((tenant-id :target-type
                                      microsoft-entra-config-tenant-id
                                      :member-name "TenantId")
                                     (application-config-secret-arn
                                      :target-type secrets-manager-arn
                                      :member-name
                                      "ApplicationConfigSecretArn"))
                                    (:shape-name "MicrosoftEntraConfig"))

(smithy/sdk/shapes:define-type microsoft-entra-config-tenant-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input migrate-workspace-request common-lisp:nil
                                ((source-workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "SourceWorkspaceId")
                                 (bundle-id :target-type bundle-id :required
                                  common-lisp:t :member-name "BundleId"))
                                (:shape-name "MigrateWorkspaceRequest"))

(smithy/sdk/shapes:define-output migrate-workspace-result common-lisp:nil
                                 ((source-workspace-id :target-type
                                   workspace-id :member-name
                                   "SourceWorkspaceId")
                                  (target-workspace-id :target-type
                                   workspace-id :member-name
                                   "TargetWorkspaceId"))
                                 (:shape-name "MigrateWorkspaceResult"))

(smithy/sdk/shapes:define-enum modification-resource-enum
    common-lisp:nil
  (:root-volume "ROOT_VOLUME")
  (:user-volume "USER_VOLUME")
  (:compute-type "COMPUTE_TYPE"))

(smithy/sdk/shapes:define-structure modification-state common-lisp:nil
                                    ((resource :target-type
                                      modification-resource-enum :member-name
                                      "Resource")
                                     (state :target-type
                                      modification-state-enum :member-name
                                      "State"))
                                    (:shape-name "ModificationState"))

(smithy/sdk/shapes:define-enum modification-state-enum
    common-lisp:nil
  (:update-initiated "UPDATE_INITIATED")
  (:update-in-progress "UPDATE_IN_PROGRESS"))

(smithy/sdk/shapes:define-list modification-state-list :member
                               modification-state)

(smithy/sdk/shapes:define-input modify-account-request common-lisp:nil
                                ((dedicated-tenancy-support :target-type
                                  dedicated-tenancy-support-enum :member-name
                                  "DedicatedTenancySupport")
                                 (dedicated-tenancy-management-cidr-range
                                  :target-type
                                  dedicated-tenancy-management-cidr-range
                                  :member-name
                                  "DedicatedTenancyManagementCidrRange"))
                                (:shape-name "ModifyAccountRequest"))

(smithy/sdk/shapes:define-output modify-account-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ModifyAccountResult"))

(smithy/sdk/shapes:define-input
 modify-certificate-based-auth-properties-request common-lisp:nil
 ((resource-id :target-type directory-id :required common-lisp:t :member-name
   "ResourceId")
  (certificate-based-auth-properties :target-type
   certificate-based-auth-properties :member-name
   "CertificateBasedAuthProperties")
  (properties-to-delete :target-type
   deletable-certificate-based-auth-properties-list :member-name
   "PropertiesToDelete"))
 (:shape-name "ModifyCertificateBasedAuthPropertiesRequest"))

(smithy/sdk/shapes:define-output
 modify-certificate-based-auth-properties-result common-lisp:nil
 common-lisp:nil (:shape-name "ModifyCertificateBasedAuthPropertiesResult"))

(smithy/sdk/shapes:define-input modify-client-properties-request
                                common-lisp:nil
                                ((resource-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (client-properties :target-type
                                  client-properties :required common-lisp:t
                                  :member-name "ClientProperties"))
                                (:shape-name "ModifyClientPropertiesRequest"))

(smithy/sdk/shapes:define-output modify-client-properties-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ModifyClientPropertiesResult"))

(smithy/sdk/shapes:define-input modify-endpoint-encryption-mode-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (endpoint-encryption-mode :target-type
                                  endpoint-encryption-mode :required
                                  common-lisp:t :member-name
                                  "EndpointEncryptionMode"))
                                (:shape-name
                                 "ModifyEndpointEncryptionModeRequest"))

(smithy/sdk/shapes:define-output modify-endpoint-encryption-mode-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifyEndpointEncryptionModeResponse"))

(smithy/sdk/shapes:define-input modify-saml-properties-request common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (saml-properties :target-type saml-properties
                                  :member-name "SamlProperties")
                                 (properties-to-delete :target-type
                                  deletable-saml-properties-list :member-name
                                  "PropertiesToDelete"))
                                (:shape-name "ModifySamlPropertiesRequest"))

(smithy/sdk/shapes:define-output modify-saml-properties-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ModifySamlPropertiesResult"))

(smithy/sdk/shapes:define-input modify-selfservice-permissions-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (selfservice-permissions :target-type
                                  selfservice-permissions :required
                                  common-lisp:t :member-name
                                  "SelfservicePermissions"))
                                (:shape-name
                                 "ModifySelfservicePermissionsRequest"))

(smithy/sdk/shapes:define-output modify-selfservice-permissions-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifySelfservicePermissionsResult"))

(smithy/sdk/shapes:define-input modify-streaming-properties-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (streaming-properties :target-type
                                  streaming-properties :member-name
                                  "StreamingProperties"))
                                (:shape-name
                                 "ModifyStreamingPropertiesRequest"))

(smithy/sdk/shapes:define-output modify-streaming-properties-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifyStreamingPropertiesResult"))

(smithy/sdk/shapes:define-input modify-workspace-access-properties-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (workspace-access-properties :target-type
                                  workspace-access-properties :required
                                  common-lisp:t :member-name
                                  "WorkspaceAccessProperties"))
                                (:shape-name
                                 "ModifyWorkspaceAccessPropertiesRequest"))

(smithy/sdk/shapes:define-output modify-workspace-access-properties-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifyWorkspaceAccessPropertiesResult"))

(smithy/sdk/shapes:define-input modify-workspace-creation-properties-request
                                common-lisp:nil
                                ((resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (workspace-creation-properties :target-type
                                  workspace-creation-properties :required
                                  common-lisp:t :member-name
                                  "WorkspaceCreationProperties"))
                                (:shape-name
                                 "ModifyWorkspaceCreationPropertiesRequest"))

(smithy/sdk/shapes:define-output modify-workspace-creation-properties-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifyWorkspaceCreationPropertiesResult"))

(smithy/sdk/shapes:define-input modify-workspace-properties-request
                                common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (workspace-properties :target-type
                                  workspace-properties :member-name
                                  "WorkspaceProperties")
                                 (data-replication :target-type
                                  data-replication :member-name
                                  "DataReplication"))
                                (:shape-name
                                 "ModifyWorkspacePropertiesRequest"))

(smithy/sdk/shapes:define-output modify-workspace-properties-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ModifyWorkspacePropertiesResult"))

(smithy/sdk/shapes:define-input modify-workspace-state-request common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId")
                                 (workspace-state :target-type
                                  target-workspace-state :required
                                  common-lisp:t :member-name "WorkspaceState"))
                                (:shape-name "ModifyWorkspaceStateRequest"))

(smithy/sdk/shapes:define-output modify-workspace-state-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ModifyWorkspaceStateResult"))

(smithy/sdk/shapes:define-structure network-access-configuration
                                    common-lisp:nil
                                    ((eni-private-ip-address :target-type
                                      non-empty-string :member-name
                                      "EniPrivateIpAddress")
                                     (eni-id :target-type non-empty-string
                                      :member-name "EniId"))
                                    (:shape-name "NetworkAccessConfiguration"))

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure operating-system common-lisp:nil
                                    ((type :target-type operating-system-type
                                      :member-name "Type"))
                                    (:shape-name "OperatingSystem"))

(smithy/sdk/shapes:define-enum operating-system-name
    common-lisp:nil
  (:amazon-linux-2 "AMAZON_LINUX_2")
  (:ubuntu-18-04 "UBUNTU_18_04")
  (:ubuntu-20-04 "UBUNTU_20_04")
  (:ubuntu-22-04 "UBUNTU_22_04")
  (:unknown "UNKNOWN")
  (:windows-10 "WINDOWS_10")
  (:windows-11 "WINDOWS_11")
  (:windows-7 "WINDOWS_7")
  (:windows-server-2016 "WINDOWS_SERVER_2016")
  (:windows-server-2019 "WINDOWS_SERVER_2019")
  (:windows-server-2022 "WINDOWS_SERVER_2022")
  (:rhel-8 "RHEL_8")
  (:rocky-8 "ROCKY_8"))

(smithy/sdk/shapes:define-list operating-system-name-list :member
                               operating-system-name)

(smithy/sdk/shapes:define-error operating-system-not-compatible-exception
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "OperatingSystemNotCompatibleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum operating-system-type
    common-lisp:nil
  (:windows "WINDOWS")
  (:linux "LINUX"))

(smithy/sdk/shapes:define-error operation-in-progress-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "OperationInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error operation-not-supported-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (reason :target-type exception-error-code
                                  :member-name "reason"))
                                (:shape-name "OperationNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pending-create-standby-workspaces-request
                                    common-lisp:nil
                                    ((user-name :target-type user-name
                                      :member-name "UserName")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (state :target-type workspace-state
                                      :member-name "State")
                                     (workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId"))
                                    (:shape-name
                                     "PendingCreateStandbyWorkspacesRequest"))

(smithy/sdk/shapes:define-list pending-create-standby-workspaces-request-list
                               :member
                               pending-create-standby-workspaces-request)

(smithy/sdk/shapes:define-enum pools-running-mode
    common-lisp:nil
  (:auto-stop "AUTO_STOP")
  (:always-on "ALWAYS_ON"))

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:pcoip "PCOIP")
  (:wsp "WSP"))

(smithy/sdk/shapes:define-list protocol-list :member protocol)

(smithy/sdk/shapes:define-structure reboot-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "WorkspaceId"))
                                    (:shape-name "RebootRequest"))

(smithy/sdk/shapes:define-list reboot-workspace-requests :member reboot-request)

(smithy/sdk/shapes:define-input reboot-workspaces-request common-lisp:nil
                                ((reboot-workspace-requests :target-type
                                  reboot-workspace-requests :required
                                  common-lisp:t :member-name
                                  "RebootWorkspaceRequests"))
                                (:shape-name "RebootWorkspacesRequest"))

(smithy/sdk/shapes:define-output reboot-workspaces-result common-lisp:nil
                                 ((failed-requests :target-type
                                   failed-reboot-workspace-requests
                                   :member-name "FailedRequests"))
                                 (:shape-name "RebootWorkspacesResult"))

(smithy/sdk/shapes:define-structure rebuild-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "WorkspaceId"))
                                    (:shape-name "RebuildRequest"))

(smithy/sdk/shapes:define-list rebuild-workspace-requests :member
                               rebuild-request)

(smithy/sdk/shapes:define-input rebuild-workspaces-request common-lisp:nil
                                ((rebuild-workspace-requests :target-type
                                  rebuild-workspace-requests :required
                                  common-lisp:t :member-name
                                  "RebuildWorkspaceRequests"))
                                (:shape-name "RebuildWorkspacesRequest"))

(smithy/sdk/shapes:define-output rebuild-workspaces-result common-lisp:nil
                                 ((failed-requests :target-type
                                   failed-rebuild-workspace-requests
                                   :member-name "FailedRequests"))
                                 (:shape-name "RebuildWorkspacesResult"))

(smithy/sdk/shapes:define-enum reconnect-enum
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-workspace-directory-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (subnet-ids :target-type subnet-ids
                                  :member-name "SubnetIds")
                                 (enable-self-service :target-type
                                  boolean-object :member-name
                                  "EnableSelfService")
                                 (tenancy :target-type tenancy :member-name
                                  "Tenancy")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (workspace-directory-name :target-type
                                  workspace-directory-name :member-name
                                  "WorkspaceDirectoryName")
                                 (workspace-directory-description :target-type
                                  workspace-directory-description :member-name
                                  "WorkspaceDirectoryDescription")
                                 (user-identity-type :target-type
                                  user-identity-type :member-name
                                  "UserIdentityType")
                                 (idc-instance-arn :target-type arn
                                  :member-name "IdcInstanceArn")
                                 (microsoft-entra-config :target-type
                                  microsoft-entra-config :member-name
                                  "MicrosoftEntraConfig")
                                 (workspace-type :target-type workspace-type
                                  :member-name "WorkspaceType")
                                 (active-directory-config :target-type
                                  active-directory-config :member-name
                                  "ActiveDirectoryConfig"))
                                (:shape-name
                                 "RegisterWorkspaceDirectoryRequest"))

(smithy/sdk/shapes:define-output register-workspace-directory-result
                                 common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (state :target-type workspace-directory-state
                                   :member-name "State"))
                                 (:shape-name
                                  "RegisterWorkspaceDirectoryResult"))

(smithy/sdk/shapes:define-type registration-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reject-account-link-invitation-request
                                common-lisp:nil
                                ((link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "RejectAccountLinkInvitationRequest"))

(smithy/sdk/shapes:define-output reject-account-link-invitation-result
                                 common-lisp:nil
                                 ((account-link :target-type account-link
                                   :member-name "AccountLink"))
                                 (:shape-name
                                  "RejectAccountLinkInvitationResult"))

(smithy/sdk/shapes:define-structure related-workspace-properties
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId")
                                     (region :target-type region :member-name
                                      "Region")
                                     (state :target-type workspace-state
                                      :member-name "State")
                                     (type :target-type
                                      standby-workspace-relationship-type
                                      :member-name "Type"))
                                    (:shape-name "RelatedWorkspaceProperties"))

(smithy/sdk/shapes:define-list related-workspaces :member
                               related-workspace-properties)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-associated-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceAssociatedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-creation-failed-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceCreationFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list resource-id-list :member non-empty-string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type non-empty-string
                                  :member-name "ResourceId"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type non-empty-string
                                  :member-name "ResourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type non-empty-string
                                  :member-name "ResourceId"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input restore-workspace-request common-lisp:nil
                                ((workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "WorkspaceId"))
                                (:shape-name "RestoreWorkspaceRequest"))

(smithy/sdk/shapes:define-output restore-workspace-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RestoreWorkspaceResult"))

(smithy/sdk/shapes:define-input revoke-ip-rules-request common-lisp:nil
                                ((group-id :target-type ip-group-id :required
                                  common-lisp:t :member-name "GroupId")
                                 (user-rules :target-type ip-revoked-rule-list
                                  :required common-lisp:t :member-name
                                  "UserRules"))
                                (:shape-name "RevokeIpRulesRequest"))

(smithy/sdk/shapes:define-output revoke-ip-rules-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RevokeIpRulesResult"))

(smithy/sdk/shapes:define-structure root-storage common-lisp:nil
                                    ((capacity :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "Capacity"))
                                    (:shape-name "RootStorage"))

(smithy/sdk/shapes:define-type root-volume-size-gib
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum running-mode
    common-lisp:nil
  (:auto-stop "AUTO_STOP")
  (:always-on "ALWAYS_ON")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-type running-mode-auto-stop-timeout-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saml-properties common-lisp:nil
                                    ((status :target-type saml-status-enum
                                      :member-name "Status")
                                     (user-access-url :target-type
                                      saml-user-access-url :member-name
                                      "UserAccessUrl")
                                     (relay-state-parameter-name :target-type
                                      non-empty-string :member-name
                                      "RelayStateParameterName"))
                                    (:shape-name "SamlProperties"))

(smithy/sdk/shapes:define-enum saml-status-enum
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:enabled-with-directory-login-fallback
   "ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK"))

(smithy/sdk/shapes:define-type saml-user-access-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secrets-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure selfservice-permissions common-lisp:nil
                                    ((restart-workspace :target-type
                                      reconnect-enum :member-name
                                      "RestartWorkspace")
                                     (increase-volume-size :target-type
                                      reconnect-enum :member-name
                                      "IncreaseVolumeSize")
                                     (change-compute-type :target-type
                                      reconnect-enum :member-name
                                      "ChangeComputeType")
                                     (switch-running-mode :target-type
                                      reconnect-enum :member-name
                                      "SwitchRunningMode")
                                     (rebuild-workspace :target-type
                                      reconnect-enum :member-name
                                      "RebuildWorkspace"))
                                    (:shape-name "SelfservicePermissions"))

(smithy/sdk/shapes:define-enum session-connection-state
    common-lisp:nil
  (:connected "CONNECTED")
  (:not-connected "NOT_CONNECTED"))

(smithy/sdk/shapes:define-type session-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type settings-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((snapshot-time :target-type timestamp
                                      :member-name "SnapshotTime"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-list snapshot-list :member snapshot)

(smithy/sdk/shapes:define-structure standby-workspace common-lisp:nil
                                    ((primary-workspace-id :target-type
                                      workspace-id :required common-lisp:t
                                      :member-name "PrimaryWorkspaceId")
                                     (volume-encryption-key :target-type
                                      volume-encryption-key :member-name
                                      "VolumeEncryptionKey")
                                     (directory-id :target-type directory-id
                                      :required common-lisp:t :member-name
                                      "DirectoryId")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (data-replication :target-type
                                      data-replication :member-name
                                      "DataReplication"))
                                    (:shape-name "StandbyWorkspace"))

(smithy/sdk/shapes:define-enum standby-workspace-relationship-type
    common-lisp:nil
  (:primary "PRIMARY")
  (:standby "STANDBY"))

(smithy/sdk/shapes:define-list standby-workspaces-list :member
                               standby-workspace)

(smithy/sdk/shapes:define-structure standby-workspaces-properties
                                    common-lisp:nil
                                    ((standby-workspace-id :target-type
                                      workspace-id :member-name
                                      "StandbyWorkspaceId")
                                     (data-replication :target-type
                                      data-replication :member-name
                                      "DataReplication")
                                     (recovery-snapshot-time :target-type
                                      timestamp :member-name
                                      "RecoverySnapshotTime"))
                                    (:shape-name "StandbyWorkspacesProperties"))

(smithy/sdk/shapes:define-list standby-workspaces-properties-list :member
                               standby-workspaces-properties)

(smithy/sdk/shapes:define-structure start-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId"))
                                    (:shape-name "StartRequest"))

(smithy/sdk/shapes:define-list start-workspace-requests :member start-request)

(smithy/sdk/shapes:define-input start-workspaces-pool-request common-lisp:nil
                                ((pool-id :target-type workspaces-pool-id
                                  :required common-lisp:t :member-name
                                  "PoolId"))
                                (:shape-name "StartWorkspacesPoolRequest"))

(smithy/sdk/shapes:define-output start-workspaces-pool-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartWorkspacesPoolResult"))

(smithy/sdk/shapes:define-input start-workspaces-request common-lisp:nil
                                ((start-workspace-requests :target-type
                                  start-workspace-requests :required
                                  common-lisp:t :member-name
                                  "StartWorkspaceRequests"))
                                (:shape-name "StartWorkspacesRequest"))

(smithy/sdk/shapes:define-output start-workspaces-result common-lisp:nil
                                 ((failed-requests :target-type
                                   failed-start-workspace-requests :member-name
                                   "FailedRequests"))
                                 (:shape-name "StartWorkspacesResult"))

(smithy/sdk/shapes:define-structure stop-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId"))
                                    (:shape-name "StopRequest"))

(smithy/sdk/shapes:define-list stop-workspace-requests :member stop-request)

(smithy/sdk/shapes:define-input stop-workspaces-pool-request common-lisp:nil
                                ((pool-id :target-type workspaces-pool-id
                                  :required common-lisp:t :member-name
                                  "PoolId"))
                                (:shape-name "StopWorkspacesPoolRequest"))

(smithy/sdk/shapes:define-output stop-workspaces-pool-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopWorkspacesPoolResult"))

(smithy/sdk/shapes:define-input stop-workspaces-request common-lisp:nil
                                ((stop-workspace-requests :target-type
                                  stop-workspace-requests :required
                                  common-lisp:t :member-name
                                  "StopWorkspaceRequests"))
                                (:shape-name "StopWorkspacesRequest"))

(smithy/sdk/shapes:define-output stop-workspaces-result common-lisp:nil
                                 ((failed-requests :target-type
                                   failed-stop-workspace-requests :member-name
                                   "FailedRequests"))
                                 (:shape-name "StopWorkspacesResult"))

(smithy/sdk/shapes:define-structure storage-connector common-lisp:nil
                                    ((connector-type :target-type
                                      storage-connector-type-enum :required
                                      common-lisp:t :member-name
                                      "ConnectorType")
                                     (status :target-type
                                      storage-connector-status-enum :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "StorageConnector"))

(smithy/sdk/shapes:define-enum storage-connector-status-enum
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum storage-connector-type-enum
    common-lisp:nil
  (:home-folder "HOME_FOLDER"))

(smithy/sdk/shapes:define-list storage-connectors :member storage-connector)

(smithy/sdk/shapes:define-enum streaming-experience-preferred-protocol-enum
    common-lisp:nil
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-structure streaming-properties common-lisp:nil
                                    ((streaming-experience-preferred-protocol
                                      :target-type
                                      streaming-experience-preferred-protocol-enum
                                      :member-name
                                      "StreamingExperiencePreferredProtocol")
                                     (user-settings :target-type user-settings
                                      :member-name "UserSettings")
                                     (storage-connectors :target-type
                                      storage-connectors :member-name
                                      "StorageConnectors")
                                     (global-accelerator :target-type
                                      global-accelerator-for-directory
                                      :member-name "GlobalAccelerator"))
                                    (:shape-name "StreamingProperties"))

(smithy/sdk/shapes:define-type string2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member non-empty-string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-workspace-state
    common-lisp:nil
  (:available "AVAILABLE")
  (:admin-maintenance "ADMIN_MAINTENANCE"))

(smithy/sdk/shapes:define-enum tenancy
    common-lisp:nil
  (:dedicated "DEDICATED")
  (:shared "SHARED"))

(smithy/sdk/shapes:define-structure terminate-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "WorkspaceId"))
                                    (:shape-name "TerminateRequest"))

(smithy/sdk/shapes:define-list terminate-workspace-requests :member
                               terminate-request)

(smithy/sdk/shapes:define-input terminate-workspaces-pool-request
                                common-lisp:nil
                                ((pool-id :target-type workspaces-pool-id
                                  :required common-lisp:t :member-name
                                  "PoolId"))
                                (:shape-name "TerminateWorkspacesPoolRequest"))

(smithy/sdk/shapes:define-output terminate-workspaces-pool-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "TerminateWorkspacesPoolResult"))

(smithy/sdk/shapes:define-input terminate-workspaces-pool-session-request
                                common-lisp:nil
                                ((session-id :target-type amazon-uuid :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name
                                 "TerminateWorkspacesPoolSessionRequest"))

(smithy/sdk/shapes:define-output terminate-workspaces-pool-session-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "TerminateWorkspacesPoolSessionResult"))

(smithy/sdk/shapes:define-input terminate-workspaces-request common-lisp:nil
                                ((terminate-workspace-requests :target-type
                                  terminate-workspace-requests :required
                                  common-lisp:t :member-name
                                  "TerminateWorkspaceRequests"))
                                (:shape-name "TerminateWorkspacesRequest"))

(smithy/sdk/shapes:define-output terminate-workspaces-result common-lisp:nil
                                 ((failed-requests :target-type
                                   failed-terminate-workspace-requests
                                   :member-name "FailedRequests"))
                                 (:shape-name "TerminateWorkspacesResult"))

(smithy/sdk/shapes:define-structure timeout-settings common-lisp:nil
                                    ((disconnect-timeout-in-seconds
                                      :target-type
                                      disconnect-timeout-in-seconds
                                      :member-name
                                      "DisconnectTimeoutInSeconds")
                                     (idle-disconnect-timeout-in-seconds
                                      :target-type
                                      idle-disconnect-timeout-in-seconds
                                      :member-name
                                      "IdleDisconnectTimeoutInSeconds")
                                     (max-user-duration-in-seconds :target-type
                                      max-user-duration-in-seconds :member-name
                                      "MaxUserDurationInSeconds"))
                                    (:shape-name "TimeoutSettings"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error unsupported-network-configuration-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnsupportedNetworkConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-workspace-configuration-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnsupportedWorkspaceConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-connect-client-add-in-request
                                common-lisp:nil
                                ((add-in-id :target-type amazon-uuid :required
                                  common-lisp:t :member-name "AddInId")
                                 (resource-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (name :target-type add-in-name :member-name
                                  "Name")
                                 (url :target-type add-in-url :member-name
                                  "URL"))
                                (:shape-name "UpdateConnectClientAddInRequest"))

(smithy/sdk/shapes:define-output update-connect-client-add-in-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateConnectClientAddInResult"))

(smithy/sdk/shapes:define-input update-connection-alias-permission-request
                                common-lisp:nil
                                ((alias-id :target-type connection-alias-id
                                  :required common-lisp:t :member-name
                                  "AliasId")
                                 (connection-alias-permission :target-type
                                  connection-alias-permission :required
                                  common-lisp:t :member-name
                                  "ConnectionAliasPermission"))
                                (:shape-name
                                 "UpdateConnectionAliasPermissionRequest"))

(smithy/sdk/shapes:define-output update-connection-alias-permission-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateConnectionAliasPermissionResult"))

(smithy/sdk/shapes:define-type update-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-result common-lisp:nil
                                    ((update-available :target-type
                                      boolean-object :member-name
                                      "UpdateAvailable")
                                     (description :target-type
                                      update-description :member-name
                                      "Description"))
                                    (:shape-name "UpdateResult"))

(smithy/sdk/shapes:define-input update-rules-of-ip-group-request
                                common-lisp:nil
                                ((group-id :target-type ip-group-id :required
                                  common-lisp:t :member-name "GroupId")
                                 (user-rules :target-type ip-rule-list
                                  :required common-lisp:t :member-name
                                  "UserRules"))
                                (:shape-name "UpdateRulesOfIpGroupRequest"))

(smithy/sdk/shapes:define-output update-rules-of-ip-group-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateRulesOfIpGroupResult"))

(smithy/sdk/shapes:define-input update-workspace-bundle-request common-lisp:nil
                                ((bundle-id :target-type bundle-id :member-name
                                  "BundleId")
                                 (image-id :target-type workspace-image-id
                                  :member-name "ImageId"))
                                (:shape-name "UpdateWorkspaceBundleRequest"))

(smithy/sdk/shapes:define-output update-workspace-bundle-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateWorkspaceBundleResult"))

(smithy/sdk/shapes:define-input update-workspace-image-permission-request
                                common-lisp:nil
                                ((image-id :target-type workspace-image-id
                                  :required common-lisp:t :member-name
                                  "ImageId")
                                 (allow-copy-image :target-type boolean-object
                                  :required common-lisp:t :member-name
                                  "AllowCopyImage")
                                 (shared-account-id :target-type aws-account
                                  :required common-lisp:t :member-name
                                  "SharedAccountId"))
                                (:shape-name
                                 "UpdateWorkspaceImagePermissionRequest"))

(smithy/sdk/shapes:define-output update-workspace-image-permission-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateWorkspaceImagePermissionResult"))

(smithy/sdk/shapes:define-input update-workspaces-pool-request common-lisp:nil
                                ((pool-id :target-type workspaces-pool-id
                                  :required common-lisp:t :member-name
                                  "PoolId")
                                 (description :target-type update-description
                                  :member-name "Description")
                                 (bundle-id :target-type bundle-id :member-name
                                  "BundleId")
                                 (directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (capacity :target-type capacity :member-name
                                  "Capacity")
                                 (application-settings :target-type
                                  application-settings-request :member-name
                                  "ApplicationSettings")
                                 (timeout-settings :target-type
                                  timeout-settings :member-name
                                  "TimeoutSettings")
                                 (running-mode :target-type pools-running-mode
                                  :member-name "RunningMode"))
                                (:shape-name "UpdateWorkspacesPoolRequest"))

(smithy/sdk/shapes:define-output update-workspaces-pool-result common-lisp:nil
                                 ((workspaces-pool :target-type workspaces-pool
                                   :member-name "WorkspacesPool"))
                                 (:shape-name "UpdateWorkspacesPoolResult"))

(smithy/sdk/shapes:define-enum user-identity-type
    common-lisp:nil
  (:customer-managed "CUSTOMER_MANAGED")
  (:aws-directory-service "AWS_DIRECTORY_SERVICE")
  (:aws-iam-identity-center "AWS_IAM_IDENTITY_CENTER"))

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-setting common-lisp:nil
                                    ((action :target-type
                                      user-setting-action-enum :required
                                      common-lisp:t :member-name "Action")
                                     (permission :target-type
                                      user-setting-permission-enum :required
                                      common-lisp:t :member-name "Permission")
                                     (maximum-length :target-type
                                      maximum-length :member-name
                                      "MaximumLength"))
                                    (:shape-name "UserSetting"))

(smithy/sdk/shapes:define-enum user-setting-action-enum
    common-lisp:nil
  (:clipboard-copy-from-local-device "CLIPBOARD_COPY_FROM_LOCAL_DEVICE")
  (:clipboard-copy-to-local-device "CLIPBOARD_COPY_TO_LOCAL_DEVICE")
  (:printing-to-local-device "PRINTING_TO_LOCAL_DEVICE")
  (:smart-card "SMART_CARD"))

(smithy/sdk/shapes:define-enum user-setting-permission-enum
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list user-settings :member user-setting)

(smithy/sdk/shapes:define-structure user-storage common-lisp:nil
                                    ((capacity :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "Capacity"))
                                    (:shape-name "UserStorage"))

(smithy/sdk/shapes:define-type user-volume-size-gib
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type volume-encryption-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure work-space-application common-lisp:nil
                                    ((application-id :target-type
                                      work-space-application-id :member-name
                                      "ApplicationId")
                                     (created :target-type timestamp
                                      :member-name "Created")
                                     (description :target-type string2048
                                      :member-name "Description")
                                     (license-type :target-type
                                      work-space-application-license-type
                                      :member-name "LicenseType")
                                     (name :target-type non-empty-string
                                      :member-name "Name")
                                     (owner :target-type
                                      work-space-application-owner :member-name
                                      "Owner")
                                     (state :target-type
                                      work-space-application-state :member-name
                                      "State")
                                     (supported-compute-type-names :target-type
                                      compute-list :member-name
                                      "SupportedComputeTypeNames")
                                     (supported-operating-system-names
                                      :target-type operating-system-name-list
                                      :member-name
                                      "SupportedOperatingSystemNames"))
                                    (:shape-name "WorkSpaceApplication"))

(smithy/sdk/shapes:define-structure work-space-application-deployment
                                    common-lisp:nil
                                    ((associations :target-type
                                      workspace-resource-association-list
                                      :member-name "Associations"))
                                    (:shape-name
                                     "WorkSpaceApplicationDeployment"))

(smithy/sdk/shapes:define-type work-space-application-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list work-space-application-id-list :member
                               work-space-application-id)

(smithy/sdk/shapes:define-enum work-space-application-license-type
    common-lisp:nil
  (:licensed "LICENSED")
  (:unlicensed "UNLICENSED"))

(smithy/sdk/shapes:define-list work-space-application-list :member
                               work-space-application)

(smithy/sdk/shapes:define-type work-space-application-owner
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum work-space-application-state
    common-lisp:nil
  (:pending "PENDING")
  (:error "ERROR")
  (:available "AVAILABLE")
  (:uninstall-only "UNINSTALL_ONLY"))

(smithy/sdk/shapes:define-enum work-space-associated-resource-type
    common-lisp:nil
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-list work-space-associated-resource-type-list :member
                               work-space-associated-resource-type)

(smithy/sdk/shapes:define-structure workspace common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (user-name :target-type user-name
                                      :member-name "UserName")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (state :target-type workspace-state
                                      :member-name "State")
                                     (bundle-id :target-type bundle-id
                                      :member-name "BundleId")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage")
                                     (error-code :target-type
                                      workspace-error-code :member-name
                                      "ErrorCode")
                                     (computer-name :target-type computer-name
                                      :member-name "ComputerName")
                                     (volume-encryption-key :target-type
                                      volume-encryption-key :member-name
                                      "VolumeEncryptionKey")
                                     (user-volume-encryption-enabled
                                      :target-type boolean-object :member-name
                                      "UserVolumeEncryptionEnabled")
                                     (root-volume-encryption-enabled
                                      :target-type boolean-object :member-name
                                      "RootVolumeEncryptionEnabled")
                                     (workspace-name :target-type
                                      workspace-name :member-name
                                      "WorkspaceName")
                                     (workspace-properties :target-type
                                      workspace-properties :member-name
                                      "WorkspaceProperties")
                                     (modification-states :target-type
                                      modification-state-list :member-name
                                      "ModificationStates")
                                     (related-workspaces :target-type
                                      related-workspaces :member-name
                                      "RelatedWorkspaces")
                                     (data-replication-settings :target-type
                                      data-replication-settings :member-name
                                      "DataReplicationSettings")
                                     (standby-workspaces-properties
                                      :target-type
                                      standby-workspaces-properties-list
                                      :member-name
                                      "StandbyWorkspacesProperties"))
                                    (:shape-name "Workspace"))

(smithy/sdk/shapes:define-structure workspace-access-properties common-lisp:nil
                                    ((device-type-windows :target-type
                                      access-property-value :member-name
                                      "DeviceTypeWindows")
                                     (device-type-osx :target-type
                                      access-property-value :member-name
                                      "DeviceTypeOsx")
                                     (device-type-web :target-type
                                      access-property-value :member-name
                                      "DeviceTypeWeb")
                                     (device-type-ios :target-type
                                      access-property-value :member-name
                                      "DeviceTypeIos")
                                     (device-type-android :target-type
                                      access-property-value :member-name
                                      "DeviceTypeAndroid")
                                     (device-type-chrome-os :target-type
                                      access-property-value :member-name
                                      "DeviceTypeChromeOs")
                                     (device-type-zero-client :target-type
                                      access-property-value :member-name
                                      "DeviceTypeZeroClient")
                                     (device-type-linux :target-type
                                      access-property-value :member-name
                                      "DeviceTypeLinux")
                                     (device-type-work-spaces-thin-client
                                      :target-type access-property-value
                                      :member-name
                                      "DeviceTypeWorkSpacesThinClient")
                                     (access-endpoint-config :target-type
                                      access-endpoint-config :member-name
                                      "AccessEndpointConfig"))
                                    (:shape-name "WorkspaceAccessProperties"))

(smithy/sdk/shapes:define-structure workspace-bundle common-lisp:nil
                                    ((bundle-id :target-type bundle-id
                                      :member-name "BundleId")
                                     (name :target-type non-empty-string
                                      :member-name "Name")
                                     (owner :target-type bundle-owner
                                      :member-name "Owner")
                                     (description :target-type description
                                      :member-name "Description")
                                     (image-id :target-type workspace-image-id
                                      :member-name "ImageId")
                                     (root-storage :target-type root-storage
                                      :member-name "RootStorage")
                                     (user-storage :target-type user-storage
                                      :member-name "UserStorage")
                                     (compute-type :target-type compute-type
                                      :member-name "ComputeType")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (creation-time :target-type timestamp
                                      :member-name "CreationTime")
                                     (state :target-type workspace-bundle-state
                                      :member-name "State")
                                     (bundle-type :target-type bundle-type
                                      :member-name "BundleType"))
                                    (:shape-name "WorkspaceBundle"))

(smithy/sdk/shapes:define-type workspace-bundle-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workspace-bundle-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workspace-bundle-state
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending "PENDING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure workspace-connection-status common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId")
                                     (connection-state :target-type
                                      connection-state :member-name
                                      "ConnectionState")
                                     (connection-state-check-timestamp
                                      :target-type timestamp :member-name
                                      "ConnectionStateCheckTimestamp")
                                     (last-known-user-connection-timestamp
                                      :target-type timestamp :member-name
                                      "LastKnownUserConnectionTimestamp"))
                                    (:shape-name "WorkspaceConnectionStatus"))

(smithy/sdk/shapes:define-list workspace-connection-status-list :member
                               workspace-connection-status)

(smithy/sdk/shapes:define-structure workspace-creation-properties
                                    common-lisp:nil
                                    ((enable-internet-access :target-type
                                      boolean-object :member-name
                                      "EnableInternetAccess")
                                     (default-ou :target-type default-ou
                                      :member-name "DefaultOu")
                                     (custom-security-group-id :target-type
                                      security-group-id :member-name
                                      "CustomSecurityGroupId")
                                     (user-enabled-as-local-administrator
                                      :target-type boolean-object :member-name
                                      "UserEnabledAsLocalAdministrator")
                                     (enable-maintenance-mode :target-type
                                      boolean-object :member-name
                                      "EnableMaintenanceMode")
                                     (instance-iam-role-arn :target-type arn
                                      :member-name "InstanceIamRoleArn"))
                                    (:shape-name "WorkspaceCreationProperties"))

(smithy/sdk/shapes:define-structure workspace-directory common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (alias :target-type alias :member-name
                                      "Alias")
                                     (directory-name :target-type
                                      directory-name :member-name
                                      "DirectoryName")
                                     (registration-code :target-type
                                      registration-code :member-name
                                      "RegistrationCode")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (dns-ip-addresses :target-type
                                      dns-ip-addresses :member-name
                                      "DnsIpAddresses")
                                     (customer-user-name :target-type user-name
                                      :member-name "CustomerUserName")
                                     (iam-role-id :target-type arn :member-name
                                      "IamRoleId")
                                     (directory-type :target-type
                                      workspace-directory-type :member-name
                                      "DirectoryType")
                                     (workspace-security-group-id :target-type
                                      security-group-id :member-name
                                      "WorkspaceSecurityGroupId")
                                     (state :target-type
                                      workspace-directory-state :member-name
                                      "State")
                                     (workspace-creation-properties
                                      :target-type
                                      default-workspace-creation-properties
                                      :member-name
                                      "WorkspaceCreationProperties")
                                     (ip-group-ids :target-type
                                      ip-group-id-list :member-name
                                      "ipGroupIds")
                                     (workspace-access-properties :target-type
                                      workspace-access-properties :member-name
                                      "WorkspaceAccessProperties")
                                     (tenancy :target-type tenancy :member-name
                                      "Tenancy")
                                     (selfservice-permissions :target-type
                                      selfservice-permissions :member-name
                                      "SelfservicePermissions")
                                     (saml-properties :target-type
                                      saml-properties :member-name
                                      "SamlProperties")
                                     (certificate-based-auth-properties
                                      :target-type
                                      certificate-based-auth-properties
                                      :member-name
                                      "CertificateBasedAuthProperties")
                                     (endpoint-encryption-mode :target-type
                                      endpoint-encryption-mode :member-name
                                      "EndpointEncryptionMode")
                                     (microsoft-entra-config :target-type
                                      microsoft-entra-config :member-name
                                      "MicrosoftEntraConfig")
                                     (workspace-directory-name :target-type
                                      workspace-directory-name :member-name
                                      "WorkspaceDirectoryName")
                                     (workspace-directory-description
                                      :target-type
                                      workspace-directory-description
                                      :member-name
                                      "WorkspaceDirectoryDescription")
                                     (user-identity-type :target-type
                                      user-identity-type :member-name
                                      "UserIdentityType")
                                     (workspace-type :target-type
                                      workspace-type :member-name
                                      "WorkspaceType")
                                     (idcconfig :target-type idcconfig
                                      :member-name "IDCConfig")
                                     (active-directory-config :target-type
                                      active-directory-config :member-name
                                      "ActiveDirectoryConfig")
                                     (streaming-properties :target-type
                                      streaming-properties :member-name
                                      "StreamingProperties")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage"))
                                    (:shape-name "WorkspaceDirectory"))

(smithy/sdk/shapes:define-type workspace-directory-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workspace-directory-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspace-directory-name-list :member
                               workspace-directory-name)

(smithy/sdk/shapes:define-enum workspace-directory-state
    common-lisp:nil
  (:registering "REGISTERING")
  (:registered "REGISTERED")
  (:deregistering "DEREGISTERING")
  (:deregistered "DEREGISTERED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum workspace-directory-type
    common-lisp:nil
  (:simple-ad "SIMPLE_AD")
  (:ad-connector "AD_CONNECTOR")
  (:customer-managed "CUSTOMER_MANAGED")
  (:aws-iam-identity-center "AWS_IAM_IDENTITY_CENTER"))

(smithy/sdk/shapes:define-type workspace-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workspace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspace-id-list :member workspace-id)

(smithy/sdk/shapes:define-structure workspace-image common-lisp:nil
                                    ((image-id :target-type workspace-image-id
                                      :member-name "ImageId")
                                     (name :target-type workspace-image-name
                                      :member-name "Name")
                                     (description :target-type
                                      workspace-image-description :member-name
                                      "Description")
                                     (operating-system :target-type
                                      operating-system :member-name
                                      "OperatingSystem")
                                     (state :target-type workspace-image-state
                                      :member-name "State")
                                     (required-tenancy :target-type
                                      workspace-image-required-tenancy
                                      :member-name "RequiredTenancy")
                                     (error-code :target-type
                                      workspace-image-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type description
                                      :member-name "ErrorMessage")
                                     (created :target-type timestamp
                                      :member-name "Created")
                                     (owner-account-id :target-type aws-account
                                      :member-name "OwnerAccountId")
                                     (updates :target-type update-result
                                      :member-name "Updates")
                                     (error-details :target-type
                                      error-details-list :member-name
                                      "ErrorDetails"))
                                    (:shape-name "WorkspaceImage"))

(smithy/sdk/shapes:define-type workspace-image-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workspace-image-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workspace-image-error-detail-code
    common-lisp:nil
  (:outdated-powershell-version "OutdatedPowershellVersion")
  (:office-installed "OfficeInstalled")
  (:pcoip-agent-installed "PCoIPAgentInstalled")
  (:windows-updates-enabled "WindowsUpdatesEnabled")
  (:auto-mount-disabled "AutoMountDisabled")
  (:workspaces-byol-account-not-found "WorkspacesBYOLAccountNotFound")
  (:workspaces-byol-account-disabled "WorkspacesBYOLAccountDisabled")
  (:dhcp-disabled "DHCPDisabled")
  (:disk-free-space "DiskFreeSpace")
  (:additional-drives-attached "AdditionalDrivesAttached")
  (:os-not-supported "OSNotSupported")
  (:domain-joined "DomainJoined")
  (:azure-domain-joined "AzureDomainJoined")
  (:firewall-enabled "FirewallEnabled")
  (:vmware-tools-installed "VMWareToolsInstalled")
  (:disk-size-exceeded "DiskSizeExceeded")
  (:incompatible-partitioning "IncompatiblePartitioning")
  (:pending-reboot "PendingReboot")
  (:auto-logon-enabled "AutoLogonEnabled")
  (:realtime-universal-disabled "RealTimeUniversalDisabled")
  (:multiple-boot-partition "MultipleBootPartition")
  (:sixty-four-bit-os "Requires64BitOS")
  (:zero-rearm-count "ZeroRearmCount")
  (:in-place-upgrade "InPlaceUpgrade")
  (:anti-virus-installed "AntiVirusInstalled")
  (:uefi-not-supported "UEFINotSupported")
  (:unknown-error "UnknownError")
  (:appx-packages-installed "AppXPackagesInstalled")
  (:reserved-storage-in-use "ReservedStorageInUse")
  (:additional-drives-present "AdditionalDrivesPresent")
  (:windows-updates-required "WindowsUpdatesRequired")
  (:sysprep-file-missing "SysPrepFileMissing")
  (:user-profile-missing "UserProfileMissing")
  (:insufficient-disk-space "InsufficientDiskSpace")
  (:environment-variables-path-missing-entries
   "EnvironmentVariablesPathMissingEntries")
  (:domain-account-services-found "DomainAccountServicesFound")
  (:invalid-ip "InvalidIp")
  (:remote-desktop-services-disabled "RemoteDesktopServicesDisabled")
  (:windows-modules-installer-disabled "WindowsModulesInstallerDisabled")
  (:amazon-ssm-agent-enabled "AmazonSsmAgentEnabled")
  (:unsupported-security-protocol "UnsupportedSecurityProtocol")
  (:multiple-user-profiles "MultipleUserProfiles")
  (:staged-appx-package "StagedAppxPackage")
  (:unsupported-os-upgrade "UnsupportedOsUpgrade")
  (:insufficient-rearm-count "InsufficientRearmCount")
  (:incompatible-protocol "ProtocolOSIncompatibility")
  (:incompatible-memory-integrity "MemoryIntegrityIncompatibility")
  (:restricted-drive-letter "RestrictedDriveLetterInUse"))

(smithy/sdk/shapes:define-type workspace-image-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspace-image-id-list :member
                               workspace-image-id)

(smithy/sdk/shapes:define-enum workspace-image-ingestion-process
    common-lisp:nil
  (:byol-regular "BYOL_REGULAR")
  (:byol-graphics "BYOL_GRAPHICS")
  (:byol-graphicspro "BYOL_GRAPHICSPRO")
  (:byol-graphics-g4dn "BYOL_GRAPHICS_G4DN")
  (:byol-regular-wsp "BYOL_REGULAR_WSP")
  (:byol-graphics-g4dn-wsp "BYOL_GRAPHICS_G4DN_WSP")
  (:byol-regular-byop "BYOL_REGULAR_BYOP")
  (:byol-graphics-g4dn-byop "BYOL_GRAPHICS_G4DN_BYOP"))

(smithy/sdk/shapes:define-list workspace-image-list :member workspace-image)

(smithy/sdk/shapes:define-type workspace-image-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workspace-image-required-tenancy
    common-lisp:nil
  (:default "DEFAULT")
  (:dedicated "DEDICATED"))

(smithy/sdk/shapes:define-enum workspace-image-state
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending "PENDING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-list workspace-list :member workspace)

(smithy/sdk/shapes:define-type workspace-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workspace-properties common-lisp:nil
                                    ((running-mode :target-type running-mode
                                      :member-name "RunningMode")
                                     (running-mode-auto-stop-timeout-in-minutes
                                      :target-type
                                      running-mode-auto-stop-timeout-in-minutes
                                      :member-name
                                      "RunningModeAutoStopTimeoutInMinutes")
                                     (root-volume-size-gib :target-type
                                      root-volume-size-gib :member-name
                                      "RootVolumeSizeGib")
                                     (user-volume-size-gib :target-type
                                      user-volume-size-gib :member-name
                                      "UserVolumeSizeGib")
                                     (compute-type-name :target-type compute
                                      :member-name "ComputeTypeName")
                                     (protocols :target-type protocol-list
                                      :member-name "Protocols")
                                     (operating-system-name :target-type
                                      operating-system-name :member-name
                                      "OperatingSystemName")
                                     (global-accelerator :target-type
                                      global-accelerator-for-work-space
                                      :member-name "GlobalAccelerator"))
                                    (:shape-name "WorkspaceProperties"))

(smithy/sdk/shapes:define-structure workspace-request common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :required common-lisp:t :member-name
                                      "DirectoryId")
                                     (user-name :target-type user-name
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (bundle-id :target-type bundle-id
                                      :required common-lisp:t :member-name
                                      "BundleId")
                                     (volume-encryption-key :target-type
                                      volume-encryption-key :member-name
                                      "VolumeEncryptionKey")
                                     (user-volume-encryption-enabled
                                      :target-type boolean-object :member-name
                                      "UserVolumeEncryptionEnabled")
                                     (root-volume-encryption-enabled
                                      :target-type boolean-object :member-name
                                      "RootVolumeEncryptionEnabled")
                                     (workspace-properties :target-type
                                      workspace-properties :member-name
                                      "WorkspaceProperties")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (workspace-name :target-type
                                      workspace-name :member-name
                                      "WorkspaceName"))
                                    (:shape-name "WorkspaceRequest"))

(smithy/sdk/shapes:define-list workspace-request-list :member workspace-request)

(smithy/sdk/shapes:define-structure workspace-resource-association
                                    common-lisp:nil
                                    ((associated-resource-id :target-type
                                      non-empty-string :member-name
                                      "AssociatedResourceId")
                                     (associated-resource-type :target-type
                                      work-space-associated-resource-type
                                      :member-name "AssociatedResourceType")
                                     (created :target-type timestamp
                                      :member-name "Created")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (state :target-type association-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      association-state-reason :member-name
                                      "StateReason")
                                     (workspace-id :target-type workspace-id
                                      :member-name "WorkspaceId"))
                                    (:shape-name
                                     "WorkspaceResourceAssociation"))

(smithy/sdk/shapes:define-list workspace-resource-association-list :member
                               workspace-resource-association)

(smithy/sdk/shapes:define-enum workspace-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:impaired "IMPAIRED")
  (:unhealthy "UNHEALTHY")
  (:rebooting "REBOOTING")
  (:starting "STARTING")
  (:rebuilding "REBUILDING")
  (:restoring "RESTORING")
  (:maintenance "MAINTENANCE")
  (:admin-maintenance "ADMIN_MAINTENANCE")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:suspended "SUSPENDED")
  (:updating "UPDATING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum workspace-type
    common-lisp:nil
  (:personal "PERSONAL")
  (:pools "POOLS"))

(smithy/sdk/shapes:define-error workspaces-default-role-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "WorkspacesDefaultRoleNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure workspaces-ip-group common-lisp:nil
                                    ((group-id :target-type ip-group-id
                                      :member-name "groupId")
                                     (group-name :target-type ip-group-name
                                      :member-name "groupName")
                                     (group-desc :target-type ip-group-desc
                                      :member-name "groupDesc")
                                     (user-rules :target-type ip-rule-list
                                      :member-name "userRules"))
                                    (:shape-name "WorkspacesIpGroup"))

(smithy/sdk/shapes:define-list workspaces-ip-groups-list :member
                               workspaces-ip-group)

(smithy/sdk/shapes:define-structure workspaces-pool common-lisp:nil
                                    ((pool-id :target-type workspaces-pool-id
                                      :required common-lisp:t :member-name
                                      "PoolId")
                                     (pool-arn :target-type arn :required
                                      common-lisp:t :member-name "PoolArn")
                                     (capacity-status :target-type
                                      capacity-status :required common-lisp:t
                                      :member-name "CapacityStatus")
                                     (pool-name :target-type
                                      workspaces-pool-name :required
                                      common-lisp:t :member-name "PoolName")
                                     (description :target-type
                                      update-description :member-name
                                      "Description")
                                     (state :target-type workspaces-pool-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (bundle-id :target-type bundle-id
                                      :required common-lisp:t :member-name
                                      "BundleId")
                                     (directory-id :target-type directory-id
                                      :required common-lisp:t :member-name
                                      "DirectoryId")
                                     (errors :target-type
                                      workspaces-pool-errors :member-name
                                      "Errors")
                                     (application-settings :target-type
                                      application-settings-response
                                      :member-name "ApplicationSettings")
                                     (timeout-settings :target-type
                                      timeout-settings :member-name
                                      "TimeoutSettings")
                                     (running-mode :target-type
                                      pools-running-mode :required
                                      common-lisp:t :member-name
                                      "RunningMode"))
                                    (:shape-name "WorkspacesPool"))

(smithy/sdk/shapes:define-structure workspaces-pool-error common-lisp:nil
                                    ((error-code :target-type
                                      workspaces-pool-error-code :member-name
                                      "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "WorkspacesPoolError"))

(smithy/sdk/shapes:define-enum workspaces-pool-error-code
    common-lisp:nil
  (:iam-service-role-is-missing "IAM_SERVICE_ROLE_IS_MISSING")
  (:iam-service-role-missing-eni-describe-action
   "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION")
  (:iam-service-role-missing-eni-create-action
   "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION")
  (:iam-service-role-missing-eni-delete-action
   "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION")
  (:network-interface-limit-exceeded "NETWORK_INTERFACE_LIMIT_EXCEEDED")
  (:internal-service-error "INTERNAL_SERVICE_ERROR")
  (:machine-role-is-missing "MACHINE_ROLE_IS_MISSING")
  (:sts-disabled-in-region "STS_DISABLED_IN_REGION")
  (:subnet-has-insufficient-ip-addresses "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES")
  (:iam-service-role-missing-describe-subnet-action
   "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION")
  (:subnet-not-found "SUBNET_NOT_FOUND")
  (:image-not-found "IMAGE_NOT_FOUND")
  (:invalid-subnet-configuration "INVALID_SUBNET_CONFIGURATION")
  (:security-groups-not-found "SECURITY_GROUPS_NOT_FOUND")
  (:igw-not-attached "IGW_NOT_ATTACHED")
  (:iam-service-role-missing-describe-security-groups-action
   "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION")
  (:workspaces-pool-stopped "WORKSPACES_POOL_STOPPED")
  (:workspaces-pool-instance-provisioning-failure
   "WORKSPACES_POOL_INSTANCE_PROVISIONING_FAILURE")
  (:domain-join-error-file-not-found "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND")
  (:domain-join-error-access-denied "DOMAIN_JOIN_ERROR_ACCESS_DENIED")
  (:domain-join-error-logon-failure "DOMAIN_JOIN_ERROR_LOGON_FAILURE")
  (:domain-join-error-invalid-parameter "DOMAIN_JOIN_ERROR_INVALID_PARAMETER")
  (:domain-join-error-more-data "DOMAIN_JOIN_ERROR_MORE_DATA")
  (:domain-join-error-no-such-domain "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN")
  (:domain-join-error-not-supported "DOMAIN_JOIN_ERROR_NOT_SUPPORTED")
  (:domain-join-nerr-invalid-workgroup-name
   "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME")
  (:domain-join-nerr-workstation-not-started
   "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED")
  (:domain-join-error-ds-machine-account-quota-exceeded
   "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED")
  (:domain-join-nerr-password-expired "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED")
  (:domain-join-internal-service-error "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR")
  (:domain-join-error-secret-action-permission-is-missing
   "DOMAIN_JOIN_ERROR_SECRET_ACTION_PERMISSION_IS_MISSING")
  (:domain-join-error-secret-decryption-failure
   "DOMAIN_JOIN_ERROR_SECRET_DECRYPTION_FAILURE")
  (:domain-join-error-secret-state-invalid
   "DOMAIN_JOIN_ERROR_SECRET_STATE_INVALID")
  (:domain-join-error-secret-not-found "DOMAIN_JOIN_ERROR_SECRET_NOT_FOUND")
  (:domain-join-error-secret-value-key-not-found
   "DOMAIN_JOIN_ERROR_SECRET_VALUE_KEY_NOT_FOUND")
  (:domain-join-error-secret-invalid "DOMAIN_JOIN_ERROR_SECRET_INVALID")
  (:bundle-not-found "BUNDLE_NOT_FOUND")
  (:directory-not-found "DIRECTORY_NOT_FOUND")
  (:insufficient-permissions-error "INSUFFICIENT_PERMISSIONS_ERROR")
  (:default-ou-is-missing "DEFAULT_OU_IS_MISSING"))

(smithy/sdk/shapes:define-list workspaces-pool-errors :member
                               workspaces-pool-error)

(smithy/sdk/shapes:define-type workspaces-pool-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspaces-pool-ids :member workspaces-pool-id)

(smithy/sdk/shapes:define-type workspaces-pool-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workspaces-pool-session common-lisp:nil
                                    ((authentication-type :target-type
                                      authentication-type :member-name
                                      "AuthenticationType")
                                     (connection-state :target-type
                                      session-connection-state :member-name
                                      "ConnectionState")
                                     (session-id :target-type amazon-uuid
                                      :required common-lisp:t :member-name
                                      "SessionId")
                                     (instance-id :target-type
                                      session-instance-id :member-name
                                      "InstanceId")
                                     (pool-id :target-type workspaces-pool-id
                                      :required common-lisp:t :member-name
                                      "PoolId")
                                     (expiration-time :target-type timestamp
                                      :member-name "ExpirationTime")
                                     (network-access-configuration :target-type
                                      network-access-configuration :member-name
                                      "NetworkAccessConfiguration")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (user-id :target-type
                                      workspaces-pool-user-id :required
                                      common-lisp:t :member-name "UserId"))
                                    (:shape-name "WorkspacesPoolSession"))

(smithy/sdk/shapes:define-list workspaces-pool-sessions :member
                               workspaces-pool-session)

(smithy/sdk/shapes:define-enum workspaces-pool-state
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:running "RUNNING")
  (:starting "STARTING")
  (:stopped "STOPPED")
  (:stopping "STOPPING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type workspaces-pool-user-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspaces-pools :member workspaces-pool)

(smithy/sdk/operation:define-operation accept-account-link-invitation
                                       :shape-name
                                       "AcceptAccountLinkInvitation" :input
                                       accept-account-link-invitation-request
                                       :output
                                       accept-account-link-invitation-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation associate-connection-alias :shape-name
                                       "AssociateConnectionAlias" :input
                                       associate-connection-alias-request
                                       :output
                                       associate-connection-alias-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-associated-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-ip-groups :shape-name
                                       "AssociateIpGroups" :input
                                       associate-ip-groups-request :output
                                       associate-ip-groups-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-workspace-application
                                       :shape-name
                                       "AssociateWorkspaceApplication" :input
                                       associate-workspace-application-request
                                       :output
                                       associate-workspace-application-result
                                       :errors
                                       (access-denied-exception
                                        application-not-supported-exception
                                        compute-not-compatible-exception
                                        incompatible-applications-exception
                                        invalid-parameter-values-exception
                                        operating-system-not-compatible-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation authorize-ip-rules :shape-name
                                       "AuthorizeIpRules" :input
                                       authorize-ip-rules-request :output
                                       authorize-ip-rules-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation copy-workspace-image :shape-name
                                       "CopyWorkspaceImage" :input
                                       copy-workspace-image-request :output
                                       copy-workspace-image-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation create-account-link-invitation
                                       :shape-name
                                       "CreateAccountLinkInvitation" :input
                                       create-account-link-invitation-request
                                       :output
                                       create-account-link-invitation-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-connect-client-add-in :shape-name
                                       "CreateConnectClientAddIn" :input
                                       create-connect-client-add-in-request
                                       :output
                                       create-connect-client-add-in-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-already-exists-exception
                                        resource-creation-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-connection-alias :shape-name
                                       "CreateConnectionAlias" :input
                                       create-connection-alias-request :output
                                       create-connection-alias-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-ip-group :shape-name
                                       "CreateIpGroup" :input
                                       create-ip-group-request :output
                                       create-ip-group-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-already-exists-exception
                                        resource-creation-failed-exception
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-standby-workspaces :shape-name
                                       "CreateStandbyWorkspaces" :input
                                       create-standby-workspaces-request
                                       :output create-standby-workspaces-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-tags :shape-name "CreateTags"
                                       :input create-tags-request :output
                                       create-tags-result :errors
                                       (invalid-parameter-values-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-updated-workspace-image
                                       :shape-name
                                       "CreateUpdatedWorkspaceImage" :input
                                       create-updated-workspace-image-request
                                       :output
                                       create-updated-workspace-image-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-workspace-bundle :shape-name
                                       "CreateWorkspaceBundle" :input
                                       create-workspace-bundle-request :output
                                       create-workspace-bundle-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation create-workspace-image :shape-name
                                       "CreateWorkspaceImage" :input
                                       create-workspace-image-request :output
                                       create-workspace-image-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-workspaces :shape-name
                                       "CreateWorkspaces" :input
                                       create-workspaces-request :output
                                       create-workspaces-result :errors
                                       (invalid-parameter-values-exception
                                        resource-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-workspaces-pool :shape-name
                                       "CreateWorkspacesPool" :input
                                       create-workspaces-pool-request :output
                                       create-workspaces-pool-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-account-link-invitation
                                       :shape-name
                                       "DeleteAccountLinkInvitation" :input
                                       delete-account-link-invitation-request
                                       :output
                                       delete-account-link-invitation-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-client-branding :shape-name
                                       "DeleteClientBranding" :input
                                       delete-client-branding-request :output
                                       delete-client-branding-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-connect-client-add-in :shape-name
                                       "DeleteConnectClientAddIn" :input
                                       delete-connect-client-add-in-request
                                       :output
                                       delete-connect-client-add-in-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-connection-alias :shape-name
                                       "DeleteConnectionAlias" :input
                                       delete-connection-alias-request :output
                                       delete-connection-alias-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-associated-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-ip-group :shape-name
                                       "DeleteIpGroup" :input
                                       delete-ip-group-request :output
                                       delete-ip-group-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-associated-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-tags :shape-name "DeleteTags"
                                       :input delete-tags-request :output
                                       delete-tags-result :errors
                                       (invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-workspace-bundle :shape-name
                                       "DeleteWorkspaceBundle" :input
                                       delete-workspace-bundle-request :output
                                       delete-workspace-bundle-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-associated-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-workspace-image :shape-name
                                       "DeleteWorkspaceImage" :input
                                       delete-workspace-image-request :output
                                       delete-workspace-image-result :errors
                                       (access-denied-exception
                                        invalid-resource-state-exception
                                        resource-associated-exception))

(smithy/sdk/operation:define-operation deploy-workspace-applications
                                       :shape-name
                                       "DeployWorkspaceApplications" :input
                                       deploy-workspace-applications-request
                                       :output
                                       deploy-workspace-applications-result
                                       :errors
                                       (access-denied-exception
                                        incompatible-applications-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation deregister-workspace-directory
                                       :shape-name
                                       "DeregisterWorkspaceDirectory" :input
                                       deregister-workspace-directory-request
                                       :output
                                       deregister-workspace-directory-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-account :shape-name
                                       "DescribeAccount" :input
                                       describe-account-request :output
                                       describe-account-result :errors
                                       (access-denied-exception))

(smithy/sdk/operation:define-operation describe-account-modifications
                                       :shape-name
                                       "DescribeAccountModifications" :input
                                       describe-account-modifications-request
                                       :output
                                       describe-account-modifications-result
                                       :errors (access-denied-exception))

(smithy/sdk/operation:define-operation describe-application-associations
                                       :shape-name
                                       "DescribeApplicationAssociations" :input
                                       describe-application-associations-request
                                       :output
                                       describe-application-associations-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-applications :shape-name
                                       "DescribeApplications" :input
                                       describe-applications-request :output
                                       describe-applications-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-bundle-associations :shape-name
                                       "DescribeBundleAssociations" :input
                                       describe-bundle-associations-request
                                       :output
                                       describe-bundle-associations-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-client-branding :shape-name
                                       "DescribeClientBranding" :input
                                       describe-client-branding-request :output
                                       describe-client-branding-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-client-properties :shape-name
                                       "DescribeClientProperties" :input
                                       describe-client-properties-request
                                       :output
                                       describe-client-properties-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-connect-client-add-ins
                                       :shape-name
                                       "DescribeConnectClientAddIns" :input
                                       describe-connect-client-add-ins-request
                                       :output
                                       describe-connect-client-add-ins-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-connection-alias-permissions
                                       :shape-name
                                       "DescribeConnectionAliasPermissions"
                                       :input
                                       describe-connection-alias-permissions-request
                                       :output
                                       describe-connection-alias-permissions-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-connection-aliases :shape-name
                                       "DescribeConnectionAliases" :input
                                       describe-connection-aliases-request
                                       :output
                                       describe-connection-aliases-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception))

(smithy/sdk/operation:define-operation describe-image-associations :shape-name
                                       "DescribeImageAssociations" :input
                                       describe-image-associations-request
                                       :output
                                       describe-image-associations-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-ip-groups :shape-name
                                       "DescribeIpGroups" :input
                                       describe-ip-groups-request :output
                                       describe-ip-groups-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-request :output
                                       describe-tags-result :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-workspace-associations
                                       :shape-name
                                       "DescribeWorkspaceAssociations" :input
                                       describe-workspace-associations-request
                                       :output
                                       describe-workspace-associations-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-workspace-bundles :shape-name
                                       "DescribeWorkspaceBundles" :input
                                       describe-workspace-bundles-request
                                       :output
                                       describe-workspace-bundles-result
                                       :errors
                                       (invalid-parameter-values-exception))

(smithy/sdk/operation:define-operation describe-workspace-directories
                                       :shape-name
                                       "DescribeWorkspaceDirectories" :input
                                       describe-workspace-directories-request
                                       :output
                                       describe-workspace-directories-result
                                       :errors
                                       (invalid-parameter-values-exception))

(smithy/sdk/operation:define-operation describe-workspace-image-permissions
                                       :shape-name
                                       "DescribeWorkspaceImagePermissions"
                                       :input
                                       describe-workspace-image-permissions-request
                                       :output
                                       describe-workspace-image-permissions-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-workspace-images :shape-name
                                       "DescribeWorkspaceImages" :input
                                       describe-workspace-images-request
                                       :output describe-workspace-images-result
                                       :errors (access-denied-exception))

(smithy/sdk/operation:define-operation describe-workspace-snapshots :shape-name
                                       "DescribeWorkspaceSnapshots" :input
                                       describe-workspace-snapshots-request
                                       :output
                                       describe-workspace-snapshots-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-workspaces :shape-name
                                       "DescribeWorkspaces" :input
                                       describe-workspaces-request :output
                                       describe-workspaces-result :errors
                                       (invalid-parameter-values-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation describe-workspaces-connection-status
                                       :shape-name
                                       "DescribeWorkspacesConnectionStatus"
                                       :input
                                       describe-workspaces-connection-status-request
                                       :output
                                       describe-workspaces-connection-status-result
                                       :errors
                                       (invalid-parameter-values-exception))

(smithy/sdk/operation:define-operation describe-workspaces-pool-sessions
                                       :shape-name
                                       "DescribeWorkspacesPoolSessions" :input
                                       describe-workspaces-pool-sessions-request
                                       :output
                                       describe-workspaces-pool-sessions-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-workspaces-pools :shape-name
                                       "DescribeWorkspacesPools" :input
                                       describe-workspaces-pools-request
                                       :output describe-workspaces-pools-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-connection-alias
                                       :shape-name
                                       "DisassociateConnectionAlias" :input
                                       disassociate-connection-alias-request
                                       :output
                                       disassociate-connection-alias-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-ip-groups :shape-name
                                       "DisassociateIpGroups" :input
                                       disassociate-ip-groups-request :output
                                       disassociate-ip-groups-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-workspace-application
                                       :shape-name
                                       "DisassociateWorkspaceApplication"
                                       :input
                                       disassociate-workspace-application-request
                                       :output
                                       disassociate-workspace-application-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-account-link :shape-name
                                       "GetAccountLink" :input
                                       get-account-link-request :output
                                       get-account-link-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation import-client-branding :shape-name
                                       "ImportClientBranding" :input
                                       import-client-branding-request :output
                                       import-client-branding-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation import-workspace-image :shape-name
                                       "ImportWorkspaceImage" :input
                                       import-workspace-image-request :output
                                       import-workspace-image-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-account-links :shape-name
                                       "ListAccountLinks" :input
                                       list-account-links-request :output
                                       list-account-links-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-available-management-cidr-ranges
                                       :shape-name
                                       "ListAvailableManagementCidrRanges"
                                       :input
                                       list-available-management-cidr-ranges-request
                                       :output
                                       list-available-management-cidr-ranges-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception))

(smithy/sdk/operation:define-operation migrate-workspace :shape-name
                                       "MigrateWorkspace" :input
                                       migrate-workspace-request :output
                                       migrate-workspace-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-in-progress-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation modify-account :shape-name
                                       "ModifyAccount" :input
                                       modify-account-request :output
                                       modify-account-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation modify-certificate-based-auth-properties
                                       :shape-name
                                       "ModifyCertificateBasedAuthProperties"
                                       :input
                                       modify-certificate-based-auth-properties-request
                                       :output
                                       modify-certificate-based-auth-properties-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-client-properties :shape-name
                                       "ModifyClientProperties" :input
                                       modify-client-properties-request :output
                                       modify-client-properties-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-endpoint-encryption-mode
                                       :shape-name
                                       "ModifyEndpointEncryptionMode" :input
                                       modify-endpoint-encryption-mode-request
                                       :output
                                       modify-endpoint-encryption-mode-response
                                       :errors
                                       (access-denied-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-saml-properties :shape-name
                                       "ModifySamlProperties" :input
                                       modify-saml-properties-request :output
                                       modify-saml-properties-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-selfservice-permissions
                                       :shape-name
                                       "ModifySelfservicePermissions" :input
                                       modify-selfservice-permissions-request
                                       :output
                                       modify-selfservice-permissions-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-streaming-properties :shape-name
                                       "ModifyStreamingProperties" :input
                                       modify-streaming-properties-request
                                       :output
                                       modify-streaming-properties-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-workspace-access-properties
                                       :shape-name
                                       "ModifyWorkspaceAccessProperties" :input
                                       modify-workspace-access-properties-request
                                       :output
                                       modify-workspace-access-properties-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-workspace-creation-properties
                                       :shape-name
                                       "ModifyWorkspaceCreationProperties"
                                       :input
                                       modify-workspace-creation-properties-request
                                       :output
                                       modify-workspace-creation-properties-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation modify-workspace-properties :shape-name
                                       "ModifyWorkspaceProperties" :input
                                       modify-workspace-properties-request
                                       :output
                                       modify-workspace-properties-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-in-progress-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        unsupported-workspace-configuration-exception))

(smithy/sdk/operation:define-operation modify-workspace-state :shape-name
                                       "ModifyWorkspaceState" :input
                                       modify-workspace-state-request :output
                                       modify-workspace-state-result :errors
                                       (invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation reboot-workspaces :shape-name
                                       "RebootWorkspaces" :input
                                       reboot-workspaces-request :output
                                       reboot-workspaces-result :errors
                                       (operation-not-supported-exception))

(smithy/sdk/operation:define-operation rebuild-workspaces :shape-name
                                       "RebuildWorkspaces" :input
                                       rebuild-workspaces-request :output
                                       rebuild-workspaces-result :errors
                                       (operation-not-supported-exception))

(smithy/sdk/operation:define-operation register-workspace-directory :shape-name
                                       "RegisterWorkspaceDirectory" :input
                                       register-workspace-directory-request
                                       :output
                                       register-workspace-directory-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-already-exists-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        unsupported-network-configuration-exception
                                        workspaces-default-role-not-found-exception))

(smithy/sdk/operation:define-operation reject-account-link-invitation
                                       :shape-name
                                       "RejectAccountLinkInvitation" :input
                                       reject-account-link-invitation-request
                                       :output
                                       reject-account-link-invitation-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-workspace :shape-name
                                       "RestoreWorkspace" :input
                                       restore-workspace-request :output
                                       restore-workspace-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation revoke-ip-rules :shape-name
                                       "RevokeIpRules" :input
                                       revoke-ip-rules-request :output
                                       revoke-ip-rules-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-workspaces :shape-name
                                       "StartWorkspaces" :input
                                       start-workspaces-request :output
                                       start-workspaces-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation start-workspaces-pool :shape-name
                                       "StartWorkspacesPool" :input
                                       start-workspaces-pool-request :output
                                       start-workspaces-pool-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-in-progress-exception
                                        operation-not-supported-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-workspaces :shape-name
                                       "StopWorkspaces" :input
                                       stop-workspaces-request :output
                                       stop-workspaces-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation stop-workspaces-pool :shape-name
                                       "StopWorkspacesPool" :input
                                       stop-workspaces-pool-request :output
                                       stop-workspaces-pool-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation terminate-workspaces :shape-name
                                       "TerminateWorkspaces" :input
                                       terminate-workspaces-request :output
                                       terminate-workspaces-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation terminate-workspaces-pool :shape-name
                                       "TerminateWorkspacesPool" :input
                                       terminate-workspaces-pool-request
                                       :output terminate-workspaces-pool-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation terminate-workspaces-pool-session
                                       :shape-name
                                       "TerminateWorkspacesPoolSession" :input
                                       terminate-workspaces-pool-session-request
                                       :output
                                       terminate-workspaces-pool-session-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-in-progress-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-connect-client-add-in :shape-name
                                       "UpdateConnectClientAddIn" :input
                                       update-connect-client-add-in-request
                                       :output
                                       update-connect-client-add-in-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-connection-alias-permission
                                       :shape-name
                                       "UpdateConnectionAliasPermission" :input
                                       update-connection-alias-permission-request
                                       :output
                                       update-connection-alias-permission-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-not-supported-exception
                                        resource-associated-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-rules-of-ip-group :shape-name
                                       "UpdateRulesOfIpGroup" :input
                                       update-rules-of-ip-group-request :output
                                       update-rules-of-ip-group-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-workspace-bundle :shape-name
                                       "UpdateWorkspaceBundle" :input
                                       update-workspace-bundle-request :output
                                       update-workspace-bundle-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation update-workspace-image-permission
                                       :shape-name
                                       "UpdateWorkspaceImagePermission" :input
                                       update-workspace-image-permission-request
                                       :output
                                       update-workspace-image-permission-result
                                       :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation update-workspaces-pool :shape-name
                                       "UpdateWorkspacesPool" :input
                                       update-workspaces-pool-request :output
                                       update-workspaces-pool-result :errors
                                       (access-denied-exception
                                        invalid-parameter-values-exception
                                        invalid-resource-state-exception
                                        operation-in-progress-exception
                                        operation-not-supported-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception))
