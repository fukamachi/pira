(uiop/package:define-package #:pira/iam (:use)
                             (:export #:awsidentity-management-v20100508
                              #:access-advisor-usage-granularity-type
                              #:access-detail #:access-details #:access-key
                              #:access-key-last-used #:access-key-metadata
                              #:account-not-management-or-delegated-administrator-exception
                              #:action-name-list-type #:action-name-type
                              #:add-client-idto-open-idconnect-provider
                              #:add-client-idto-open-idconnect-provider-request
                              #:add-role-to-instance-profile
                              #:add-role-to-instance-profile-request
                              #:add-user-to-group #:add-user-to-group-request
                              #:arn-list-type #:attach-group-policy
                              #:attach-group-policy-request
                              #:attach-role-policy #:attach-role-policy-request
                              #:attach-user-policy #:attach-user-policy-request
                              #:attached-permissions-boundary #:attached-policy
                              #:bootstrap-datum
                              #:caller-is-not-management-account-exception
                              #:certification-key-type #:certification-map-type
                              #:certification-value-type #:change-password
                              #:change-password-request #:column-number
                              #:concurrent-modification-exception
                              #:concurrent-modification-message #:context-entry
                              #:context-entry-list-type #:context-key-name-type
                              #:context-key-names-result-list-type
                              #:context-key-type-enum
                              #:context-key-value-list-type
                              #:context-key-value-type #:create-access-key
                              #:create-access-key-request
                              #:create-access-key-response
                              #:create-account-alias
                              #:create-account-alias-request #:create-group
                              #:create-group-request #:create-group-response
                              #:create-instance-profile
                              #:create-instance-profile-request
                              #:create-instance-profile-response
                              #:create-login-profile
                              #:create-login-profile-request
                              #:create-login-profile-response
                              #:create-open-idconnect-provider
                              #:create-open-idconnect-provider-request
                              #:create-open-idconnect-provider-response
                              #:create-policy #:create-policy-request
                              #:create-policy-response #:create-policy-version
                              #:create-policy-version-request
                              #:create-policy-version-response #:create-role
                              #:create-role-request #:create-role-response
                              #:create-samlprovider
                              #:create-samlprovider-request
                              #:create-samlprovider-response
                              #:create-service-linked-role
                              #:create-service-linked-role-request
                              #:create-service-linked-role-response
                              #:create-service-specific-credential
                              #:create-service-specific-credential-request
                              #:create-service-specific-credential-response
                              #:create-user #:create-user-request
                              #:create-user-response #:create-virtual-mfadevice
                              #:create-virtual-mfadevice-request
                              #:create-virtual-mfadevice-response
                              #:credential-report-expired-exception
                              #:credential-report-not-present-exception
                              #:credential-report-not-ready-exception
                              #:deactivate-mfadevice
                              #:deactivate-mfadevice-request
                              #:delete-access-key #:delete-access-key-request
                              #:delete-account-alias
                              #:delete-account-alias-request
                              #:delete-account-password-policy
                              #:delete-conflict-exception #:delete-group
                              #:delete-group-policy
                              #:delete-group-policy-request
                              #:delete-group-request #:delete-instance-profile
                              #:delete-instance-profile-request
                              #:delete-login-profile
                              #:delete-login-profile-request
                              #:delete-open-idconnect-provider
                              #:delete-open-idconnect-provider-request
                              #:delete-policy #:delete-policy-request
                              #:delete-policy-version
                              #:delete-policy-version-request #:delete-role
                              #:delete-role-permissions-boundary
                              #:delete-role-permissions-boundary-request
                              #:delete-role-policy #:delete-role-policy-request
                              #:delete-role-request #:delete-samlprovider
                              #:delete-samlprovider-request
                              #:delete-sshpublic-key
                              #:delete-sshpublic-key-request
                              #:delete-server-certificate
                              #:delete-server-certificate-request
                              #:delete-service-linked-role
                              #:delete-service-linked-role-request
                              #:delete-service-linked-role-response
                              #:delete-service-specific-credential
                              #:delete-service-specific-credential-request
                              #:delete-signing-certificate
                              #:delete-signing-certificate-request
                              #:delete-user #:delete-user-permissions-boundary
                              #:delete-user-permissions-boundary-request
                              #:delete-user-policy #:delete-user-policy-request
                              #:delete-user-request #:delete-virtual-mfadevice
                              #:delete-virtual-mfadevice-request
                              #:deletion-task-failure-reason-type
                              #:deletion-task-id-type
                              #:deletion-task-status-type #:detach-group-policy
                              #:detach-group-policy-request
                              #:detach-role-policy #:detach-role-policy-request
                              #:detach-user-policy #:detach-user-policy-request
                              #:disable-organizations-root-credentials-management
                              #:disable-organizations-root-credentials-management-request
                              #:disable-organizations-root-credentials-management-response
                              #:disable-organizations-root-sessions
                              #:disable-organizations-root-sessions-request
                              #:disable-organizations-root-sessions-response
                              #:duplicate-certificate-exception
                              #:duplicate-sshpublic-key-exception
                              #:enable-mfadevice #:enable-mfadevice-request
                              #:enable-organizations-root-credentials-management
                              #:enable-organizations-root-credentials-management-request
                              #:enable-organizations-root-credentials-management-response
                              #:enable-organizations-root-sessions
                              #:enable-organizations-root-sessions-request
                              #:enable-organizations-root-sessions-response
                              #:entity-already-exists-exception
                              #:entity-details #:entity-info
                              #:entity-temporarily-unmodifiable-exception
                              #:entity-type #:error-details
                              #:eval-decision-details-type
                              #:eval-decision-source-type #:evaluation-result
                              #:evaluation-results-list-type
                              #:exception-message #:feature-type
                              #:features-list-type #:generate-credential-report
                              #:generate-credential-report-response
                              #:generate-organizations-access-report
                              #:generate-organizations-access-report-request
                              #:generate-organizations-access-report-response
                              #:generate-service-last-accessed-details
                              #:generate-service-last-accessed-details-request
                              #:generate-service-last-accessed-details-response
                              #:get-access-key-last-used
                              #:get-access-key-last-used-request
                              #:get-access-key-last-used-response
                              #:get-account-authorization-details
                              #:get-account-authorization-details-request
                              #:get-account-authorization-details-response
                              #:get-account-password-policy
                              #:get-account-password-policy-response
                              #:get-account-summary
                              #:get-account-summary-response
                              #:get-context-keys-for-custom-policy
                              #:get-context-keys-for-custom-policy-request
                              #:get-context-keys-for-policy-response
                              #:get-context-keys-for-principal-policy
                              #:get-context-keys-for-principal-policy-request
                              #:get-credential-report
                              #:get-credential-report-response #:get-group
                              #:get-group-policy #:get-group-policy-request
                              #:get-group-policy-response #:get-group-request
                              #:get-group-response #:get-instance-profile
                              #:get-instance-profile-request
                              #:get-instance-profile-response
                              #:get-login-profile #:get-login-profile-request
                              #:get-login-profile-response #:get-mfadevice
                              #:get-mfadevice-request #:get-mfadevice-response
                              #:get-open-idconnect-provider
                              #:get-open-idconnect-provider-request
                              #:get-open-idconnect-provider-response
                              #:get-organizations-access-report
                              #:get-organizations-access-report-request
                              #:get-organizations-access-report-response
                              #:get-policy #:get-policy-request
                              #:get-policy-response #:get-policy-version
                              #:get-policy-version-request
                              #:get-policy-version-response #:get-role
                              #:get-role-policy #:get-role-policy-request
                              #:get-role-policy-response #:get-role-request
                              #:get-role-response #:get-samlprovider
                              #:get-samlprovider-request
                              #:get-samlprovider-response #:get-sshpublic-key
                              #:get-sshpublic-key-request
                              #:get-sshpublic-key-response
                              #:get-server-certificate
                              #:get-server-certificate-request
                              #:get-server-certificate-response
                              #:get-service-last-accessed-details
                              #:get-service-last-accessed-details-request
                              #:get-service-last-accessed-details-response
                              #:get-service-last-accessed-details-with-entities
                              #:get-service-last-accessed-details-with-entities-request
                              #:get-service-last-accessed-details-with-entities-response
                              #:get-service-linked-role-deletion-status
                              #:get-service-linked-role-deletion-status-request
                              #:get-service-linked-role-deletion-status-response
                              #:get-user #:get-user-policy
                              #:get-user-policy-request
                              #:get-user-policy-response #:get-user-request
                              #:get-user-response #:group #:group-detail
                              #:instance-profile
                              #:invalid-authentication-code-exception
                              #:invalid-certificate-exception
                              #:invalid-input-exception
                              #:invalid-public-key-exception
                              #:invalid-user-type-exception
                              #:key-pair-mismatch-exception
                              #:limit-exceeded-exception #:line-number
                              #:list-access-keys #:list-access-keys-request
                              #:list-access-keys-response
                              #:list-account-aliases
                              #:list-account-aliases-request
                              #:list-account-aliases-response
                              #:list-attached-group-policies
                              #:list-attached-group-policies-request
                              #:list-attached-group-policies-response
                              #:list-attached-role-policies
                              #:list-attached-role-policies-request
                              #:list-attached-role-policies-response
                              #:list-attached-user-policies
                              #:list-attached-user-policies-request
                              #:list-attached-user-policies-response
                              #:list-entities-for-policy
                              #:list-entities-for-policy-request
                              #:list-entities-for-policy-response
                              #:list-group-policies
                              #:list-group-policies-request
                              #:list-group-policies-response #:list-groups
                              #:list-groups-for-user
                              #:list-groups-for-user-request
                              #:list-groups-for-user-response
                              #:list-groups-request #:list-groups-response
                              #:list-instance-profile-tags
                              #:list-instance-profile-tags-request
                              #:list-instance-profile-tags-response
                              #:list-instance-profiles
                              #:list-instance-profiles-for-role
                              #:list-instance-profiles-for-role-request
                              #:list-instance-profiles-for-role-response
                              #:list-instance-profiles-request
                              #:list-instance-profiles-response
                              #:list-mfadevice-tags
                              #:list-mfadevice-tags-request
                              #:list-mfadevice-tags-response #:list-mfadevices
                              #:list-mfadevices-request
                              #:list-mfadevices-response
                              #:list-open-idconnect-provider-tags
                              #:list-open-idconnect-provider-tags-request
                              #:list-open-idconnect-provider-tags-response
                              #:list-open-idconnect-providers
                              #:list-open-idconnect-providers-request
                              #:list-open-idconnect-providers-response
                              #:list-organizations-features
                              #:list-organizations-features-request
                              #:list-organizations-features-response
                              #:list-policies
                              #:list-policies-granting-service-access
                              #:list-policies-granting-service-access-entry
                              #:list-policies-granting-service-access-request
                              #:list-policies-granting-service-access-response
                              #:list-policies-request #:list-policies-response
                              #:list-policy-tags #:list-policy-tags-request
                              #:list-policy-tags-response
                              #:list-policy-versions
                              #:list-policy-versions-request
                              #:list-policy-versions-response
                              #:list-role-policies #:list-role-policies-request
                              #:list-role-policies-response #:list-role-tags
                              #:list-role-tags-request
                              #:list-role-tags-response #:list-roles
                              #:list-roles-request #:list-roles-response
                              #:list-samlprovider-tags
                              #:list-samlprovider-tags-request
                              #:list-samlprovider-tags-response
                              #:list-samlproviders #:list-samlproviders-request
                              #:list-samlproviders-response
                              #:list-sshpublic-keys
                              #:list-sshpublic-keys-request
                              #:list-sshpublic-keys-response
                              #:list-server-certificate-tags
                              #:list-server-certificate-tags-request
                              #:list-server-certificate-tags-response
                              #:list-server-certificates
                              #:list-server-certificates-request
                              #:list-server-certificates-response
                              #:list-service-specific-credentials
                              #:list-service-specific-credentials-request
                              #:list-service-specific-credentials-response
                              #:list-signing-certificates
                              #:list-signing-certificates-request
                              #:list-signing-certificates-response
                              #:list-user-policies #:list-user-policies-request
                              #:list-user-policies-response #:list-user-tags
                              #:list-user-tags-request
                              #:list-user-tags-response #:list-users
                              #:list-users-request #:list-users-response
                              #:list-virtual-mfadevices
                              #:list-virtual-mfadevices-request
                              #:list-virtual-mfadevices-response
                              #:login-profile #:mfadevice
                              #:malformed-certificate-exception
                              #:malformed-policy-document-exception
                              #:managed-policy-detail
                              #:managed-policy-detail-list-type
                              #:no-such-entity-exception
                              #:open-idconnect-provider-list-entry
                              #:open-idconnect-provider-list-type
                              #:open-idconnect-provider-url-type
                              #:open-id-idp-communication-error-exception
                              #:organization-id-type
                              #:organization-not-found-exception
                              #:organization-not-in-all-features-mode-exception
                              #:organizations-decision-detail #:password-policy
                              #:password-policy-violation-exception
                              #:permissions-boundary-attachment-type
                              #:permissions-boundary-decision-detail #:policy
                              #:policy-detail #:policy-evaluation-decision-type
                              #:policy-evaluation-exception
                              #:policy-granting-service-access #:policy-group
                              #:policy-group-list-type #:policy-identifier-type
                              #:policy-not-attachable-exception #:policy-role
                              #:policy-role-list-type #:policy-source-type
                              #:policy-usage-type #:policy-user
                              #:policy-user-list-type #:policy-version
                              #:position #:put-group-policy
                              #:put-group-policy-request
                              #:put-role-permissions-boundary
                              #:put-role-permissions-boundary-request
                              #:put-role-policy #:put-role-policy-request
                              #:put-user-permissions-boundary
                              #:put-user-permissions-boundary-request
                              #:put-user-policy #:put-user-policy-request
                              #:reason-type #:region-name-type
                              #:remove-client-idfrom-open-idconnect-provider
                              #:remove-client-idfrom-open-idconnect-provider-request
                              #:remove-role-from-instance-profile
                              #:remove-role-from-instance-profile-request
                              #:remove-user-from-group
                              #:remove-user-from-group-request
                              #:report-content-type #:report-format-type
                              #:report-generation-limit-exceeded-exception
                              #:report-state-description-type
                              #:report-state-type
                              #:reset-service-specific-credential
                              #:reset-service-specific-credential-request
                              #:reset-service-specific-credential-response
                              #:resource-handling-option-type
                              #:resource-name-list-type #:resource-name-type
                              #:resource-specific-result
                              #:resource-specific-result-list-type
                              #:resync-mfadevice #:resync-mfadevice-request
                              #:role #:role-detail #:role-last-used
                              #:role-usage-list-type #:role-usage-type
                              #:samlmetadata-document-type #:samlprivate-key
                              #:samlprovider-list-entry
                              #:samlprovider-list-type #:samlprovider-name-type
                              #:sshpublic-key #:sshpublic-key-list-type
                              #:sshpublic-key-metadata #:server-certificate
                              #:server-certificate-metadata
                              #:service-access-not-enabled-exception
                              #:service-failure-exception
                              #:service-last-accessed
                              #:service-not-supported-exception
                              #:service-specific-credential
                              #:service-specific-credential-metadata
                              #:service-specific-credentials-list-type
                              #:services-last-accessed
                              #:set-default-policy-version
                              #:set-default-policy-version-request
                              #:set-security-token-service-preferences
                              #:set-security-token-service-preferences-request
                              #:signing-certificate #:simulate-custom-policy
                              #:simulate-custom-policy-request
                              #:simulate-policy-response
                              #:simulate-principal-policy
                              #:simulate-principal-policy-request
                              #:simulation-policy-list-type #:statement
                              #:statement-list-type #:tag
                              #:tag-instance-profile
                              #:tag-instance-profile-request #:tag-mfadevice
                              #:tag-mfadevice-request
                              #:tag-open-idconnect-provider
                              #:tag-open-idconnect-provider-request
                              #:tag-policy #:tag-policy-request #:tag-role
                              #:tag-role-request #:tag-samlprovider
                              #:tag-samlprovider-request
                              #:tag-server-certificate
                              #:tag-server-certificate-request #:tag-user
                              #:tag-user-request #:tracked-action-last-accessed
                              #:tracked-actions-last-accessed
                              #:unmodifiable-entity-exception
                              #:unrecognized-public-key-encoding-exception
                              #:untag-instance-profile
                              #:untag-instance-profile-request
                              #:untag-mfadevice #:untag-mfadevice-request
                              #:untag-open-idconnect-provider
                              #:untag-open-idconnect-provider-request
                              #:untag-policy #:untag-policy-request
                              #:untag-role #:untag-role-request
                              #:untag-samlprovider #:untag-samlprovider-request
                              #:untag-server-certificate
                              #:untag-server-certificate-request #:untag-user
                              #:untag-user-request #:update-access-key
                              #:update-access-key-request
                              #:update-account-password-policy
                              #:update-account-password-policy-request
                              #:update-assume-role-policy
                              #:update-assume-role-policy-request
                              #:update-group #:update-group-request
                              #:update-login-profile
                              #:update-login-profile-request
                              #:update-open-idconnect-provider-thumbprint
                              #:update-open-idconnect-provider-thumbprint-request
                              #:update-role #:update-role-description
                              #:update-role-description-request
                              #:update-role-description-response
                              #:update-role-request #:update-role-response
                              #:update-samlprovider
                              #:update-samlprovider-request
                              #:update-samlprovider-response
                              #:update-sshpublic-key
                              #:update-sshpublic-key-request
                              #:update-server-certificate
                              #:update-server-certificate-request
                              #:update-service-specific-credential
                              #:update-service-specific-credential-request
                              #:update-signing-certificate
                              #:update-signing-certificate-request
                              #:update-user #:update-user-request
                              #:upload-sshpublic-key
                              #:upload-sshpublic-key-request
                              #:upload-sshpublic-key-response
                              #:upload-server-certificate
                              #:upload-server-certificate-request
                              #:upload-server-certificate-response
                              #:upload-signing-certificate
                              #:upload-signing-certificate-request
                              #:upload-signing-certificate-response #:user
                              #:user-detail #:virtual-mfadevice
                              #:access-key-id-type
                              #:access-key-metadata-list-type
                              #:access-key-secret-type
                              #:account-alias-list-type #:account-alias-type
                              #:all-users #:arn-type
                              #:assertion-encryption-mode-type
                              #:assignment-status-type
                              #:attached-policies-list-type
                              #:attachment-count-type
                              #:authentication-code-type #:boolean-object-type
                              #:boolean-type #:certificate-body-type
                              #:certificate-chain-type #:certificate-id-type
                              #:certificate-list-type #:client-idlist-type
                              #:client-idtype #:credential-age-days
                              #:credential-report-expired-exception-message
                              #:credential-report-not-present-exception-message
                              #:credential-report-not-ready-exception-message
                              #:custom-suffix-type #:date-type
                              #:delete-conflict-message
                              #:duplicate-certificate-message
                              #:duplicate-sshpublic-key-message #:encoding-type
                              #:entity-already-exists-message
                              #:entity-details-list-type #:entity-list-type
                              #:entity-name-type
                              #:entity-temporarily-unmodifiable-message
                              #:existing-user-name-type
                              #:global-endpoint-token-version
                              #:group-detail-list-type #:group-list-type
                              #:group-name-list-type #:group-name-type
                              #:id-type #:instance-profile-list-type
                              #:instance-profile-name-type #:integer-type
                              #:invalid-authentication-code-message
                              #:invalid-certificate-message
                              #:invalid-input-message
                              #:invalid-public-key-message
                              #:invalid-user-type-message #:job-idtype
                              #:job-status-type #:key-pair-mismatch-message
                              #:limit-exceeded-message
                              #:list-policy-granting-service-access-response-list-type
                              #:malformed-certificate-message
                              #:malformed-policy-document-message #:marker-type
                              #:max-items-type #:max-password-age-type
                              #:mfa-device-list-type
                              #:minimum-password-length-type
                              #:no-such-entity-message
                              #:open-id-idp-communication-error-exception-message
                              #:organizations-entity-path-type
                              #:organizations-policy-id-type
                              #:password-policy-violation-message
                              #:password-reuse-prevention-type #:password-type
                              #:path-prefix-type #:path-type
                              #:policy-description-type
                              #:policy-detail-list-type #:policy-document-type
                              #:policy-document-version-list-type
                              #:policy-evaluation-error-message
                              #:policy-granting-service-access-list-type
                              #:policy-list-type #:policy-name-list-type
                              #:policy-name-type
                              #:policy-not-attachable-message
                              #:policy-owner-entity-type #:policy-path-type
                              #:policy-scope-type #:policy-type
                              #:policy-version-id-type #:private-key-id-type
                              #:private-key-list #:private-key-type
                              #:public-key-fingerprint-type
                              #:public-key-id-type #:public-key-material-type
                              #:report-generation-limit-exceeded-message
                              #:response-marker-type #:role-description-type
                              #:role-detail-list-type #:role-list-type
                              #:role-max-session-duration-type #:role-name-type
                              #:serial-number-type
                              #:server-certificate-metadata-list-type
                              #:server-certificate-name-type
                              #:service-credential-alias
                              #:service-credential-secret
                              #:service-failure-exception-message
                              #:service-name #:service-name-type
                              #:service-namespace-list-type
                              #:service-namespace-type
                              #:service-not-supported-message
                              #:service-password
                              #:service-specific-credential-id
                              #:service-user-name #:sort-key-type #:status-type
                              #:string-type #:summary-key-type
                              #:summary-map-type #:summary-value-type
                              #:tag-key-list-type #:tag-key-type
                              #:tag-list-type #:tag-value-type
                              #:thumbprint-list-type #:thumbprint-type
                              #:unmodifiable-entity-message
                              #:unrecognized-public-key-encoding-message
                              #:user-detail-list-type #:user-list-type
                              #:user-name-type #:virtual-mfadevice-list-type
                              #:virtual-mfadevice-name))
(common-lisp:in-package #:pira/iam)

(smithy/sdk/service:define-service awsidentity-management-v20100508 :shape-name
                                   "AWSIdentityManagementV20100508" :version
                                   "2010-05-08" :title
                                   "AWS Identity and Access Management"
                                   :xml-namespace
                                   '(:uri
                                     "https://iam.amazonaws.com/doc/2010-05-08/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "IAM")
                                      ("arnNamespace" . "iam")
                                      ("cloudFormationName" . "IAM")
                                      ("cloudTrailEventSource"
                                       . "iam.amazonaws.com")
                                      ("endpointPrefix" . "iam"))
                                     ("aws.auth#sigv4" ("name" . "iam"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-enum access-advisor-usage-granularity-type
    common-lisp:nil
  (:service-level "SERVICE_LEVEL")
  (:action-level "ACTION_LEVEL"))

(smithy/sdk/shapes:define-structure access-detail common-lisp:nil
                                    ((service-name :target-type
                                      service-name-type :required common-lisp:t
                                      :member-name "ServiceName")
                                     (service-namespace :target-type
                                      service-namespace-type :required
                                      common-lisp:t :member-name
                                      "ServiceNamespace")
                                     (region :target-type string-type
                                      :member-name "Region")
                                     (entity-path :target-type
                                      organizations-entity-path-type
                                      :member-name "EntityPath")
                                     (last-authenticated-time :target-type
                                      date-type :member-name
                                      "LastAuthenticatedTime")
                                     (total-authenticated-entities :target-type
                                      integer-type :member-name
                                      "TotalAuthenticatedEntities"))
                                    (:shape-name "AccessDetail"))

(smithy/sdk/shapes:define-list access-details :member access-detail)

(smithy/sdk/shapes:define-structure access-key common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (access-key-id :target-type
                                      access-key-id-type :required
                                      common-lisp:t :member-name "AccessKeyId")
                                     (status :target-type status-type :required
                                      common-lisp:t :member-name "Status")
                                     (secret-access-key :target-type
                                      access-key-secret-type :required
                                      common-lisp:t :member-name
                                      "SecretAccessKey")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate"))
                                    (:shape-name "AccessKey"))

(smithy/sdk/shapes:define-structure access-key-last-used common-lisp:nil
                                    ((last-used-date :target-type date-type
                                      :member-name "LastUsedDate")
                                     (service-name :target-type string-type
                                      :required common-lisp:t :member-name
                                      "ServiceName")
                                     (region :target-type string-type :required
                                      common-lisp:t :member-name "Region"))
                                    (:shape-name "AccessKeyLastUsed"))

(smithy/sdk/shapes:define-structure access-key-metadata common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :member-name "UserName")
                                     (access-key-id :target-type
                                      access-key-id-type :member-name
                                      "AccessKeyId")
                                     (status :target-type status-type
                                      :member-name "Status")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate"))
                                    (:shape-name "AccessKeyMetadata"))

(smithy/sdk/shapes:define-error
 account-not-management-or-delegated-administrator-exception common-lisp:nil
 ((message :target-type exception-message :member-name "Message"))
 (:shape-name "AccountNotManagementOrDelegatedAdministratorException")
 (:error-code 400))

(smithy/sdk/shapes:define-list action-name-list-type :member action-name-type)

(smithy/sdk/shapes:define-type action-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-client-idto-open-idconnect-provider-request
                                common-lisp:nil
                                ((open-idconnect-provider-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "OpenIDConnectProviderArn")
                                 (client-id :target-type client-idtype
                                  :required common-lisp:t :member-name
                                  "ClientID"))
                                (:shape-name
                                 "AddClientIDToOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-input add-role-to-instance-profile-request
                                common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName")
                                 (role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName"))
                                (:shape-name "AddRoleToInstanceProfileRequest"))

(smithy/sdk/shapes:define-input add-user-to-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "AddUserToGroupRequest"))

(smithy/sdk/shapes:define-list arn-list-type :member arn-type)

(smithy/sdk/shapes:define-input attach-group-policy-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "AttachGroupPolicyRequest"))

(smithy/sdk/shapes:define-input attach-role-policy-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "AttachRolePolicyRequest"))

(smithy/sdk/shapes:define-input attach-user-policy-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "AttachUserPolicyRequest"))

(smithy/sdk/shapes:define-structure attached-permissions-boundary
                                    common-lisp:nil
                                    ((permissions-boundary-type :target-type
                                      permissions-boundary-attachment-type
                                      :member-name "PermissionsBoundaryType")
                                     (permissions-boundary-arn :target-type
                                      arn-type :member-name
                                      "PermissionsBoundaryArn"))
                                    (:shape-name "AttachedPermissionsBoundary"))

(smithy/sdk/shapes:define-structure attached-policy common-lisp:nil
                                    ((policy-name :target-type policy-name-type
                                      :member-name "PolicyName")
                                     (policy-arn :target-type arn-type
                                      :member-name "PolicyArn"))
                                    (:shape-name "AttachedPolicy"))

(smithy/sdk/shapes:define-type bootstrap-datum smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error caller-is-not-management-account-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CallerIsNotManagementAccountException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type certification-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map certification-map-type :key
                              certification-key-type :value
                              certification-value-type)

(smithy/sdk/shapes:define-type certification-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input change-password-request common-lisp:nil
                                ((old-password :target-type password-type
                                  :required common-lisp:t :member-name
                                  "OldPassword")
                                 (new-password :target-type password-type
                                  :required common-lisp:t :member-name
                                  "NewPassword"))
                                (:shape-name "ChangePasswordRequest"))

(smithy/sdk/shapes:define-type column-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type
                                  concurrent-modification-message :member-name
                                  "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type concurrent-modification-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure context-entry common-lisp:nil
                                    ((context-key-name :target-type
                                      context-key-name-type :member-name
                                      "ContextKeyName")
                                     (context-key-values :target-type
                                      context-key-value-list-type :member-name
                                      "ContextKeyValues")
                                     (context-key-type :target-type
                                      context-key-type-enum :member-name
                                      "ContextKeyType"))
                                    (:shape-name "ContextEntry"))

(smithy/sdk/shapes:define-list context-entry-list-type :member context-entry)

(smithy/sdk/shapes:define-type context-key-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list context-key-names-result-list-type :member
                               context-key-name-type)

(smithy/sdk/shapes:define-enum context-key-type-enum
    common-lisp:nil
  (:string "string")
  (:string-list "stringList")
  (:numeric "numeric")
  (:numeric-list "numericList")
  (:boolean "boolean")
  (:boolean-list "booleanList")
  (:ip "ip")
  (:ip-list "ipList")
  (:binary "binary")
  (:binary-list "binaryList")
  (:date "date")
  (:date-list "dateList"))

(smithy/sdk/shapes:define-list context-key-value-list-type :member
                               context-key-value-type)

(smithy/sdk/shapes:define-type context-key-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-access-key-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName"))
                                (:shape-name "CreateAccessKeyRequest"))

(smithy/sdk/shapes:define-output create-access-key-response common-lisp:nil
                                 ((access-key :target-type access-key :required
                                   common-lisp:t :member-name "AccessKey"))
                                 (:shape-name "CreateAccessKeyResponse"))

(smithy/sdk/shapes:define-input create-account-alias-request common-lisp:nil
                                ((account-alias :target-type account-alias-type
                                  :required common-lisp:t :member-name
                                  "AccountAlias"))
                                (:shape-name "CreateAccountAliasRequest"))

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((path :target-type path-type :member-name
                                  "Path")
                                 (group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-response common-lisp:nil
                                 ((group :target-type group :required
                                   common-lisp:t :member-name "Group"))
                                 (:shape-name "CreateGroupResponse"))

(smithy/sdk/shapes:define-input create-instance-profile-request common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName")
                                 (path :target-type path-type :member-name
                                  "Path")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "CreateInstanceProfileRequest"))

(smithy/sdk/shapes:define-output create-instance-profile-response
                                 common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :required common-lisp:t
                                   :member-name "InstanceProfile"))
                                 (:shape-name "CreateInstanceProfileResponse"))

(smithy/sdk/shapes:define-input create-login-profile-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName")
                                 (password :target-type password-type
                                  :member-name "Password")
                                 (password-reset-required :target-type
                                  boolean-type :member-name
                                  "PasswordResetRequired"))
                                (:shape-name "CreateLoginProfileRequest"))

(smithy/sdk/shapes:define-output create-login-profile-response common-lisp:nil
                                 ((login-profile :target-type login-profile
                                   :required common-lisp:t :member-name
                                   "LoginProfile"))
                                 (:shape-name "CreateLoginProfileResponse"))

(smithy/sdk/shapes:define-input create-open-idconnect-provider-request
                                common-lisp:nil
                                ((url :target-type
                                  open-idconnect-provider-url-type :required
                                  common-lisp:t :member-name "Url")
                                 (client-idlist :target-type client-idlist-type
                                  :member-name "ClientIDList")
                                 (thumbprint-list :target-type
                                  thumbprint-list-type :member-name
                                  "ThumbprintList")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-output create-open-idconnect-provider-response
                                 common-lisp:nil
                                 ((open-idconnect-provider-arn :target-type
                                   arn-type :member-name
                                   "OpenIDConnectProviderArn")
                                  (tags :target-type tag-list-type :member-name
                                   "Tags"))
                                 (:shape-name
                                  "CreateOpenIDConnectProviderResponse"))

(smithy/sdk/shapes:define-input create-policy-request common-lisp:nil
                                ((policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (path :target-type policy-path-type
                                  :member-name "Path")
                                 (policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "PolicyDocument")
                                 (description :target-type
                                  policy-description-type :member-name
                                  "Description")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "CreatePolicyRequest"))

(smithy/sdk/shapes:define-output create-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "CreatePolicyResponse"))

(smithy/sdk/shapes:define-input create-policy-version-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "PolicyDocument")
                                 (set-as-default :target-type boolean-type
                                  :member-name "SetAsDefault"))
                                (:shape-name "CreatePolicyVersionRequest"))

(smithy/sdk/shapes:define-output create-policy-version-response common-lisp:nil
                                 ((policy-version :target-type policy-version
                                   :member-name "PolicyVersion"))
                                 (:shape-name "CreatePolicyVersionResponse"))

(smithy/sdk/shapes:define-input create-role-request common-lisp:nil
                                ((path :target-type path-type :member-name
                                  "Path")
                                 (role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (assume-role-policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "AssumeRolePolicyDocument")
                                 (description :target-type
                                  role-description-type :member-name
                                  "Description")
                                 (max-session-duration :target-type
                                  role-max-session-duration-type :member-name
                                  "MaxSessionDuration")
                                 (permissions-boundary :target-type arn-type
                                  :member-name "PermissionsBoundary")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "CreateRoleRequest"))

(smithy/sdk/shapes:define-output create-role-response common-lisp:nil
                                 ((role :target-type role :required
                                   common-lisp:t :member-name "Role"))
                                 (:shape-name "CreateRoleResponse"))

(smithy/sdk/shapes:define-input create-samlprovider-request common-lisp:nil
                                ((samlmetadata-document :target-type
                                  samlmetadata-document-type :required
                                  common-lisp:t :member-name
                                  "SAMLMetadataDocument")
                                 (name :target-type samlprovider-name-type
                                  :required common-lisp:t :member-name "Name")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags")
                                 (assertion-encryption-mode :target-type
                                  assertion-encryption-mode-type :member-name
                                  "AssertionEncryptionMode")
                                 (add-private-key :target-type private-key-type
                                  :member-name "AddPrivateKey"))
                                (:shape-name "CreateSAMLProviderRequest"))

(smithy/sdk/shapes:define-output create-samlprovider-response common-lisp:nil
                                 ((samlprovider-arn :target-type arn-type
                                   :member-name "SAMLProviderArn")
                                  (tags :target-type tag-list-type :member-name
                                   "Tags"))
                                 (:shape-name "CreateSAMLProviderResponse"))

(smithy/sdk/shapes:define-input create-service-linked-role-request
                                common-lisp:nil
                                ((awsservice-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "AWSServiceName")
                                 (description :target-type
                                  role-description-type :member-name
                                  "Description")
                                 (custom-suffix :target-type custom-suffix-type
                                  :member-name "CustomSuffix"))
                                (:shape-name "CreateServiceLinkedRoleRequest"))

(smithy/sdk/shapes:define-output create-service-linked-role-response
                                 common-lisp:nil
                                 ((role :target-type role :member-name "Role"))
                                 (:shape-name
                                  "CreateServiceLinkedRoleResponse"))

(smithy/sdk/shapes:define-input create-service-specific-credential-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName")
                                 (credential-age-days :target-type
                                  credential-age-days :member-name
                                  "CredentialAgeDays"))
                                (:shape-name
                                 "CreateServiceSpecificCredentialRequest"))

(smithy/sdk/shapes:define-output create-service-specific-credential-response
                                 common-lisp:nil
                                 ((service-specific-credential :target-type
                                   service-specific-credential :member-name
                                   "ServiceSpecificCredential"))
                                 (:shape-name
                                  "CreateServiceSpecificCredentialResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((path :target-type path-type :member-name
                                  "Path")
                                 (user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (permissions-boundary :target-type arn-type
                                  :member-name "PermissionsBoundary")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-input create-virtual-mfadevice-request
                                common-lisp:nil
                                ((path :target-type path-type :member-name
                                  "Path")
                                 (virtual-mfadevice-name :target-type
                                  virtual-mfadevice-name :required
                                  common-lisp:t :member-name
                                  "VirtualMFADeviceName")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "CreateVirtualMFADeviceRequest"))

(smithy/sdk/shapes:define-output create-virtual-mfadevice-response
                                 common-lisp:nil
                                 ((virtual-mfadevice :target-type
                                   virtual-mfadevice :required common-lisp:t
                                   :member-name "VirtualMFADevice"))
                                 (:shape-name "CreateVirtualMFADeviceResponse"))

(smithy/sdk/shapes:define-error credential-report-expired-exception
                                common-lisp:nil
                                ((message :target-type
                                  credential-report-expired-exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CredentialReportExpiredException")
                                (:error-code 410))

(smithy/sdk/shapes:define-error credential-report-not-present-exception
                                common-lisp:nil
                                ((message :target-type
                                  credential-report-not-present-exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CredentialReportNotPresentException")
                                (:error-code 410))

(smithy/sdk/shapes:define-error credential-report-not-ready-exception
                                common-lisp:nil
                                ((message :target-type
                                  credential-report-not-ready-exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CredentialReportNotReadyException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input deactivate-mfadevice-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber"))
                                (:shape-name "DeactivateMFADeviceRequest"))

(smithy/sdk/shapes:define-input delete-access-key-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (access-key-id :target-type access-key-id-type
                                  :required common-lisp:t :member-name
                                  "AccessKeyId"))
                                (:shape-name "DeleteAccessKeyRequest"))

(smithy/sdk/shapes:define-input delete-account-alias-request common-lisp:nil
                                ((account-alias :target-type account-alias-type
                                  :required common-lisp:t :member-name
                                  "AccountAlias"))
                                (:shape-name "DeleteAccountAliasRequest"))

(smithy/sdk/shapes:define-error delete-conflict-exception common-lisp:nil
                                ((message :target-type delete-conflict-message
                                  :member-name "message"))
                                (:shape-name "DeleteConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input delete-group-policy-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "DeleteGroupPolicyRequest"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName"))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-input delete-instance-profile-request common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName"))
                                (:shape-name "DeleteInstanceProfileRequest"))

(smithy/sdk/shapes:define-input delete-login-profile-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName"))
                                (:shape-name "DeleteLoginProfileRequest"))

(smithy/sdk/shapes:define-input delete-open-idconnect-provider-request
                                common-lisp:nil
                                ((open-idconnect-provider-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "OpenIDConnectProviderArn"))
                                (:shape-name
                                 "DeleteOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-input delete-policy-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "DeletePolicyRequest"))

(smithy/sdk/shapes:define-input delete-policy-version-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (version-id :target-type
                                  policy-version-id-type :required
                                  common-lisp:t :member-name "VersionId"))
                                (:shape-name "DeletePolicyVersionRequest"))

(smithy/sdk/shapes:define-input delete-role-permissions-boundary-request
                                common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName"))
                                (:shape-name
                                 "DeleteRolePermissionsBoundaryRequest"))

(smithy/sdk/shapes:define-input delete-role-policy-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "DeleteRolePolicyRequest"))

(smithy/sdk/shapes:define-input delete-role-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName"))
                                (:shape-name "DeleteRoleRequest"))

(smithy/sdk/shapes:define-input delete-samlprovider-request common-lisp:nil
                                ((samlprovider-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "SAMLProviderArn"))
                                (:shape-name "DeleteSAMLProviderRequest"))

(smithy/sdk/shapes:define-input delete-sshpublic-key-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (sshpublic-key-id :target-type
                                  public-key-id-type :required common-lisp:t
                                  :member-name "SSHPublicKeyId"))
                                (:shape-name "DeleteSSHPublicKeyRequest"))

(smithy/sdk/shapes:define-input delete-server-certificate-request
                                common-lisp:nil
                                ((server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName"))
                                (:shape-name "DeleteServerCertificateRequest"))

(smithy/sdk/shapes:define-input delete-service-linked-role-request
                                common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName"))
                                (:shape-name "DeleteServiceLinkedRoleRequest"))

(smithy/sdk/shapes:define-output delete-service-linked-role-response
                                 common-lisp:nil
                                 ((deletion-task-id :target-type
                                   deletion-task-id-type :required
                                   common-lisp:t :member-name
                                   "DeletionTaskId"))
                                 (:shape-name
                                  "DeleteServiceLinkedRoleResponse"))

(smithy/sdk/shapes:define-input delete-service-specific-credential-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName")
                                 (service-specific-credential-id :target-type
                                  service-specific-credential-id :required
                                  common-lisp:t :member-name
                                  "ServiceSpecificCredentialId"))
                                (:shape-name
                                 "DeleteServiceSpecificCredentialRequest"))

(smithy/sdk/shapes:define-input delete-signing-certificate-request
                                common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (certificate-id :target-type
                                  certificate-id-type :required common-lisp:t
                                  :member-name "CertificateId"))
                                (:shape-name "DeleteSigningCertificateRequest"))

(smithy/sdk/shapes:define-input delete-user-permissions-boundary-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName"))
                                (:shape-name
                                 "DeleteUserPermissionsBoundaryRequest"))

(smithy/sdk/shapes:define-input delete-user-policy-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "DeleteUserPolicyRequest"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-input delete-virtual-mfadevice-request
                                common-lisp:nil
                                ((serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber"))
                                (:shape-name "DeleteVirtualMFADeviceRequest"))

(smithy/sdk/shapes:define-structure deletion-task-failure-reason-type
                                    common-lisp:nil
                                    ((reason :target-type reason-type
                                      :member-name "Reason")
                                     (role-usage-list :target-type
                                      role-usage-list-type :member-name
                                      "RoleUsageList"))
                                    (:shape-name
                                     "DeletionTaskFailureReasonType"))

(smithy/sdk/shapes:define-type deletion-task-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum deletion-task-status-type
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:not-started "NOT_STARTED"))

(smithy/sdk/shapes:define-input detach-group-policy-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "DetachGroupPolicyRequest"))

(smithy/sdk/shapes:define-input detach-role-policy-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "DetachRolePolicyRequest"))

(smithy/sdk/shapes:define-input detach-user-policy-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "DetachUserPolicyRequest"))

(smithy/sdk/shapes:define-input
 disable-organizations-root-credentials-management-request common-lisp:nil
 common-lisp:nil
 (:shape-name "DisableOrganizationsRootCredentialsManagementRequest"))

(smithy/sdk/shapes:define-output
 disable-organizations-root-credentials-management-response common-lisp:nil
 ((organization-id :target-type organization-id-type :member-name
   "OrganizationId")
  (enabled-features :target-type features-list-type :member-name
   "EnabledFeatures"))
 (:shape-name "DisableOrganizationsRootCredentialsManagementResponse"))

(smithy/sdk/shapes:define-input disable-organizations-root-sessions-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisableOrganizationsRootSessionsRequest"))

(smithy/sdk/shapes:define-output disable-organizations-root-sessions-response
                                 common-lisp:nil
                                 ((organization-id :target-type
                                   organization-id-type :member-name
                                   "OrganizationId")
                                  (enabled-features :target-type
                                   features-list-type :member-name
                                   "EnabledFeatures"))
                                 (:shape-name
                                  "DisableOrganizationsRootSessionsResponse"))

(smithy/sdk/shapes:define-error duplicate-certificate-exception common-lisp:nil
                                ((message :target-type
                                  duplicate-certificate-message :member-name
                                  "message"))
                                (:shape-name "DuplicateCertificateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error duplicate-sshpublic-key-exception
                                common-lisp:nil
                                ((message :target-type
                                  duplicate-sshpublic-key-message :member-name
                                  "message"))
                                (:shape-name "DuplicateSSHPublicKeyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input enable-mfadevice-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber")
                                 (authentication-code1 :target-type
                                  authentication-code-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationCode1")
                                 (authentication-code2 :target-type
                                  authentication-code-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationCode2"))
                                (:shape-name "EnableMFADeviceRequest"))

(smithy/sdk/shapes:define-input
 enable-organizations-root-credentials-management-request common-lisp:nil
 common-lisp:nil
 (:shape-name "EnableOrganizationsRootCredentialsManagementRequest"))

(smithy/sdk/shapes:define-output
 enable-organizations-root-credentials-management-response common-lisp:nil
 ((organization-id :target-type organization-id-type :member-name
   "OrganizationId")
  (enabled-features :target-type features-list-type :member-name
   "EnabledFeatures"))
 (:shape-name "EnableOrganizationsRootCredentialsManagementResponse"))

(smithy/sdk/shapes:define-input enable-organizations-root-sessions-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "EnableOrganizationsRootSessionsRequest"))

(smithy/sdk/shapes:define-output enable-organizations-root-sessions-response
                                 common-lisp:nil
                                 ((organization-id :target-type
                                   organization-id-type :member-name
                                   "OrganizationId")
                                  (enabled-features :target-type
                                   features-list-type :member-name
                                   "EnabledFeatures"))
                                 (:shape-name
                                  "EnableOrganizationsRootSessionsResponse"))

(smithy/sdk/shapes:define-error entity-already-exists-exception common-lisp:nil
                                ((message :target-type
                                  entity-already-exists-message :member-name
                                  "message"))
                                (:shape-name "EntityAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure entity-details common-lisp:nil
                                    ((entity-info :target-type entity-info
                                      :required common-lisp:t :member-name
                                      "EntityInfo")
                                     (last-authenticated :target-type date-type
                                      :member-name "LastAuthenticated"))
                                    (:shape-name "EntityDetails"))

(smithy/sdk/shapes:define-structure entity-info common-lisp:nil
                                    ((arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type
                                      policy-owner-entity-type :required
                                      common-lisp:t :member-name "Type")
                                     (id :target-type id-type :required
                                      common-lisp:t :member-name "Id")
                                     (path :target-type path-type :member-name
                                      "Path"))
                                    (:shape-name "EntityInfo"))

(smithy/sdk/shapes:define-error entity-temporarily-unmodifiable-exception
                                common-lisp:nil
                                ((message :target-type
                                  entity-temporarily-unmodifiable-message
                                  :member-name "message"))
                                (:shape-name
                                 "EntityTemporarilyUnmodifiableException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:user "User")
  (:role "Role")
  (:group "Group")
  (:local-managed-policy "LocalManagedPolicy")
  (:awsmanaged-policy "AWSManagedPolicy"))

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((message :target-type string-type
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (code :target-type string-type :required
                                      common-lisp:t :member-name "Code"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-map eval-decision-details-type :key
                              eval-decision-source-type :value
                              policy-evaluation-decision-type)

(smithy/sdk/shapes:define-type eval-decision-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation-result common-lisp:nil
                                    ((eval-action-name :target-type
                                      action-name-type :required common-lisp:t
                                      :member-name "EvalActionName")
                                     (eval-resource-name :target-type
                                      resource-name-type :member-name
                                      "EvalResourceName")
                                     (eval-decision :target-type
                                      policy-evaluation-decision-type :required
                                      common-lisp:t :member-name
                                      "EvalDecision")
                                     (matched-statements :target-type
                                      statement-list-type :member-name
                                      "MatchedStatements")
                                     (missing-context-values :target-type
                                      context-key-names-result-list-type
                                      :member-name "MissingContextValues")
                                     (organizations-decision-detail
                                      :target-type
                                      organizations-decision-detail
                                      :member-name
                                      "OrganizationsDecisionDetail")
                                     (permissions-boundary-decision-detail
                                      :target-type
                                      permissions-boundary-decision-detail
                                      :member-name
                                      "PermissionsBoundaryDecisionDetail")
                                     (eval-decision-details :target-type
                                      eval-decision-details-type :member-name
                                      "EvalDecisionDetails")
                                     (resource-specific-results :target-type
                                      resource-specific-result-list-type
                                      :member-name "ResourceSpecificResults"))
                                    (:shape-name "EvaluationResult"))

(smithy/sdk/shapes:define-list evaluation-results-list-type :member
                               evaluation-result)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum feature-type
    common-lisp:nil
  (:root-credentials-management "RootCredentialsManagement")
  (:root-sessions "RootSessions"))

(smithy/sdk/shapes:define-list features-list-type :member feature-type)

(smithy/sdk/shapes:define-output generate-credential-report-response
                                 common-lisp:nil
                                 ((state :target-type report-state-type
                                   :member-name "State")
                                  (description :target-type
                                   report-state-description-type :member-name
                                   "Description"))
                                 (:shape-name
                                  "GenerateCredentialReportResponse"))

(smithy/sdk/shapes:define-input generate-organizations-access-report-request
                                common-lisp:nil
                                ((entity-path :target-type
                                  organizations-entity-path-type :required
                                  common-lisp:t :member-name "EntityPath")
                                 (organizations-policy-id :target-type
                                  organizations-policy-id-type :member-name
                                  "OrganizationsPolicyId"))
                                (:shape-name
                                 "GenerateOrganizationsAccessReportRequest"))

(smithy/sdk/shapes:define-output generate-organizations-access-report-response
                                 common-lisp:nil
                                 ((job-id :target-type job-idtype :member-name
                                   "JobId"))
                                 (:shape-name
                                  "GenerateOrganizationsAccessReportResponse"))

(smithy/sdk/shapes:define-input generate-service-last-accessed-details-request
                                common-lisp:nil
                                ((arn :target-type arn-type :required
                                  common-lisp:t :member-name "Arn")
                                 (granularity :target-type
                                  access-advisor-usage-granularity-type
                                  :member-name "Granularity"))
                                (:shape-name
                                 "GenerateServiceLastAccessedDetailsRequest"))

(smithy/sdk/shapes:define-output
 generate-service-last-accessed-details-response common-lisp:nil
 ((job-id :target-type job-idtype :member-name "JobId"))
 (:shape-name "GenerateServiceLastAccessedDetailsResponse"))

(smithy/sdk/shapes:define-input get-access-key-last-used-request
                                common-lisp:nil
                                ((access-key-id :target-type access-key-id-type
                                  :required common-lisp:t :member-name
                                  "AccessKeyId"))
                                (:shape-name "GetAccessKeyLastUsedRequest"))

(smithy/sdk/shapes:define-output get-access-key-last-used-response
                                 common-lisp:nil
                                 ((user-name :target-type
                                   existing-user-name-type :member-name
                                   "UserName")
                                  (access-key-last-used :target-type
                                   access-key-last-used :member-name
                                   "AccessKeyLastUsed"))
                                 (:shape-name "GetAccessKeyLastUsedResponse"))

(smithy/sdk/shapes:define-input get-account-authorization-details-request
                                common-lisp:nil
                                ((filter :target-type entity-list-type
                                  :member-name "Filter")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name
                                 "GetAccountAuthorizationDetailsRequest"))

(smithy/sdk/shapes:define-output get-account-authorization-details-response
                                 common-lisp:nil
                                 ((user-detail-list :target-type
                                   user-detail-list-type :member-name
                                   "UserDetailList")
                                  (group-detail-list :target-type
                                   group-detail-list-type :member-name
                                   "GroupDetailList")
                                  (role-detail-list :target-type
                                   role-detail-list-type :member-name
                                   "RoleDetailList")
                                  (policies :target-type
                                   managed-policy-detail-list-type :member-name
                                   "Policies")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "GetAccountAuthorizationDetailsResponse"))

(smithy/sdk/shapes:define-output get-account-password-policy-response
                                 common-lisp:nil
                                 ((password-policy :target-type password-policy
                                   :required common-lisp:t :member-name
                                   "PasswordPolicy"))
                                 (:shape-name
                                  "GetAccountPasswordPolicyResponse"))

(smithy/sdk/shapes:define-output get-account-summary-response common-lisp:nil
                                 ((summary-map :target-type summary-map-type
                                   :member-name "SummaryMap"))
                                 (:shape-name "GetAccountSummaryResponse"))

(smithy/sdk/shapes:define-input get-context-keys-for-custom-policy-request
                                common-lisp:nil
                                ((policy-input-list :target-type
                                  simulation-policy-list-type :required
                                  common-lisp:t :member-name
                                  "PolicyInputList"))
                                (:shape-name
                                 "GetContextKeysForCustomPolicyRequest"))

(smithy/sdk/shapes:define-structure get-context-keys-for-policy-response
                                    common-lisp:nil
                                    ((context-key-names :target-type
                                      context-key-names-result-list-type
                                      :member-name "ContextKeyNames"))
                                    (:shape-name
                                     "GetContextKeysForPolicyResponse"))

(smithy/sdk/shapes:define-input get-context-keys-for-principal-policy-request
                                common-lisp:nil
                                ((policy-source-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "PolicySourceArn")
                                 (policy-input-list :target-type
                                  simulation-policy-list-type :member-name
                                  "PolicyInputList"))
                                (:shape-name
                                 "GetContextKeysForPrincipalPolicyRequest"))

(smithy/sdk/shapes:define-output get-credential-report-response common-lisp:nil
                                 ((content :target-type report-content-type
                                   :member-name "Content")
                                  (report-format :target-type
                                   report-format-type :member-name
                                   "ReportFormat")
                                  (generated-time :target-type date-type
                                   :member-name "GeneratedTime"))
                                 (:shape-name "GetCredentialReportResponse"))

(smithy/sdk/shapes:define-input get-group-policy-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "GetGroupPolicyRequest"))

(smithy/sdk/shapes:define-output get-group-policy-response common-lisp:nil
                                 ((group-name :target-type group-name-type
                                   :required common-lisp:t :member-name
                                   "GroupName")
                                  (policy-name :target-type policy-name-type
                                   :required common-lisp:t :member-name
                                   "PolicyName")
                                  (policy-document :target-type
                                   policy-document-type :required common-lisp:t
                                   :member-name "PolicyDocument"))
                                 (:shape-name "GetGroupPolicyResponse"))

(smithy/sdk/shapes:define-input get-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "GetGroupRequest"))

(smithy/sdk/shapes:define-output get-group-response common-lisp:nil
                                 ((group :target-type group :required
                                   common-lisp:t :member-name "Group")
                                  (users :target-type user-list-type :required
                                   common-lisp:t :member-name "Users")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "GetGroupResponse"))

(smithy/sdk/shapes:define-input get-instance-profile-request common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName"))
                                (:shape-name "GetInstanceProfileRequest"))

(smithy/sdk/shapes:define-output get-instance-profile-response common-lisp:nil
                                 ((instance-profile :target-type
                                   instance-profile :required common-lisp:t
                                   :member-name "InstanceProfile"))
                                 (:shape-name "GetInstanceProfileResponse"))

(smithy/sdk/shapes:define-input get-login-profile-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName"))
                                (:shape-name "GetLoginProfileRequest"))

(smithy/sdk/shapes:define-output get-login-profile-response common-lisp:nil
                                 ((login-profile :target-type login-profile
                                   :required common-lisp:t :member-name
                                   "LoginProfile"))
                                 (:shape-name "GetLoginProfileResponse"))

(smithy/sdk/shapes:define-input get-mfadevice-request common-lisp:nil
                                ((serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber")
                                 (user-name :target-type user-name-type
                                  :member-name "UserName"))
                                (:shape-name "GetMFADeviceRequest"))

(smithy/sdk/shapes:define-output get-mfadevice-response common-lisp:nil
                                 ((user-name :target-type user-name-type
                                   :member-name "UserName")
                                  (serial-number :target-type
                                   serial-number-type :required common-lisp:t
                                   :member-name "SerialNumber")
                                  (enable-date :target-type date-type
                                   :member-name "EnableDate")
                                  (certifications :target-type
                                   certification-map-type :member-name
                                   "Certifications"))
                                 (:shape-name "GetMFADeviceResponse"))

(smithy/sdk/shapes:define-input get-open-idconnect-provider-request
                                common-lisp:nil
                                ((open-idconnect-provider-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "OpenIDConnectProviderArn"))
                                (:shape-name "GetOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-output get-open-idconnect-provider-response
                                 common-lisp:nil
                                 ((url :target-type
                                   open-idconnect-provider-url-type
                                   :member-name "Url")
                                  (client-idlist :target-type
                                   client-idlist-type :member-name
                                   "ClientIDList")
                                  (thumbprint-list :target-type
                                   thumbprint-list-type :member-name
                                   "ThumbprintList")
                                  (create-date :target-type date-type
                                   :member-name "CreateDate")
                                  (tags :target-type tag-list-type :member-name
                                   "Tags"))
                                 (:shape-name
                                  "GetOpenIDConnectProviderResponse"))

(smithy/sdk/shapes:define-input get-organizations-access-report-request
                                common-lisp:nil
                                ((job-id :target-type job-idtype :required
                                  common-lisp:t :member-name "JobId")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (sort-key :target-type sort-key-type
                                  :member-name "SortKey"))
                                (:shape-name
                                 "GetOrganizationsAccessReportRequest"))

(smithy/sdk/shapes:define-output get-organizations-access-report-response
                                 common-lisp:nil
                                 ((job-status :target-type job-status-type
                                   :required common-lisp:t :member-name
                                   "JobStatus")
                                  (job-creation-date :target-type date-type
                                   :required common-lisp:t :member-name
                                   "JobCreationDate")
                                  (job-completion-date :target-type date-type
                                   :member-name "JobCompletionDate")
                                  (number-of-services-accessible :target-type
                                   integer-type :member-name
                                   "NumberOfServicesAccessible")
                                  (number-of-services-not-accessed :target-type
                                   integer-type :member-name
                                   "NumberOfServicesNotAccessed")
                                  (access-details :target-type access-details
                                   :member-name "AccessDetails")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type marker-type :member-name
                                   "Marker")
                                  (error-details :target-type error-details
                                   :member-name "ErrorDetails"))
                                 (:shape-name
                                  "GetOrganizationsAccessReportResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn"))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-policy-version-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (version-id :target-type
                                  policy-version-id-type :required
                                  common-lisp:t :member-name "VersionId"))
                                (:shape-name "GetPolicyVersionRequest"))

(smithy/sdk/shapes:define-output get-policy-version-response common-lisp:nil
                                 ((policy-version :target-type policy-version
                                   :member-name "PolicyVersion"))
                                 (:shape-name "GetPolicyVersionResponse"))

(smithy/sdk/shapes:define-input get-role-policy-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "GetRolePolicyRequest"))

(smithy/sdk/shapes:define-output get-role-policy-response common-lisp:nil
                                 ((role-name :target-type role-name-type
                                   :required common-lisp:t :member-name
                                   "RoleName")
                                  (policy-name :target-type policy-name-type
                                   :required common-lisp:t :member-name
                                   "PolicyName")
                                  (policy-document :target-type
                                   policy-document-type :required common-lisp:t
                                   :member-name "PolicyDocument"))
                                 (:shape-name "GetRolePolicyResponse"))

(smithy/sdk/shapes:define-input get-role-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName"))
                                (:shape-name "GetRoleRequest"))

(smithy/sdk/shapes:define-output get-role-response common-lisp:nil
                                 ((role :target-type role :required
                                   common-lisp:t :member-name "Role"))
                                 (:shape-name "GetRoleResponse"))

(smithy/sdk/shapes:define-input get-samlprovider-request common-lisp:nil
                                ((samlprovider-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "SAMLProviderArn"))
                                (:shape-name "GetSAMLProviderRequest"))

(smithy/sdk/shapes:define-output get-samlprovider-response common-lisp:nil
                                 ((samlprovider-uuid :target-type
                                   private-key-id-type :member-name
                                   "SAMLProviderUUID")
                                  (samlmetadata-document :target-type
                                   samlmetadata-document-type :member-name
                                   "SAMLMetadataDocument")
                                  (create-date :target-type date-type
                                   :member-name "CreateDate")
                                  (valid-until :target-type date-type
                                   :member-name "ValidUntil")
                                  (tags :target-type tag-list-type :member-name
                                   "Tags")
                                  (assertion-encryption-mode :target-type
                                   assertion-encryption-mode-type :member-name
                                   "AssertionEncryptionMode")
                                  (private-key-list :target-type
                                   private-key-list :member-name
                                   "PrivateKeyList"))
                                 (:shape-name "GetSAMLProviderResponse"))

(smithy/sdk/shapes:define-input get-sshpublic-key-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (sshpublic-key-id :target-type
                                  public-key-id-type :required common-lisp:t
                                  :member-name "SSHPublicKeyId")
                                 (encoding :target-type encoding-type :required
                                  common-lisp:t :member-name "Encoding"))
                                (:shape-name "GetSSHPublicKeyRequest"))

(smithy/sdk/shapes:define-output get-sshpublic-key-response common-lisp:nil
                                 ((sshpublic-key :target-type sshpublic-key
                                   :member-name "SSHPublicKey"))
                                 (:shape-name "GetSSHPublicKeyResponse"))

(smithy/sdk/shapes:define-input get-server-certificate-request common-lisp:nil
                                ((server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName"))
                                (:shape-name "GetServerCertificateRequest"))

(smithy/sdk/shapes:define-output get-server-certificate-response
                                 common-lisp:nil
                                 ((server-certificate :target-type
                                   server-certificate :required common-lisp:t
                                   :member-name "ServerCertificate"))
                                 (:shape-name "GetServerCertificateResponse"))

(smithy/sdk/shapes:define-input get-service-last-accessed-details-request
                                common-lisp:nil
                                ((job-id :target-type job-idtype :required
                                  common-lisp:t :member-name "JobId")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name
                                 "GetServiceLastAccessedDetailsRequest"))

(smithy/sdk/shapes:define-output get-service-last-accessed-details-response
                                 common-lisp:nil
                                 ((job-status :target-type job-status-type
                                   :required common-lisp:t :member-name
                                   "JobStatus")
                                  (job-type :target-type
                                   access-advisor-usage-granularity-type
                                   :member-name "JobType")
                                  (job-creation-date :target-type date-type
                                   :required common-lisp:t :member-name
                                   "JobCreationDate")
                                  (services-last-accessed :target-type
                                   services-last-accessed :required
                                   common-lisp:t :member-name
                                   "ServicesLastAccessed")
                                  (job-completion-date :target-type date-type
                                   :required common-lisp:t :member-name
                                   "JobCompletionDate")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker")
                                  (error :target-type error-details
                                   :member-name "Error"))
                                 (:shape-name
                                  "GetServiceLastAccessedDetailsResponse"))

(smithy/sdk/shapes:define-input
 get-service-last-accessed-details-with-entities-request common-lisp:nil
 ((job-id :target-type job-idtype :required common-lisp:t :member-name "JobId")
  (service-namespace :target-type service-namespace-type :required
   common-lisp:t :member-name "ServiceNamespace")
  (max-items :target-type max-items-type :member-name "MaxItems")
  (marker :target-type marker-type :member-name "Marker"))
 (:shape-name "GetServiceLastAccessedDetailsWithEntitiesRequest"))

(smithy/sdk/shapes:define-output
 get-service-last-accessed-details-with-entities-response common-lisp:nil
 ((job-status :target-type job-status-type :required common-lisp:t :member-name
   "JobStatus")
  (job-creation-date :target-type date-type :required common-lisp:t
   :member-name "JobCreationDate")
  (job-completion-date :target-type date-type :required common-lisp:t
   :member-name "JobCompletionDate")
  (entity-details-list :target-type entity-details-list-type :required
   common-lisp:t :member-name "EntityDetailsList")
  (is-truncated :target-type boolean-type :member-name "IsTruncated")
  (marker :target-type response-marker-type :member-name "Marker")
  (error :target-type error-details :member-name "Error"))
 (:shape-name "GetServiceLastAccessedDetailsWithEntitiesResponse"))

(smithy/sdk/shapes:define-input get-service-linked-role-deletion-status-request
                                common-lisp:nil
                                ((deletion-task-id :target-type
                                  deletion-task-id-type :required common-lisp:t
                                  :member-name "DeletionTaskId"))
                                (:shape-name
                                 "GetServiceLinkedRoleDeletionStatusRequest"))

(smithy/sdk/shapes:define-output
 get-service-linked-role-deletion-status-response common-lisp:nil
 ((status :target-type deletion-task-status-type :required common-lisp:t
   :member-name "Status")
  (reason :target-type deletion-task-failure-reason-type :member-name
   "Reason"))
 (:shape-name "GetServiceLinkedRoleDeletionStatusResponse"))

(smithy/sdk/shapes:define-input get-user-policy-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "GetUserPolicyRequest"))

(smithy/sdk/shapes:define-output get-user-policy-response common-lisp:nil
                                 ((user-name :target-type
                                   existing-user-name-type :required
                                   common-lisp:t :member-name "UserName")
                                  (policy-name :target-type policy-name-type
                                   :required common-lisp:t :member-name
                                   "PolicyName")
                                  (policy-document :target-type
                                   policy-document-type :required common-lisp:t
                                   :member-name "PolicyDocument"))
                                 (:shape-name "GetUserPolicyResponse"))

(smithy/sdk/shapes:define-input get-user-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName"))
                                (:shape-name "GetUserRequest"))

(smithy/sdk/shapes:define-output get-user-response common-lisp:nil
                                 ((user :target-type user :required
                                   common-lisp:t :member-name "User"))
                                 (:shape-name "GetUserResponse"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((path :target-type path-type :required
                                      common-lisp:t :member-name "Path")
                                     (group-name :target-type group-name-type
                                      :required common-lisp:t :member-name
                                      "GroupName")
                                     (group-id :target-type id-type :required
                                      common-lisp:t :member-name "GroupId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn")
                                     (create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-structure group-detail common-lisp:nil
                                    ((path :target-type path-type :member-name
                                      "Path")
                                     (group-name :target-type group-name-type
                                      :member-name "GroupName")
                                     (group-id :target-type id-type
                                      :member-name "GroupId")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate")
                                     (group-policy-list :target-type
                                      policy-detail-list-type :member-name
                                      "GroupPolicyList")
                                     (attached-managed-policies :target-type
                                      attached-policies-list-type :member-name
                                      "AttachedManagedPolicies"))
                                    (:shape-name "GroupDetail"))

(smithy/sdk/shapes:define-structure instance-profile common-lisp:nil
                                    ((path :target-type path-type :required
                                      common-lisp:t :member-name "Path")
                                     (instance-profile-name :target-type
                                      instance-profile-name-type :required
                                      common-lisp:t :member-name
                                      "InstanceProfileName")
                                     (instance-profile-id :target-type id-type
                                      :required common-lisp:t :member-name
                                      "InstanceProfileId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn")
                                     (create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate")
                                     (roles :target-type role-list-type
                                      :required common-lisp:t :member-name
                                      "Roles")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags"))
                                    (:shape-name "InstanceProfile"))

(smithy/sdk/shapes:define-error invalid-authentication-code-exception
                                common-lisp:nil
                                ((message :target-type
                                  invalid-authentication-code-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidAuthenticationCodeException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error invalid-certificate-exception common-lisp:nil
                                ((message :target-type
                                  invalid-certificate-message :member-name
                                  "message"))
                                (:shape-name "InvalidCertificateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type invalid-input-message
                                  :member-name "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-public-key-exception common-lisp:nil
                                ((message :target-type
                                  invalid-public-key-message :member-name
                                  "message"))
                                (:shape-name "InvalidPublicKeyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-user-type-exception common-lisp:nil
                                ((message :target-type
                                  invalid-user-type-message :member-name
                                  "message"))
                                (:shape-name "InvalidUserTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error key-pair-mismatch-exception common-lisp:nil
                                ((message :target-type
                                  key-pair-mismatch-message :member-name
                                  "message"))
                                (:shape-name "KeyPairMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type limit-exceeded-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type line-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-access-keys-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListAccessKeysRequest"))

(smithy/sdk/shapes:define-output list-access-keys-response common-lisp:nil
                                 ((access-key-metadata :target-type
                                   access-key-metadata-list-type :required
                                   common-lisp:t :member-name
                                   "AccessKeyMetadata")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListAccessKeysResponse"))

(smithy/sdk/shapes:define-input list-account-aliases-request common-lisp:nil
                                ((marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListAccountAliasesRequest"))

(smithy/sdk/shapes:define-output list-account-aliases-response common-lisp:nil
                                 ((account-aliases :target-type
                                   account-alias-list-type :required
                                   common-lisp:t :member-name "AccountAliases")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListAccountAliasesResponse"))

(smithy/sdk/shapes:define-input list-attached-group-policies-request
                                common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (path-prefix :target-type policy-path-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name
                                 "ListAttachedGroupPoliciesRequest"))

(smithy/sdk/shapes:define-output list-attached-group-policies-response
                                 common-lisp:nil
                                 ((attached-policies :target-type
                                   attached-policies-list-type :member-name
                                   "AttachedPolicies")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListAttachedGroupPoliciesResponse"))

(smithy/sdk/shapes:define-input list-attached-role-policies-request
                                common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (path-prefix :target-type policy-path-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListAttachedRolePoliciesRequest"))

(smithy/sdk/shapes:define-output list-attached-role-policies-response
                                 common-lisp:nil
                                 ((attached-policies :target-type
                                   attached-policies-list-type :member-name
                                   "AttachedPolicies")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListAttachedRolePoliciesResponse"))

(smithy/sdk/shapes:define-input list-attached-user-policies-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (path-prefix :target-type policy-path-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListAttachedUserPoliciesRequest"))

(smithy/sdk/shapes:define-output list-attached-user-policies-response
                                 common-lisp:nil
                                 ((attached-policies :target-type
                                   attached-policies-list-type :member-name
                                   "AttachedPolicies")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListAttachedUserPoliciesResponse"))

(smithy/sdk/shapes:define-input list-entities-for-policy-request
                                common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (entity-filter :target-type entity-type
                                  :member-name "EntityFilter")
                                 (path-prefix :target-type path-type
                                  :member-name "PathPrefix")
                                 (policy-usage-filter :target-type
                                  policy-usage-type :member-name
                                  "PolicyUsageFilter")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListEntitiesForPolicyRequest"))

(smithy/sdk/shapes:define-output list-entities-for-policy-response
                                 common-lisp:nil
                                 ((policy-groups :target-type
                                   policy-group-list-type :member-name
                                   "PolicyGroups")
                                  (policy-users :target-type
                                   policy-user-list-type :member-name
                                   "PolicyUsers")
                                  (policy-roles :target-type
                                   policy-role-list-type :member-name
                                   "PolicyRoles")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListEntitiesForPolicyResponse"))

(smithy/sdk/shapes:define-input list-group-policies-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListGroupPoliciesRequest"))

(smithy/sdk/shapes:define-output list-group-policies-response common-lisp:nil
                                 ((policy-names :target-type
                                   policy-name-list-type :required
                                   common-lisp:t :member-name "PolicyNames")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListGroupPoliciesResponse"))

(smithy/sdk/shapes:define-input list-groups-for-user-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListGroupsForUserRequest"))

(smithy/sdk/shapes:define-output list-groups-for-user-response common-lisp:nil
                                 ((groups :target-type group-list-type
                                   :required common-lisp:t :member-name
                                   "Groups")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListGroupsForUserResponse"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((path-prefix :target-type path-prefix-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-response common-lisp:nil
                                 ((groups :target-type group-list-type
                                   :required common-lisp:t :member-name
                                   "Groups")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-input list-instance-profile-tags-request
                                common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListInstanceProfileTagsRequest"))

(smithy/sdk/shapes:define-output list-instance-profile-tags-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListInstanceProfileTagsResponse"))

(smithy/sdk/shapes:define-input list-instance-profiles-for-role-request
                                common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name
                                 "ListInstanceProfilesForRoleRequest"))

(smithy/sdk/shapes:define-output list-instance-profiles-for-role-response
                                 common-lisp:nil
                                 ((instance-profiles :target-type
                                   instance-profile-list-type :required
                                   common-lisp:t :member-name
                                   "InstanceProfiles")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListInstanceProfilesForRoleResponse"))

(smithy/sdk/shapes:define-input list-instance-profiles-request common-lisp:nil
                                ((path-prefix :target-type path-prefix-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListInstanceProfilesRequest"))

(smithy/sdk/shapes:define-output list-instance-profiles-response
                                 common-lisp:nil
                                 ((instance-profiles :target-type
                                   instance-profile-list-type :required
                                   common-lisp:t :member-name
                                   "InstanceProfiles")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListInstanceProfilesResponse"))

(smithy/sdk/shapes:define-input list-mfadevice-tags-request common-lisp:nil
                                ((serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListMFADeviceTagsRequest"))

(smithy/sdk/shapes:define-output list-mfadevice-tags-response common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListMFADeviceTagsResponse"))

(smithy/sdk/shapes:define-input list-mfadevices-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListMFADevicesRequest"))

(smithy/sdk/shapes:define-output list-mfadevices-response common-lisp:nil
                                 ((mfadevices :target-type mfa-device-list-type
                                   :required common-lisp:t :member-name
                                   "MFADevices")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListMFADevicesResponse"))

(smithy/sdk/shapes:define-input list-open-idconnect-provider-tags-request
                                common-lisp:nil
                                ((open-idconnect-provider-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "OpenIDConnectProviderArn")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name
                                 "ListOpenIDConnectProviderTagsRequest"))

(smithy/sdk/shapes:define-output list-open-idconnect-provider-tags-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListOpenIDConnectProviderTagsResponse"))

(smithy/sdk/shapes:define-input list-open-idconnect-providers-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ListOpenIDConnectProvidersRequest"))

(smithy/sdk/shapes:define-output list-open-idconnect-providers-response
                                 common-lisp:nil
                                 ((open-idconnect-provider-list :target-type
                                   open-idconnect-provider-list-type
                                   :member-name "OpenIDConnectProviderList"))
                                 (:shape-name
                                  "ListOpenIDConnectProvidersResponse"))

(smithy/sdk/shapes:define-input list-organizations-features-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ListOrganizationsFeaturesRequest"))

(smithy/sdk/shapes:define-output list-organizations-features-response
                                 common-lisp:nil
                                 ((organization-id :target-type
                                   organization-id-type :member-name
                                   "OrganizationId")
                                  (enabled-features :target-type
                                   features-list-type :member-name
                                   "EnabledFeatures"))
                                 (:shape-name
                                  "ListOrganizationsFeaturesResponse"))

(smithy/sdk/shapes:define-structure list-policies-granting-service-access-entry
                                    common-lisp:nil
                                    ((service-namespace :target-type
                                      service-namespace-type :member-name
                                      "ServiceNamespace")
                                     (policies :target-type
                                      policy-granting-service-access-list-type
                                      :member-name "Policies"))
                                    (:shape-name
                                     "ListPoliciesGrantingServiceAccessEntry"))

(smithy/sdk/shapes:define-input list-policies-granting-service-access-request
                                common-lisp:nil
                                ((marker :target-type marker-type :member-name
                                  "Marker")
                                 (arn :target-type arn-type :required
                                  common-lisp:t :member-name "Arn")
                                 (service-namespaces :target-type
                                  service-namespace-list-type :required
                                  common-lisp:t :member-name
                                  "ServiceNamespaces"))
                                (:shape-name
                                 "ListPoliciesGrantingServiceAccessRequest"))

(smithy/sdk/shapes:define-output list-policies-granting-service-access-response
                                 common-lisp:nil
                                 ((policies-granting-service-access
                                   :target-type
                                   list-policy-granting-service-access-response-list-type
                                   :required common-lisp:t :member-name
                                   "PoliciesGrantingServiceAccess")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListPoliciesGrantingServiceAccessResponse"))

(smithy/sdk/shapes:define-input list-policies-request common-lisp:nil
                                ((scope :target-type policy-scope-type
                                  :member-name "Scope")
                                 (only-attached :target-type boolean-type
                                  :member-name "OnlyAttached")
                                 (path-prefix :target-type policy-path-type
                                  :member-name "PathPrefix")
                                 (policy-usage-filter :target-type
                                  policy-usage-type :member-name
                                  "PolicyUsageFilter")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListPoliciesRequest"))

(smithy/sdk/shapes:define-output list-policies-response common-lisp:nil
                                 ((policies :target-type policy-list-type
                                   :member-name "Policies")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListPoliciesResponse"))

(smithy/sdk/shapes:define-input list-policy-tags-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListPolicyTagsRequest"))

(smithy/sdk/shapes:define-output list-policy-tags-response common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListPolicyTagsResponse"))

(smithy/sdk/shapes:define-input list-policy-versions-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListPolicyVersionsRequest"))

(smithy/sdk/shapes:define-output list-policy-versions-response common-lisp:nil
                                 ((versions :target-type
                                   policy-document-version-list-type
                                   :member-name "Versions")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListPolicyVersionsResponse"))

(smithy/sdk/shapes:define-input list-role-policies-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListRolePoliciesRequest"))

(smithy/sdk/shapes:define-output list-role-policies-response common-lisp:nil
                                 ((policy-names :target-type
                                   policy-name-list-type :required
                                   common-lisp:t :member-name "PolicyNames")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListRolePoliciesResponse"))

(smithy/sdk/shapes:define-input list-role-tags-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListRoleTagsRequest"))

(smithy/sdk/shapes:define-output list-role-tags-response common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListRoleTagsResponse"))

(smithy/sdk/shapes:define-input list-roles-request common-lisp:nil
                                ((path-prefix :target-type path-prefix-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListRolesRequest"))

(smithy/sdk/shapes:define-output list-roles-response common-lisp:nil
                                 ((roles :target-type role-list-type :required
                                   common-lisp:t :member-name "Roles")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListRolesResponse"))

(smithy/sdk/shapes:define-input list-samlprovider-tags-request common-lisp:nil
                                ((samlprovider-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "SAMLProviderArn")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListSAMLProviderTagsRequest"))

(smithy/sdk/shapes:define-output list-samlprovider-tags-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListSAMLProviderTagsResponse"))

(smithy/sdk/shapes:define-input list-samlproviders-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ListSAMLProvidersRequest"))

(smithy/sdk/shapes:define-output list-samlproviders-response common-lisp:nil
                                 ((samlprovider-list :target-type
                                   samlprovider-list-type :member-name
                                   "SAMLProviderList"))
                                 (:shape-name "ListSAMLProvidersResponse"))

(smithy/sdk/shapes:define-input list-sshpublic-keys-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListSSHPublicKeysRequest"))

(smithy/sdk/shapes:define-output list-sshpublic-keys-response common-lisp:nil
                                 ((sshpublic-keys :target-type
                                   sshpublic-key-list-type :member-name
                                   "SSHPublicKeys")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListSSHPublicKeysResponse"))

(smithy/sdk/shapes:define-input list-server-certificate-tags-request
                                common-lisp:nil
                                ((server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name
                                 "ListServerCertificateTagsRequest"))

(smithy/sdk/shapes:define-output list-server-certificate-tags-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListServerCertificateTagsResponse"))

(smithy/sdk/shapes:define-input list-server-certificates-request
                                common-lisp:nil
                                ((path-prefix :target-type path-prefix-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListServerCertificatesRequest"))

(smithy/sdk/shapes:define-output list-server-certificates-response
                                 common-lisp:nil
                                 ((server-certificate-metadata-list
                                   :target-type
                                   server-certificate-metadata-list-type
                                   :required common-lisp:t :member-name
                                   "ServerCertificateMetadataList")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListServerCertificatesResponse"))

(smithy/sdk/shapes:define-input list-service-specific-credentials-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName")
                                 (service-name :target-type service-name
                                  :member-name "ServiceName")
                                 (all-users :target-type all-users :member-name
                                  "AllUsers")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name
                                 "ListServiceSpecificCredentialsRequest"))

(smithy/sdk/shapes:define-output list-service-specific-credentials-response
                                 common-lisp:nil
                                 ((service-specific-credentials :target-type
                                   service-specific-credentials-list-type
                                   :member-name "ServiceSpecificCredentials")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated"))
                                 (:shape-name
                                  "ListServiceSpecificCredentialsResponse"))

(smithy/sdk/shapes:define-input list-signing-certificates-request
                                common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListSigningCertificatesRequest"))

(smithy/sdk/shapes:define-output list-signing-certificates-response
                                 common-lisp:nil
                                 ((certificates :target-type
                                   certificate-list-type :required
                                   common-lisp:t :member-name "Certificates")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "ListSigningCertificatesResponse"))

(smithy/sdk/shapes:define-input list-user-policies-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListUserPoliciesRequest"))

(smithy/sdk/shapes:define-output list-user-policies-response common-lisp:nil
                                 ((policy-names :target-type
                                   policy-name-list-type :required
                                   common-lisp:t :member-name "PolicyNames")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListUserPoliciesResponse"))

(smithy/sdk/shapes:define-input list-user-tags-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListUserTagsRequest"))

(smithy/sdk/shapes:define-output list-user-tags-response common-lisp:nil
                                 ((tags :target-type tag-list-type :required
                                   common-lisp:t :member-name "Tags")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListUserTagsResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((path-prefix :target-type path-prefix-type
                                  :member-name "PathPrefix")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((users :target-type user-list-type :required
                                   common-lisp:t :member-name "Users")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-input list-virtual-mfadevices-request common-lisp:nil
                                ((assignment-status :target-type
                                  assignment-status-type :member-name
                                  "AssignmentStatus")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems"))
                                (:shape-name "ListVirtualMFADevicesRequest"))

(smithy/sdk/shapes:define-output list-virtual-mfadevices-response
                                 common-lisp:nil
                                 ((virtual-mfadevices :target-type
                                   virtual-mfadevice-list-type :required
                                   common-lisp:t :member-name
                                   "VirtualMFADevices")
                                  (is-truncated :target-type boolean-type
                                   :member-name "IsTruncated")
                                  (marker :target-type response-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "ListVirtualMFADevicesResponse"))

(smithy/sdk/shapes:define-structure login-profile common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate")
                                     (password-reset-required :target-type
                                      boolean-type :member-name
                                      "PasswordResetRequired"))
                                    (:shape-name "LoginProfile"))

(smithy/sdk/shapes:define-structure mfadevice common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (serial-number :target-type
                                      serial-number-type :required
                                      common-lisp:t :member-name
                                      "SerialNumber")
                                     (enable-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "EnableDate"))
                                    (:shape-name "MFADevice"))

(smithy/sdk/shapes:define-error malformed-certificate-exception common-lisp:nil
                                ((message :target-type
                                  malformed-certificate-message :member-name
                                  "message"))
                                (:shape-name "MalformedCertificateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type
                                  malformed-policy-document-message
                                  :member-name "message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure managed-policy-detail common-lisp:nil
                                    ((policy-name :target-type policy-name-type
                                      :member-name "PolicyName")
                                     (policy-id :target-type id-type
                                      :member-name "PolicyId")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (path :target-type policy-path-type
                                      :member-name "Path")
                                     (default-version-id :target-type
                                      policy-version-id-type :member-name
                                      "DefaultVersionId")
                                     (attachment-count :target-type
                                      attachment-count-type :member-name
                                      "AttachmentCount")
                                     (permissions-boundary-usage-count
                                      :target-type attachment-count-type
                                      :member-name
                                      "PermissionsBoundaryUsageCount")
                                     (is-attachable :target-type boolean-type
                                      :member-name "IsAttachable")
                                     (description :target-type
                                      policy-description-type :member-name
                                      "Description")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate")
                                     (update-date :target-type date-type
                                      :member-name "UpdateDate")
                                     (policy-version-list :target-type
                                      policy-document-version-list-type
                                      :member-name "PolicyVersionList"))
                                    (:shape-name "ManagedPolicyDetail"))

(smithy/sdk/shapes:define-list managed-policy-detail-list-type :member
                               managed-policy-detail)

(smithy/sdk/shapes:define-error no-such-entity-exception common-lisp:nil
                                ((message :target-type no-such-entity-message
                                  :member-name "message"))
                                (:shape-name "NoSuchEntityException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure open-idconnect-provider-list-entry
                                    common-lisp:nil
                                    ((arn :target-type arn-type :member-name
                                      "Arn"))
                                    (:shape-name
                                     "OpenIDConnectProviderListEntry"))

(smithy/sdk/shapes:define-list open-idconnect-provider-list-type :member
                               open-idconnect-provider-list-entry)

(smithy/sdk/shapes:define-type open-idconnect-provider-url-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error open-id-idp-communication-error-exception
                                common-lisp:nil
                                ((message :target-type
                                  open-id-idp-communication-error-exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "OpenIdIdpCommunicationErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type organization-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error organization-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "OrganizationNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error organization-not-in-all-features-mode-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OrganizationNotInAllFeaturesModeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure organizations-decision-detail
                                    common-lisp:nil
                                    ((allowed-by-organizations :target-type
                                      boolean-type :member-name
                                      "AllowedByOrganizations"))
                                    (:shape-name "OrganizationsDecisionDetail"))

(smithy/sdk/shapes:define-structure password-policy common-lisp:nil
                                    ((minimum-password-length :target-type
                                      minimum-password-length-type :member-name
                                      "MinimumPasswordLength")
                                     (require-symbols :target-type boolean-type
                                      :member-name "RequireSymbols")
                                     (require-numbers :target-type boolean-type
                                      :member-name "RequireNumbers")
                                     (require-uppercase-characters :target-type
                                      boolean-type :member-name
                                      "RequireUppercaseCharacters")
                                     (require-lowercase-characters :target-type
                                      boolean-type :member-name
                                      "RequireLowercaseCharacters")
                                     (allow-users-to-change-password
                                      :target-type boolean-type :member-name
                                      "AllowUsersToChangePassword")
                                     (expire-passwords :target-type
                                      boolean-type :member-name
                                      "ExpirePasswords")
                                     (max-password-age :target-type
                                      max-password-age-type :member-name
                                      "MaxPasswordAge")
                                     (password-reuse-prevention :target-type
                                      password-reuse-prevention-type
                                      :member-name "PasswordReusePrevention")
                                     (hard-expiry :target-type
                                      boolean-object-type :member-name
                                      "HardExpiry"))
                                    (:shape-name "PasswordPolicy"))

(smithy/sdk/shapes:define-error password-policy-violation-exception
                                common-lisp:nil
                                ((message :target-type
                                  password-policy-violation-message
                                  :member-name "message"))
                                (:shape-name
                                 "PasswordPolicyViolationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum permissions-boundary-attachment-type
    common-lisp:nil
  (:policy "PermissionsBoundaryPolicy"))

(smithy/sdk/shapes:define-structure permissions-boundary-decision-detail
                                    common-lisp:nil
                                    ((allowed-by-permissions-boundary
                                      :target-type boolean-type :member-name
                                      "AllowedByPermissionsBoundary"))
                                    (:shape-name
                                     "PermissionsBoundaryDecisionDetail"))

(smithy/sdk/shapes:define-structure policy common-lisp:nil
                                    ((policy-name :target-type policy-name-type
                                      :member-name "PolicyName")
                                     (policy-id :target-type id-type
                                      :member-name "PolicyId")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (path :target-type policy-path-type
                                      :member-name "Path")
                                     (default-version-id :target-type
                                      policy-version-id-type :member-name
                                      "DefaultVersionId")
                                     (attachment-count :target-type
                                      attachment-count-type :member-name
                                      "AttachmentCount")
                                     (permissions-boundary-usage-count
                                      :target-type attachment-count-type
                                      :member-name
                                      "PermissionsBoundaryUsageCount")
                                     (is-attachable :target-type boolean-type
                                      :member-name "IsAttachable")
                                     (description :target-type
                                      policy-description-type :member-name
                                      "Description")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate")
                                     (update-date :target-type date-type
                                      :member-name "UpdateDate")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags"))
                                    (:shape-name "Policy"))

(smithy/sdk/shapes:define-structure policy-detail common-lisp:nil
                                    ((policy-name :target-type policy-name-type
                                      :member-name "PolicyName")
                                     (policy-document :target-type
                                      policy-document-type :member-name
                                      "PolicyDocument"))
                                    (:shape-name "PolicyDetail"))

(smithy/sdk/shapes:define-enum policy-evaluation-decision-type
    common-lisp:nil
  (:allowed "allowed")
  (:explicit-deny "explicitDeny")
  (:implicit-deny "implicitDeny"))

(smithy/sdk/shapes:define-error policy-evaluation-exception common-lisp:nil
                                ((message :target-type
                                  policy-evaluation-error-message :member-name
                                  "message"))
                                (:shape-name "PolicyEvaluationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure policy-granting-service-access
                                    common-lisp:nil
                                    ((policy-name :target-type policy-name-type
                                      :required common-lisp:t :member-name
                                      "PolicyName")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "PolicyType")
                                     (policy-arn :target-type arn-type
                                      :member-name "PolicyArn")
                                     (entity-type :target-type
                                      policy-owner-entity-type :member-name
                                      "EntityType")
                                     (entity-name :target-type entity-name-type
                                      :member-name "EntityName"))
                                    (:shape-name "PolicyGrantingServiceAccess"))

(smithy/sdk/shapes:define-structure policy-group common-lisp:nil
                                    ((group-name :target-type group-name-type
                                      :member-name "GroupName")
                                     (group-id :target-type id-type
                                      :member-name "GroupId"))
                                    (:shape-name "PolicyGroup"))

(smithy/sdk/shapes:define-list policy-group-list-type :member policy-group)

(smithy/sdk/shapes:define-type policy-identifier-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-not-attachable-exception common-lisp:nil
                                ((message :target-type
                                  policy-not-attachable-message :member-name
                                  "message"))
                                (:shape-name "PolicyNotAttachableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure policy-role common-lisp:nil
                                    ((role-name :target-type role-name-type
                                      :member-name "RoleName")
                                     (role-id :target-type id-type :member-name
                                      "RoleId"))
                                    (:shape-name "PolicyRole"))

(smithy/sdk/shapes:define-list policy-role-list-type :member policy-role)

(smithy/sdk/shapes:define-enum policy-source-type
    common-lisp:nil
  (:user "user")
  (:group "group")
  (:role "role")
  (:aws-managed "aws-managed")
  (:user-managed "user-managed")
  (:resource "resource")
  (:none "none"))

(smithy/sdk/shapes:define-enum policy-usage-type
    common-lisp:nil
  (:permissions-policy "PermissionsPolicy")
  (:permissions-boundary "PermissionsBoundary"))

(smithy/sdk/shapes:define-structure policy-user common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :member-name "UserName")
                                     (user-id :target-type id-type :member-name
                                      "UserId"))
                                    (:shape-name "PolicyUser"))

(smithy/sdk/shapes:define-list policy-user-list-type :member policy-user)

(smithy/sdk/shapes:define-structure policy-version common-lisp:nil
                                    ((document :target-type
                                      policy-document-type :member-name
                                      "Document")
                                     (version-id :target-type
                                      policy-version-id-type :member-name
                                      "VersionId")
                                     (is-default-version :target-type
                                      boolean-type :member-name
                                      "IsDefaultVersion")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate"))
                                    (:shape-name "PolicyVersion"))

(smithy/sdk/shapes:define-structure position common-lisp:nil
                                    ((line :target-type line-number
                                      :member-name "Line")
                                     (column :target-type column-number
                                      :member-name "Column"))
                                    (:shape-name "Position"))

(smithy/sdk/shapes:define-input put-group-policy-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "PolicyDocument"))
                                (:shape-name "PutGroupPolicyRequest"))

(smithy/sdk/shapes:define-input put-role-permissions-boundary-request
                                common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (permissions-boundary :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "PermissionsBoundary"))
                                (:shape-name
                                 "PutRolePermissionsBoundaryRequest"))

(smithy/sdk/shapes:define-input put-role-policy-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "PolicyDocument"))
                                (:shape-name "PutRolePolicyRequest"))

(smithy/sdk/shapes:define-input put-user-permissions-boundary-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (permissions-boundary :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "PermissionsBoundary"))
                                (:shape-name
                                 "PutUserPermissionsBoundaryRequest"))

(smithy/sdk/shapes:define-input put-user-policy-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (policy-name :target-type policy-name-type
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "PolicyDocument"))
                                (:shape-name "PutUserPolicyRequest"))

(smithy/sdk/shapes:define-type reason-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 remove-client-idfrom-open-idconnect-provider-request common-lisp:nil
 ((open-idconnect-provider-arn :target-type arn-type :required common-lisp:t
   :member-name "OpenIDConnectProviderArn")
  (client-id :target-type client-idtype :required common-lisp:t :member-name
   "ClientID"))
 (:shape-name "RemoveClientIDFromOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-input remove-role-from-instance-profile-request
                                common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName")
                                 (role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName"))
                                (:shape-name
                                 "RemoveRoleFromInstanceProfileRequest"))

(smithy/sdk/shapes:define-input remove-user-from-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "RemoveUserFromGroupRequest"))

(smithy/sdk/shapes:define-type report-content-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum report-format-type
    common-lisp:nil
  (:text-csv "text/csv"))

(smithy/sdk/shapes:define-error report-generation-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  report-generation-limit-exceeded-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReportGenerationLimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type report-state-description-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum report-state-type
    common-lisp:nil
  (:started "STARTED")
  (:inprogress "INPROGRESS")
  (:complete "COMPLETE"))

(smithy/sdk/shapes:define-input reset-service-specific-credential-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName")
                                 (service-specific-credential-id :target-type
                                  service-specific-credential-id :required
                                  common-lisp:t :member-name
                                  "ServiceSpecificCredentialId"))
                                (:shape-name
                                 "ResetServiceSpecificCredentialRequest"))

(smithy/sdk/shapes:define-output reset-service-specific-credential-response
                                 common-lisp:nil
                                 ((service-specific-credential :target-type
                                   service-specific-credential :member-name
                                   "ServiceSpecificCredential"))
                                 (:shape-name
                                  "ResetServiceSpecificCredentialResponse"))

(smithy/sdk/shapes:define-type resource-handling-option-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-name-list-type :member
                               resource-name-type)

(smithy/sdk/shapes:define-type resource-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-specific-result common-lisp:nil
                                    ((eval-resource-name :target-type
                                      resource-name-type :required
                                      common-lisp:t :member-name
                                      "EvalResourceName")
                                     (eval-resource-decision :target-type
                                      policy-evaluation-decision-type :required
                                      common-lisp:t :member-name
                                      "EvalResourceDecision")
                                     (matched-statements :target-type
                                      statement-list-type :member-name
                                      "MatchedStatements")
                                     (missing-context-values :target-type
                                      context-key-names-result-list-type
                                      :member-name "MissingContextValues")
                                     (eval-decision-details :target-type
                                      eval-decision-details-type :member-name
                                      "EvalDecisionDetails")
                                     (permissions-boundary-decision-detail
                                      :target-type
                                      permissions-boundary-decision-detail
                                      :member-name
                                      "PermissionsBoundaryDecisionDetail"))
                                    (:shape-name "ResourceSpecificResult"))

(smithy/sdk/shapes:define-list resource-specific-result-list-type :member
                               resource-specific-result)

(smithy/sdk/shapes:define-input resync-mfadevice-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber")
                                 (authentication-code1 :target-type
                                  authentication-code-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationCode1")
                                 (authentication-code2 :target-type
                                  authentication-code-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationCode2"))
                                (:shape-name "ResyncMFADeviceRequest"))

(smithy/sdk/shapes:define-structure role common-lisp:nil
                                    ((path :target-type path-type :required
                                      common-lisp:t :member-name "Path")
                                     (role-name :target-type role-name-type
                                      :required common-lisp:t :member-name
                                      "RoleName")
                                     (role-id :target-type id-type :required
                                      common-lisp:t :member-name "RoleId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn")
                                     (create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate")
                                     (assume-role-policy-document :target-type
                                      policy-document-type :member-name
                                      "AssumeRolePolicyDocument")
                                     (description :target-type
                                      role-description-type :member-name
                                      "Description")
                                     (max-session-duration :target-type
                                      role-max-session-duration-type
                                      :member-name "MaxSessionDuration")
                                     (permissions-boundary :target-type
                                      attached-permissions-boundary
                                      :member-name "PermissionsBoundary")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags")
                                     (role-last-used :target-type
                                      role-last-used :member-name
                                      "RoleLastUsed"))
                                    (:shape-name "Role"))

(smithy/sdk/shapes:define-structure role-detail common-lisp:nil
                                    ((path :target-type path-type :member-name
                                      "Path")
                                     (role-name :target-type role-name-type
                                      :member-name "RoleName")
                                     (role-id :target-type id-type :member-name
                                      "RoleId")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate")
                                     (assume-role-policy-document :target-type
                                      policy-document-type :member-name
                                      "AssumeRolePolicyDocument")
                                     (instance-profile-list :target-type
                                      instance-profile-list-type :member-name
                                      "InstanceProfileList")
                                     (role-policy-list :target-type
                                      policy-detail-list-type :member-name
                                      "RolePolicyList")
                                     (attached-managed-policies :target-type
                                      attached-policies-list-type :member-name
                                      "AttachedManagedPolicies")
                                     (permissions-boundary :target-type
                                      attached-permissions-boundary
                                      :member-name "PermissionsBoundary")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags")
                                     (role-last-used :target-type
                                      role-last-used :member-name
                                      "RoleLastUsed"))
                                    (:shape-name "RoleDetail"))

(smithy/sdk/shapes:define-structure role-last-used common-lisp:nil
                                    ((last-used-date :target-type date-type
                                      :member-name "LastUsedDate")
                                     (region :target-type string-type
                                      :member-name "Region"))
                                    (:shape-name "RoleLastUsed"))

(smithy/sdk/shapes:define-list role-usage-list-type :member role-usage-type)

(smithy/sdk/shapes:define-structure role-usage-type common-lisp:nil
                                    ((region :target-type region-name-type
                                      :member-name "Region")
                                     (resources :target-type arn-list-type
                                      :member-name "Resources"))
                                    (:shape-name "RoleUsageType"))

(smithy/sdk/shapes:define-type samlmetadata-document-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure samlprivate-key common-lisp:nil
                                    ((key-id :target-type private-key-id-type
                                      :member-name "KeyId")
                                     (timestamp :target-type date-type
                                      :member-name "Timestamp"))
                                    (:shape-name "SAMLPrivateKey"))

(smithy/sdk/shapes:define-structure samlprovider-list-entry common-lisp:nil
                                    ((arn :target-type arn-type :member-name
                                      "Arn")
                                     (valid-until :target-type date-type
                                      :member-name "ValidUntil")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate"))
                                    (:shape-name "SAMLProviderListEntry"))

(smithy/sdk/shapes:define-list samlprovider-list-type :member
                               samlprovider-list-entry)

(smithy/sdk/shapes:define-type samlprovider-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sshpublic-key common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (sshpublic-key-id :target-type
                                      public-key-id-type :required
                                      common-lisp:t :member-name
                                      "SSHPublicKeyId")
                                     (fingerprint :target-type
                                      public-key-fingerprint-type :required
                                      common-lisp:t :member-name "Fingerprint")
                                     (sshpublic-key-body :target-type
                                      public-key-material-type :required
                                      common-lisp:t :member-name
                                      "SSHPublicKeyBody")
                                     (status :target-type status-type :required
                                      common-lisp:t :member-name "Status")
                                     (upload-date :target-type date-type
                                      :member-name "UploadDate"))
                                    (:shape-name "SSHPublicKey"))

(smithy/sdk/shapes:define-list sshpublic-key-list-type :member
                               sshpublic-key-metadata)

(smithy/sdk/shapes:define-structure sshpublic-key-metadata common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (sshpublic-key-id :target-type
                                      public-key-id-type :required
                                      common-lisp:t :member-name
                                      "SSHPublicKeyId")
                                     (status :target-type status-type :required
                                      common-lisp:t :member-name "Status")
                                     (upload-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "UploadDate"))
                                    (:shape-name "SSHPublicKeyMetadata"))

(smithy/sdk/shapes:define-structure server-certificate common-lisp:nil
                                    ((server-certificate-metadata :target-type
                                      server-certificate-metadata :required
                                      common-lisp:t :member-name
                                      "ServerCertificateMetadata")
                                     (certificate-body :target-type
                                      certificate-body-type :required
                                      common-lisp:t :member-name
                                      "CertificateBody")
                                     (certificate-chain :target-type
                                      certificate-chain-type :member-name
                                      "CertificateChain")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags"))
                                    (:shape-name "ServerCertificate"))

(smithy/sdk/shapes:define-structure server-certificate-metadata common-lisp:nil
                                    ((path :target-type path-type :required
                                      common-lisp:t :member-name "Path")
                                     (server-certificate-name :target-type
                                      server-certificate-name-type :required
                                      common-lisp:t :member-name
                                      "ServerCertificateName")
                                     (server-certificate-id :target-type
                                      id-type :required common-lisp:t
                                      :member-name "ServerCertificateId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn")
                                     (upload-date :target-type date-type
                                      :member-name "UploadDate")
                                     (expiration :target-type date-type
                                      :member-name "Expiration"))
                                    (:shape-name "ServerCertificateMetadata"))

(smithy/sdk/shapes:define-error service-access-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ServiceAccessNotEnabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error service-failure-exception common-lisp:nil
                                ((message :target-type
                                  service-failure-exception-message
                                  :member-name "message"))
                                (:shape-name "ServiceFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure service-last-accessed common-lisp:nil
                                    ((service-name :target-type
                                      service-name-type :required common-lisp:t
                                      :member-name "ServiceName")
                                     (last-authenticated :target-type date-type
                                      :member-name "LastAuthenticated")
                                     (service-namespace :target-type
                                      service-namespace-type :required
                                      common-lisp:t :member-name
                                      "ServiceNamespace")
                                     (last-authenticated-entity :target-type
                                      arn-type :member-name
                                      "LastAuthenticatedEntity")
                                     (last-authenticated-region :target-type
                                      string-type :member-name
                                      "LastAuthenticatedRegion")
                                     (total-authenticated-entities :target-type
                                      integer-type :member-name
                                      "TotalAuthenticatedEntities")
                                     (tracked-actions-last-accessed
                                      :target-type
                                      tracked-actions-last-accessed
                                      :member-name
                                      "TrackedActionsLastAccessed"))
                                    (:shape-name "ServiceLastAccessed"))

(smithy/sdk/shapes:define-error service-not-supported-exception common-lisp:nil
                                ((message :target-type
                                  service-not-supported-message :member-name
                                  "message"))
                                (:shape-name "ServiceNotSupportedException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure service-specific-credential common-lisp:nil
                                    ((create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate")
                                     (expiration-date :target-type date-type
                                      :member-name "ExpirationDate")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName")
                                     (service-user-name :target-type
                                      service-user-name :member-name
                                      "ServiceUserName")
                                     (service-password :target-type
                                      service-password :member-name
                                      "ServicePassword")
                                     (service-credential-alias :target-type
                                      service-credential-alias :member-name
                                      "ServiceCredentialAlias")
                                     (service-credential-secret :target-type
                                      service-credential-secret :member-name
                                      "ServiceCredentialSecret")
                                     (service-specific-credential-id
                                      :target-type
                                      service-specific-credential-id :required
                                      common-lisp:t :member-name
                                      "ServiceSpecificCredentialId")
                                     (user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (status :target-type status-type :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "ServiceSpecificCredential"))

(smithy/sdk/shapes:define-structure service-specific-credential-metadata
                                    common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (status :target-type status-type :required
                                      common-lisp:t :member-name "Status")
                                     (service-user-name :target-type
                                      service-user-name :member-name
                                      "ServiceUserName")
                                     (service-credential-alias :target-type
                                      service-credential-alias :member-name
                                      "ServiceCredentialAlias")
                                     (create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate")
                                     (expiration-date :target-type date-type
                                      :member-name "ExpirationDate")
                                     (service-specific-credential-id
                                      :target-type
                                      service-specific-credential-id :required
                                      common-lisp:t :member-name
                                      "ServiceSpecificCredentialId")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName"))
                                    (:shape-name
                                     "ServiceSpecificCredentialMetadata"))

(smithy/sdk/shapes:define-list service-specific-credentials-list-type :member
                               service-specific-credential-metadata)

(smithy/sdk/shapes:define-list services-last-accessed :member
                               service-last-accessed)

(smithy/sdk/shapes:define-input set-default-policy-version-request
                                common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (version-id :target-type
                                  policy-version-id-type :required
                                  common-lisp:t :member-name "VersionId"))
                                (:shape-name "SetDefaultPolicyVersionRequest"))

(smithy/sdk/shapes:define-input set-security-token-service-preferences-request
                                common-lisp:nil
                                ((global-endpoint-token-version :target-type
                                  global-endpoint-token-version :required
                                  common-lisp:t :member-name
                                  "GlobalEndpointTokenVersion"))
                                (:shape-name
                                 "SetSecurityTokenServicePreferencesRequest"))

(smithy/sdk/shapes:define-structure signing-certificate common-lisp:nil
                                    ((user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (certificate-id :target-type
                                      certificate-id-type :required
                                      common-lisp:t :member-name
                                      "CertificateId")
                                     (certificate-body :target-type
                                      certificate-body-type :required
                                      common-lisp:t :member-name
                                      "CertificateBody")
                                     (status :target-type status-type :required
                                      common-lisp:t :member-name "Status")
                                     (upload-date :target-type date-type
                                      :member-name "UploadDate"))
                                    (:shape-name "SigningCertificate"))

(smithy/sdk/shapes:define-input simulate-custom-policy-request common-lisp:nil
                                ((policy-input-list :target-type
                                  simulation-policy-list-type :required
                                  common-lisp:t :member-name "PolicyInputList")
                                 (permissions-boundary-policy-input-list
                                  :target-type simulation-policy-list-type
                                  :member-name
                                  "PermissionsBoundaryPolicyInputList")
                                 (action-names :target-type
                                  action-name-list-type :required common-lisp:t
                                  :member-name "ActionNames")
                                 (resource-arns :target-type
                                  resource-name-list-type :member-name
                                  "ResourceArns")
                                 (resource-policy :target-type
                                  policy-document-type :member-name
                                  "ResourcePolicy")
                                 (resource-owner :target-type
                                  resource-name-type :member-name
                                  "ResourceOwner")
                                 (caller-arn :target-type resource-name-type
                                  :member-name "CallerArn")
                                 (context-entries :target-type
                                  context-entry-list-type :member-name
                                  "ContextEntries")
                                 (resource-handling-option :target-type
                                  resource-handling-option-type :member-name
                                  "ResourceHandlingOption")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "SimulateCustomPolicyRequest"))

(smithy/sdk/shapes:define-structure simulate-policy-response common-lisp:nil
                                    ((evaluation-results :target-type
                                      evaluation-results-list-type :member-name
                                      "EvaluationResults")
                                     (is-truncated :target-type boolean-type
                                      :member-name "IsTruncated")
                                     (marker :target-type response-marker-type
                                      :member-name "Marker"))
                                    (:shape-name "SimulatePolicyResponse"))

(smithy/sdk/shapes:define-input simulate-principal-policy-request
                                common-lisp:nil
                                ((policy-source-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "PolicySourceArn")
                                 (policy-input-list :target-type
                                  simulation-policy-list-type :member-name
                                  "PolicyInputList")
                                 (permissions-boundary-policy-input-list
                                  :target-type simulation-policy-list-type
                                  :member-name
                                  "PermissionsBoundaryPolicyInputList")
                                 (action-names :target-type
                                  action-name-list-type :required common-lisp:t
                                  :member-name "ActionNames")
                                 (resource-arns :target-type
                                  resource-name-list-type :member-name
                                  "ResourceArns")
                                 (resource-policy :target-type
                                  policy-document-type :member-name
                                  "ResourcePolicy")
                                 (resource-owner :target-type
                                  resource-name-type :member-name
                                  "ResourceOwner")
                                 (caller-arn :target-type resource-name-type
                                  :member-name "CallerArn")
                                 (context-entries :target-type
                                  context-entry-list-type :member-name
                                  "ContextEntries")
                                 (resource-handling-option :target-type
                                  resource-handling-option-type :member-name
                                  "ResourceHandlingOption")
                                 (max-items :target-type max-items-type
                                  :member-name "MaxItems")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "SimulatePrincipalPolicyRequest"))

(smithy/sdk/shapes:define-list simulation-policy-list-type :member
                               policy-document-type)

(smithy/sdk/shapes:define-structure statement common-lisp:nil
                                    ((source-policy-id :target-type
                                      policy-identifier-type :member-name
                                      "SourcePolicyId")
                                     (source-policy-type :target-type
                                      policy-source-type :member-name
                                      "SourcePolicyType")
                                     (start-position :target-type position
                                      :member-name "StartPosition")
                                     (end-position :target-type position
                                      :member-name "EndPosition"))
                                    (:shape-name "Statement"))

(smithy/sdk/shapes:define-list statement-list-type :member statement)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key-type :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value-type
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-input tag-instance-profile-request common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagInstanceProfileRequest"))

(smithy/sdk/shapes:define-input tag-mfadevice-request common-lisp:nil
                                ((serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagMFADeviceRequest"))

(smithy/sdk/shapes:define-input tag-open-idconnect-provider-request
                                common-lisp:nil
                                ((open-idconnect-provider-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "OpenIDConnectProviderArn")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-input tag-policy-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagPolicyRequest"))

(smithy/sdk/shapes:define-input tag-role-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagRoleRequest"))

(smithy/sdk/shapes:define-input tag-samlprovider-request common-lisp:nil
                                ((samlprovider-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "SAMLProviderArn")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagSAMLProviderRequest"))

(smithy/sdk/shapes:define-input tag-server-certificate-request common-lisp:nil
                                ((server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagServerCertificateRequest"))

(smithy/sdk/shapes:define-input tag-user-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagUserRequest"))

(smithy/sdk/shapes:define-structure tracked-action-last-accessed
                                    common-lisp:nil
                                    ((action-name :target-type string-type
                                      :member-name "ActionName")
                                     (last-accessed-entity :target-type
                                      arn-type :member-name
                                      "LastAccessedEntity")
                                     (last-accessed-time :target-type date-type
                                      :member-name "LastAccessedTime")
                                     (last-accessed-region :target-type
                                      string-type :member-name
                                      "LastAccessedRegion"))
                                    (:shape-name "TrackedActionLastAccessed"))

(smithy/sdk/shapes:define-list tracked-actions-last-accessed :member
                               tracked-action-last-accessed)

(smithy/sdk/shapes:define-error unmodifiable-entity-exception common-lisp:nil
                                ((message :target-type
                                  unmodifiable-entity-message :member-name
                                  "message"))
                                (:shape-name "UnmodifiableEntityException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unrecognized-public-key-encoding-exception
                                common-lisp:nil
                                ((message :target-type
                                  unrecognized-public-key-encoding-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnrecognizedPublicKeyEncodingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-instance-profile-request common-lisp:nil
                                ((instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "InstanceProfileName")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagInstanceProfileRequest"))

(smithy/sdk/shapes:define-input untag-mfadevice-request common-lisp:nil
                                ((serial-number :target-type serial-number-type
                                  :required common-lisp:t :member-name
                                  "SerialNumber")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagMFADeviceRequest"))

(smithy/sdk/shapes:define-input untag-open-idconnect-provider-request
                                common-lisp:nil
                                ((open-idconnect-provider-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "OpenIDConnectProviderArn")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name
                                 "UntagOpenIDConnectProviderRequest"))

(smithy/sdk/shapes:define-input untag-policy-request common-lisp:nil
                                ((policy-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PolicyArn")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagPolicyRequest"))

(smithy/sdk/shapes:define-input untag-role-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagRoleRequest"))

(smithy/sdk/shapes:define-input untag-samlprovider-request common-lisp:nil
                                ((samlprovider-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "SAMLProviderArn")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagSAMLProviderRequest"))

(smithy/sdk/shapes:define-input untag-server-certificate-request
                                common-lisp:nil
                                ((server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagServerCertificateRequest"))

(smithy/sdk/shapes:define-input untag-user-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagUserRequest"))

(smithy/sdk/shapes:define-input update-access-key-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (access-key-id :target-type access-key-id-type
                                  :required common-lisp:t :member-name
                                  "AccessKeyId")
                                 (status :target-type status-type :required
                                  common-lisp:t :member-name "Status"))
                                (:shape-name "UpdateAccessKeyRequest"))

(smithy/sdk/shapes:define-input update-account-password-policy-request
                                common-lisp:nil
                                ((minimum-password-length :target-type
                                  minimum-password-length-type :member-name
                                  "MinimumPasswordLength")
                                 (require-symbols :target-type boolean-type
                                  :member-name "RequireSymbols")
                                 (require-numbers :target-type boolean-type
                                  :member-name "RequireNumbers")
                                 (require-uppercase-characters :target-type
                                  boolean-type :member-name
                                  "RequireUppercaseCharacters")
                                 (require-lowercase-characters :target-type
                                  boolean-type :member-name
                                  "RequireLowercaseCharacters")
                                 (allow-users-to-change-password :target-type
                                  boolean-type :member-name
                                  "AllowUsersToChangePassword")
                                 (max-password-age :target-type
                                  max-password-age-type :member-name
                                  "MaxPasswordAge")
                                 (password-reuse-prevention :target-type
                                  password-reuse-prevention-type :member-name
                                  "PasswordReusePrevention")
                                 (hard-expiry :target-type boolean-object-type
                                  :member-name "HardExpiry"))
                                (:shape-name
                                 "UpdateAccountPasswordPolicyRequest"))

(smithy/sdk/shapes:define-input update-assume-role-policy-request
                                common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (policy-document :target-type
                                  policy-document-type :required common-lisp:t
                                  :member-name "PolicyDocument"))
                                (:shape-name "UpdateAssumeRolePolicyRequest"))

(smithy/sdk/shapes:define-input update-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (new-path :target-type path-type :member-name
                                  "NewPath")
                                 (new-group-name :target-type group-name-type
                                  :member-name "NewGroupName"))
                                (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-input update-login-profile-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (password :target-type password-type
                                  :member-name "Password")
                                 (password-reset-required :target-type
                                  boolean-object-type :member-name
                                  "PasswordResetRequired"))
                                (:shape-name "UpdateLoginProfileRequest"))

(smithy/sdk/shapes:define-input
 update-open-idconnect-provider-thumbprint-request common-lisp:nil
 ((open-idconnect-provider-arn :target-type arn-type :required common-lisp:t
   :member-name "OpenIDConnectProviderArn")
  (thumbprint-list :target-type thumbprint-list-type :required common-lisp:t
   :member-name "ThumbprintList"))
 (:shape-name "UpdateOpenIDConnectProviderThumbprintRequest"))

(smithy/sdk/shapes:define-input update-role-description-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (description :target-type
                                  role-description-type :required common-lisp:t
                                  :member-name "Description"))
                                (:shape-name "UpdateRoleDescriptionRequest"))

(smithy/sdk/shapes:define-output update-role-description-response
                                 common-lisp:nil
                                 ((role :target-type role :member-name "Role"))
                                 (:shape-name "UpdateRoleDescriptionResponse"))

(smithy/sdk/shapes:define-input update-role-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "RoleName")
                                 (description :target-type
                                  role-description-type :member-name
                                  "Description")
                                 (max-session-duration :target-type
                                  role-max-session-duration-type :member-name
                                  "MaxSessionDuration"))
                                (:shape-name "UpdateRoleRequest"))

(smithy/sdk/shapes:define-output update-role-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRoleResponse"))

(smithy/sdk/shapes:define-input update-samlprovider-request common-lisp:nil
                                ((samlmetadata-document :target-type
                                  samlmetadata-document-type :member-name
                                  "SAMLMetadataDocument")
                                 (samlprovider-arn :target-type arn-type
                                  :required common-lisp:t :member-name
                                  "SAMLProviderArn")
                                 (assertion-encryption-mode :target-type
                                  assertion-encryption-mode-type :member-name
                                  "AssertionEncryptionMode")
                                 (add-private-key :target-type private-key-type
                                  :member-name "AddPrivateKey")
                                 (remove-private-key :target-type
                                  private-key-id-type :member-name
                                  "RemovePrivateKey"))
                                (:shape-name "UpdateSAMLProviderRequest"))

(smithy/sdk/shapes:define-output update-samlprovider-response common-lisp:nil
                                 ((samlprovider-arn :target-type arn-type
                                   :member-name "SAMLProviderArn"))
                                 (:shape-name "UpdateSAMLProviderResponse"))

(smithy/sdk/shapes:define-input update-sshpublic-key-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (sshpublic-key-id :target-type
                                  public-key-id-type :required common-lisp:t
                                  :member-name "SSHPublicKeyId")
                                 (status :target-type status-type :required
                                  common-lisp:t :member-name "Status"))
                                (:shape-name "UpdateSSHPublicKeyRequest"))

(smithy/sdk/shapes:define-input update-server-certificate-request
                                common-lisp:nil
                                ((server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName")
                                 (new-path :target-type path-type :member-name
                                  "NewPath")
                                 (new-server-certificate-name :target-type
                                  server-certificate-name-type :member-name
                                  "NewServerCertificateName"))
                                (:shape-name "UpdateServerCertificateRequest"))

(smithy/sdk/shapes:define-input update-service-specific-credential-request
                                common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :member-name "UserName")
                                 (service-specific-credential-id :target-type
                                  service-specific-credential-id :required
                                  common-lisp:t :member-name
                                  "ServiceSpecificCredentialId")
                                 (status :target-type status-type :required
                                  common-lisp:t :member-name "Status"))
                                (:shape-name
                                 "UpdateServiceSpecificCredentialRequest"))

(smithy/sdk/shapes:define-input update-signing-certificate-request
                                common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (certificate-id :target-type
                                  certificate-id-type :required common-lisp:t
                                  :member-name "CertificateId")
                                 (status :target-type status-type :required
                                  common-lisp:t :member-name "Status"))
                                (:shape-name "UpdateSigningCertificateRequest"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :required
                                  common-lisp:t :member-name "UserName")
                                 (new-path :target-type path-type :member-name
                                  "NewPath")
                                 (new-user-name :target-type user-name-type
                                  :member-name "NewUserName"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-input upload-sshpublic-key-request common-lisp:nil
                                ((user-name :target-type user-name-type
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (sshpublic-key-body :target-type
                                  public-key-material-type :required
                                  common-lisp:t :member-name
                                  "SSHPublicKeyBody"))
                                (:shape-name "UploadSSHPublicKeyRequest"))

(smithy/sdk/shapes:define-output upload-sshpublic-key-response common-lisp:nil
                                 ((sshpublic-key :target-type sshpublic-key
                                   :member-name "SSHPublicKey"))
                                 (:shape-name "UploadSSHPublicKeyResponse"))

(smithy/sdk/shapes:define-input upload-server-certificate-request
                                common-lisp:nil
                                ((path :target-type path-type :member-name
                                  "Path")
                                 (server-certificate-name :target-type
                                  server-certificate-name-type :required
                                  common-lisp:t :member-name
                                  "ServerCertificateName")
                                 (certificate-body :target-type
                                  certificate-body-type :required common-lisp:t
                                  :member-name "CertificateBody")
                                 (private-key :target-type private-key-type
                                  :required common-lisp:t :member-name
                                  "PrivateKey")
                                 (certificate-chain :target-type
                                  certificate-chain-type :member-name
                                  "CertificateChain")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "UploadServerCertificateRequest"))

(smithy/sdk/shapes:define-output upload-server-certificate-response
                                 common-lisp:nil
                                 ((server-certificate-metadata :target-type
                                   server-certificate-metadata :member-name
                                   "ServerCertificateMetadata")
                                  (tags :target-type tag-list-type :member-name
                                   "Tags"))
                                 (:shape-name
                                  "UploadServerCertificateResponse"))

(smithy/sdk/shapes:define-input upload-signing-certificate-request
                                common-lisp:nil
                                ((user-name :target-type
                                  existing-user-name-type :member-name
                                  "UserName")
                                 (certificate-body :target-type
                                  certificate-body-type :required common-lisp:t
                                  :member-name "CertificateBody"))
                                (:shape-name "UploadSigningCertificateRequest"))

(smithy/sdk/shapes:define-output upload-signing-certificate-response
                                 common-lisp:nil
                                 ((certificate :target-type signing-certificate
                                   :required common-lisp:t :member-name
                                   "Certificate"))
                                 (:shape-name
                                  "UploadSigningCertificateResponse"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((path :target-type path-type :required
                                      common-lisp:t :member-name "Path")
                                     (user-name :target-type user-name-type
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (user-id :target-type id-type :required
                                      common-lisp:t :member-name "UserId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn")
                                     (create-date :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreateDate")
                                     (password-last-used :target-type date-type
                                      :member-name "PasswordLastUsed")
                                     (permissions-boundary :target-type
                                      attached-permissions-boundary
                                      :member-name "PermissionsBoundary")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-structure user-detail common-lisp:nil
                                    ((path :target-type path-type :member-name
                                      "Path")
                                     (user-name :target-type user-name-type
                                      :member-name "UserName")
                                     (user-id :target-type id-type :member-name
                                      "UserId")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (create-date :target-type date-type
                                      :member-name "CreateDate")
                                     (user-policy-list :target-type
                                      policy-detail-list-type :member-name
                                      "UserPolicyList")
                                     (group-list :target-type
                                      group-name-list-type :member-name
                                      "GroupList")
                                     (attached-managed-policies :target-type
                                      attached-policies-list-type :member-name
                                      "AttachedManagedPolicies")
                                     (permissions-boundary :target-type
                                      attached-permissions-boundary
                                      :member-name "PermissionsBoundary")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags"))
                                    (:shape-name "UserDetail"))

(smithy/sdk/shapes:define-structure virtual-mfadevice common-lisp:nil
                                    ((serial-number :target-type
                                      serial-number-type :required
                                      common-lisp:t :member-name
                                      "SerialNumber")
                                     (base32string-seed :target-type
                                      bootstrap-datum :member-name
                                      "Base32StringSeed")
                                     (qrcode-png :target-type bootstrap-datum
                                      :member-name "QRCodePNG")
                                     (user :target-type user :member-name
                                      "User")
                                     (enable-date :target-type date-type
                                      :member-name "EnableDate")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags"))
                                    (:shape-name "VirtualMFADevice"))

(smithy/sdk/shapes:define-type access-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-key-metadata-list-type :member
                               access-key-metadata)

(smithy/sdk/shapes:define-type access-key-secret-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-alias-list-type :member
                               account-alias-type)

(smithy/sdk/shapes:define-type account-alias-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type all-users smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum assertion-encryption-mode-type
    common-lisp:nil
  (:required "Required")
  (:allowed "Allowed"))

(smithy/sdk/shapes:define-enum assignment-status-type
    common-lisp:nil
  (:assigned "Assigned")
  (:unassigned "Unassigned")
  (:any "Any"))

(smithy/sdk/shapes:define-list attached-policies-list-type :member
                               attached-policy)

(smithy/sdk/shapes:define-type attachment-count-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type authentication-code-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-object-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-type smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type certificate-body-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-chain-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list certificate-list-type :member
                               signing-certificate)

(smithy/sdk/shapes:define-list client-idlist-type :member client-idtype)

(smithy/sdk/shapes:define-type client-idtype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type credential-age-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type credential-report-expired-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type credential-report-not-present-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type credential-report-not-ready-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-suffix-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type delete-conflict-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duplicate-certificate-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duplicate-sshpublic-key-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encoding-type
    common-lisp:nil
  (:ssh "SSH")
  (:pem "PEM"))

(smithy/sdk/shapes:define-type entity-already-exists-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entity-details-list-type :member entity-details)

(smithy/sdk/shapes:define-list entity-list-type :member entity-type)

(smithy/sdk/shapes:define-type entity-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-temporarily-unmodifiable-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type existing-user-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum global-endpoint-token-version
    common-lisp:nil
  (:v1token "v1Token")
  (:v2token "v2Token"))

(smithy/sdk/shapes:define-list group-detail-list-type :member group-detail)

(smithy/sdk/shapes:define-list group-list-type :member group)

(smithy/sdk/shapes:define-list group-name-list-type :member group-name-type)

(smithy/sdk/shapes:define-type group-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-profile-list-type :member
                               instance-profile)

(smithy/sdk/shapes:define-type instance-profile-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type invalid-authentication-code-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invalid-certificate-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invalid-input-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invalid-public-key-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invalid-user-type-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-idtype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status-type
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type key-pair-mismatch-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit-exceeded-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 list-policy-granting-service-access-response-list-type :member
 list-policies-granting-service-access-entry)

(smithy/sdk/shapes:define-type malformed-certificate-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type malformed-policy-document-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type marker-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-items-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-password-age-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list mfa-device-list-type :member mfadevice)

(smithy/sdk/shapes:define-type minimum-password-length-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type no-such-entity-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 open-id-idp-communication-error-exception-message
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organizations-entity-path-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organizations-policy-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password-policy-violation-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password-reuse-prevention-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type password-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-prefix-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-description-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-detail-list-type :member policy-detail)

(smithy/sdk/shapes:define-type policy-document-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-document-version-list-type :member
                               policy-version)

(smithy/sdk/shapes:define-type policy-evaluation-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-granting-service-access-list-type :member
                               policy-granting-service-access)

(smithy/sdk/shapes:define-list policy-list-type :member policy)

(smithy/sdk/shapes:define-list policy-name-list-type :member policy-name-type)

(smithy/sdk/shapes:define-type policy-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-not-attachable-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum policy-owner-entity-type
    common-lisp:nil
  (:user "USER")
  (:role "ROLE")
  (:group "GROUP"))

(smithy/sdk/shapes:define-type policy-path-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum policy-scope-type
    common-lisp:nil
  (:all "All")
  (:aws "AWS")
  (:local "Local"))

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:inline "INLINE")
  (:managed "MANAGED"))

(smithy/sdk/shapes:define-type policy-version-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type private-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list private-key-list :member samlprivate-key)

(smithy/sdk/shapes:define-type private-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-key-fingerprint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-key-material-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type report-generation-limit-exceeded-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-marker-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-description-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list role-detail-list-type :member role-detail)

(smithy/sdk/shapes:define-list role-list-type :member role)

(smithy/sdk/shapes:define-type role-max-session-duration-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type serial-number-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list server-certificate-metadata-list-type :member
                               server-certificate-metadata)

(smithy/sdk/shapes:define-type server-certificate-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-credential-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-credential-secret
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-failure-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-namespace-list-type :member
                               service-namespace-type)

(smithy/sdk/shapes:define-type service-namespace-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-not-supported-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-specific-credential-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-key-type
    common-lisp:nil
  (:service-namespace-ascending "SERVICE_NAMESPACE_ASCENDING")
  (:service-namespace-descending "SERVICE_NAMESPACE_DESCENDING")
  (:last-authenticated-time-ascending "LAST_AUTHENTICATED_TIME_ASCENDING")
  (:last-authenticated-time-descending "LAST_AUTHENTICATED_TIME_DESCENDING"))

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:active "Active")
  (:inactive "Inactive")
  (:expired "Expired"))

(smithy/sdk/shapes:define-type string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum summary-key-type
    common-lisp:nil
  (:users "Users")
  (:users-quota "UsersQuota")
  (:groups "Groups")
  (:groups-quota "GroupsQuota")
  (:server-certificates "ServerCertificates")
  (:server-certificates-quota "ServerCertificatesQuota")
  (:user-policy-size-quota "UserPolicySizeQuota")
  (:group-policy-size-quota "GroupPolicySizeQuota")
  (:groups-per-user-quota "GroupsPerUserQuota")
  (:signing-certificates-per-user-quota "SigningCertificatesPerUserQuota")
  (:access-keys-per-user-quota "AccessKeysPerUserQuota")
  (:mfadevices "MFADevices")
  (:mfadevices-in-use "MFADevicesInUse")
  (:account-mfaenabled "AccountMFAEnabled")
  (:account-access-keys-present "AccountAccessKeysPresent")
  (:account-password-present "AccountPasswordPresent")
  (:account-signing-certificates-present "AccountSigningCertificatesPresent")
  (:attached-policies-per-group-quota "AttachedPoliciesPerGroupQuota")
  (:attached-policies-per-role-quota "AttachedPoliciesPerRoleQuota")
  (:attached-policies-per-user-quota "AttachedPoliciesPerUserQuota")
  (:policies "Policies")
  (:policies-quota "PoliciesQuota")
  (:policy-size-quota "PolicySizeQuota")
  (:policy-versions-in-use "PolicyVersionsInUse")
  (:policy-versions-in-use-quota "PolicyVersionsInUseQuota")
  (:versions-per-policy-quota "VersionsPerPolicyQuota")
  (:global-endpoint-token-version "GlobalEndpointTokenVersion"))

(smithy/sdk/shapes:define-map summary-map-type :key summary-key-type :value
                              summary-value-type)

(smithy/sdk/shapes:define-type summary-value-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list tag-key-list-type :member tag-key-type)

(smithy/sdk/shapes:define-type tag-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list-type :member tag)

(smithy/sdk/shapes:define-type tag-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list thumbprint-list-type :member thumbprint-type)

(smithy/sdk/shapes:define-type thumbprint-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unmodifiable-entity-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unrecognized-public-key-encoding-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-detail-list-type :member user-detail)

(smithy/sdk/shapes:define-list user-list-type :member user)

(smithy/sdk/shapes:define-type user-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list virtual-mfadevice-list-type :member
                               virtual-mfadevice)

(smithy/sdk/shapes:define-type virtual-mfadevice-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-client-idto-open-idconnect-provider
                                       :shape-name
                                       "AddClientIDToOpenIDConnectProvider"
                                       :input
                                       add-client-idto-open-idconnect-provider-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation add-role-to-instance-profile :shape-name
                                       "AddRoleToInstanceProfile" :input
                                       add-role-to-instance-profile-request
                                       :output common-lisp:null :errors
                                       (entity-already-exists-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation add-user-to-group :shape-name
                                       "AddUserToGroup" :input
                                       add-user-to-group-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation attach-group-policy :shape-name
                                       "AttachGroupPolicy" :input
                                       attach-group-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        policy-not-attachable-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation attach-role-policy :shape-name
                                       "AttachRolePolicy" :input
                                       attach-role-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        policy-not-attachable-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation attach-user-policy :shape-name
                                       "AttachUserPolicy" :input
                                       attach-user-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        policy-not-attachable-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation change-password :shape-name
                                       "ChangePassword" :input
                                       change-password-request :output
                                       common-lisp:null :errors
                                       (entity-temporarily-unmodifiable-exception
                                        invalid-user-type-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        password-policy-violation-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-access-key :shape-name
                                       "CreateAccessKey" :input
                                       create-access-key-request :output
                                       create-access-key-response :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-account-alias :shape-name
                                       "CreateAccountAlias" :input
                                       create-account-alias-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        limit-exceeded-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-response :errors
                                       (entity-already-exists-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-instance-profile :shape-name
                                       "CreateInstanceProfile" :input
                                       create-instance-profile-request :output
                                       create-instance-profile-response :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-login-profile :shape-name
                                       "CreateLoginProfile" :input
                                       create-login-profile-request :output
                                       create-login-profile-response :errors
                                       (entity-already-exists-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        password-policy-violation-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-open-idconnect-provider
                                       :shape-name
                                       "CreateOpenIDConnectProvider" :input
                                       create-open-idconnect-provider-request
                                       :output
                                       create-open-idconnect-provider-response
                                       :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        open-id-idp-communication-error-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-policy :shape-name "CreatePolicy"
                                       :input create-policy-request :output
                                       create-policy-response :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-policy-version :shape-name
                                       "CreatePolicyVersion" :input
                                       create-policy-version-request :output
                                       create-policy-version-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-role :shape-name "CreateRole"
                                       :input create-role-request :output
                                       create-role-response :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-samlprovider :shape-name
                                       "CreateSAMLProvider" :input
                                       create-samlprovider-request :output
                                       create-samlprovider-response :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-service-linked-role :shape-name
                                       "CreateServiceLinkedRole" :input
                                       create-service-linked-role-request
                                       :output
                                       create-service-linked-role-response
                                       :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-service-specific-credential
                                       :shape-name
                                       "CreateServiceSpecificCredential" :input
                                       create-service-specific-credential-request
                                       :output
                                       create-service-specific-credential-response
                                       :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-not-supported-exception))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation create-virtual-mfadevice :shape-name
                                       "CreateVirtualMFADevice" :input
                                       create-virtual-mfadevice-request :output
                                       create-virtual-mfadevice-response
                                       :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation deactivate-mfadevice :shape-name
                                       "DeactivateMFADevice" :input
                                       deactivate-mfadevice-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        entity-temporarily-unmodifiable-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-access-key :shape-name
                                       "DeleteAccessKey" :input
                                       delete-access-key-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-account-alias :shape-name
                                       "DeleteAccountAlias" :input
                                       delete-account-alias-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-account-password-policy
                                       :shape-name
                                       "DeleteAccountPasswordPolicy" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       common-lisp:null :errors
                                       (delete-conflict-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-group-policy :shape-name
                                       "DeleteGroupPolicy" :input
                                       delete-group-policy-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-instance-profile :shape-name
                                       "DeleteInstanceProfile" :input
                                       delete-instance-profile-request :output
                                       common-lisp:null :errors
                                       (delete-conflict-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-login-profile :shape-name
                                       "DeleteLoginProfile" :input
                                       delete-login-profile-request :output
                                       common-lisp:null :errors
                                       (entity-temporarily-unmodifiable-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-open-idconnect-provider
                                       :shape-name
                                       "DeleteOpenIDConnectProvider" :input
                                       delete-open-idconnect-provider-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-request :output
                                       common-lisp:null :errors
                                       (delete-conflict-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-policy-version :shape-name
                                       "DeletePolicyVersion" :input
                                       delete-policy-version-request :output
                                       common-lisp:null :errors
                                       (delete-conflict-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-role :shape-name "DeleteRole"
                                       :input delete-role-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        delete-conflict-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation delete-role-permissions-boundary
                                       :shape-name
                                       "DeleteRolePermissionsBoundary" :input
                                       delete-role-permissions-boundary-request
                                       :output common-lisp:null :errors
                                       (no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation delete-role-policy :shape-name
                                       "DeleteRolePolicy" :input
                                       delete-role-policy-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation delete-samlprovider :shape-name
                                       "DeleteSAMLProvider" :input
                                       delete-samlprovider-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-sshpublic-key :shape-name
                                       "DeleteSSHPublicKey" :input
                                       delete-sshpublic-key-request :output
                                       common-lisp:null :errors
                                       (no-such-entity-exception))

(smithy/sdk/operation:define-operation delete-server-certificate :shape-name
                                       "DeleteServerCertificate" :input
                                       delete-server-certificate-request
                                       :output common-lisp:null :errors
                                       (delete-conflict-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-service-linked-role :shape-name
                                       "DeleteServiceLinkedRole" :input
                                       delete-service-linked-role-request
                                       :output
                                       delete-service-linked-role-response
                                       :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-service-specific-credential
                                       :shape-name
                                       "DeleteServiceSpecificCredential" :input
                                       delete-service-specific-credential-request
                                       :output common-lisp:null :errors
                                       (no-such-entity-exception))

(smithy/sdk/operation:define-operation delete-signing-certificate :shape-name
                                       "DeleteSigningCertificate" :input
                                       delete-signing-certificate-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        delete-conflict-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-user-permissions-boundary
                                       :shape-name
                                       "DeleteUserPermissionsBoundary" :input
                                       delete-user-permissions-boundary-request
                                       :output common-lisp:null :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-user-policy :shape-name
                                       "DeleteUserPolicy" :input
                                       delete-user-policy-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation delete-virtual-mfadevice :shape-name
                                       "DeleteVirtualMFADevice" :input
                                       delete-virtual-mfadevice-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        delete-conflict-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation detach-group-policy :shape-name
                                       "DetachGroupPolicy" :input
                                       detach-group-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation detach-role-policy :shape-name
                                       "DetachRolePolicy" :input
                                       detach-role-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation detach-user-policy :shape-name
                                       "DetachUserPolicy" :input
                                       detach-user-policy-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation
 disable-organizations-root-credentials-management :shape-name
 "DisableOrganizationsRootCredentialsManagement" :input
 disable-organizations-root-credentials-management-request :output
 disable-organizations-root-credentials-management-response :errors
 (account-not-management-or-delegated-administrator-exception
  organization-not-found-exception
  organization-not-in-all-features-mode-exception
  service-access-not-enabled-exception))

(smithy/sdk/operation:define-operation disable-organizations-root-sessions
                                       :shape-name
                                       "DisableOrganizationsRootSessions"
                                       :input
                                       disable-organizations-root-sessions-request
                                       :output
                                       disable-organizations-root-sessions-response
                                       :errors
                                       (account-not-management-or-delegated-administrator-exception
                                        organization-not-found-exception
                                        organization-not-in-all-features-mode-exception
                                        service-access-not-enabled-exception))

(smithy/sdk/operation:define-operation enable-mfadevice :shape-name
                                       "EnableMFADevice" :input
                                       enable-mfadevice-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        entity-temporarily-unmodifiable-exception
                                        invalid-authentication-code-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation
 enable-organizations-root-credentials-management :shape-name
 "EnableOrganizationsRootCredentialsManagement" :input
 enable-organizations-root-credentials-management-request :output
 enable-organizations-root-credentials-management-response :errors
 (account-not-management-or-delegated-administrator-exception
  caller-is-not-management-account-exception organization-not-found-exception
  organization-not-in-all-features-mode-exception
  service-access-not-enabled-exception))

(smithy/sdk/operation:define-operation enable-organizations-root-sessions
                                       :shape-name
                                       "EnableOrganizationsRootSessions" :input
                                       enable-organizations-root-sessions-request
                                       :output
                                       enable-organizations-root-sessions-response
                                       :errors
                                       (account-not-management-or-delegated-administrator-exception
                                        caller-is-not-management-account-exception
                                        organization-not-found-exception
                                        organization-not-in-all-features-mode-exception
                                        service-access-not-enabled-exception))

(smithy/sdk/operation:define-operation generate-credential-report :shape-name
                                       "GenerateCredentialReport" :input
                                       common-lisp:null :output
                                       generate-credential-report-response
                                       :errors
                                       (limit-exceeded-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation generate-organizations-access-report
                                       :shape-name
                                       "GenerateOrganizationsAccessReport"
                                       :input
                                       generate-organizations-access-report-request
                                       :output
                                       generate-organizations-access-report-response
                                       :errors
                                       (report-generation-limit-exceeded-exception))

(smithy/sdk/operation:define-operation generate-service-last-accessed-details
                                       :shape-name
                                       "GenerateServiceLastAccessedDetails"
                                       :input
                                       generate-service-last-accessed-details-request
                                       :output
                                       generate-service-last-accessed-details-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation get-access-key-last-used :shape-name
                                       "GetAccessKeyLastUsed" :input
                                       get-access-key-last-used-request :output
                                       get-access-key-last-used-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-account-authorization-details
                                       :shape-name
                                       "GetAccountAuthorizationDetails" :input
                                       get-account-authorization-details-request
                                       :output
                                       get-account-authorization-details-response
                                       :errors (service-failure-exception))

(smithy/sdk/operation:define-operation get-account-password-policy :shape-name
                                       "GetAccountPasswordPolicy" :input
                                       common-lisp:null :output
                                       get-account-password-policy-response
                                       :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-account-summary :shape-name
                                       "GetAccountSummary" :input
                                       common-lisp:null :output
                                       get-account-summary-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation get-context-keys-for-custom-policy
                                       :shape-name
                                       "GetContextKeysForCustomPolicy" :input
                                       get-context-keys-for-custom-policy-request
                                       :output
                                       get-context-keys-for-policy-response
                                       :errors (invalid-input-exception))

(smithy/sdk/operation:define-operation get-context-keys-for-principal-policy
                                       :shape-name
                                       "GetContextKeysForPrincipalPolicy"
                                       :input
                                       get-context-keys-for-principal-policy-request
                                       :output
                                       get-context-keys-for-policy-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation get-credential-report :shape-name
                                       "GetCredentialReport" :input
                                       common-lisp:null :output
                                       get-credential-report-response :errors
                                       (credential-report-expired-exception
                                        credential-report-not-present-exception
                                        credential-report-not-ready-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-request :output
                                       get-group-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-group-policy :shape-name
                                       "GetGroupPolicy" :input
                                       get-group-policy-request :output
                                       get-group-policy-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-instance-profile :shape-name
                                       "GetInstanceProfile" :input
                                       get-instance-profile-request :output
                                       get-instance-profile-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-login-profile :shape-name
                                       "GetLoginProfile" :input
                                       get-login-profile-request :output
                                       get-login-profile-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-mfadevice :shape-name "GetMFADevice"
                                       :input get-mfadevice-request :output
                                       get-mfadevice-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-open-idconnect-provider :shape-name
                                       "GetOpenIDConnectProvider" :input
                                       get-open-idconnect-provider-request
                                       :output
                                       get-open-idconnect-provider-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-organizations-access-report
                                       :shape-name
                                       "GetOrganizationsAccessReport" :input
                                       get-organizations-access-report-request
                                       :output
                                       get-organizations-access-report-response
                                       :errors (no-such-entity-exception))

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-policy-version :shape-name
                                       "GetPolicyVersion" :input
                                       get-policy-version-request :output
                                       get-policy-version-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-role :shape-name "GetRole" :input
                                       get-role-request :output
                                       get-role-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-role-policy :shape-name
                                       "GetRolePolicy" :input
                                       get-role-policy-request :output
                                       get-role-policy-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-samlprovider :shape-name
                                       "GetSAMLProvider" :input
                                       get-samlprovider-request :output
                                       get-samlprovider-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-sshpublic-key :shape-name
                                       "GetSSHPublicKey" :input
                                       get-sshpublic-key-request :output
                                       get-sshpublic-key-response :errors
                                       (no-such-entity-exception
                                        unrecognized-public-key-encoding-exception))

(smithy/sdk/operation:define-operation get-server-certificate :shape-name
                                       "GetServerCertificate" :input
                                       get-server-certificate-request :output
                                       get-server-certificate-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-service-last-accessed-details
                                       :shape-name
                                       "GetServiceLastAccessedDetails" :input
                                       get-service-last-accessed-details-request
                                       :output
                                       get-service-last-accessed-details-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation
 get-service-last-accessed-details-with-entities :shape-name
 "GetServiceLastAccessedDetailsWithEntities" :input
 get-service-last-accessed-details-with-entities-request :output
 get-service-last-accessed-details-with-entities-response :errors
 (invalid-input-exception no-such-entity-exception))

(smithy/sdk/operation:define-operation get-service-linked-role-deletion-status
                                       :shape-name
                                       "GetServiceLinkedRoleDeletionStatus"
                                       :input
                                       get-service-linked-role-deletion-status-request
                                       :output
                                       get-service-linked-role-deletion-status-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-user :shape-name "GetUser" :input
                                       get-user-request :output
                                       get-user-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation get-user-policy :shape-name
                                       "GetUserPolicy" :input
                                       get-user-policy-request :output
                                       get-user-policy-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-access-keys :shape-name
                                       "ListAccessKeys" :input
                                       list-access-keys-request :output
                                       list-access-keys-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-account-aliases :shape-name
                                       "ListAccountAliases" :input
                                       list-account-aliases-request :output
                                       list-account-aliases-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-attached-group-policies :shape-name
                                       "ListAttachedGroupPolicies" :input
                                       list-attached-group-policies-request
                                       :output
                                       list-attached-group-policies-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-attached-role-policies :shape-name
                                       "ListAttachedRolePolicies" :input
                                       list-attached-role-policies-request
                                       :output
                                       list-attached-role-policies-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-attached-user-policies :shape-name
                                       "ListAttachedUserPolicies" :input
                                       list-attached-user-policies-request
                                       :output
                                       list-attached-user-policies-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-entities-for-policy :shape-name
                                       "ListEntitiesForPolicy" :input
                                       list-entities-for-policy-request :output
                                       list-entities-for-policy-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-group-policies :shape-name
                                       "ListGroupPolicies" :input
                                       list-group-policies-request :output
                                       list-group-policies-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-groups-for-user :shape-name
                                       "ListGroupsForUser" :input
                                       list-groups-for-user-request :output
                                       list-groups-for-user-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-instance-profile-tags :shape-name
                                       "ListInstanceProfileTags" :input
                                       list-instance-profile-tags-request
                                       :output
                                       list-instance-profile-tags-response
                                       :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-instance-profiles :shape-name
                                       "ListInstanceProfiles" :input
                                       list-instance-profiles-request :output
                                       list-instance-profiles-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-instance-profiles-for-role
                                       :shape-name
                                       "ListInstanceProfilesForRole" :input
                                       list-instance-profiles-for-role-request
                                       :output
                                       list-instance-profiles-for-role-response
                                       :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-mfadevice-tags :shape-name
                                       "ListMFADeviceTags" :input
                                       list-mfadevice-tags-request :output
                                       list-mfadevice-tags-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-mfadevices :shape-name
                                       "ListMFADevices" :input
                                       list-mfadevices-request :output
                                       list-mfadevices-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-open-idconnect-provider-tags
                                       :shape-name
                                       "ListOpenIDConnectProviderTags" :input
                                       list-open-idconnect-provider-tags-request
                                       :output
                                       list-open-idconnect-provider-tags-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-open-idconnect-providers
                                       :shape-name "ListOpenIDConnectProviders"
                                       :input
                                       list-open-idconnect-providers-request
                                       :output
                                       list-open-idconnect-providers-response
                                       :errors (service-failure-exception))

(smithy/sdk/operation:define-operation list-organizations-features :shape-name
                                       "ListOrganizationsFeatures" :input
                                       list-organizations-features-request
                                       :output
                                       list-organizations-features-response
                                       :errors
                                       (account-not-management-or-delegated-administrator-exception
                                        organization-not-found-exception
                                        organization-not-in-all-features-mode-exception
                                        service-access-not-enabled-exception))

(smithy/sdk/operation:define-operation list-policies :shape-name "ListPolicies"
                                       :input list-policies-request :output
                                       list-policies-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-policies-granting-service-access
                                       :shape-name
                                       "ListPoliciesGrantingServiceAccess"
                                       :input
                                       list-policies-granting-service-access-request
                                       :output
                                       list-policies-granting-service-access-response
                                       :errors
                                       (invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation list-policy-tags :shape-name
                                       "ListPolicyTags" :input
                                       list-policy-tags-request :output
                                       list-policy-tags-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-policy-versions :shape-name
                                       "ListPolicyVersions" :input
                                       list-policy-versions-request :output
                                       list-policy-versions-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-role-policies :shape-name
                                       "ListRolePolicies" :input
                                       list-role-policies-request :output
                                       list-role-policies-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-role-tags :shape-name
                                       "ListRoleTags" :input
                                       list-role-tags-request :output
                                       list-role-tags-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-roles :shape-name "ListRoles"
                                       :input list-roles-request :output
                                       list-roles-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-samlprovider-tags :shape-name
                                       "ListSAMLProviderTags" :input
                                       list-samlprovider-tags-request :output
                                       list-samlprovider-tags-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-samlproviders :shape-name
                                       "ListSAMLProviders" :input
                                       list-samlproviders-request :output
                                       list-samlproviders-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-sshpublic-keys :shape-name
                                       "ListSSHPublicKeys" :input
                                       list-sshpublic-keys-request :output
                                       list-sshpublic-keys-response :errors
                                       (no-such-entity-exception))

(smithy/sdk/operation:define-operation list-server-certificate-tags :shape-name
                                       "ListServerCertificateTags" :input
                                       list-server-certificate-tags-request
                                       :output
                                       list-server-certificate-tags-response
                                       :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-server-certificates :shape-name
                                       "ListServerCertificates" :input
                                       list-server-certificates-request :output
                                       list-server-certificates-response
                                       :errors (service-failure-exception))

(smithy/sdk/operation:define-operation list-service-specific-credentials
                                       :shape-name
                                       "ListServiceSpecificCredentials" :input
                                       list-service-specific-credentials-request
                                       :output
                                       list-service-specific-credentials-response
                                       :errors
                                       (no-such-entity-exception
                                        service-not-supported-exception))

(smithy/sdk/operation:define-operation list-signing-certificates :shape-name
                                       "ListSigningCertificates" :input
                                       list-signing-certificates-request
                                       :output
                                       list-signing-certificates-response
                                       :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-user-policies :shape-name
                                       "ListUserPolicies" :input
                                       list-user-policies-request :output
                                       list-user-policies-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-user-tags :shape-name
                                       "ListUserTags" :input
                                       list-user-tags-request :output
                                       list-user-tags-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation list-virtual-mfadevices :shape-name
                                       "ListVirtualMFADevices" :input
                                       list-virtual-mfadevices-request :output
                                       list-virtual-mfadevices-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation put-group-policy :shape-name
                                       "PutGroupPolicy" :input
                                       put-group-policy-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        malformed-policy-document-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation put-role-permissions-boundary
                                       :shape-name "PutRolePermissionsBoundary"
                                       :input
                                       put-role-permissions-boundary-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        policy-not-attachable-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation put-role-policy :shape-name
                                       "PutRolePolicy" :input
                                       put-role-policy-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        malformed-policy-document-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation put-user-permissions-boundary
                                       :shape-name "PutUserPermissionsBoundary"
                                       :input
                                       put-user-permissions-boundary-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        policy-not-attachable-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation put-user-policy :shape-name
                                       "PutUserPolicy" :input
                                       put-user-policy-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        malformed-policy-document-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation
 remove-client-idfrom-open-idconnect-provider :shape-name
 "RemoveClientIDFromOpenIDConnectProvider" :input
 remove-client-idfrom-open-idconnect-provider-request :output common-lisp:null
 :errors
 (invalid-input-exception no-such-entity-exception service-failure-exception))

(smithy/sdk/operation:define-operation remove-role-from-instance-profile
                                       :shape-name
                                       "RemoveRoleFromInstanceProfile" :input
                                       remove-role-from-instance-profile-request
                                       :output common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation remove-user-from-group :shape-name
                                       "RemoveUserFromGroup" :input
                                       remove-user-from-group-request :output
                                       common-lisp:null :errors
                                       (limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation reset-service-specific-credential
                                       :shape-name
                                       "ResetServiceSpecificCredential" :input
                                       reset-service-specific-credential-request
                                       :output
                                       reset-service-specific-credential-response
                                       :errors (no-such-entity-exception))

(smithy/sdk/operation:define-operation resync-mfadevice :shape-name
                                       "ResyncMFADevice" :input
                                       resync-mfadevice-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-authentication-code-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation set-default-policy-version :shape-name
                                       "SetDefaultPolicyVersion" :input
                                       set-default-policy-version-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation set-security-token-service-preferences
                                       :shape-name
                                       "SetSecurityTokenServicePreferences"
                                       :input
                                       set-security-token-service-preferences-request
                                       :output common-lisp:null :errors
                                       (service-failure-exception))

(smithy/sdk/operation:define-operation simulate-custom-policy :shape-name
                                       "SimulateCustomPolicy" :input
                                       simulate-custom-policy-request :output
                                       simulate-policy-response :errors
                                       (invalid-input-exception
                                        policy-evaluation-exception))

(smithy/sdk/operation:define-operation simulate-principal-policy :shape-name
                                       "SimulatePrincipalPolicy" :input
                                       simulate-principal-policy-request
                                       :output simulate-policy-response :errors
                                       (invalid-input-exception
                                        no-such-entity-exception
                                        policy-evaluation-exception))

(smithy/sdk/operation:define-operation tag-instance-profile :shape-name
                                       "TagInstanceProfile" :input
                                       tag-instance-profile-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-mfadevice :shape-name "TagMFADevice"
                                       :input tag-mfadevice-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-open-idconnect-provider :shape-name
                                       "TagOpenIDConnectProvider" :input
                                       tag-open-idconnect-provider-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-policy :shape-name "TagPolicy"
                                       :input tag-policy-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-role :shape-name "TagRole" :input
                                       tag-role-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-samlprovider :shape-name
                                       "TagSAMLProvider" :input
                                       tag-samlprovider-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-server-certificate :shape-name
                                       "TagServerCertificate" :input
                                       tag-server-certificate-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation tag-user :shape-name "TagUser" :input
                                       tag-user-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-instance-profile :shape-name
                                       "UntagInstanceProfile" :input
                                       untag-instance-profile-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-mfadevice :shape-name
                                       "UntagMFADevice" :input
                                       untag-mfadevice-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-open-idconnect-provider
                                       :shape-name "UntagOpenIDConnectProvider"
                                       :input
                                       untag-open-idconnect-provider-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-policy :shape-name "UntagPolicy"
                                       :input untag-policy-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-role :shape-name "UntagRole"
                                       :input untag-role-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-samlprovider :shape-name
                                       "UntagSAMLProvider" :input
                                       untag-samlprovider-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-server-certificate :shape-name
                                       "UntagServerCertificate" :input
                                       untag-server-certificate-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-input-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation untag-user :shape-name "UntagUser"
                                       :input untag-user-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-access-key :shape-name
                                       "UpdateAccessKey" :input
                                       update-access-key-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-account-password-policy
                                       :shape-name
                                       "UpdateAccountPasswordPolicy" :input
                                       update-account-password-policy-request
                                       :output common-lisp:null :errors
                                       (limit-exceeded-exception
                                        malformed-policy-document-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-assume-role-policy :shape-name
                                       "UpdateAssumeRolePolicy" :input
                                       update-assume-role-policy-request
                                       :output common-lisp:null :errors
                                       (limit-exceeded-exception
                                        malformed-policy-document-exception
                                        no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       common-lisp:null :errors
                                       (entity-already-exists-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-login-profile :shape-name
                                       "UpdateLoginProfile" :input
                                       update-login-profile-request :output
                                       common-lisp:null :errors
                                       (entity-temporarily-unmodifiable-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        password-policy-violation-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation
 update-open-idconnect-provider-thumbprint :shape-name
 "UpdateOpenIDConnectProviderThumbprint" :input
 update-open-idconnect-provider-thumbprint-request :output common-lisp:null
 :errors
 (invalid-input-exception no-such-entity-exception service-failure-exception))

(smithy/sdk/operation:define-operation update-role :shape-name "UpdateRole"
                                       :input update-role-request :output
                                       update-role-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation update-role-description :shape-name
                                       "UpdateRoleDescription" :input
                                       update-role-description-request :output
                                       update-role-description-response :errors
                                       (no-such-entity-exception
                                        service-failure-exception
                                        unmodifiable-entity-exception))

(smithy/sdk/operation:define-operation update-samlprovider :shape-name
                                       "UpdateSAMLProvider" :input
                                       update-samlprovider-request :output
                                       update-samlprovider-response :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-sshpublic-key :shape-name
                                       "UpdateSSHPublicKey" :input
                                       update-sshpublic-key-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        no-such-entity-exception))

(smithy/sdk/operation:define-operation update-server-certificate :shape-name
                                       "UpdateServerCertificate" :input
                                       update-server-certificate-request
                                       :output common-lisp:null :errors
                                       (entity-already-exists-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-service-specific-credential
                                       :shape-name
                                       "UpdateServiceSpecificCredential" :input
                                       update-service-specific-credential-request
                                       :output common-lisp:null :errors
                                       (no-such-entity-exception))

(smithy/sdk/operation:define-operation update-signing-certificate :shape-name
                                       "UpdateSigningCertificate" :input
                                       update-signing-certificate-request
                                       :output common-lisp:null :errors
                                       (invalid-input-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        entity-temporarily-unmodifiable-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation upload-sshpublic-key :shape-name
                                       "UploadSSHPublicKey" :input
                                       upload-sshpublic-key-request :output
                                       upload-sshpublic-key-response :errors
                                       (duplicate-sshpublic-key-exception
                                        invalid-public-key-exception
                                        limit-exceeded-exception
                                        no-such-entity-exception
                                        unrecognized-public-key-encoding-exception))

(smithy/sdk/operation:define-operation upload-server-certificate :shape-name
                                       "UploadServerCertificate" :input
                                       upload-server-certificate-request
                                       :output
                                       upload-server-certificate-response
                                       :errors
                                       (concurrent-modification-exception
                                        entity-already-exists-exception
                                        invalid-input-exception
                                        key-pair-mismatch-exception
                                        limit-exceeded-exception
                                        malformed-certificate-exception
                                        service-failure-exception))

(smithy/sdk/operation:define-operation upload-signing-certificate :shape-name
                                       "UploadSigningCertificate" :input
                                       upload-signing-certificate-request
                                       :output
                                       upload-signing-certificate-response
                                       :errors
                                       (concurrent-modification-exception
                                        duplicate-certificate-exception
                                        entity-already-exists-exception
                                        invalid-certificate-exception
                                        limit-exceeded-exception
                                        malformed-certificate-exception
                                        no-such-entity-exception
                                        service-failure-exception))
