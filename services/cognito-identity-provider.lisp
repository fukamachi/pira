(uiop/package:define-package #:pira/cognito-identity-provider (:use)
                             (:export #:awsaccount-id-type
                              #:awscognito-identity-provider-service
                              #:access-token-validity-type
                              #:account-recovery-setting-type
                              #:account-takeover-action-notify-type
                              #:account-takeover-action-type
                              #:account-takeover-actions-type
                              #:account-takeover-event-action-type
                              #:account-takeover-risk-configuration-type
                              #:add-custom-attributes
                              #:add-custom-attributes-request
                              #:add-custom-attributes-response
                              #:admin-add-user-to-group
                              #:admin-add-user-to-group-request
                              #:admin-confirm-sign-up
                              #:admin-confirm-sign-up-request
                              #:admin-confirm-sign-up-response
                              #:admin-create-user
                              #:admin-create-user-config-type
                              #:admin-create-user-request
                              #:admin-create-user-response
                              #:admin-create-user-unused-account-validity-days-type
                              #:admin-delete-user
                              #:admin-delete-user-attributes
                              #:admin-delete-user-attributes-request
                              #:admin-delete-user-attributes-response
                              #:admin-delete-user-request
                              #:admin-disable-provider-for-user
                              #:admin-disable-provider-for-user-request
                              #:admin-disable-provider-for-user-response
                              #:admin-disable-user #:admin-disable-user-request
                              #:admin-disable-user-response #:admin-enable-user
                              #:admin-enable-user-request
                              #:admin-enable-user-response
                              #:admin-forget-device
                              #:admin-forget-device-request #:admin-get-device
                              #:admin-get-device-request
                              #:admin-get-device-response #:admin-get-user
                              #:admin-get-user-request
                              #:admin-get-user-response #:admin-initiate-auth
                              #:admin-initiate-auth-request
                              #:admin-initiate-auth-response
                              #:admin-link-provider-for-user
                              #:admin-link-provider-for-user-request
                              #:admin-link-provider-for-user-response
                              #:admin-list-devices #:admin-list-devices-request
                              #:admin-list-devices-response
                              #:admin-list-groups-for-user
                              #:admin-list-groups-for-user-request
                              #:admin-list-groups-for-user-response
                              #:admin-list-user-auth-events
                              #:admin-list-user-auth-events-request
                              #:admin-list-user-auth-events-response
                              #:admin-remove-user-from-group
                              #:admin-remove-user-from-group-request
                              #:admin-reset-user-password
                              #:admin-reset-user-password-request
                              #:admin-reset-user-password-response
                              #:admin-respond-to-auth-challenge
                              #:admin-respond-to-auth-challenge-request
                              #:admin-respond-to-auth-challenge-response
                              #:admin-set-user-mfapreference
                              #:admin-set-user-mfapreference-request
                              #:admin-set-user-mfapreference-response
                              #:admin-set-user-password
                              #:admin-set-user-password-request
                              #:admin-set-user-password-response
                              #:admin-set-user-settings
                              #:admin-set-user-settings-request
                              #:admin-set-user-settings-response
                              #:admin-update-auth-event-feedback
                              #:admin-update-auth-event-feedback-request
                              #:admin-update-auth-event-feedback-response
                              #:admin-update-device-status
                              #:admin-update-device-status-request
                              #:admin-update-device-status-response
                              #:admin-update-user-attributes
                              #:admin-update-user-attributes-request
                              #:admin-update-user-attributes-response
                              #:admin-user-global-sign-out
                              #:admin-user-global-sign-out-request
                              #:admin-user-global-sign-out-response
                              #:advanced-security-additional-flows-type
                              #:advanced-security-enabled-mode-type
                              #:advanced-security-mode-type
                              #:alias-attribute-type
                              #:alias-attributes-list-type
                              #:alias-exists-exception
                              #:allowed-first-auth-factors-list-type
                              #:analytics-configuration-type
                              #:analytics-metadata-type #:arn-type
                              #:asset-bytes-type #:asset-category-type
                              #:asset-extension-type #:asset-list-type
                              #:asset-type #:associate-software-token
                              #:associate-software-token-request
                              #:associate-software-token-response
                              #:attribute-data-type #:attribute-list-type
                              #:attribute-mapping-key-type
                              #:attribute-mapping-type
                              #:attribute-name-list-type #:attribute-name-type
                              #:attribute-type #:attribute-value-type
                              #:attributes-require-verification-before-update-type
                              #:auth-event-type #:auth-events-type
                              #:auth-factor-type #:auth-flow-type
                              #:auth-parameters-type
                              #:auth-session-validity-type
                              #:authentication-result-type
                              #:available-challenge-list-type
                              #:blocked-iprange-list-type #:boolean-type
                              #:csstype #:cssversion-type
                              #:callback-urls-list-type #:challenge-name
                              #:challenge-name-type #:challenge-parameters-type
                              #:challenge-response
                              #:challenge-response-list-type
                              #:challenge-response-type
                              #:challenge-responses-type #:change-password
                              #:change-password-request
                              #:change-password-response #:client-id-type
                              #:client-metadata-type #:client-name-type
                              #:client-permission-list-type
                              #:client-permission-type #:client-secret-type
                              #:cloud-watch-logs-configuration-type
                              #:code-delivery-details-list-type
                              #:code-delivery-details-type
                              #:code-delivery-failure-exception
                              #:code-mismatch-exception
                              #:color-scheme-mode-type
                              #:complete-web-authn-registration
                              #:complete-web-authn-registration-request
                              #:complete-web-authn-registration-response
                              #:completion-message-type
                              #:compromised-credentials-actions-type
                              #:compromised-credentials-event-action-type
                              #:compromised-credentials-risk-configuration-type
                              #:concurrent-modification-exception
                              #:configured-user-auth-factors-list-type
                              #:confirm-device #:confirm-device-request
                              #:confirm-device-response
                              #:confirm-forgot-password
                              #:confirm-forgot-password-request
                              #:confirm-forgot-password-response
                              #:confirm-sign-up #:confirm-sign-up-request
                              #:confirm-sign-up-response
                              #:confirmation-code-type #:context-data-type
                              #:create-group #:create-group-request
                              #:create-group-response
                              #:create-identity-provider
                              #:create-identity-provider-request
                              #:create-identity-provider-response
                              #:create-managed-login-branding
                              #:create-managed-login-branding-request
                              #:create-managed-login-branding-response
                              #:create-resource-server
                              #:create-resource-server-request
                              #:create-resource-server-response
                              #:create-user-import-job
                              #:create-user-import-job-request
                              #:create-user-import-job-response
                              #:create-user-pool #:create-user-pool-client
                              #:create-user-pool-client-request
                              #:create-user-pool-client-response
                              #:create-user-pool-domain
                              #:create-user-pool-domain-request
                              #:create-user-pool-domain-response
                              #:create-user-pool-request
                              #:create-user-pool-response
                              #:custom-attribute-name-type
                              #:custom-attributes-list-type
                              #:custom-domain-config-type
                              #:custom-email-lambda-version-config-type
                              #:custom-email-sender-lambda-version-type
                              #:custom-smslambda-version-config-type
                              #:custom-smssender-lambda-version-type
                              #:date-type #:default-email-option-type
                              #:delete-group #:delete-group-request
                              #:delete-identity-provider
                              #:delete-identity-provider-request
                              #:delete-managed-login-branding
                              #:delete-managed-login-branding-request
                              #:delete-resource-server
                              #:delete-resource-server-request #:delete-user
                              #:delete-user-attributes
                              #:delete-user-attributes-request
                              #:delete-user-attributes-response
                              #:delete-user-pool #:delete-user-pool-client
                              #:delete-user-pool-client-request
                              #:delete-user-pool-domain
                              #:delete-user-pool-domain-request
                              #:delete-user-pool-domain-response
                              #:delete-user-pool-request #:delete-user-request
                              #:delete-web-authn-credential
                              #:delete-web-authn-credential-request
                              #:delete-web-authn-credential-response
                              #:deletion-protection-type
                              #:delivery-medium-list-type
                              #:delivery-medium-type
                              #:describe-identity-provider
                              #:describe-identity-provider-request
                              #:describe-identity-provider-response
                              #:describe-managed-login-branding
                              #:describe-managed-login-branding-by-client
                              #:describe-managed-login-branding-by-client-request
                              #:describe-managed-login-branding-by-client-response
                              #:describe-managed-login-branding-request
                              #:describe-managed-login-branding-response
                              #:describe-resource-server
                              #:describe-resource-server-request
                              #:describe-resource-server-response
                              #:describe-risk-configuration
                              #:describe-risk-configuration-request
                              #:describe-risk-configuration-response
                              #:describe-user-import-job
                              #:describe-user-import-job-request
                              #:describe-user-import-job-response
                              #:describe-user-pool #:describe-user-pool-client
                              #:describe-user-pool-client-request
                              #:describe-user-pool-client-response
                              #:describe-user-pool-domain
                              #:describe-user-pool-domain-request
                              #:describe-user-pool-domain-response
                              #:describe-user-pool-request
                              #:describe-user-pool-response #:description-type
                              #:device-configuration-type
                              #:device-key-exists-exception #:device-key-type
                              #:device-list-type #:device-name-type
                              #:device-remembered-status-type
                              #:device-secret-verifier-config-type
                              #:device-type #:document
                              #:domain-description-type #:domain-status-type
                              #:domain-type #:domain-version-type
                              #:duplicate-provider-exception
                              #:email-address-type #:email-configuration-type
                              #:email-invite-message-type
                              #:email-mfa-config-type #:email-mfa-message-type
                              #:email-mfa-settings-type
                              #:email-mfa-subject-type
                              #:email-notification-body-type
                              #:email-notification-subject-type
                              #:email-sending-account-type
                              #:email-verification-message-by-link-type
                              #:email-verification-message-type
                              #:email-verification-subject-by-link-type
                              #:email-verification-subject-type
                              #:enable-software-token-mfaexception
                              #:event-context-data-type #:event-feedback-type
                              #:event-filter-type #:event-filters-type
                              #:event-id-type #:event-response-type
                              #:event-risk-type #:event-source-name
                              #:event-type #:expired-code-exception
                              #:explicit-auth-flows-list-type
                              #:explicit-auth-flows-type #:feature-type
                              #:feature-unavailable-in-tier-exception
                              #:feedback-value-type
                              #:firehose-configuration-type
                              #:forbidden-exception #:force-alias-creation
                              #:forget-device #:forget-device-request
                              #:forgot-password #:forgot-password-request
                              #:forgot-password-response #:generate-secret
                              #:get-csvheader #:get-csvheader-request
                              #:get-csvheader-response #:get-device
                              #:get-device-request #:get-device-response
                              #:get-group #:get-group-request
                              #:get-group-response
                              #:get-identity-provider-by-identifier
                              #:get-identity-provider-by-identifier-request
                              #:get-identity-provider-by-identifier-response
                              #:get-log-delivery-configuration
                              #:get-log-delivery-configuration-request
                              #:get-log-delivery-configuration-response
                              #:get-signing-certificate
                              #:get-signing-certificate-request
                              #:get-signing-certificate-response
                              #:get-tokens-from-refresh-token
                              #:get-tokens-from-refresh-token-request
                              #:get-tokens-from-refresh-token-response
                              #:get-uicustomization
                              #:get-uicustomization-request
                              #:get-uicustomization-response #:get-user
                              #:get-user-attribute-verification-code
                              #:get-user-attribute-verification-code-request
                              #:get-user-attribute-verification-code-response
                              #:get-user-auth-factors
                              #:get-user-auth-factors-request
                              #:get-user-auth-factors-response
                              #:get-user-pool-mfa-config
                              #:get-user-pool-mfa-config-request
                              #:get-user-pool-mfa-config-response
                              #:get-user-request #:get-user-response
                              #:global-sign-out #:global-sign-out-request
                              #:global-sign-out-response
                              #:group-exists-exception #:group-list-type
                              #:group-name-type #:group-type #:hex-string-type
                              #:http-header #:http-header-list
                              #:id-token-validity-type #:identity-provider-type
                              #:identity-provider-type-type
                              #:idp-identifier-type #:idp-identifiers-list-type
                              #:image-file-type #:image-url-type
                              #:initiate-auth #:initiate-auth-request
                              #:initiate-auth-response #:integer-type
                              #:internal-error-exception
                              #:invalid-email-role-access-policy-exception
                              #:invalid-lambda-response-exception
                              #:invalid-oauth-flow-exception
                              #:invalid-parameter-exception
                              #:invalid-parameter-exception-reason-code-type
                              #:invalid-password-exception
                              #:invalid-sms-role-access-policy-exception
                              #:invalid-sms-role-trust-relationship-exception
                              #:invalid-user-pool-configuration-exception
                              #:lambda-config-type #:limit-exceeded-exception
                              #:list-devices #:list-devices-request
                              #:list-devices-response #:list-groups
                              #:list-groups-request #:list-groups-response
                              #:list-identity-providers
                              #:list-identity-providers-request
                              #:list-identity-providers-response
                              #:list-of-string-types
                              #:list-providers-limit-type
                              #:list-resource-servers
                              #:list-resource-servers-limit-type
                              #:list-resource-servers-request
                              #:list-resource-servers-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-user-import-jobs
                              #:list-user-import-jobs-request
                              #:list-user-import-jobs-response
                              #:list-user-pool-clients
                              #:list-user-pool-clients-request
                              #:list-user-pool-clients-response
                              #:list-user-pools #:list-user-pools-request
                              #:list-user-pools-response #:list-users
                              #:list-users-in-group
                              #:list-users-in-group-request
                              #:list-users-in-group-response
                              #:list-users-request #:list-users-response
                              #:list-web-authn-credentials
                              #:list-web-authn-credentials-request
                              #:list-web-authn-credentials-response
                              #:log-configuration-list-type
                              #:log-configuration-type
                              #:log-delivery-configuration-type #:log-level
                              #:logout-urls-list-type #:long-type
                              #:mfamethod-not-found-exception
                              #:mfaoption-list-type #:mfaoption-type
                              #:managed-login-branding-exists-exception
                              #:managed-login-branding-id-type
                              #:managed-login-branding-type
                              #:message-action-type #:message-template-type
                              #:message-type #:new-device-metadata-type
                              #:not-authorized-exception
                              #:notify-configuration-type #:notify-email-type
                              #:number-attribute-constraints-type
                              #:oauth-flow-type #:oauth-flows-type
                              #:pagination-key #:pagination-key-type
                              #:password-history-policy-violation-exception
                              #:password-history-size-type
                              #:password-policy-min-length-type
                              #:password-policy-type
                              #:password-reset-required-exception
                              #:password-type #:pool-query-limit-type
                              #:pre-signed-url-type
                              #:pre-token-generation-lambda-version-type
                              #:pre-token-generation-version-config-type
                              #:precedence-type
                              #:precondition-not-met-exception
                              #:prevent-user-existence-error-types
                              #:priority-type #:provider-description
                              #:provider-details-type #:provider-name-type
                              #:provider-name-type-v2
                              #:provider-user-identifier-type
                              #:providers-list-type #:query-limit
                              #:query-limit-type #:recovery-mechanisms-type
                              #:recovery-option-name-type
                              #:recovery-option-type #:redirect-url-type
                              #:refresh-token-reuse-exception
                              #:refresh-token-rotation-type
                              #:refresh-token-validity-type #:region-code-type
                              #:relying-party-id-type
                              #:resend-confirmation-code
                              #:resend-confirmation-code-request
                              #:resend-confirmation-code-response
                              #:resource-id-type #:resource-not-found-exception
                              #:resource-server-identifier-type
                              #:resource-server-name-type
                              #:resource-server-scope-description-type
                              #:resource-server-scope-list-type
                              #:resource-server-scope-name-type
                              #:resource-server-scope-type
                              #:resource-server-type
                              #:resource-servers-list-type
                              #:respond-to-auth-challenge
                              #:respond-to-auth-challenge-request
                              #:respond-to-auth-challenge-response
                              #:retry-grace-period-seconds-type #:revoke-token
                              #:revoke-token-request #:revoke-token-response
                              #:risk-configuration-type #:risk-decision-type
                              #:risk-exception-configuration-type
                              #:risk-level-type #:s3arn-type #:s3bucket-type
                              #:s3configuration-type #:sesconfiguration-set
                              #:smsmfa-settings-type #:schema-attribute-type
                              #:schema-attributes-list-type
                              #:scope-does-not-exist-exception
                              #:scope-list-type #:scope-type
                              #:search-pagination-token-type
                              #:searched-attribute-names-list-type
                              #:secret-code-type #:secret-hash-type
                              #:session-type #:set-log-delivery-configuration
                              #:set-log-delivery-configuration-request
                              #:set-log-delivery-configuration-response
                              #:set-risk-configuration
                              #:set-risk-configuration-request
                              #:set-risk-configuration-response
                              #:set-uicustomization
                              #:set-uicustomization-request
                              #:set-uicustomization-response
                              #:set-user-mfapreference
                              #:set-user-mfapreference-request
                              #:set-user-mfapreference-response
                              #:set-user-pool-mfa-config
                              #:set-user-pool-mfa-config-request
                              #:set-user-pool-mfa-config-response
                              #:set-user-settings #:set-user-settings-request
                              #:set-user-settings-response
                              #:sign-in-policy-type #:sign-up #:sign-up-request
                              #:sign-up-response #:skipped-iprange-list-type
                              #:sms-configuration-type
                              #:sms-invite-message-type #:sms-mfa-config-type
                              #:sms-verification-message-type
                              #:software-token-mfanot-found-exception
                              #:software-token-mfauser-code-type
                              #:software-token-mfa-config-type
                              #:software-token-mfa-settings-type
                              #:start-user-import-job
                              #:start-user-import-job-request
                              #:start-user-import-job-response
                              #:start-web-authn-registration
                              #:start-web-authn-registration-request
                              #:start-web-authn-registration-response
                              #:status-type #:stop-user-import-job
                              #:stop-user-import-job-request
                              #:stop-user-import-job-response
                              #:string-attribute-constraints-type #:string-type
                              #:supported-identity-providers-list-type
                              #:tag-keys-type #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value-type
                              #:temporary-password-validity-days-type
                              #:tier-change-not-allowed-exception
                              #:time-units-type #:token-model-type
                              #:token-validity-units-type
                              #:too-many-failed-attempts-exception
                              #:too-many-requests-exception
                              #:uicustomization-type #:unauthorized-exception
                              #:unexpected-lambda-exception
                              #:unsupported-identity-provider-exception
                              #:unsupported-operation-exception
                              #:unsupported-token-type-exception
                              #:unsupported-user-state-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-auth-event-feedback
                              #:update-auth-event-feedback-request
                              #:update-auth-event-feedback-response
                              #:update-device-status
                              #:update-device-status-request
                              #:update-device-status-response #:update-group
                              #:update-group-request #:update-group-response
                              #:update-identity-provider
                              #:update-identity-provider-request
                              #:update-identity-provider-response
                              #:update-managed-login-branding
                              #:update-managed-login-branding-request
                              #:update-managed-login-branding-response
                              #:update-resource-server
                              #:update-resource-server-request
                              #:update-resource-server-response
                              #:update-user-attributes
                              #:update-user-attributes-request
                              #:update-user-attributes-response
                              #:update-user-pool #:update-user-pool-client
                              #:update-user-pool-client-request
                              #:update-user-pool-client-response
                              #:update-user-pool-domain
                              #:update-user-pool-domain-request
                              #:update-user-pool-domain-response
                              #:update-user-pool-request
                              #:update-user-pool-response
                              #:user-attribute-update-settings-type
                              #:user-context-data-type #:user-filter-type
                              #:user-import-in-progress-exception
                              #:user-import-job-id-type
                              #:user-import-job-name-type
                              #:user-import-job-status-type
                              #:user-import-job-type
                              #:user-import-jobs-list-type
                              #:user-lambda-validation-exception
                              #:user-mfasetting-list-type
                              #:user-not-confirmed-exception
                              #:user-not-found-exception
                              #:user-pool-add-on-not-enabled-exception
                              #:user-pool-add-ons-type
                              #:user-pool-client-description
                              #:user-pool-client-list-type
                              #:user-pool-client-type
                              #:user-pool-description-type #:user-pool-id-type
                              #:user-pool-list-type #:user-pool-mfa-type
                              #:user-pool-name-type #:user-pool-policy-type
                              #:user-pool-tagging-exception
                              #:user-pool-tags-list-type #:user-pool-tags-type
                              #:user-pool-tier-type #:user-pool-type
                              #:user-status-type #:user-type
                              #:user-verification-type
                              #:username-attribute-type
                              #:username-attributes-list-type
                              #:username-configuration-type
                              #:username-exists-exception #:username-type
                              #:users-list-type
                              #:verification-message-template-type
                              #:verified-attribute-type
                              #:verified-attributes-list-type
                              #:verify-software-token
                              #:verify-software-token-request
                              #:verify-software-token-response
                              #:verify-software-token-response-type
                              #:verify-user-attribute
                              #:verify-user-attribute-request
                              #:verify-user-attribute-response
                              #:web-authn-authenticator-attachment-type
                              #:web-authn-authenticator-transport-type
                              #:web-authn-authenticator-transports-list
                              #:web-authn-challenge-not-found-exception
                              #:web-authn-client-mismatch-exception
                              #:web-authn-configuration-missing-exception
                              #:web-authn-configuration-type
                              #:web-authn-credential-description
                              #:web-authn-credential-description-list-type
                              #:web-authn-credential-not-supported-exception
                              #:web-authn-credentials-query-limit-type
                              #:web-authn-not-enabled-exception
                              #:web-authn-origin-not-allowed-exception
                              #:web-authn-relying-party-mismatch-exception
                              #:wrapped-boolean-type #:wrapped-integer-type))
(common-lisp:in-package #:pira/cognito-identity-provider)

(smithy/sdk/service:define-service awscognito-identity-provider-service
                                   :shape-name
                                   "AWSCognitoIdentityProviderService" :version
                                   "2016-04-18" :title
                                   "Amazon Cognito Identity Provider"
                                   :xml-namespace
                                   '(:uri
                                     "http://cognito-idp.amazonaws.com/doc/2016-04-18/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Cognito Identity Provider")
                                      ("arnNamespace" . "cognito-idp")
                                      ("cloudFormationName" . "Cognito")
                                      ("cloudTrailEventSource"
                                       . "cognito-idp.amazonaws.com")
                                      ("docId" . "cognito-idp-2016-04-18")
                                      ("endpointPrefix" . "cognito-idp"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cognito-idp"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsaccount-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-token-validity-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure account-recovery-setting-type
                                    common-lisp:nil
                                    ((recovery-mechanisms :target-type
                                      recovery-mechanisms-type :member-name
                                      "RecoveryMechanisms"))
                                    (:shape-name "AccountRecoverySettingType"))

(smithy/sdk/shapes:define-type account-takeover-action-notify-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure account-takeover-action-type
                                    common-lisp:nil
                                    ((notify :target-type
                                      account-takeover-action-notify-type
                                      :required common-lisp:t :member-name
                                      "Notify")
                                     (event-action :target-type
                                      account-takeover-event-action-type
                                      :required common-lisp:t :member-name
                                      "EventAction"))
                                    (:shape-name "AccountTakeoverActionType"))

(smithy/sdk/shapes:define-structure account-takeover-actions-type
                                    common-lisp:nil
                                    ((low-action :target-type
                                      account-takeover-action-type :member-name
                                      "LowAction")
                                     (medium-action :target-type
                                      account-takeover-action-type :member-name
                                      "MediumAction")
                                     (high-action :target-type
                                      account-takeover-action-type :member-name
                                      "HighAction"))
                                    (:shape-name "AccountTakeoverActionsType"))

(smithy/sdk/shapes:define-enum account-takeover-event-action-type
    common-lisp:nil
  (:block "BLOCK")
  (:mfa-if-configured "MFA_IF_CONFIGURED")
  (:mfa-required "MFA_REQUIRED")
  (:no-action "NO_ACTION"))

(smithy/sdk/shapes:define-structure account-takeover-risk-configuration-type
                                    common-lisp:nil
                                    ((notify-configuration :target-type
                                      notify-configuration-type :member-name
                                      "NotifyConfiguration")
                                     (actions :target-type
                                      account-takeover-actions-type :required
                                      common-lisp:t :member-name "Actions"))
                                    (:shape-name
                                     "AccountTakeoverRiskConfigurationType"))

(smithy/sdk/shapes:define-input add-custom-attributes-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (custom-attributes :target-type
                                  custom-attributes-list-type :required
                                  common-lisp:t :member-name
                                  "CustomAttributes"))
                                (:shape-name "AddCustomAttributesRequest"))

(smithy/sdk/shapes:define-output add-custom-attributes-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddCustomAttributesResponse"))

(smithy/sdk/shapes:define-input admin-add-user-to-group-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName"))
                                (:shape-name "AdminAddUserToGroupRequest"))

(smithy/sdk/shapes:define-input admin-confirm-sign-up-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "AdminConfirmSignUpRequest"))

(smithy/sdk/shapes:define-output admin-confirm-sign-up-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AdminConfirmSignUpResponse"))

(smithy/sdk/shapes:define-structure admin-create-user-config-type
                                    common-lisp:nil
                                    ((allow-admin-create-user-only :target-type
                                      boolean-type :member-name
                                      "AllowAdminCreateUserOnly")
                                     (unused-account-validity-days :target-type
                                      admin-create-user-unused-account-validity-days-type
                                      :member-name "UnusedAccountValidityDays")
                                     (invite-message-template :target-type
                                      message-template-type :member-name
                                      "InviteMessageTemplate"))
                                    (:shape-name "AdminCreateUserConfigType"))

(smithy/sdk/shapes:define-input admin-create-user-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (user-attributes :target-type
                                  attribute-list-type :member-name
                                  "UserAttributes")
                                 (validation-data :target-type
                                  attribute-list-type :member-name
                                  "ValidationData")
                                 (temporary-password :target-type password-type
                                  :member-name "TemporaryPassword")
                                 (force-alias-creation :target-type
                                  force-alias-creation :member-name
                                  "ForceAliasCreation")
                                 (message-action :target-type
                                  message-action-type :member-name
                                  "MessageAction")
                                 (desired-delivery-mediums :target-type
                                  delivery-medium-list-type :member-name
                                  "DesiredDeliveryMediums")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "AdminCreateUserRequest"))

(smithy/sdk/shapes:define-output admin-create-user-response common-lisp:nil
                                 ((user :target-type user-type :member-name
                                   "User"))
                                 (:shape-name "AdminCreateUserResponse"))

(smithy/sdk/shapes:define-type
 admin-create-user-unused-account-validity-days-type
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input admin-delete-user-attributes-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (user-attribute-names :target-type
                                  attribute-name-list-type :required
                                  common-lisp:t :member-name
                                  "UserAttributeNames"))
                                (:shape-name
                                 "AdminDeleteUserAttributesRequest"))

(smithy/sdk/shapes:define-output admin-delete-user-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminDeleteUserAttributesResponse"))

(smithy/sdk/shapes:define-input admin-delete-user-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username"))
                                (:shape-name "AdminDeleteUserRequest"))

(smithy/sdk/shapes:define-input admin-disable-provider-for-user-request
                                common-lisp:nil
                                ((user-pool-id :target-type string-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (user :target-type
                                  provider-user-identifier-type :required
                                  common-lisp:t :member-name "User"))
                                (:shape-name
                                 "AdminDisableProviderForUserRequest"))

(smithy/sdk/shapes:define-output admin-disable-provider-for-user-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminDisableProviderForUserResponse"))

(smithy/sdk/shapes:define-input admin-disable-user-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username"))
                                (:shape-name "AdminDisableUserRequest"))

(smithy/sdk/shapes:define-output admin-disable-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AdminDisableUserResponse"))

(smithy/sdk/shapes:define-input admin-enable-user-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username"))
                                (:shape-name "AdminEnableUserRequest"))

(smithy/sdk/shapes:define-output admin-enable-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AdminEnableUserResponse"))

(smithy/sdk/shapes:define-input admin-forget-device-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey"))
                                (:shape-name "AdminForgetDeviceRequest"))

(smithy/sdk/shapes:define-input admin-get-device-request common-lisp:nil
                                ((device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username"))
                                (:shape-name "AdminGetDeviceRequest"))

(smithy/sdk/shapes:define-output admin-get-device-response common-lisp:nil
                                 ((device :target-type device-type :required
                                   common-lisp:t :member-name "Device"))
                                 (:shape-name "AdminGetDeviceResponse"))

(smithy/sdk/shapes:define-input admin-get-user-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username"))
                                (:shape-name "AdminGetUserRequest"))

(smithy/sdk/shapes:define-output admin-get-user-response common-lisp:nil
                                 ((username :target-type username-type
                                   :required common-lisp:t :member-name
                                   "Username")
                                  (user-attributes :target-type
                                   attribute-list-type :member-name
                                   "UserAttributes")
                                  (user-create-date :target-type date-type
                                   :member-name "UserCreateDate")
                                  (user-last-modified-date :target-type
                                   date-type :member-name
                                   "UserLastModifiedDate")
                                  (enabled :target-type boolean-type
                                   :member-name "Enabled")
                                  (user-status :target-type user-status-type
                                   :member-name "UserStatus")
                                  (mfaoptions :target-type mfaoption-list-type
                                   :member-name "MFAOptions")
                                  (preferred-mfa-setting :target-type
                                   string-type :member-name
                                   "PreferredMfaSetting")
                                  (user-mfasetting-list :target-type
                                   user-mfasetting-list-type :member-name
                                   "UserMFASettingList"))
                                 (:shape-name "AdminGetUserResponse"))

(smithy/sdk/shapes:define-input admin-initiate-auth-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (auth-flow :target-type auth-flow-type
                                  :required common-lisp:t :member-name
                                  "AuthFlow")
                                 (auth-parameters :target-type
                                  auth-parameters-type :member-name
                                  "AuthParameters")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (context-data :target-type context-data-type
                                  :member-name "ContextData")
                                 (session :target-type session-type
                                  :member-name "Session"))
                                (:shape-name "AdminInitiateAuthRequest"))

(smithy/sdk/shapes:define-output admin-initiate-auth-response common-lisp:nil
                                 ((challenge-name :target-type
                                   challenge-name-type :member-name
                                   "ChallengeName")
                                  (session :target-type session-type
                                   :member-name "Session")
                                  (challenge-parameters :target-type
                                   challenge-parameters-type :member-name
                                   "ChallengeParameters")
                                  (authentication-result :target-type
                                   authentication-result-type :member-name
                                   "AuthenticationResult")
                                  (available-challenges :target-type
                                   available-challenge-list-type :member-name
                                   "AvailableChallenges"))
                                 (:shape-name "AdminInitiateAuthResponse"))

(smithy/sdk/shapes:define-input admin-link-provider-for-user-request
                                common-lisp:nil
                                ((user-pool-id :target-type string-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (destination-user :target-type
                                  provider-user-identifier-type :required
                                  common-lisp:t :member-name "DestinationUser")
                                 (source-user :target-type
                                  provider-user-identifier-type :required
                                  common-lisp:t :member-name "SourceUser"))
                                (:shape-name "AdminLinkProviderForUserRequest"))

(smithy/sdk/shapes:define-output admin-link-provider-for-user-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminLinkProviderForUserResponse"))

(smithy/sdk/shapes:define-input admin-list-devices-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (limit :target-type query-limit-type
                                  :member-name "Limit")
                                 (pagination-token :target-type
                                  search-pagination-token-type :member-name
                                  "PaginationToken"))
                                (:shape-name "AdminListDevicesRequest"))

(smithy/sdk/shapes:define-output admin-list-devices-response common-lisp:nil
                                 ((devices :target-type device-list-type
                                   :member-name "Devices")
                                  (pagination-token :target-type
                                   search-pagination-token-type :member-name
                                   "PaginationToken"))
                                 (:shape-name "AdminListDevicesResponse"))

(smithy/sdk/shapes:define-input admin-list-groups-for-user-request
                                common-lisp:nil
                                ((username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (limit :target-type query-limit-type
                                  :member-name "Limit")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "AdminListGroupsForUserRequest"))

(smithy/sdk/shapes:define-output admin-list-groups-for-user-response
                                 common-lisp:nil
                                 ((groups :target-type group-list-type
                                   :member-name "Groups")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name "AdminListGroupsForUserResponse"))

(smithy/sdk/shapes:define-input admin-list-user-auth-events-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (max-results :target-type query-limit-type
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "AdminListUserAuthEventsRequest"))

(smithy/sdk/shapes:define-output admin-list-user-auth-events-response
                                 common-lisp:nil
                                 ((auth-events :target-type auth-events-type
                                   :member-name "AuthEvents")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "AdminListUserAuthEventsResponse"))

(smithy/sdk/shapes:define-input admin-remove-user-from-group-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName"))
                                (:shape-name "AdminRemoveUserFromGroupRequest"))

(smithy/sdk/shapes:define-input admin-reset-user-password-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "AdminResetUserPasswordRequest"))

(smithy/sdk/shapes:define-output admin-reset-user-password-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AdminResetUserPasswordResponse"))

(smithy/sdk/shapes:define-input admin-respond-to-auth-challenge-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (challenge-name :target-type
                                  challenge-name-type :required common-lisp:t
                                  :member-name "ChallengeName")
                                 (challenge-responses :target-type
                                  challenge-responses-type :member-name
                                  "ChallengeResponses")
                                 (session :target-type session-type
                                  :member-name "Session")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (context-data :target-type context-data-type
                                  :member-name "ContextData")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name
                                 "AdminRespondToAuthChallengeRequest"))

(smithy/sdk/shapes:define-output admin-respond-to-auth-challenge-response
                                 common-lisp:nil
                                 ((challenge-name :target-type
                                   challenge-name-type :member-name
                                   "ChallengeName")
                                  (session :target-type session-type
                                   :member-name "Session")
                                  (challenge-parameters :target-type
                                   challenge-parameters-type :member-name
                                   "ChallengeParameters")
                                  (authentication-result :target-type
                                   authentication-result-type :member-name
                                   "AuthenticationResult"))
                                 (:shape-name
                                  "AdminRespondToAuthChallengeResponse"))

(smithy/sdk/shapes:define-input admin-set-user-mfapreference-request
                                common-lisp:nil
                                ((smsmfa-settings :target-type
                                  smsmfa-settings-type :member-name
                                  "SMSMfaSettings")
                                 (software-token-mfa-settings :target-type
                                  software-token-mfa-settings-type :member-name
                                  "SoftwareTokenMfaSettings")
                                 (email-mfa-settings :target-type
                                  email-mfa-settings-type :member-name
                                  "EmailMfaSettings")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name
                                 "AdminSetUserMFAPreferenceRequest"))

(smithy/sdk/shapes:define-output admin-set-user-mfapreference-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminSetUserMFAPreferenceResponse"))

(smithy/sdk/shapes:define-input admin-set-user-password-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (password :target-type password-type :required
                                  common-lisp:t :member-name "Password")
                                 (permanent :target-type boolean-type
                                  :member-name "Permanent"))
                                (:shape-name "AdminSetUserPasswordRequest"))

(smithy/sdk/shapes:define-output admin-set-user-password-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AdminSetUserPasswordResponse"))

(smithy/sdk/shapes:define-input admin-set-user-settings-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (mfaoptions :target-type mfaoption-list-type
                                  :required common-lisp:t :member-name
                                  "MFAOptions"))
                                (:shape-name "AdminSetUserSettingsRequest"))

(smithy/sdk/shapes:define-output admin-set-user-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AdminSetUserSettingsResponse"))

(smithy/sdk/shapes:define-input admin-update-auth-event-feedback-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (event-id :target-type event-id-type :required
                                  common-lisp:t :member-name "EventId")
                                 (feedback-value :target-type
                                  feedback-value-type :required common-lisp:t
                                  :member-name "FeedbackValue"))
                                (:shape-name
                                 "AdminUpdateAuthEventFeedbackRequest"))

(smithy/sdk/shapes:define-output admin-update-auth-event-feedback-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminUpdateAuthEventFeedbackResponse"))

(smithy/sdk/shapes:define-input admin-update-device-status-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey")
                                 (device-remembered-status :target-type
                                  device-remembered-status-type :member-name
                                  "DeviceRememberedStatus"))
                                (:shape-name "AdminUpdateDeviceStatusRequest"))

(smithy/sdk/shapes:define-output admin-update-device-status-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminUpdateDeviceStatusResponse"))

(smithy/sdk/shapes:define-input admin-update-user-attributes-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (user-attributes :target-type
                                  attribute-list-type :required common-lisp:t
                                  :member-name "UserAttributes")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name
                                 "AdminUpdateUserAttributesRequest"))

(smithy/sdk/shapes:define-output admin-update-user-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AdminUpdateUserAttributesResponse"))

(smithy/sdk/shapes:define-input admin-user-global-sign-out-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username"))
                                (:shape-name "AdminUserGlobalSignOutRequest"))

(smithy/sdk/shapes:define-output admin-user-global-sign-out-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AdminUserGlobalSignOutResponse"))

(smithy/sdk/shapes:define-structure advanced-security-additional-flows-type
                                    common-lisp:nil
                                    ((custom-auth-mode :target-type
                                      advanced-security-enabled-mode-type
                                      :member-name "CustomAuthMode"))
                                    (:shape-name
                                     "AdvancedSecurityAdditionalFlowsType"))

(smithy/sdk/shapes:define-enum advanced-security-enabled-mode-type
    common-lisp:nil
  (:audit "AUDIT")
  (:enforced "ENFORCED"))

(smithy/sdk/shapes:define-enum advanced-security-mode-type
    common-lisp:nil
  (:off "OFF")
  (:audit "AUDIT")
  (:enforced "ENFORCED"))

(smithy/sdk/shapes:define-enum alias-attribute-type
    common-lisp:nil
  (:phone-number "phone_number")
  (:email "email")
  (:preferred-username "preferred_username"))

(smithy/sdk/shapes:define-list alias-attributes-list-type :member
                               alias-attribute-type)

(smithy/sdk/shapes:define-error alias-exists-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "AliasExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list allowed-first-auth-factors-list-type :member
                               auth-factor-type)

(smithy/sdk/shapes:define-structure analytics-configuration-type
                                    common-lisp:nil
                                    ((application-id :target-type
                                      hex-string-type :member-name
                                      "ApplicationId")
                                     (application-arn :target-type arn-type
                                      :member-name "ApplicationArn")
                                     (role-arn :target-type arn-type
                                      :member-name "RoleArn")
                                     (external-id :target-type string-type
                                      :member-name "ExternalId")
                                     (user-data-shared :target-type
                                      boolean-type :member-name
                                      "UserDataShared"))
                                    (:shape-name "AnalyticsConfigurationType"))

(smithy/sdk/shapes:define-structure analytics-metadata-type common-lisp:nil
                                    ((analytics-endpoint-id :target-type
                                      string-type :member-name
                                      "AnalyticsEndpointId"))
                                    (:shape-name "AnalyticsMetadataType"))

(smithy/sdk/shapes:define-type arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-bytes-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum asset-category-type
    common-lisp:nil
  (:favicon-ico "FAVICON_ICO")
  (:favicon-svg "FAVICON_SVG")
  (:email-graphic "EMAIL_GRAPHIC")
  (:sms-graphic "SMS_GRAPHIC")
  (:auth-app-graphic "AUTH_APP_GRAPHIC")
  (:password-graphic "PASSWORD_GRAPHIC")
  (:passkey-graphic "PASSKEY_GRAPHIC")
  (:page-header-logo "PAGE_HEADER_LOGO")
  (:page-header-background "PAGE_HEADER_BACKGROUND")
  (:page-footer-logo "PAGE_FOOTER_LOGO")
  (:page-footer-background "PAGE_FOOTER_BACKGROUND")
  (:page-background "PAGE_BACKGROUND")
  (:form-background "FORM_BACKGROUND")
  (:form-logo "FORM_LOGO")
  (:idp-button-icon "IDP_BUTTON_ICON"))

(smithy/sdk/shapes:define-enum asset-extension-type
    common-lisp:nil
  (:ico "ICO")
  (:jpeg "JPEG")
  (:png "PNG")
  (:svg "SVG")
  (:webp "WEBP"))

(smithy/sdk/shapes:define-list asset-list-type :member asset-type)

(smithy/sdk/shapes:define-structure asset-type common-lisp:nil
                                    ((category :target-type asset-category-type
                                      :required common-lisp:t :member-name
                                      "Category")
                                     (color-mode :target-type
                                      color-scheme-mode-type :required
                                      common-lisp:t :member-name "ColorMode")
                                     (extension :target-type
                                      asset-extension-type :required
                                      common-lisp:t :member-name "Extension")
                                     (bytes :target-type asset-bytes-type
                                      :member-name "Bytes")
                                     (resource-id :target-type resource-id-type
                                      :member-name "ResourceId"))
                                    (:shape-name "AssetType"))

(smithy/sdk/shapes:define-input associate-software-token-request
                                common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :member-name "AccessToken")
                                 (session :target-type session-type
                                  :member-name "Session"))
                                (:shape-name "AssociateSoftwareTokenRequest"))

(smithy/sdk/shapes:define-output associate-software-token-response
                                 common-lisp:nil
                                 ((secret-code :target-type secret-code-type
                                   :member-name "SecretCode")
                                  (session :target-type session-type
                                   :member-name "Session"))
                                 (:shape-name "AssociateSoftwareTokenResponse"))

(smithy/sdk/shapes:define-enum attribute-data-type
    common-lisp:nil
  (:string "String")
  (:number "Number")
  (:datetime "DateTime")
  (:boolean "Boolean"))

(smithy/sdk/shapes:define-list attribute-list-type :member attribute-type)

(smithy/sdk/shapes:define-type attribute-mapping-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attribute-mapping-type :key
                              attribute-mapping-key-type :value string-type)

(smithy/sdk/shapes:define-list attribute-name-list-type :member
                               attribute-name-type)

(smithy/sdk/shapes:define-type attribute-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-type common-lisp:nil
                                    ((name :target-type attribute-name-type
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type attribute-value-type
                                      :member-name "Value"))
                                    (:shape-name "AttributeType"))

(smithy/sdk/shapes:define-type attribute-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 attributes-require-verification-before-update-type :member
 verified-attribute-type)

(smithy/sdk/shapes:define-structure auth-event-type common-lisp:nil
                                    ((event-id :target-type string-type
                                      :member-name "EventId")
                                     (event-type :target-type event-type
                                      :member-name "EventType")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (event-response :target-type
                                      event-response-type :member-name
                                      "EventResponse")
                                     (event-risk :target-type event-risk-type
                                      :member-name "EventRisk")
                                     (challenge-responses :target-type
                                      challenge-response-list-type :member-name
                                      "ChallengeResponses")
                                     (event-context-data :target-type
                                      event-context-data-type :member-name
                                      "EventContextData")
                                     (event-feedback :target-type
                                      event-feedback-type :member-name
                                      "EventFeedback"))
                                    (:shape-name "AuthEventType"))

(smithy/sdk/shapes:define-list auth-events-type :member auth-event-type)

(smithy/sdk/shapes:define-enum auth-factor-type
    common-lisp:nil
  (:password "PASSWORD")
  (:email-otp "EMAIL_OTP")
  (:sms-otp "SMS_OTP")
  (:web-authn "WEB_AUTHN"))

(smithy/sdk/shapes:define-enum auth-flow-type
    common-lisp:nil
  (:user-srp-auth "USER_SRP_AUTH")
  (:refresh-token-auth "REFRESH_TOKEN_AUTH")
  (:refresh-token "REFRESH_TOKEN")
  (:custom-auth "CUSTOM_AUTH")
  (:admin-no-srp-auth "ADMIN_NO_SRP_AUTH")
  (:user-password-auth "USER_PASSWORD_AUTH")
  (:admin-user-password-auth "ADMIN_USER_PASSWORD_AUTH")
  (:user-auth "USER_AUTH"))

(smithy/sdk/shapes:define-map auth-parameters-type :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-type auth-session-validity-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure authentication-result-type common-lisp:nil
                                    ((access-token :target-type
                                      token-model-type :member-name
                                      "AccessToken")
                                     (expires-in :target-type integer-type
                                      :member-name "ExpiresIn")
                                     (token-type :target-type string-type
                                      :member-name "TokenType")
                                     (refresh-token :target-type
                                      token-model-type :member-name
                                      "RefreshToken")
                                     (id-token :target-type token-model-type
                                      :member-name "IdToken")
                                     (new-device-metadata :target-type
                                      new-device-metadata-type :member-name
                                      "NewDeviceMetadata"))
                                    (:shape-name "AuthenticationResultType"))

(smithy/sdk/shapes:define-list available-challenge-list-type :member
                               challenge-name-type)

(smithy/sdk/shapes:define-list blocked-iprange-list-type :member string-type)

(smithy/sdk/shapes:define-type boolean-type smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type csstype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cssversion-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list callback-urls-list-type :member
                               redirect-url-type)

(smithy/sdk/shapes:define-enum challenge-name
    common-lisp:nil
  (:password "Password")
  (:mfa "Mfa"))

(smithy/sdk/shapes:define-enum challenge-name-type
    common-lisp:nil
  (:sms-mfa "SMS_MFA")
  (:email-otp "EMAIL_OTP")
  (:software-token-mfa "SOFTWARE_TOKEN_MFA")
  (:select-mfa-type "SELECT_MFA_TYPE")
  (:mfa-setup "MFA_SETUP")
  (:password-verifier "PASSWORD_VERIFIER")
  (:custom-challenge "CUSTOM_CHALLENGE")
  (:select-challenge "SELECT_CHALLENGE")
  (:device-srp-auth "DEVICE_SRP_AUTH")
  (:device-password-verifier "DEVICE_PASSWORD_VERIFIER")
  (:admin-no-srp-auth "ADMIN_NO_SRP_AUTH")
  (:new-password-required "NEW_PASSWORD_REQUIRED")
  (:sms-otp "SMS_OTP")
  (:password "PASSWORD")
  (:web-authn "WEB_AUTHN")
  (:password-srp "PASSWORD_SRP"))

(smithy/sdk/shapes:define-map challenge-parameters-type :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-enum challenge-response
    common-lisp:nil
  (:success "Success")
  (:failure "Failure"))

(smithy/sdk/shapes:define-list challenge-response-list-type :member
                               challenge-response-type)

(smithy/sdk/shapes:define-structure challenge-response-type common-lisp:nil
                                    ((challenge-name :target-type
                                      challenge-name :member-name
                                      "ChallengeName")
                                     (challenge-response :target-type
                                      challenge-response :member-name
                                      "ChallengeResponse"))
                                    (:shape-name "ChallengeResponseType"))

(smithy/sdk/shapes:define-map challenge-responses-type :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-input change-password-request common-lisp:nil
                                ((previous-password :target-type password-type
                                  :member-name "PreviousPassword")
                                 (proposed-password :target-type password-type
                                  :required common-lisp:t :member-name
                                  "ProposedPassword")
                                 (access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "ChangePasswordRequest"))

(smithy/sdk/shapes:define-output change-password-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ChangePasswordResponse"))

(smithy/sdk/shapes:define-type client-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map client-metadata-type :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-type client-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list client-permission-list-type :member
                               client-permission-type)

(smithy/sdk/shapes:define-type client-permission-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-secret-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-logs-configuration-type
                                    common-lisp:nil
                                    ((log-group-arn :target-type arn-type
                                      :member-name "LogGroupArn"))
                                    (:shape-name
                                     "CloudWatchLogsConfigurationType"))

(smithy/sdk/shapes:define-list code-delivery-details-list-type :member
                               code-delivery-details-type)

(smithy/sdk/shapes:define-structure code-delivery-details-type common-lisp:nil
                                    ((destination :target-type string-type
                                      :member-name "Destination")
                                     (delivery-medium :target-type
                                      delivery-medium-type :member-name
                                      "DeliveryMedium")
                                     (attribute-name :target-type
                                      attribute-name-type :member-name
                                      "AttributeName"))
                                    (:shape-name "CodeDeliveryDetailsType"))

(smithy/sdk/shapes:define-error code-delivery-failure-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "CodeDeliveryFailureException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error code-mismatch-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "CodeMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum color-scheme-mode-type
    common-lisp:nil
  (:light "LIGHT")
  (:dark "DARK")
  (:dynamic "DYNAMIC"))

(smithy/sdk/shapes:define-input complete-web-authn-registration-request
                                common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (credential :target-type document :required
                                  common-lisp:t :member-name "Credential"))
                                (:shape-name
                                 "CompleteWebAuthnRegistrationRequest"))

(smithy/sdk/shapes:define-output complete-web-authn-registration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CompleteWebAuthnRegistrationResponse"))

(smithy/sdk/shapes:define-type completion-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compromised-credentials-actions-type
                                    common-lisp:nil
                                    ((event-action :target-type
                                      compromised-credentials-event-action-type
                                      :required common-lisp:t :member-name
                                      "EventAction"))
                                    (:shape-name
                                     "CompromisedCredentialsActionsType"))

(smithy/sdk/shapes:define-enum compromised-credentials-event-action-type
    common-lisp:nil
  (:block "BLOCK")
  (:no-action "NO_ACTION"))

(smithy/sdk/shapes:define-structure
 compromised-credentials-risk-configuration-type common-lisp:nil
 ((event-filter :target-type event-filters-type :member-name "EventFilter")
  (actions :target-type compromised-credentials-actions-type :required
   common-lisp:t :member-name "Actions"))
 (:shape-name "CompromisedCredentialsRiskConfigurationType"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list configured-user-auth-factors-list-type :member
                               auth-factor-type)

(smithy/sdk/shapes:define-input confirm-device-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey")
                                 (device-secret-verifier-config :target-type
                                  device-secret-verifier-config-type
                                  :member-name "DeviceSecretVerifierConfig")
                                 (device-name :target-type device-name-type
                                  :member-name "DeviceName"))
                                (:shape-name "ConfirmDeviceRequest"))

(smithy/sdk/shapes:define-output confirm-device-response common-lisp:nil
                                 ((user-confirmation-necessary :target-type
                                   boolean-type :member-name
                                   "UserConfirmationNecessary"))
                                 (:shape-name "ConfirmDeviceResponse"))

(smithy/sdk/shapes:define-input confirm-forgot-password-request common-lisp:nil
                                ((client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (secret-hash :target-type secret-hash-type
                                  :member-name "SecretHash")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (confirmation-code :target-type
                                  confirmation-code-type :required
                                  common-lisp:t :member-name
                                  "ConfirmationCode")
                                 (password :target-type password-type :required
                                  common-lisp:t :member-name "Password")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "ConfirmForgotPasswordRequest"))

(smithy/sdk/shapes:define-output confirm-forgot-password-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ConfirmForgotPasswordResponse"))

(smithy/sdk/shapes:define-input confirm-sign-up-request common-lisp:nil
                                ((client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (secret-hash :target-type secret-hash-type
                                  :member-name "SecretHash")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (confirmation-code :target-type
                                  confirmation-code-type :required
                                  common-lisp:t :member-name
                                  "ConfirmationCode")
                                 (force-alias-creation :target-type
                                  force-alias-creation :member-name
                                  "ForceAliasCreation")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata")
                                 (session :target-type session-type
                                  :member-name "Session"))
                                (:shape-name "ConfirmSignUpRequest"))

(smithy/sdk/shapes:define-output confirm-sign-up-response common-lisp:nil
                                 ((session :target-type session-type
                                   :member-name "Session"))
                                 (:shape-name "ConfirmSignUpResponse"))

(smithy/sdk/shapes:define-type confirmation-code-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure context-data-type common-lisp:nil
                                    ((ip-address :target-type string-type
                                      :required common-lisp:t :member-name
                                      "IpAddress")
                                     (server-name :target-type string-type
                                      :required common-lisp:t :member-name
                                      "ServerName")
                                     (server-path :target-type string-type
                                      :required common-lisp:t :member-name
                                      "ServerPath")
                                     (http-headers :target-type
                                      http-header-list :required common-lisp:t
                                      :member-name "HttpHeaders")
                                     (encoded-data :target-type string-type
                                      :member-name "EncodedData"))
                                    (:shape-name "ContextDataType"))

(smithy/sdk/shapes:define-input create-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (description :target-type description-type
                                  :member-name "Description")
                                 (role-arn :target-type arn-type :member-name
                                  "RoleArn")
                                 (precedence :target-type precedence-type
                                  :member-name "Precedence"))
                                (:shape-name "CreateGroupRequest"))

(smithy/sdk/shapes:define-output create-group-response common-lisp:nil
                                 ((group :target-type group-type :member-name
                                   "Group"))
                                 (:shape-name "CreateGroupResponse"))

(smithy/sdk/shapes:define-input create-identity-provider-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (provider-name :target-type
                                  provider-name-type-v2 :required common-lisp:t
                                  :member-name "ProviderName")
                                 (provider-type :target-type
                                  identity-provider-type-type :required
                                  common-lisp:t :member-name "ProviderType")
                                 (provider-details :target-type
                                  provider-details-type :required common-lisp:t
                                  :member-name "ProviderDetails")
                                 (attribute-mapping :target-type
                                  attribute-mapping-type :member-name
                                  "AttributeMapping")
                                 (idp-identifiers :target-type
                                  idp-identifiers-list-type :member-name
                                  "IdpIdentifiers"))
                                (:shape-name "CreateIdentityProviderRequest"))

(smithy/sdk/shapes:define-output create-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider :target-type
                                   identity-provider-type :required
                                   common-lisp:t :member-name
                                   "IdentityProvider"))
                                 (:shape-name "CreateIdentityProviderResponse"))

(smithy/sdk/shapes:define-input create-managed-login-branding-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (use-cognito-provided-values :target-type
                                  boolean-type :member-name
                                  "UseCognitoProvidedValues")
                                 (settings :target-type document :member-name
                                  "Settings")
                                 (assets :target-type asset-list-type
                                  :member-name "Assets"))
                                (:shape-name
                                 "CreateManagedLoginBrandingRequest"))

(smithy/sdk/shapes:define-output create-managed-login-branding-response
                                 common-lisp:nil
                                 ((managed-login-branding :target-type
                                   managed-login-branding-type :member-name
                                   "ManagedLoginBranding"))
                                 (:shape-name
                                  "CreateManagedLoginBrandingResponse"))

(smithy/sdk/shapes:define-input create-resource-server-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (identifier :target-type
                                  resource-server-identifier-type :required
                                  common-lisp:t :member-name "Identifier")
                                 (name :target-type resource-server-name-type
                                  :required common-lisp:t :member-name "Name")
                                 (scopes :target-type
                                  resource-server-scope-list-type :member-name
                                  "Scopes"))
                                (:shape-name "CreateResourceServerRequest"))

(smithy/sdk/shapes:define-output create-resource-server-response
                                 common-lisp:nil
                                 ((resource-server :target-type
                                   resource-server-type :required common-lisp:t
                                   :member-name "ResourceServer"))
                                 (:shape-name "CreateResourceServerResponse"))

(smithy/sdk/shapes:define-input create-user-import-job-request common-lisp:nil
                                ((job-name :target-type
                                  user-import-job-name-type :required
                                  common-lisp:t :member-name "JobName")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (cloud-watch-logs-role-arn :target-type
                                  arn-type :required common-lisp:t :member-name
                                  "CloudWatchLogsRoleArn"))
                                (:shape-name "CreateUserImportJobRequest"))

(smithy/sdk/shapes:define-output create-user-import-job-response
                                 common-lisp:nil
                                 ((user-import-job :target-type
                                   user-import-job-type :member-name
                                   "UserImportJob"))
                                 (:shape-name "CreateUserImportJobResponse"))

(smithy/sdk/shapes:define-input create-user-pool-client-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-name :target-type client-name-type
                                  :required common-lisp:t :member-name
                                  "ClientName")
                                 (generate-secret :target-type generate-secret
                                  :member-name "GenerateSecret")
                                 (refresh-token-validity :target-type
                                  refresh-token-validity-type :member-name
                                  "RefreshTokenValidity")
                                 (access-token-validity :target-type
                                  access-token-validity-type :member-name
                                  "AccessTokenValidity")
                                 (id-token-validity :target-type
                                  id-token-validity-type :member-name
                                  "IdTokenValidity")
                                 (token-validity-units :target-type
                                  token-validity-units-type :member-name
                                  "TokenValidityUnits")
                                 (read-attributes :target-type
                                  client-permission-list-type :member-name
                                  "ReadAttributes")
                                 (write-attributes :target-type
                                  client-permission-list-type :member-name
                                  "WriteAttributes")
                                 (explicit-auth-flows :target-type
                                  explicit-auth-flows-list-type :member-name
                                  "ExplicitAuthFlows")
                                 (supported-identity-providers :target-type
                                  supported-identity-providers-list-type
                                  :member-name "SupportedIdentityProviders")
                                 (callback-urls :target-type
                                  callback-urls-list-type :member-name
                                  "CallbackURLs")
                                 (logout-urls :target-type
                                  logout-urls-list-type :member-name
                                  "LogoutURLs")
                                 (default-redirect-uri :target-type
                                  redirect-url-type :member-name
                                  "DefaultRedirectURI")
                                 (allowed-oauth-flows :target-type
                                  oauth-flows-type :member-name
                                  "AllowedOAuthFlows")
                                 (allowed-oauth-scopes :target-type
                                  scope-list-type :member-name
                                  "AllowedOAuthScopes")
                                 (allowed-oauth-flows-user-pool-client
                                  :target-type boolean-type :member-name
                                  "AllowedOAuthFlowsUserPoolClient")
                                 (analytics-configuration :target-type
                                  analytics-configuration-type :member-name
                                  "AnalyticsConfiguration")
                                 (prevent-user-existence-errors :target-type
                                  prevent-user-existence-error-types
                                  :member-name "PreventUserExistenceErrors")
                                 (enable-token-revocation :target-type
                                  wrapped-boolean-type :member-name
                                  "EnableTokenRevocation")
                                 (enable-propagate-additional-user-context-data
                                  :target-type wrapped-boolean-type
                                  :member-name
                                  "EnablePropagateAdditionalUserContextData")
                                 (auth-session-validity :target-type
                                  auth-session-validity-type :member-name
                                  "AuthSessionValidity")
                                 (refresh-token-rotation :target-type
                                  refresh-token-rotation-type :member-name
                                  "RefreshTokenRotation"))
                                (:shape-name "CreateUserPoolClientRequest"))

(smithy/sdk/shapes:define-output create-user-pool-client-response
                                 common-lisp:nil
                                 ((user-pool-client :target-type
                                   user-pool-client-type :member-name
                                   "UserPoolClient"))
                                 (:shape-name "CreateUserPoolClientResponse"))

(smithy/sdk/shapes:define-input create-user-pool-domain-request common-lisp:nil
                                ((domain :target-type domain-type :required
                                  common-lisp:t :member-name "Domain")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (managed-login-version :target-type
                                  wrapped-integer-type :member-name
                                  "ManagedLoginVersion")
                                 (custom-domain-config :target-type
                                  custom-domain-config-type :member-name
                                  "CustomDomainConfig"))
                                (:shape-name "CreateUserPoolDomainRequest"))

(smithy/sdk/shapes:define-output create-user-pool-domain-response
                                 common-lisp:nil
                                 ((managed-login-version :target-type
                                   wrapped-integer-type :member-name
                                   "ManagedLoginVersion")
                                  (cloud-front-domain :target-type domain-type
                                   :member-name "CloudFrontDomain"))
                                 (:shape-name "CreateUserPoolDomainResponse"))

(smithy/sdk/shapes:define-input create-user-pool-request common-lisp:nil
                                ((pool-name :target-type user-pool-name-type
                                  :required common-lisp:t :member-name
                                  "PoolName")
                                 (policies :target-type user-pool-policy-type
                                  :member-name "Policies")
                                 (deletion-protection :target-type
                                  deletion-protection-type :member-name
                                  "DeletionProtection")
                                 (lambda-config :target-type lambda-config-type
                                  :member-name "LambdaConfig")
                                 (auto-verified-attributes :target-type
                                  verified-attributes-list-type :member-name
                                  "AutoVerifiedAttributes")
                                 (alias-attributes :target-type
                                  alias-attributes-list-type :member-name
                                  "AliasAttributes")
                                 (username-attributes :target-type
                                  username-attributes-list-type :member-name
                                  "UsernameAttributes")
                                 (sms-verification-message :target-type
                                  sms-verification-message-type :member-name
                                  "SmsVerificationMessage")
                                 (email-verification-message :target-type
                                  email-verification-message-type :member-name
                                  "EmailVerificationMessage")
                                 (email-verification-subject :target-type
                                  email-verification-subject-type :member-name
                                  "EmailVerificationSubject")
                                 (verification-message-template :target-type
                                  verification-message-template-type
                                  :member-name "VerificationMessageTemplate")
                                 (sms-authentication-message :target-type
                                  sms-verification-message-type :member-name
                                  "SmsAuthenticationMessage")
                                 (mfa-configuration :target-type
                                  user-pool-mfa-type :member-name
                                  "MfaConfiguration")
                                 (user-attribute-update-settings :target-type
                                  user-attribute-update-settings-type
                                  :member-name "UserAttributeUpdateSettings")
                                 (device-configuration :target-type
                                  device-configuration-type :member-name
                                  "DeviceConfiguration")
                                 (email-configuration :target-type
                                  email-configuration-type :member-name
                                  "EmailConfiguration")
                                 (sms-configuration :target-type
                                  sms-configuration-type :member-name
                                  "SmsConfiguration")
                                 (user-pool-tags :target-type
                                  user-pool-tags-type :member-name
                                  "UserPoolTags")
                                 (admin-create-user-config :target-type
                                  admin-create-user-config-type :member-name
                                  "AdminCreateUserConfig")
                                 (schema :target-type
                                  schema-attributes-list-type :member-name
                                  "Schema")
                                 (user-pool-add-ons :target-type
                                  user-pool-add-ons-type :member-name
                                  "UserPoolAddOns")
                                 (username-configuration :target-type
                                  username-configuration-type :member-name
                                  "UsernameConfiguration")
                                 (account-recovery-setting :target-type
                                  account-recovery-setting-type :member-name
                                  "AccountRecoverySetting")
                                 (user-pool-tier :target-type
                                  user-pool-tier-type :member-name
                                  "UserPoolTier"))
                                (:shape-name "CreateUserPoolRequest"))

(smithy/sdk/shapes:define-output create-user-pool-response common-lisp:nil
                                 ((user-pool :target-type user-pool-type
                                   :member-name "UserPool"))
                                 (:shape-name "CreateUserPoolResponse"))

(smithy/sdk/shapes:define-type custom-attribute-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-attributes-list-type :member
                               schema-attribute-type)

(smithy/sdk/shapes:define-structure custom-domain-config-type common-lisp:nil
                                    ((certificate-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "CertificateArn"))
                                    (:shape-name "CustomDomainConfigType"))

(smithy/sdk/shapes:define-structure custom-email-lambda-version-config-type
                                    common-lisp:nil
                                    ((lambda-version :target-type
                                      custom-email-sender-lambda-version-type
                                      :required common-lisp:t :member-name
                                      "LambdaVersion")
                                     (lambda-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "LambdaArn"))
                                    (:shape-name
                                     "CustomEmailLambdaVersionConfigType"))

(smithy/sdk/shapes:define-enum custom-email-sender-lambda-version-type
    common-lisp:nil
  (:v1-0 "V1_0"))

(smithy/sdk/shapes:define-structure custom-smslambda-version-config-type
                                    common-lisp:nil
                                    ((lambda-version :target-type
                                      custom-smssender-lambda-version-type
                                      :required common-lisp:t :member-name
                                      "LambdaVersion")
                                     (lambda-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "LambdaArn"))
                                    (:shape-name
                                     "CustomSMSLambdaVersionConfigType"))

(smithy/sdk/shapes:define-enum custom-smssender-lambda-version-type
    common-lisp:nil
  (:v1-0 "V1_0"))

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum default-email-option-type
    common-lisp:nil
  (:confirm-with-link "CONFIRM_WITH_LINK")
  (:confirm-with-code "CONFIRM_WITH_CODE"))

(smithy/sdk/shapes:define-input delete-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "DeleteGroupRequest"))

(smithy/sdk/shapes:define-input delete-identity-provider-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (provider-name :target-type provider-name-type
                                  :required common-lisp:t :member-name
                                  "ProviderName"))
                                (:shape-name "DeleteIdentityProviderRequest"))

(smithy/sdk/shapes:define-input delete-managed-login-branding-request
                                common-lisp:nil
                                ((managed-login-branding-id :target-type
                                  managed-login-branding-id-type :required
                                  common-lisp:t :member-name
                                  "ManagedLoginBrandingId")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name
                                 "DeleteManagedLoginBrandingRequest"))

(smithy/sdk/shapes:define-input delete-resource-server-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (identifier :target-type
                                  resource-server-identifier-type :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "DeleteResourceServerRequest"))

(smithy/sdk/shapes:define-input delete-user-attributes-request common-lisp:nil
                                ((user-attribute-names :target-type
                                  attribute-name-list-type :required
                                  common-lisp:t :member-name
                                  "UserAttributeNames")
                                 (access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "DeleteUserAttributesRequest"))

(smithy/sdk/shapes:define-output delete-user-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteUserAttributesResponse"))

(smithy/sdk/shapes:define-input delete-user-pool-client-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId"))
                                (:shape-name "DeleteUserPoolClientRequest"))

(smithy/sdk/shapes:define-input delete-user-pool-domain-request common-lisp:nil
                                ((domain :target-type domain-type :required
                                  common-lisp:t :member-name "Domain")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "DeleteUserPoolDomainRequest"))

(smithy/sdk/shapes:define-output delete-user-pool-domain-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteUserPoolDomainResponse"))

(smithy/sdk/shapes:define-input delete-user-pool-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "DeleteUserPoolRequest"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-input delete-web-authn-credential-request
                                common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (credential-id :target-type string-type
                                  :required common-lisp:t :member-name
                                  "CredentialId"))
                                (:shape-name "DeleteWebAuthnCredentialRequest"))

(smithy/sdk/shapes:define-output delete-web-authn-credential-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteWebAuthnCredentialResponse"))

(smithy/sdk/shapes:define-enum deletion-protection-type
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-list delivery-medium-list-type :member
                               delivery-medium-type)

(smithy/sdk/shapes:define-enum delivery-medium-type
    common-lisp:nil
  (:sms "SMS")
  (:email "EMAIL"))

(smithy/sdk/shapes:define-input describe-identity-provider-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (provider-name :target-type provider-name-type
                                  :required common-lisp:t :member-name
                                  "ProviderName"))
                                (:shape-name "DescribeIdentityProviderRequest"))

(smithy/sdk/shapes:define-output describe-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider :target-type
                                   identity-provider-type :required
                                   common-lisp:t :member-name
                                   "IdentityProvider"))
                                 (:shape-name
                                  "DescribeIdentityProviderResponse"))

(smithy/sdk/shapes:define-input
 describe-managed-login-branding-by-client-request common-lisp:nil
 ((user-pool-id :target-type user-pool-id-type :required common-lisp:t
   :member-name "UserPoolId")
  (client-id :target-type client-id-type :required common-lisp:t :member-name
   "ClientId")
  (return-merged-resources :target-type boolean-type :member-name
   "ReturnMergedResources"))
 (:shape-name "DescribeManagedLoginBrandingByClientRequest"))

(smithy/sdk/shapes:define-output
 describe-managed-login-branding-by-client-response common-lisp:nil
 ((managed-login-branding :target-type managed-login-branding-type :member-name
   "ManagedLoginBranding"))
 (:shape-name "DescribeManagedLoginBrandingByClientResponse"))

(smithy/sdk/shapes:define-input describe-managed-login-branding-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (managed-login-branding-id :target-type
                                  managed-login-branding-id-type :required
                                  common-lisp:t :member-name
                                  "ManagedLoginBrandingId")
                                 (return-merged-resources :target-type
                                  boolean-type :member-name
                                  "ReturnMergedResources"))
                                (:shape-name
                                 "DescribeManagedLoginBrandingRequest"))

(smithy/sdk/shapes:define-output describe-managed-login-branding-response
                                 common-lisp:nil
                                 ((managed-login-branding :target-type
                                   managed-login-branding-type :member-name
                                   "ManagedLoginBranding"))
                                 (:shape-name
                                  "DescribeManagedLoginBrandingResponse"))

(smithy/sdk/shapes:define-input describe-resource-server-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (identifier :target-type
                                  resource-server-identifier-type :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "DescribeResourceServerRequest"))

(smithy/sdk/shapes:define-output describe-resource-server-response
                                 common-lisp:nil
                                 ((resource-server :target-type
                                   resource-server-type :required common-lisp:t
                                   :member-name "ResourceServer"))
                                 (:shape-name "DescribeResourceServerResponse"))

(smithy/sdk/shapes:define-input describe-risk-configuration-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :member-name "ClientId"))
                                (:shape-name
                                 "DescribeRiskConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-risk-configuration-response
                                 common-lisp:nil
                                 ((risk-configuration :target-type
                                   risk-configuration-type :required
                                   common-lisp:t :member-name
                                   "RiskConfiguration"))
                                 (:shape-name
                                  "DescribeRiskConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-user-import-job-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (job-id :target-type user-import-job-id-type
                                  :required common-lisp:t :member-name
                                  "JobId"))
                                (:shape-name "DescribeUserImportJobRequest"))

(smithy/sdk/shapes:define-output describe-user-import-job-response
                                 common-lisp:nil
                                 ((user-import-job :target-type
                                   user-import-job-type :member-name
                                   "UserImportJob"))
                                 (:shape-name "DescribeUserImportJobResponse"))

(smithy/sdk/shapes:define-input describe-user-pool-client-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId"))
                                (:shape-name "DescribeUserPoolClientRequest"))

(smithy/sdk/shapes:define-output describe-user-pool-client-response
                                 common-lisp:nil
                                 ((user-pool-client :target-type
                                   user-pool-client-type :member-name
                                   "UserPoolClient"))
                                 (:shape-name "DescribeUserPoolClientResponse"))

(smithy/sdk/shapes:define-input describe-user-pool-domain-request
                                common-lisp:nil
                                ((domain :target-type domain-type :required
                                  common-lisp:t :member-name "Domain"))
                                (:shape-name "DescribeUserPoolDomainRequest"))

(smithy/sdk/shapes:define-output describe-user-pool-domain-response
                                 common-lisp:nil
                                 ((domain-description :target-type
                                   domain-description-type :member-name
                                   "DomainDescription"))
                                 (:shape-name "DescribeUserPoolDomainResponse"))

(smithy/sdk/shapes:define-input describe-user-pool-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "DescribeUserPoolRequest"))

(smithy/sdk/shapes:define-output describe-user-pool-response common-lisp:nil
                                 ((user-pool :target-type user-pool-type
                                   :member-name "UserPool"))
                                 (:shape-name "DescribeUserPoolResponse"))

(smithy/sdk/shapes:define-type description-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device-configuration-type common-lisp:nil
                                    ((challenge-required-on-new-device
                                      :target-type boolean-type :member-name
                                      "ChallengeRequiredOnNewDevice")
                                     (device-only-remembered-on-user-prompt
                                      :target-type boolean-type :member-name
                                      "DeviceOnlyRememberedOnUserPrompt"))
                                    (:shape-name "DeviceConfigurationType"))

(smithy/sdk/shapes:define-error device-key-exists-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "DeviceKeyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type device-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-list-type :member device-type)

(smithy/sdk/shapes:define-type device-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum device-remembered-status-type
    common-lisp:nil
  (:remembered "remembered")
  (:not-remembered "not_remembered"))

(smithy/sdk/shapes:define-structure device-secret-verifier-config-type
                                    common-lisp:nil
                                    ((password-verifier :target-type
                                      string-type :member-name
                                      "PasswordVerifier")
                                     (salt :target-type string-type
                                      :member-name "Salt"))
                                    (:shape-name
                                     "DeviceSecretVerifierConfigType"))

(smithy/sdk/shapes:define-structure device-type common-lisp:nil
                                    ((device-key :target-type device-key-type
                                      :member-name "DeviceKey")
                                     (device-attributes :target-type
                                      attribute-list-type :member-name
                                      "DeviceAttributes")
                                     (device-create-date :target-type date-type
                                      :member-name "DeviceCreateDate")
                                     (device-last-modified-date :target-type
                                      date-type :member-name
                                      "DeviceLastModifiedDate")
                                     (device-last-authenticated-date
                                      :target-type date-type :member-name
                                      "DeviceLastAuthenticatedDate"))
                                    (:shape-name "DeviceType"))

(smithy/sdk/shapes:define-type document smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure domain-description-type common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (awsaccount-id :target-type
                                      awsaccount-id-type :member-name
                                      "AWSAccountId")
                                     (domain :target-type domain-type
                                      :member-name "Domain")
                                     (s3bucket :target-type s3bucket-type
                                      :member-name "S3Bucket")
                                     (cloud-front-distribution :target-type
                                      string-type :member-name
                                      "CloudFrontDistribution")
                                     (version :target-type domain-version-type
                                      :member-name "Version")
                                     (status :target-type domain-status-type
                                      :member-name "Status")
                                     (custom-domain-config :target-type
                                      custom-domain-config-type :member-name
                                      "CustomDomainConfig")
                                     (managed-login-version :target-type
                                      wrapped-integer-type :member-name
                                      "ManagedLoginVersion"))
                                    (:shape-name "DomainDescriptionType"))

(smithy/sdk/shapes:define-enum domain-status-type
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:active "ACTIVE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type domain-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-version-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error duplicate-provider-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "DuplicateProviderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type email-address-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-configuration-type common-lisp:nil
                                    ((source-arn :target-type arn-type
                                      :member-name "SourceArn")
                                     (reply-to-email-address :target-type
                                      email-address-type :member-name
                                      "ReplyToEmailAddress")
                                     (email-sending-account :target-type
                                      email-sending-account-type :member-name
                                      "EmailSendingAccount")
                                     (from :target-type string-type
                                      :member-name "From")
                                     (configuration-set :target-type
                                      sesconfiguration-set :member-name
                                      "ConfigurationSet"))
                                    (:shape-name "EmailConfigurationType"))

(smithy/sdk/shapes:define-type email-invite-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-mfa-config-type common-lisp:nil
                                    ((message :target-type
                                      email-mfa-message-type :member-name
                                      "Message")
                                     (subject :target-type
                                      email-mfa-subject-type :member-name
                                      "Subject"))
                                    (:shape-name "EmailMfaConfigType"))

(smithy/sdk/shapes:define-type email-mfa-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-mfa-settings-type common-lisp:nil
                                    ((enabled :target-type boolean-type
                                      :member-name "Enabled")
                                     (preferred-mfa :target-type boolean-type
                                      :member-name "PreferredMfa"))
                                    (:shape-name "EmailMfaSettingsType"))

(smithy/sdk/shapes:define-type email-mfa-subject-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-notification-body-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-notification-subject-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum email-sending-account-type
    common-lisp:nil
  (:cognito-default "COGNITO_DEFAULT")
  (:developer "DEVELOPER"))

(smithy/sdk/shapes:define-type email-verification-message-by-link-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-verification-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-verification-subject-by-link-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-verification-subject-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error enable-software-token-mfaexception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "EnableSoftwareTokenMFAException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure event-context-data-type common-lisp:nil
                                    ((ip-address :target-type string-type
                                      :member-name "IpAddress")
                                     (device-name :target-type string-type
                                      :member-name "DeviceName")
                                     (timezone :target-type string-type
                                      :member-name "Timezone")
                                     (city :target-type string-type
                                      :member-name "City")
                                     (country :target-type string-type
                                      :member-name "Country"))
                                    (:shape-name "EventContextDataType"))

(smithy/sdk/shapes:define-structure event-feedback-type common-lisp:nil
                                    ((feedback-value :target-type
                                      feedback-value-type :required
                                      common-lisp:t :member-name
                                      "FeedbackValue")
                                     (provider :target-type string-type
                                      :required common-lisp:t :member-name
                                      "Provider")
                                     (feedback-date :target-type date-type
                                      :member-name "FeedbackDate"))
                                    (:shape-name "EventFeedbackType"))

(smithy/sdk/shapes:define-enum event-filter-type
    common-lisp:nil
  (:sign-in "SIGN_IN")
  (:password-change "PASSWORD_CHANGE")
  (:sign-up "SIGN_UP"))

(smithy/sdk/shapes:define-list event-filters-type :member event-filter-type)

(smithy/sdk/shapes:define-type event-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-response-type
    common-lisp:nil
  (:pass "Pass")
  (:fail "Fail")
  (:in-progress "InProgress"))

(smithy/sdk/shapes:define-structure event-risk-type common-lisp:nil
                                    ((risk-decision :target-type
                                      risk-decision-type :member-name
                                      "RiskDecision")
                                     (risk-level :target-type risk-level-type
                                      :member-name "RiskLevel")
                                     (compromised-credentials-detected
                                      :target-type wrapped-boolean-type
                                      :member-name
                                      "CompromisedCredentialsDetected"))
                                    (:shape-name "EventRiskType"))

(smithy/sdk/shapes:define-enum event-source-name
    common-lisp:nil
  (:user-notification "userNotification")
  (:user-auth-events "userAuthEvents"))

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:sign-in "SignIn")
  (:sign-up "SignUp")
  (:forgot-password "ForgotPassword")
  (:password-change "PasswordChange")
  (:resend-code "ResendCode"))

(smithy/sdk/shapes:define-error expired-code-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "ExpiredCodeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list explicit-auth-flows-list-type :member
                               explicit-auth-flows-type)

(smithy/sdk/shapes:define-enum explicit-auth-flows-type
    common-lisp:nil
  (:admin-no-srp-auth "ADMIN_NO_SRP_AUTH")
  (:custom-auth-flow-only "CUSTOM_AUTH_FLOW_ONLY")
  (:user-password-auth "USER_PASSWORD_AUTH")
  (:allow-admin-user-password-auth "ALLOW_ADMIN_USER_PASSWORD_AUTH")
  (:allow-custom-auth "ALLOW_CUSTOM_AUTH")
  (:allow-user-password-auth "ALLOW_USER_PASSWORD_AUTH")
  (:allow-user-srp-auth "ALLOW_USER_SRP_AUTH")
  (:allow-refresh-token-auth "ALLOW_REFRESH_TOKEN_AUTH")
  (:allow-user-auth "ALLOW_USER_AUTH"))

(smithy/sdk/shapes:define-enum feature-type
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error feature-unavailable-in-tier-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "FeatureUnavailableInTierException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum feedback-value-type
    common-lisp:nil
  (:valid "Valid")
  (:invalid "Invalid"))

(smithy/sdk/shapes:define-structure firehose-configuration-type common-lisp:nil
                                    ((stream-arn :target-type arn-type
                                      :member-name "StreamArn"))
                                    (:shape-name "FirehoseConfigurationType"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type force-alias-creation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input forget-device-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :member-name "AccessToken")
                                 (device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey"))
                                (:shape-name "ForgetDeviceRequest"))

(smithy/sdk/shapes:define-input forgot-password-request common-lisp:nil
                                ((client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (secret-hash :target-type secret-hash-type
                                  :member-name "SecretHash")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "ForgotPasswordRequest"))

(smithy/sdk/shapes:define-output forgot-password-response common-lisp:nil
                                 ((code-delivery-details :target-type
                                   code-delivery-details-type :member-name
                                   "CodeDeliveryDetails"))
                                 (:shape-name "ForgotPasswordResponse"))

(smithy/sdk/shapes:define-type generate-secret smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input get-csvheader-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "GetCSVHeaderRequest"))

(smithy/sdk/shapes:define-output get-csvheader-response common-lisp:nil
                                 ((user-pool-id :target-type user-pool-id-type
                                   :member-name "UserPoolId")
                                  (csvheader :target-type list-of-string-types
                                   :member-name "CSVHeader"))
                                 (:shape-name "GetCSVHeaderResponse"))

(smithy/sdk/shapes:define-input get-device-request common-lisp:nil
                                ((device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey")
                                 (access-token :target-type token-model-type
                                  :member-name "AccessToken"))
                                (:shape-name "GetDeviceRequest"))

(smithy/sdk/shapes:define-output get-device-response common-lisp:nil
                                 ((device :target-type device-type :required
                                   common-lisp:t :member-name "Device"))
                                 (:shape-name "GetDeviceResponse"))

(smithy/sdk/shapes:define-input get-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "GetGroupRequest"))

(smithy/sdk/shapes:define-output get-group-response common-lisp:nil
                                 ((group :target-type group-type :member-name
                                   "Group"))
                                 (:shape-name "GetGroupResponse"))

(smithy/sdk/shapes:define-input get-identity-provider-by-identifier-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (idp-identifier :target-type
                                  idp-identifier-type :required common-lisp:t
                                  :member-name "IdpIdentifier"))
                                (:shape-name
                                 "GetIdentityProviderByIdentifierRequest"))

(smithy/sdk/shapes:define-output get-identity-provider-by-identifier-response
                                 common-lisp:nil
                                 ((identity-provider :target-type
                                   identity-provider-type :required
                                   common-lisp:t :member-name
                                   "IdentityProvider"))
                                 (:shape-name
                                  "GetIdentityProviderByIdentifierResponse"))

(smithy/sdk/shapes:define-input get-log-delivery-configuration-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name
                                 "GetLogDeliveryConfigurationRequest"))

(smithy/sdk/shapes:define-output get-log-delivery-configuration-response
                                 common-lisp:nil
                                 ((log-delivery-configuration :target-type
                                   log-delivery-configuration-type :member-name
                                   "LogDeliveryConfiguration"))
                                 (:shape-name
                                  "GetLogDeliveryConfigurationResponse"))

(smithy/sdk/shapes:define-input get-signing-certificate-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "GetSigningCertificateRequest"))

(smithy/sdk/shapes:define-output get-signing-certificate-response
                                 common-lisp:nil
                                 ((certificate :target-type string-type
                                   :member-name "Certificate"))
                                 (:shape-name "GetSigningCertificateResponse"))

(smithy/sdk/shapes:define-input get-tokens-from-refresh-token-request
                                common-lisp:nil
                                ((refresh-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "RefreshToken")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (client-secret :target-type client-secret-type
                                  :member-name "ClientSecret")
                                 (device-key :target-type device-key-type
                                  :member-name "DeviceKey")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name
                                 "GetTokensFromRefreshTokenRequest"))

(smithy/sdk/shapes:define-output get-tokens-from-refresh-token-response
                                 common-lisp:nil
                                 ((authentication-result :target-type
                                   authentication-result-type :member-name
                                   "AuthenticationResult"))
                                 (:shape-name
                                  "GetTokensFromRefreshTokenResponse"))

(smithy/sdk/shapes:define-input get-uicustomization-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :member-name "ClientId"))
                                (:shape-name "GetUICustomizationRequest"))

(smithy/sdk/shapes:define-output get-uicustomization-response common-lisp:nil
                                 ((uicustomization :target-type
                                   uicustomization-type :required common-lisp:t
                                   :member-name "UICustomization"))
                                 (:shape-name "GetUICustomizationResponse"))

(smithy/sdk/shapes:define-input get-user-attribute-verification-code-request
                                common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (attribute-name :target-type
                                  attribute-name-type :required common-lisp:t
                                  :member-name "AttributeName")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name
                                 "GetUserAttributeVerificationCodeRequest"))

(smithy/sdk/shapes:define-output get-user-attribute-verification-code-response
                                 common-lisp:nil
                                 ((code-delivery-details :target-type
                                   code-delivery-details-type :member-name
                                   "CodeDeliveryDetails"))
                                 (:shape-name
                                  "GetUserAttributeVerificationCodeResponse"))

(smithy/sdk/shapes:define-input get-user-auth-factors-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "GetUserAuthFactorsRequest"))

(smithy/sdk/shapes:define-output get-user-auth-factors-response common-lisp:nil
                                 ((username :target-type username-type
                                   :required common-lisp:t :member-name
                                   "Username")
                                  (preferred-mfa-setting :target-type
                                   string-type :member-name
                                   "PreferredMfaSetting")
                                  (user-mfasetting-list :target-type
                                   user-mfasetting-list-type :member-name
                                   "UserMFASettingList")
                                  (configured-user-auth-factors :target-type
                                   configured-user-auth-factors-list-type
                                   :member-name "ConfiguredUserAuthFactors"))
                                 (:shape-name "GetUserAuthFactorsResponse"))

(smithy/sdk/shapes:define-input get-user-pool-mfa-config-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId"))
                                (:shape-name "GetUserPoolMfaConfigRequest"))

(smithy/sdk/shapes:define-output get-user-pool-mfa-config-response
                                 common-lisp:nil
                                 ((sms-mfa-configuration :target-type
                                   sms-mfa-config-type :member-name
                                   "SmsMfaConfiguration")
                                  (software-token-mfa-configuration
                                   :target-type software-token-mfa-config-type
                                   :member-name
                                   "SoftwareTokenMfaConfiguration")
                                  (email-mfa-configuration :target-type
                                   email-mfa-config-type :member-name
                                   "EmailMfaConfiguration")
                                  (mfa-configuration :target-type
                                   user-pool-mfa-type :member-name
                                   "MfaConfiguration")
                                  (web-authn-configuration :target-type
                                   web-authn-configuration-type :member-name
                                   "WebAuthnConfiguration"))
                                 (:shape-name "GetUserPoolMfaConfigResponse"))

(smithy/sdk/shapes:define-input get-user-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "GetUserRequest"))

(smithy/sdk/shapes:define-output get-user-response common-lisp:nil
                                 ((username :target-type username-type
                                   :required common-lisp:t :member-name
                                   "Username")
                                  (user-attributes :target-type
                                   attribute-list-type :required common-lisp:t
                                   :member-name "UserAttributes")
                                  (mfaoptions :target-type mfaoption-list-type
                                   :member-name "MFAOptions")
                                  (preferred-mfa-setting :target-type
                                   string-type :member-name
                                   "PreferredMfaSetting")
                                  (user-mfasetting-list :target-type
                                   user-mfasetting-list-type :member-name
                                   "UserMFASettingList"))
                                 (:shape-name "GetUserResponse"))

(smithy/sdk/shapes:define-input global-sign-out-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "GlobalSignOutRequest"))

(smithy/sdk/shapes:define-output global-sign-out-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "GlobalSignOutResponse"))

(smithy/sdk/shapes:define-error group-exists-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "GroupExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list group-list-type :member group-type)

(smithy/sdk/shapes:define-type group-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure group-type common-lisp:nil
                                    ((group-name :target-type group-name-type
                                      :member-name "GroupName")
                                     (user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (description :target-type description-type
                                      :member-name "Description")
                                     (role-arn :target-type arn-type
                                      :member-name "RoleArn")
                                     (precedence :target-type precedence-type
                                      :member-name "Precedence")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate"))
                                    (:shape-name "GroupType"))

(smithy/sdk/shapes:define-type hex-string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-header common-lisp:nil
                                    ((header-name :target-type string-type
                                      :member-name "headerName")
                                     (header-value :target-type string-type
                                      :member-name "headerValue"))
                                    (:shape-name "HttpHeader"))

(smithy/sdk/shapes:define-list http-header-list :member http-header)

(smithy/sdk/shapes:define-type id-token-validity-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure identity-provider-type common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (provider-name :target-type
                                      provider-name-type :member-name
                                      "ProviderName")
                                     (provider-type :target-type
                                      identity-provider-type-type :member-name
                                      "ProviderType")
                                     (provider-details :target-type
                                      provider-details-type :member-name
                                      "ProviderDetails")
                                     (attribute-mapping :target-type
                                      attribute-mapping-type :member-name
                                      "AttributeMapping")
                                     (idp-identifiers :target-type
                                      idp-identifiers-list-type :member-name
                                      "IdpIdentifiers")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate"))
                                    (:shape-name "IdentityProviderType"))

(smithy/sdk/shapes:define-enum identity-provider-type-type
    common-lisp:nil
  (:saml "SAML")
  (:facebook "Facebook")
  (:google "Google")
  (:login-with-amazon "LoginWithAmazon")
  (:sign-in-with-apple "SignInWithApple")
  (:oidc "OIDC"))

(smithy/sdk/shapes:define-type idp-identifier-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list idp-identifiers-list-type :member
                               idp-identifier-type)

(smithy/sdk/shapes:define-type image-file-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type image-url-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input initiate-auth-request common-lisp:nil
                                ((auth-flow :target-type auth-flow-type
                                  :required common-lisp:t :member-name
                                  "AuthFlow")
                                 (auth-parameters :target-type
                                  auth-parameters-type :member-name
                                  "AuthParameters")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (session :target-type session-type
                                  :member-name "Session"))
                                (:shape-name "InitiateAuthRequest"))

(smithy/sdk/shapes:define-output initiate-auth-response common-lisp:nil
                                 ((challenge-name :target-type
                                   challenge-name-type :member-name
                                   "ChallengeName")
                                  (session :target-type session-type
                                   :member-name "Session")
                                  (challenge-parameters :target-type
                                   challenge-parameters-type :member-name
                                   "ChallengeParameters")
                                  (authentication-result :target-type
                                   authentication-result-type :member-name
                                   "AuthenticationResult")
                                  (available-challenges :target-type
                                   available-challenge-list-type :member-name
                                   "AvailableChallenges"))
                                 (:shape-name "InitiateAuthResponse"))

(smithy/sdk/shapes:define-type integer-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-email-role-access-policy-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidEmailRoleAccessPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-lambda-response-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "InvalidLambdaResponseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-oauth-flow-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "InvalidOAuthFlowException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message")
                                 (reason-code :target-type
                                  invalid-parameter-exception-reason-code-type
                                  :member-name "reasonCode"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type invalid-parameter-exception-reason-code-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-password-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "InvalidPasswordException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sms-role-access-policy-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidSmsRoleAccessPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sms-role-trust-relationship-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidSmsRoleTrustRelationshipException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-user-pool-configuration-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidUserPoolConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure lambda-config-type common-lisp:nil
                                    ((pre-sign-up :target-type arn-type
                                      :member-name "PreSignUp")
                                     (custom-message :target-type arn-type
                                      :member-name "CustomMessage")
                                     (post-confirmation :target-type arn-type
                                      :member-name "PostConfirmation")
                                     (pre-authentication :target-type arn-type
                                      :member-name "PreAuthentication")
                                     (post-authentication :target-type arn-type
                                      :member-name "PostAuthentication")
                                     (define-auth-challenge :target-type
                                      arn-type :member-name
                                      "DefineAuthChallenge")
                                     (create-auth-challenge :target-type
                                      arn-type :member-name
                                      "CreateAuthChallenge")
                                     (verify-auth-challenge-response
                                      :target-type arn-type :member-name
                                      "VerifyAuthChallengeResponse")
                                     (pre-token-generation :target-type
                                      arn-type :member-name
                                      "PreTokenGeneration")
                                     (user-migration :target-type arn-type
                                      :member-name "UserMigration")
                                     (pre-token-generation-config :target-type
                                      pre-token-generation-version-config-type
                                      :member-name "PreTokenGenerationConfig")
                                     (custom-smssender :target-type
                                      custom-smslambda-version-config-type
                                      :member-name "CustomSMSSender")
                                     (custom-email-sender :target-type
                                      custom-email-lambda-version-config-type
                                      :member-name "CustomEmailSender")
                                     (kmskey-id :target-type arn-type
                                      :member-name "KMSKeyID"))
                                    (:shape-name "LambdaConfigType"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-devices-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (limit :target-type query-limit-type
                                  :member-name "Limit")
                                 (pagination-token :target-type
                                  search-pagination-token-type :member-name
                                  "PaginationToken"))
                                (:shape-name "ListDevicesRequest"))

(smithy/sdk/shapes:define-output list-devices-response common-lisp:nil
                                 ((devices :target-type device-list-type
                                   :member-name "Devices")
                                  (pagination-token :target-type
                                   search-pagination-token-type :member-name
                                   "PaginationToken"))
                                 (:shape-name "ListDevicesResponse"))

(smithy/sdk/shapes:define-input list-groups-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (limit :target-type query-limit-type
                                  :member-name "Limit")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "ListGroupsRequest"))

(smithy/sdk/shapes:define-output list-groups-response common-lisp:nil
                                 ((groups :target-type group-list-type
                                   :member-name "Groups")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name "ListGroupsResponse"))

(smithy/sdk/shapes:define-input list-identity-providers-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (max-results :target-type
                                  list-providers-limit-type :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-key-type
                                  :member-name "NextToken"))
                                (:shape-name "ListIdentityProvidersRequest"))

(smithy/sdk/shapes:define-output list-identity-providers-response
                                 common-lisp:nil
                                 ((providers :target-type providers-list-type
                                   :required common-lisp:t :member-name
                                   "Providers")
                                  (next-token :target-type pagination-key-type
                                   :member-name "NextToken"))
                                 (:shape-name "ListIdentityProvidersResponse"))

(smithy/sdk/shapes:define-list list-of-string-types :member string-type)

(smithy/sdk/shapes:define-type list-providers-limit-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-resource-servers-limit-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-resource-servers-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (max-results :target-type
                                  list-resource-servers-limit-type :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-key-type
                                  :member-name "NextToken"))
                                (:shape-name "ListResourceServersRequest"))

(smithy/sdk/shapes:define-output list-resource-servers-response common-lisp:nil
                                 ((resource-servers :target-type
                                   resource-servers-list-type :required
                                   common-lisp:t :member-name
                                   "ResourceServers")
                                  (next-token :target-type pagination-key-type
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceServersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn-type :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type user-pool-tags-type
                                   :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-user-import-jobs-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (max-results :target-type
                                  pool-query-limit-type :required common-lisp:t
                                  :member-name "MaxResults")
                                 (pagination-token :target-type
                                  pagination-key-type :member-name
                                  "PaginationToken"))
                                (:shape-name "ListUserImportJobsRequest"))

(smithy/sdk/shapes:define-output list-user-import-jobs-response common-lisp:nil
                                 ((user-import-jobs :target-type
                                   user-import-jobs-list-type :member-name
                                   "UserImportJobs")
                                  (pagination-token :target-type
                                   pagination-key-type :member-name
                                   "PaginationToken"))
                                 (:shape-name "ListUserImportJobsResponse"))

(smithy/sdk/shapes:define-input list-user-pool-clients-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (max-results :target-type query-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "ListUserPoolClientsRequest"))

(smithy/sdk/shapes:define-output list-user-pool-clients-response
                                 common-lisp:nil
                                 ((user-pool-clients :target-type
                                   user-pool-client-list-type :member-name
                                   "UserPoolClients")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name "ListUserPoolClientsResponse"))

(smithy/sdk/shapes:define-input list-user-pools-request common-lisp:nil
                                ((next-token :target-type pagination-key-type
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pool-query-limit-type :required common-lisp:t
                                  :member-name "MaxResults"))
                                (:shape-name "ListUserPoolsRequest"))

(smithy/sdk/shapes:define-output list-user-pools-response common-lisp:nil
                                 ((user-pools :target-type user-pool-list-type
                                   :member-name "UserPools")
                                  (next-token :target-type pagination-key-type
                                   :member-name "NextToken"))
                                 (:shape-name "ListUserPoolsResponse"))

(smithy/sdk/shapes:define-input list-users-in-group-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (limit :target-type query-limit-type
                                  :member-name "Limit")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "ListUsersInGroupRequest"))

(smithy/sdk/shapes:define-output list-users-in-group-response common-lisp:nil
                                 ((users :target-type users-list-type
                                   :member-name "Users")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name "ListUsersInGroupResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (attributes-to-get :target-type
                                  searched-attribute-names-list-type
                                  :member-name "AttributesToGet")
                                 (limit :target-type query-limit-type
                                  :member-name "Limit")
                                 (pagination-token :target-type
                                  search-pagination-token-type :member-name
                                  "PaginationToken")
                                 (filter :target-type user-filter-type
                                  :member-name "Filter"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((users :target-type users-list-type
                                   :member-name "Users")
                                  (pagination-token :target-type
                                   search-pagination-token-type :member-name
                                   "PaginationToken"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-input list-web-authn-credentials-request
                                common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  web-authn-credentials-query-limit-type
                                  :member-name "MaxResults"))
                                (:shape-name "ListWebAuthnCredentialsRequest"))

(smithy/sdk/shapes:define-output list-web-authn-credentials-response
                                 common-lisp:nil
                                 ((credentials :target-type
                                   web-authn-credential-description-list-type
                                   :required common-lisp:t :member-name
                                   "Credentials")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListWebAuthnCredentialsResponse"))

(smithy/sdk/shapes:define-list log-configuration-list-type :member
                               log-configuration-type)

(smithy/sdk/shapes:define-structure log-configuration-type common-lisp:nil
                                    ((log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel")
                                     (event-source :target-type
                                      event-source-name :required common-lisp:t
                                      :member-name "EventSource")
                                     (cloud-watch-logs-configuration
                                      :target-type
                                      cloud-watch-logs-configuration-type
                                      :member-name
                                      "CloudWatchLogsConfiguration")
                                     (s3configuration :target-type
                                      s3configuration-type :member-name
                                      "S3Configuration")
                                     (firehose-configuration :target-type
                                      firehose-configuration-type :member-name
                                      "FirehoseConfiguration"))
                                    (:shape-name "LogConfigurationType"))

(smithy/sdk/shapes:define-structure log-delivery-configuration-type
                                    common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :required common-lisp:t
                                      :member-name "UserPoolId")
                                     (log-configurations :target-type
                                      log-configuration-list-type :required
                                      common-lisp:t :member-name
                                      "LogConfigurations"))
                                    (:shape-name
                                     "LogDeliveryConfigurationType"))

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:error "ERROR")
  (:info "INFO"))

(smithy/sdk/shapes:define-list logout-urls-list-type :member redirect-url-type)

(smithy/sdk/shapes:define-type long-type smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error mfamethod-not-found-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "MFAMethodNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list mfaoption-list-type :member mfaoption-type)

(smithy/sdk/shapes:define-structure mfaoption-type common-lisp:nil
                                    ((delivery-medium :target-type
                                      delivery-medium-type :member-name
                                      "DeliveryMedium")
                                     (attribute-name :target-type
                                      attribute-name-type :member-name
                                      "AttributeName"))
                                    (:shape-name "MFAOptionType"))

(smithy/sdk/shapes:define-error managed-login-branding-exists-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "ManagedLoginBrandingExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type managed-login-branding-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-login-branding-type common-lisp:nil
                                    ((managed-login-branding-id :target-type
                                      managed-login-branding-id-type
                                      :member-name "ManagedLoginBrandingId")
                                     (user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (use-cognito-provided-values :target-type
                                      boolean-type :member-name
                                      "UseCognitoProvidedValues")
                                     (settings :target-type document
                                      :member-name "Settings")
                                     (assets :target-type asset-list-type
                                      :member-name "Assets")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "ManagedLoginBrandingType"))

(smithy/sdk/shapes:define-enum message-action-type
    common-lisp:nil
  (:resend "RESEND")
  (:suppress "SUPPRESS"))

(smithy/sdk/shapes:define-structure message-template-type common-lisp:nil
                                    ((smsmessage :target-type
                                      sms-invite-message-type :member-name
                                      "SMSMessage")
                                     (email-message :target-type
                                      email-invite-message-type :member-name
                                      "EmailMessage")
                                     (email-subject :target-type
                                      email-verification-subject-type
                                      :member-name "EmailSubject"))
                                    (:shape-name "MessageTemplateType"))

(smithy/sdk/shapes:define-type message-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure new-device-metadata-type common-lisp:nil
                                    ((device-key :target-type device-key-type
                                      :member-name "DeviceKey")
                                     (device-group-key :target-type string-type
                                      :member-name "DeviceGroupKey"))
                                    (:shape-name "NewDeviceMetadataType"))

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure notify-configuration-type common-lisp:nil
                                    ((from :target-type string-type
                                      :member-name "From")
                                     (reply-to :target-type string-type
                                      :member-name "ReplyTo")
                                     (source-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "SourceArn")
                                     (block-email :target-type
                                      notify-email-type :member-name
                                      "BlockEmail")
                                     (no-action-email :target-type
                                      notify-email-type :member-name
                                      "NoActionEmail")
                                     (mfa-email :target-type notify-email-type
                                      :member-name "MfaEmail"))
                                    (:shape-name "NotifyConfigurationType"))

(smithy/sdk/shapes:define-structure notify-email-type common-lisp:nil
                                    ((subject :target-type
                                      email-notification-subject-type :required
                                      common-lisp:t :member-name "Subject")
                                     (html-body :target-type
                                      email-notification-body-type :member-name
                                      "HtmlBody")
                                     (text-body :target-type
                                      email-notification-body-type :member-name
                                      "TextBody"))
                                    (:shape-name "NotifyEmailType"))

(smithy/sdk/shapes:define-structure number-attribute-constraints-type
                                    common-lisp:nil
                                    ((min-value :target-type string-type
                                      :member-name "MinValue")
                                     (max-value :target-type string-type
                                      :member-name "MaxValue"))
                                    (:shape-name
                                     "NumberAttributeConstraintsType"))

(smithy/sdk/shapes:define-enum oauth-flow-type
    common-lisp:nil
  (:code "code")
  (:implicit "implicit")
  (:client-credentials "client_credentials"))

(smithy/sdk/shapes:define-list oauth-flows-type :member oauth-flow-type)

(smithy/sdk/shapes:define-type pagination-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error password-history-policy-violation-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "PasswordHistoryPolicyViolationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type password-history-size-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type password-policy-min-length-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure password-policy-type common-lisp:nil
                                    ((minimum-length :target-type
                                      password-policy-min-length-type
                                      :member-name "MinimumLength")
                                     (require-uppercase :target-type
                                      boolean-type :member-name
                                      "RequireUppercase")
                                     (require-lowercase :target-type
                                      boolean-type :member-name
                                      "RequireLowercase")
                                     (require-numbers :target-type boolean-type
                                      :member-name "RequireNumbers")
                                     (require-symbols :target-type boolean-type
                                      :member-name "RequireSymbols")
                                     (password-history-size :target-type
                                      password-history-size-type :member-name
                                      "PasswordHistorySize")
                                     (temporary-password-validity-days
                                      :target-type
                                      temporary-password-validity-days-type
                                      :member-name
                                      "TemporaryPasswordValidityDays"))
                                    (:shape-name "PasswordPolicyType"))

(smithy/sdk/shapes:define-error password-reset-required-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "PasswordResetRequiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type password-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pool-query-limit-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pre-signed-url-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum pre-token-generation-lambda-version-type
    common-lisp:nil
  (:v1-0 "V1_0")
  (:v2-0 "V2_0")
  (:v3-0 "V3_0"))

(smithy/sdk/shapes:define-structure pre-token-generation-version-config-type
                                    common-lisp:nil
                                    ((lambda-version :target-type
                                      pre-token-generation-lambda-version-type
                                      :required common-lisp:t :member-name
                                      "LambdaVersion")
                                     (lambda-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "LambdaArn"))
                                    (:shape-name
                                     "PreTokenGenerationVersionConfigType"))

(smithy/sdk/shapes:define-type precedence-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error precondition-not-met-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "PreconditionNotMetException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum prevent-user-existence-error-types
    common-lisp:nil
  (:legacy "LEGACY")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-type priority-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure provider-description common-lisp:nil
                                    ((provider-name :target-type
                                      provider-name-type :member-name
                                      "ProviderName")
                                     (provider-type :target-type
                                      identity-provider-type-type :member-name
                                      "ProviderType")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate"))
                                    (:shape-name "ProviderDescription"))

(smithy/sdk/shapes:define-map provider-details-type :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-type provider-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provider-name-type-v2
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure provider-user-identifier-type
                                    common-lisp:nil
                                    ((provider-name :target-type
                                      provider-name-type :member-name
                                      "ProviderName")
                                     (provider-attribute-name :target-type
                                      string-type :member-name
                                      "ProviderAttributeName")
                                     (provider-attribute-value :target-type
                                      string-type :member-name
                                      "ProviderAttributeValue"))
                                    (:shape-name "ProviderUserIdentifierType"))

(smithy/sdk/shapes:define-list providers-list-type :member provider-description)

(smithy/sdk/shapes:define-type query-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type query-limit-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list recovery-mechanisms-type :member
                               recovery-option-type)

(smithy/sdk/shapes:define-enum recovery-option-name-type
    common-lisp:nil
  (:verified-email "verified_email")
  (:verified-phone-number "verified_phone_number")
  (:admin-only "admin_only"))

(smithy/sdk/shapes:define-structure recovery-option-type common-lisp:nil
                                    ((priority :target-type priority-type
                                      :required common-lisp:t :member-name
                                      "Priority")
                                     (name :target-type
                                      recovery-option-name-type :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "RecoveryOptionType"))

(smithy/sdk/shapes:define-type redirect-url-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error refresh-token-reuse-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "RefreshTokenReuseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure refresh-token-rotation-type common-lisp:nil
                                    ((feature :target-type feature-type
                                      :required common-lisp:t :member-name
                                      "Feature")
                                     (retry-grace-period-seconds :target-type
                                      retry-grace-period-seconds-type
                                      :member-name "RetryGracePeriodSeconds"))
                                    (:shape-name "RefreshTokenRotationType"))

(smithy/sdk/shapes:define-type refresh-token-validity-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type region-code-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relying-party-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input resend-confirmation-code-request
                                common-lisp:nil
                                ((client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (secret-hash :target-type secret-hash-type
                                  :member-name "SecretHash")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "ResendConfirmationCodeRequest"))

(smithy/sdk/shapes:define-output resend-confirmation-code-response
                                 common-lisp:nil
                                 ((code-delivery-details :target-type
                                   code-delivery-details-type :member-name
                                   "CodeDeliveryDetails"))
                                 (:shape-name "ResendConfirmationCodeResponse"))

(smithy/sdk/shapes:define-type resource-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-server-identifier-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-server-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-server-scope-description-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-server-scope-list-type :member
                               resource-server-scope-type)

(smithy/sdk/shapes:define-type resource-server-scope-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-server-scope-type common-lisp:nil
                                    ((scope-name :target-type
                                      resource-server-scope-name-type :required
                                      common-lisp:t :member-name "ScopeName")
                                     (scope-description :target-type
                                      resource-server-scope-description-type
                                      :required common-lisp:t :member-name
                                      "ScopeDescription"))
                                    (:shape-name "ResourceServerScopeType"))

(smithy/sdk/shapes:define-structure resource-server-type common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (identifier :target-type
                                      resource-server-identifier-type
                                      :member-name "Identifier")
                                     (name :target-type
                                      resource-server-name-type :member-name
                                      "Name")
                                     (scopes :target-type
                                      resource-server-scope-list-type
                                      :member-name "Scopes"))
                                    (:shape-name "ResourceServerType"))

(smithy/sdk/shapes:define-list resource-servers-list-type :member
                               resource-server-type)

(smithy/sdk/shapes:define-input respond-to-auth-challenge-request
                                common-lisp:nil
                                ((client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (challenge-name :target-type
                                  challenge-name-type :required common-lisp:t
                                  :member-name "ChallengeName")
                                 (session :target-type session-type
                                  :member-name "Session")
                                 (challenge-responses :target-type
                                  challenge-responses-type :member-name
                                  "ChallengeResponses")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "RespondToAuthChallengeRequest"))

(smithy/sdk/shapes:define-output respond-to-auth-challenge-response
                                 common-lisp:nil
                                 ((challenge-name :target-type
                                   challenge-name-type :member-name
                                   "ChallengeName")
                                  (session :target-type session-type
                                   :member-name "Session")
                                  (challenge-parameters :target-type
                                   challenge-parameters-type :member-name
                                   "ChallengeParameters")
                                  (authentication-result :target-type
                                   authentication-result-type :member-name
                                   "AuthenticationResult"))
                                 (:shape-name "RespondToAuthChallengeResponse"))

(smithy/sdk/shapes:define-type retry-grace-period-seconds-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input revoke-token-request common-lisp:nil
                                ((token :target-type token-model-type :required
                                  common-lisp:t :member-name "Token")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (client-secret :target-type client-secret-type
                                  :member-name "ClientSecret"))
                                (:shape-name "RevokeTokenRequest"))

(smithy/sdk/shapes:define-output revoke-token-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RevokeTokenResponse"))

(smithy/sdk/shapes:define-structure risk-configuration-type common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (client-id :target-type client-id-type
                                      :member-name "ClientId")
                                     (compromised-credentials-risk-configuration
                                      :target-type
                                      compromised-credentials-risk-configuration-type
                                      :member-name
                                      "CompromisedCredentialsRiskConfiguration")
                                     (account-takeover-risk-configuration
                                      :target-type
                                      account-takeover-risk-configuration-type
                                      :member-name
                                      "AccountTakeoverRiskConfiguration")
                                     (risk-exception-configuration :target-type
                                      risk-exception-configuration-type
                                      :member-name
                                      "RiskExceptionConfiguration")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "RiskConfigurationType"))

(smithy/sdk/shapes:define-enum risk-decision-type
    common-lisp:nil
  (:no-risk "NoRisk")
  (:account-takeover "AccountTakeover")
  (:block "Block"))

(smithy/sdk/shapes:define-structure risk-exception-configuration-type
                                    common-lisp:nil
                                    ((blocked-iprange-list :target-type
                                      blocked-iprange-list-type :member-name
                                      "BlockedIPRangeList")
                                     (skipped-iprange-list :target-type
                                      skipped-iprange-list-type :member-name
                                      "SkippedIPRangeList"))
                                    (:shape-name
                                     "RiskExceptionConfigurationType"))

(smithy/sdk/shapes:define-enum risk-level-type
    common-lisp:nil
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-type s3arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3configuration-type common-lisp:nil
                                    ((bucket-arn :target-type s3arn-type
                                      :member-name "BucketArn"))
                                    (:shape-name "S3ConfigurationType"))

(smithy/sdk/shapes:define-type sesconfiguration-set
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure smsmfa-settings-type common-lisp:nil
                                    ((enabled :target-type boolean-type
                                      :member-name "Enabled")
                                     (preferred-mfa :target-type boolean-type
                                      :member-name "PreferredMfa"))
                                    (:shape-name "SMSMfaSettingsType"))

(smithy/sdk/shapes:define-structure schema-attribute-type common-lisp:nil
                                    ((name :target-type
                                      custom-attribute-name-type :member-name
                                      "Name")
                                     (attribute-data-type :target-type
                                      attribute-data-type :member-name
                                      "AttributeDataType")
                                     (developer-only-attribute :target-type
                                      boolean-type :member-name
                                      "DeveloperOnlyAttribute")
                                     (mutable :target-type boolean-type
                                      :member-name "Mutable")
                                     (required :target-type boolean-type
                                      :member-name "Required")
                                     (number-attribute-constraints :target-type
                                      number-attribute-constraints-type
                                      :member-name
                                      "NumberAttributeConstraints")
                                     (string-attribute-constraints :target-type
                                      string-attribute-constraints-type
                                      :member-name
                                      "StringAttributeConstraints"))
                                    (:shape-name "SchemaAttributeType"))

(smithy/sdk/shapes:define-list schema-attributes-list-type :member
                               schema-attribute-type)

(smithy/sdk/shapes:define-error scope-does-not-exist-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "ScopeDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list scope-list-type :member scope-type)

(smithy/sdk/shapes:define-type scope-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-pagination-token-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list searched-attribute-names-list-type :member
                               attribute-name-type)

(smithy/sdk/shapes:define-type secret-code-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-hash-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input set-log-delivery-configuration-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (log-configurations :target-type
                                  log-configuration-list-type :required
                                  common-lisp:t :member-name
                                  "LogConfigurations"))
                                (:shape-name
                                 "SetLogDeliveryConfigurationRequest"))

(smithy/sdk/shapes:define-output set-log-delivery-configuration-response
                                 common-lisp:nil
                                 ((log-delivery-configuration :target-type
                                   log-delivery-configuration-type :member-name
                                   "LogDeliveryConfiguration"))
                                 (:shape-name
                                  "SetLogDeliveryConfigurationResponse"))

(smithy/sdk/shapes:define-input set-risk-configuration-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :member-name "ClientId")
                                 (compromised-credentials-risk-configuration
                                  :target-type
                                  compromised-credentials-risk-configuration-type
                                  :member-name
                                  "CompromisedCredentialsRiskConfiguration")
                                 (account-takeover-risk-configuration
                                  :target-type
                                  account-takeover-risk-configuration-type
                                  :member-name
                                  "AccountTakeoverRiskConfiguration")
                                 (risk-exception-configuration :target-type
                                  risk-exception-configuration-type
                                  :member-name "RiskExceptionConfiguration"))
                                (:shape-name "SetRiskConfigurationRequest"))

(smithy/sdk/shapes:define-output set-risk-configuration-response
                                 common-lisp:nil
                                 ((risk-configuration :target-type
                                   risk-configuration-type :required
                                   common-lisp:t :member-name
                                   "RiskConfiguration"))
                                 (:shape-name "SetRiskConfigurationResponse"))

(smithy/sdk/shapes:define-input set-uicustomization-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :member-name "ClientId")
                                 (css :target-type csstype :member-name "CSS")
                                 (image-file :target-type image-file-type
                                  :member-name "ImageFile"))
                                (:shape-name "SetUICustomizationRequest"))

(smithy/sdk/shapes:define-output set-uicustomization-response common-lisp:nil
                                 ((uicustomization :target-type
                                   uicustomization-type :required common-lisp:t
                                   :member-name "UICustomization"))
                                 (:shape-name "SetUICustomizationResponse"))

(smithy/sdk/shapes:define-input set-user-mfapreference-request common-lisp:nil
                                ((smsmfa-settings :target-type
                                  smsmfa-settings-type :member-name
                                  "SMSMfaSettings")
                                 (software-token-mfa-settings :target-type
                                  software-token-mfa-settings-type :member-name
                                  "SoftwareTokenMfaSettings")
                                 (email-mfa-settings :target-type
                                  email-mfa-settings-type :member-name
                                  "EmailMfaSettings")
                                 (access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name "SetUserMFAPreferenceRequest"))

(smithy/sdk/shapes:define-output set-user-mfapreference-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "SetUserMFAPreferenceResponse"))

(smithy/sdk/shapes:define-input set-user-pool-mfa-config-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (sms-mfa-configuration :target-type
                                  sms-mfa-config-type :member-name
                                  "SmsMfaConfiguration")
                                 (software-token-mfa-configuration :target-type
                                  software-token-mfa-config-type :member-name
                                  "SoftwareTokenMfaConfiguration")
                                 (email-mfa-configuration :target-type
                                  email-mfa-config-type :member-name
                                  "EmailMfaConfiguration")
                                 (mfa-configuration :target-type
                                  user-pool-mfa-type :member-name
                                  "MfaConfiguration")
                                 (web-authn-configuration :target-type
                                  web-authn-configuration-type :member-name
                                  "WebAuthnConfiguration"))
                                (:shape-name "SetUserPoolMfaConfigRequest"))

(smithy/sdk/shapes:define-output set-user-pool-mfa-config-response
                                 common-lisp:nil
                                 ((sms-mfa-configuration :target-type
                                   sms-mfa-config-type :member-name
                                   "SmsMfaConfiguration")
                                  (software-token-mfa-configuration
                                   :target-type software-token-mfa-config-type
                                   :member-name
                                   "SoftwareTokenMfaConfiguration")
                                  (email-mfa-configuration :target-type
                                   email-mfa-config-type :member-name
                                   "EmailMfaConfiguration")
                                  (mfa-configuration :target-type
                                   user-pool-mfa-type :member-name
                                   "MfaConfiguration")
                                  (web-authn-configuration :target-type
                                   web-authn-configuration-type :member-name
                                   "WebAuthnConfiguration"))
                                 (:shape-name "SetUserPoolMfaConfigResponse"))

(smithy/sdk/shapes:define-input set-user-settings-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (mfaoptions :target-type mfaoption-list-type
                                  :required common-lisp:t :member-name
                                  "MFAOptions"))
                                (:shape-name "SetUserSettingsRequest"))

(smithy/sdk/shapes:define-output set-user-settings-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SetUserSettingsResponse"))

(smithy/sdk/shapes:define-structure sign-in-policy-type common-lisp:nil
                                    ((allowed-first-auth-factors :target-type
                                      allowed-first-auth-factors-list-type
                                      :member-name "AllowedFirstAuthFactors"))
                                    (:shape-name "SignInPolicyType"))

(smithy/sdk/shapes:define-input sign-up-request common-lisp:nil
                                ((client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (secret-hash :target-type secret-hash-type
                                  :member-name "SecretHash")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (password :target-type password-type
                                  :member-name "Password")
                                 (user-attributes :target-type
                                  attribute-list-type :member-name
                                  "UserAttributes")
                                 (validation-data :target-type
                                  attribute-list-type :member-name
                                  "ValidationData")
                                 (analytics-metadata :target-type
                                  analytics-metadata-type :member-name
                                  "AnalyticsMetadata")
                                 (user-context-data :target-type
                                  user-context-data-type :member-name
                                  "UserContextData")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "SignUpRequest"))

(smithy/sdk/shapes:define-output sign-up-response common-lisp:nil
                                 ((user-confirmed :target-type boolean-type
                                   :required common-lisp:t :member-name
                                   "UserConfirmed")
                                  (code-delivery-details :target-type
                                   code-delivery-details-type :member-name
                                   "CodeDeliveryDetails")
                                  (user-sub :target-type string-type :required
                                   common-lisp:t :member-name "UserSub")
                                  (session :target-type session-type
                                   :member-name "Session"))
                                 (:shape-name "SignUpResponse"))

(smithy/sdk/shapes:define-list skipped-iprange-list-type :member string-type)

(smithy/sdk/shapes:define-structure sms-configuration-type common-lisp:nil
                                    ((sns-caller-arn :target-type arn-type
                                      :required common-lisp:t :member-name
                                      "SnsCallerArn")
                                     (external-id :target-type string-type
                                      :member-name "ExternalId")
                                     (sns-region :target-type region-code-type
                                      :member-name "SnsRegion"))
                                    (:shape-name "SmsConfigurationType"))

(smithy/sdk/shapes:define-type sms-invite-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sms-mfa-config-type common-lisp:nil
                                    ((sms-authentication-message :target-type
                                      sms-verification-message-type
                                      :member-name "SmsAuthenticationMessage")
                                     (sms-configuration :target-type
                                      sms-configuration-type :member-name
                                      "SmsConfiguration"))
                                    (:shape-name "SmsMfaConfigType"))

(smithy/sdk/shapes:define-type sms-verification-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error software-token-mfanot-found-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "SoftwareTokenMFANotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type software-token-mfauser-code-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure software-token-mfa-config-type
                                    common-lisp:nil
                                    ((enabled :target-type boolean-type
                                      :member-name "Enabled"))
                                    (:shape-name "SoftwareTokenMfaConfigType"))

(smithy/sdk/shapes:define-structure software-token-mfa-settings-type
                                    common-lisp:nil
                                    ((enabled :target-type boolean-type
                                      :member-name "Enabled")
                                     (preferred-mfa :target-type boolean-type
                                      :member-name "PreferredMfa"))
                                    (:shape-name
                                     "SoftwareTokenMfaSettingsType"))

(smithy/sdk/shapes:define-input start-user-import-job-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (job-id :target-type user-import-job-id-type
                                  :required common-lisp:t :member-name
                                  "JobId"))
                                (:shape-name "StartUserImportJobRequest"))

(smithy/sdk/shapes:define-output start-user-import-job-response common-lisp:nil
                                 ((user-import-job :target-type
                                   user-import-job-type :member-name
                                   "UserImportJob"))
                                 (:shape-name "StartUserImportJobResponse"))

(smithy/sdk/shapes:define-input start-web-authn-registration-request
                                common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken"))
                                (:shape-name
                                 "StartWebAuthnRegistrationRequest"))

(smithy/sdk/shapes:define-output start-web-authn-registration-response
                                 common-lisp:nil
                                 ((credential-creation-options :target-type
                                   document :required common-lisp:t
                                   :member-name "CredentialCreationOptions"))
                                 (:shape-name
                                  "StartWebAuthnRegistrationResponse"))

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-input stop-user-import-job-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (job-id :target-type user-import-job-id-type
                                  :required common-lisp:t :member-name
                                  "JobId"))
                                (:shape-name "StopUserImportJobRequest"))

(smithy/sdk/shapes:define-output stop-user-import-job-response common-lisp:nil
                                 ((user-import-job :target-type
                                   user-import-job-type :member-name
                                   "UserImportJob"))
                                 (:shape-name "StopUserImportJobResponse"))

(smithy/sdk/shapes:define-structure string-attribute-constraints-type
                                    common-lisp:nil
                                    ((min-length :target-type string-type
                                      :member-name "MinLength")
                                     (max-length :target-type string-type
                                      :member-name "MaxLength"))
                                    (:shape-name
                                     "StringAttributeConstraintsType"))

(smithy/sdk/shapes:define-type string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list supported-identity-providers-list-type :member
                               provider-name-type)

(smithy/sdk/shapes:define-type tag-keys-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn-type :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type user-pool-tags-type
                                  :required common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type temporary-password-validity-days-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error tier-change-not-allowed-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "TierChangeNotAllowedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum time-units-type
    common-lisp:nil
  (:seconds "seconds")
  (:minutes "minutes")
  (:hours "hours")
  (:days "days"))

(smithy/sdk/shapes:define-type token-model-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure token-validity-units-type common-lisp:nil
                                    ((access-token :target-type time-units-type
                                      :member-name "AccessToken")
                                     (id-token :target-type time-units-type
                                      :member-name "IdToken")
                                     (refresh-token :target-type
                                      time-units-type :member-name
                                      "RefreshToken"))
                                    (:shape-name "TokenValidityUnitsType"))

(smithy/sdk/shapes:define-error too-many-failed-attempts-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "TooManyFailedAttemptsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure uicustomization-type common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (client-id :target-type client-id-type
                                      :member-name "ClientId")
                                     (image-url :target-type image-url-type
                                      :member-name "ImageUrl")
                                     (css :target-type csstype :member-name
                                      "CSS")
                                     (cssversion :target-type cssversion-type
                                      :member-name "CSSVersion")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate"))
                                    (:shape-name "UICustomizationType"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error unexpected-lambda-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UnexpectedLambdaException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-identity-provider-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "UnsupportedIdentityProviderException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-token-type-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UnsupportedTokenTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-user-state-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UnsupportedUserStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn-type :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type
                                  user-pool-tags-list-type :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-auth-event-feedback-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (event-id :target-type event-id-type :required
                                  common-lisp:t :member-name "EventId")
                                 (feedback-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "FeedbackToken")
                                 (feedback-value :target-type
                                  feedback-value-type :required common-lisp:t
                                  :member-name "FeedbackValue"))
                                (:shape-name "UpdateAuthEventFeedbackRequest"))

(smithy/sdk/shapes:define-output update-auth-event-feedback-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateAuthEventFeedbackResponse"))

(smithy/sdk/shapes:define-input update-device-status-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (device-key :target-type device-key-type
                                  :required common-lisp:t :member-name
                                  "DeviceKey")
                                 (device-remembered-status :target-type
                                  device-remembered-status-type :member-name
                                  "DeviceRememberedStatus"))
                                (:shape-name "UpdateDeviceStatusRequest"))

(smithy/sdk/shapes:define-output update-device-status-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDeviceStatusResponse"))

(smithy/sdk/shapes:define-input update-group-request common-lisp:nil
                                ((group-name :target-type group-name-type
                                  :required common-lisp:t :member-name
                                  "GroupName")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (description :target-type description-type
                                  :member-name "Description")
                                 (role-arn :target-type arn-type :member-name
                                  "RoleArn")
                                 (precedence :target-type precedence-type
                                  :member-name "Precedence"))
                                (:shape-name "UpdateGroupRequest"))

(smithy/sdk/shapes:define-output update-group-response common-lisp:nil
                                 ((group :target-type group-type :member-name
                                   "Group"))
                                 (:shape-name "UpdateGroupResponse"))

(smithy/sdk/shapes:define-input update-identity-provider-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (provider-name :target-type provider-name-type
                                  :required common-lisp:t :member-name
                                  "ProviderName")
                                 (provider-details :target-type
                                  provider-details-type :member-name
                                  "ProviderDetails")
                                 (attribute-mapping :target-type
                                  attribute-mapping-type :member-name
                                  "AttributeMapping")
                                 (idp-identifiers :target-type
                                  idp-identifiers-list-type :member-name
                                  "IdpIdentifiers"))
                                (:shape-name "UpdateIdentityProviderRequest"))

(smithy/sdk/shapes:define-output update-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider :target-type
                                   identity-provider-type :required
                                   common-lisp:t :member-name
                                   "IdentityProvider"))
                                 (:shape-name "UpdateIdentityProviderResponse"))

(smithy/sdk/shapes:define-input update-managed-login-branding-request
                                common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :member-name "UserPoolId")
                                 (managed-login-branding-id :target-type
                                  managed-login-branding-id-type :member-name
                                  "ManagedLoginBrandingId")
                                 (use-cognito-provided-values :target-type
                                  boolean-type :member-name
                                  "UseCognitoProvidedValues")
                                 (settings :target-type document :member-name
                                  "Settings")
                                 (assets :target-type asset-list-type
                                  :member-name "Assets"))
                                (:shape-name
                                 "UpdateManagedLoginBrandingRequest"))

(smithy/sdk/shapes:define-output update-managed-login-branding-response
                                 common-lisp:nil
                                 ((managed-login-branding :target-type
                                   managed-login-branding-type :member-name
                                   "ManagedLoginBranding"))
                                 (:shape-name
                                  "UpdateManagedLoginBrandingResponse"))

(smithy/sdk/shapes:define-input update-resource-server-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (identifier :target-type
                                  resource-server-identifier-type :required
                                  common-lisp:t :member-name "Identifier")
                                 (name :target-type resource-server-name-type
                                  :required common-lisp:t :member-name "Name")
                                 (scopes :target-type
                                  resource-server-scope-list-type :member-name
                                  "Scopes"))
                                (:shape-name "UpdateResourceServerRequest"))

(smithy/sdk/shapes:define-output update-resource-server-response
                                 common-lisp:nil
                                 ((resource-server :target-type
                                   resource-server-type :required common-lisp:t
                                   :member-name "ResourceServer"))
                                 (:shape-name "UpdateResourceServerResponse"))

(smithy/sdk/shapes:define-input update-user-attributes-request common-lisp:nil
                                ((user-attributes :target-type
                                  attribute-list-type :required common-lisp:t
                                  :member-name "UserAttributes")
                                 (access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (client-metadata :target-type
                                  client-metadata-type :member-name
                                  "ClientMetadata"))
                                (:shape-name "UpdateUserAttributesRequest"))

(smithy/sdk/shapes:define-output update-user-attributes-response
                                 common-lisp:nil
                                 ((code-delivery-details-list :target-type
                                   code-delivery-details-list-type :member-name
                                   "CodeDeliveryDetailsList"))
                                 (:shape-name "UpdateUserAttributesResponse"))

(smithy/sdk/shapes:define-input update-user-pool-client-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (client-id :target-type client-id-type
                                  :required common-lisp:t :member-name
                                  "ClientId")
                                 (client-name :target-type client-name-type
                                  :member-name "ClientName")
                                 (refresh-token-validity :target-type
                                  refresh-token-validity-type :member-name
                                  "RefreshTokenValidity")
                                 (access-token-validity :target-type
                                  access-token-validity-type :member-name
                                  "AccessTokenValidity")
                                 (id-token-validity :target-type
                                  id-token-validity-type :member-name
                                  "IdTokenValidity")
                                 (token-validity-units :target-type
                                  token-validity-units-type :member-name
                                  "TokenValidityUnits")
                                 (read-attributes :target-type
                                  client-permission-list-type :member-name
                                  "ReadAttributes")
                                 (write-attributes :target-type
                                  client-permission-list-type :member-name
                                  "WriteAttributes")
                                 (explicit-auth-flows :target-type
                                  explicit-auth-flows-list-type :member-name
                                  "ExplicitAuthFlows")
                                 (supported-identity-providers :target-type
                                  supported-identity-providers-list-type
                                  :member-name "SupportedIdentityProviders")
                                 (callback-urls :target-type
                                  callback-urls-list-type :member-name
                                  "CallbackURLs")
                                 (logout-urls :target-type
                                  logout-urls-list-type :member-name
                                  "LogoutURLs")
                                 (default-redirect-uri :target-type
                                  redirect-url-type :member-name
                                  "DefaultRedirectURI")
                                 (allowed-oauth-flows :target-type
                                  oauth-flows-type :member-name
                                  "AllowedOAuthFlows")
                                 (allowed-oauth-scopes :target-type
                                  scope-list-type :member-name
                                  "AllowedOAuthScopes")
                                 (allowed-oauth-flows-user-pool-client
                                  :target-type boolean-type :member-name
                                  "AllowedOAuthFlowsUserPoolClient")
                                 (analytics-configuration :target-type
                                  analytics-configuration-type :member-name
                                  "AnalyticsConfiguration")
                                 (prevent-user-existence-errors :target-type
                                  prevent-user-existence-error-types
                                  :member-name "PreventUserExistenceErrors")
                                 (enable-token-revocation :target-type
                                  wrapped-boolean-type :member-name
                                  "EnableTokenRevocation")
                                 (enable-propagate-additional-user-context-data
                                  :target-type wrapped-boolean-type
                                  :member-name
                                  "EnablePropagateAdditionalUserContextData")
                                 (auth-session-validity :target-type
                                  auth-session-validity-type :member-name
                                  "AuthSessionValidity")
                                 (refresh-token-rotation :target-type
                                  refresh-token-rotation-type :member-name
                                  "RefreshTokenRotation"))
                                (:shape-name "UpdateUserPoolClientRequest"))

(smithy/sdk/shapes:define-output update-user-pool-client-response
                                 common-lisp:nil
                                 ((user-pool-client :target-type
                                   user-pool-client-type :member-name
                                   "UserPoolClient"))
                                 (:shape-name "UpdateUserPoolClientResponse"))

(smithy/sdk/shapes:define-input update-user-pool-domain-request common-lisp:nil
                                ((domain :target-type domain-type :required
                                  common-lisp:t :member-name "Domain")
                                 (user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (managed-login-version :target-type
                                  wrapped-integer-type :member-name
                                  "ManagedLoginVersion")
                                 (custom-domain-config :target-type
                                  custom-domain-config-type :member-name
                                  "CustomDomainConfig"))
                                (:shape-name "UpdateUserPoolDomainRequest"))

(smithy/sdk/shapes:define-output update-user-pool-domain-response
                                 common-lisp:nil
                                 ((managed-login-version :target-type
                                   wrapped-integer-type :member-name
                                   "ManagedLoginVersion")
                                  (cloud-front-domain :target-type domain-type
                                   :member-name "CloudFrontDomain"))
                                 (:shape-name "UpdateUserPoolDomainResponse"))

(smithy/sdk/shapes:define-input update-user-pool-request common-lisp:nil
                                ((user-pool-id :target-type user-pool-id-type
                                  :required common-lisp:t :member-name
                                  "UserPoolId")
                                 (policies :target-type user-pool-policy-type
                                  :member-name "Policies")
                                 (deletion-protection :target-type
                                  deletion-protection-type :member-name
                                  "DeletionProtection")
                                 (lambda-config :target-type lambda-config-type
                                  :member-name "LambdaConfig")
                                 (auto-verified-attributes :target-type
                                  verified-attributes-list-type :member-name
                                  "AutoVerifiedAttributes")
                                 (sms-verification-message :target-type
                                  sms-verification-message-type :member-name
                                  "SmsVerificationMessage")
                                 (email-verification-message :target-type
                                  email-verification-message-type :member-name
                                  "EmailVerificationMessage")
                                 (email-verification-subject :target-type
                                  email-verification-subject-type :member-name
                                  "EmailVerificationSubject")
                                 (verification-message-template :target-type
                                  verification-message-template-type
                                  :member-name "VerificationMessageTemplate")
                                 (sms-authentication-message :target-type
                                  sms-verification-message-type :member-name
                                  "SmsAuthenticationMessage")
                                 (user-attribute-update-settings :target-type
                                  user-attribute-update-settings-type
                                  :member-name "UserAttributeUpdateSettings")
                                 (mfa-configuration :target-type
                                  user-pool-mfa-type :member-name
                                  "MfaConfiguration")
                                 (device-configuration :target-type
                                  device-configuration-type :member-name
                                  "DeviceConfiguration")
                                 (email-configuration :target-type
                                  email-configuration-type :member-name
                                  "EmailConfiguration")
                                 (sms-configuration :target-type
                                  sms-configuration-type :member-name
                                  "SmsConfiguration")
                                 (user-pool-tags :target-type
                                  user-pool-tags-type :member-name
                                  "UserPoolTags")
                                 (admin-create-user-config :target-type
                                  admin-create-user-config-type :member-name
                                  "AdminCreateUserConfig")
                                 (user-pool-add-ons :target-type
                                  user-pool-add-ons-type :member-name
                                  "UserPoolAddOns")
                                 (account-recovery-setting :target-type
                                  account-recovery-setting-type :member-name
                                  "AccountRecoverySetting")
                                 (pool-name :target-type user-pool-name-type
                                  :member-name "PoolName")
                                 (user-pool-tier :target-type
                                  user-pool-tier-type :member-name
                                  "UserPoolTier"))
                                (:shape-name "UpdateUserPoolRequest"))

(smithy/sdk/shapes:define-output update-user-pool-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateUserPoolResponse"))

(smithy/sdk/shapes:define-structure user-attribute-update-settings-type
                                    common-lisp:nil
                                    ((attributes-require-verification-before-update
                                      :target-type
                                      attributes-require-verification-before-update-type
                                      :member-name
                                      "AttributesRequireVerificationBeforeUpdate"))
                                    (:shape-name
                                     "UserAttributeUpdateSettingsType"))

(smithy/sdk/shapes:define-structure user-context-data-type common-lisp:nil
                                    ((ip-address :target-type string-type
                                      :member-name "IpAddress")
                                     (encoded-data :target-type string-type
                                      :member-name "EncodedData"))
                                    (:shape-name "UserContextDataType"))

(smithy/sdk/shapes:define-type user-filter-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error user-import-in-progress-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UserImportInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type user-import-job-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-import-job-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum user-import-job-status-type
    common-lisp:nil
  (:created "Created")
  (:pending "Pending")
  (:in-progress "InProgress")
  (:stopping "Stopping")
  (:expired "Expired")
  (:stopped "Stopped")
  (:failed "Failed")
  (:succeeded "Succeeded"))

(smithy/sdk/shapes:define-structure user-import-job-type common-lisp:nil
                                    ((job-name :target-type
                                      user-import-job-name-type :member-name
                                      "JobName")
                                     (job-id :target-type
                                      user-import-job-id-type :member-name
                                      "JobId")
                                     (user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (pre-signed-url :target-type
                                      pre-signed-url-type :member-name
                                      "PreSignedUrl")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (start-date :target-type date-type
                                      :member-name "StartDate")
                                     (completion-date :target-type date-type
                                      :member-name "CompletionDate")
                                     (status :target-type
                                      user-import-job-status-type :member-name
                                      "Status")
                                     (cloud-watch-logs-role-arn :target-type
                                      arn-type :member-name
                                      "CloudWatchLogsRoleArn")
                                     (imported-users :target-type long-type
                                      :member-name "ImportedUsers")
                                     (skipped-users :target-type long-type
                                      :member-name "SkippedUsers")
                                     (failed-users :target-type long-type
                                      :member-name "FailedUsers")
                                     (completion-message :target-type
                                      completion-message-type :member-name
                                      "CompletionMessage"))
                                    (:shape-name "UserImportJobType"))

(smithy/sdk/shapes:define-list user-import-jobs-list-type :member
                               user-import-job-type)

(smithy/sdk/shapes:define-error user-lambda-validation-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UserLambdaValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list user-mfasetting-list-type :member string-type)

(smithy/sdk/shapes:define-error user-not-confirmed-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UserNotConfirmedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error user-not-found-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UserNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error user-pool-add-on-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "UserPoolAddOnNotEnabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure user-pool-add-ons-type common-lisp:nil
                                    ((advanced-security-mode :target-type
                                      advanced-security-mode-type :required
                                      common-lisp:t :member-name
                                      "AdvancedSecurityMode")
                                     (advanced-security-additional-flows
                                      :target-type
                                      advanced-security-additional-flows-type
                                      :member-name
                                      "AdvancedSecurityAdditionalFlows"))
                                    (:shape-name "UserPoolAddOnsType"))

(smithy/sdk/shapes:define-structure user-pool-client-description
                                    common-lisp:nil
                                    ((client-id :target-type client-id-type
                                      :member-name "ClientId")
                                     (user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (client-name :target-type client-name-type
                                      :member-name "ClientName"))
                                    (:shape-name "UserPoolClientDescription"))

(smithy/sdk/shapes:define-list user-pool-client-list-type :member
                               user-pool-client-description)

(smithy/sdk/shapes:define-structure user-pool-client-type common-lisp:nil
                                    ((user-pool-id :target-type
                                      user-pool-id-type :member-name
                                      "UserPoolId")
                                     (client-name :target-type client-name-type
                                      :member-name "ClientName")
                                     (client-id :target-type client-id-type
                                      :member-name "ClientId")
                                     (client-secret :target-type
                                      client-secret-type :member-name
                                      "ClientSecret")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (refresh-token-validity :target-type
                                      refresh-token-validity-type :member-name
                                      "RefreshTokenValidity")
                                     (access-token-validity :target-type
                                      access-token-validity-type :member-name
                                      "AccessTokenValidity")
                                     (id-token-validity :target-type
                                      id-token-validity-type :member-name
                                      "IdTokenValidity")
                                     (token-validity-units :target-type
                                      token-validity-units-type :member-name
                                      "TokenValidityUnits")
                                     (read-attributes :target-type
                                      client-permission-list-type :member-name
                                      "ReadAttributes")
                                     (write-attributes :target-type
                                      client-permission-list-type :member-name
                                      "WriteAttributes")
                                     (explicit-auth-flows :target-type
                                      explicit-auth-flows-list-type
                                      :member-name "ExplicitAuthFlows")
                                     (supported-identity-providers :target-type
                                      supported-identity-providers-list-type
                                      :member-name
                                      "SupportedIdentityProviders")
                                     (callback-urls :target-type
                                      callback-urls-list-type :member-name
                                      "CallbackURLs")
                                     (logout-urls :target-type
                                      logout-urls-list-type :member-name
                                      "LogoutURLs")
                                     (default-redirect-uri :target-type
                                      redirect-url-type :member-name
                                      "DefaultRedirectURI")
                                     (allowed-oauth-flows :target-type
                                      oauth-flows-type :member-name
                                      "AllowedOAuthFlows")
                                     (allowed-oauth-scopes :target-type
                                      scope-list-type :member-name
                                      "AllowedOAuthScopes")
                                     (allowed-oauth-flows-user-pool-client
                                      :target-type boolean-type :member-name
                                      "AllowedOAuthFlowsUserPoolClient")
                                     (analytics-configuration :target-type
                                      analytics-configuration-type :member-name
                                      "AnalyticsConfiguration")
                                     (prevent-user-existence-errors
                                      :target-type
                                      prevent-user-existence-error-types
                                      :member-name
                                      "PreventUserExistenceErrors")
                                     (enable-token-revocation :target-type
                                      wrapped-boolean-type :member-name
                                      "EnableTokenRevocation")
                                     (enable-propagate-additional-user-context-data
                                      :target-type wrapped-boolean-type
                                      :member-name
                                      "EnablePropagateAdditionalUserContextData")
                                     (auth-session-validity :target-type
                                      auth-session-validity-type :member-name
                                      "AuthSessionValidity")
                                     (refresh-token-rotation :target-type
                                      refresh-token-rotation-type :member-name
                                      "RefreshTokenRotation"))
                                    (:shape-name "UserPoolClientType"))

(smithy/sdk/shapes:define-structure user-pool-description-type common-lisp:nil
                                    ((id :target-type user-pool-id-type
                                      :member-name "Id")
                                     (name :target-type user-pool-name-type
                                      :member-name "Name")
                                     (lambda-config :target-type
                                      lambda-config-type :member-name
                                      "LambdaConfig")
                                     (status :target-type status-type
                                      :member-name "Status")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate"))
                                    (:shape-name "UserPoolDescriptionType"))

(smithy/sdk/shapes:define-type user-pool-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-pool-list-type :member
                               user-pool-description-type)

(smithy/sdk/shapes:define-enum user-pool-mfa-type
    common-lisp:nil
  (:off "OFF")
  (:on "ON")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-type user-pool-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-pool-policy-type common-lisp:nil
                                    ((password-policy :target-type
                                      password-policy-type :member-name
                                      "PasswordPolicy")
                                     (sign-in-policy :target-type
                                      sign-in-policy-type :member-name
                                      "SignInPolicy"))
                                    (:shape-name "UserPoolPolicyType"))

(smithy/sdk/shapes:define-error user-pool-tagging-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UserPoolTaggingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list user-pool-tags-list-type :member tag-keys-type)

(smithy/sdk/shapes:define-map user-pool-tags-type :key tag-keys-type :value
                              tag-value-type)

(smithy/sdk/shapes:define-enum user-pool-tier-type
    common-lisp:nil
  (:lite "LITE")
  (:essentials "ESSENTIALS")
  (:plus "PLUS"))

(smithy/sdk/shapes:define-structure user-pool-type common-lisp:nil
                                    ((id :target-type user-pool-id-type
                                      :member-name "Id")
                                     (name :target-type user-pool-name-type
                                      :member-name "Name")
                                     (policies :target-type
                                      user-pool-policy-type :member-name
                                      "Policies")
                                     (deletion-protection :target-type
                                      deletion-protection-type :member-name
                                      "DeletionProtection")
                                     (lambda-config :target-type
                                      lambda-config-type :member-name
                                      "LambdaConfig")
                                     (status :target-type status-type
                                      :member-name "Status")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (schema-attributes :target-type
                                      schema-attributes-list-type :member-name
                                      "SchemaAttributes")
                                     (auto-verified-attributes :target-type
                                      verified-attributes-list-type
                                      :member-name "AutoVerifiedAttributes")
                                     (alias-attributes :target-type
                                      alias-attributes-list-type :member-name
                                      "AliasAttributes")
                                     (username-attributes :target-type
                                      username-attributes-list-type
                                      :member-name "UsernameAttributes")
                                     (sms-verification-message :target-type
                                      sms-verification-message-type
                                      :member-name "SmsVerificationMessage")
                                     (email-verification-message :target-type
                                      email-verification-message-type
                                      :member-name "EmailVerificationMessage")
                                     (email-verification-subject :target-type
                                      email-verification-subject-type
                                      :member-name "EmailVerificationSubject")
                                     (verification-message-template
                                      :target-type
                                      verification-message-template-type
                                      :member-name
                                      "VerificationMessageTemplate")
                                     (sms-authentication-message :target-type
                                      sms-verification-message-type
                                      :member-name "SmsAuthenticationMessage")
                                     (user-attribute-update-settings
                                      :target-type
                                      user-attribute-update-settings-type
                                      :member-name
                                      "UserAttributeUpdateSettings")
                                     (mfa-configuration :target-type
                                      user-pool-mfa-type :member-name
                                      "MfaConfiguration")
                                     (device-configuration :target-type
                                      device-configuration-type :member-name
                                      "DeviceConfiguration")
                                     (estimated-number-of-users :target-type
                                      integer-type :member-name
                                      "EstimatedNumberOfUsers")
                                     (email-configuration :target-type
                                      email-configuration-type :member-name
                                      "EmailConfiguration")
                                     (sms-configuration :target-type
                                      sms-configuration-type :member-name
                                      "SmsConfiguration")
                                     (user-pool-tags :target-type
                                      user-pool-tags-type :member-name
                                      "UserPoolTags")
                                     (sms-configuration-failure :target-type
                                      string-type :member-name
                                      "SmsConfigurationFailure")
                                     (email-configuration-failure :target-type
                                      string-type :member-name
                                      "EmailConfigurationFailure")
                                     (domain :target-type domain-type
                                      :member-name "Domain")
                                     (custom-domain :target-type domain-type
                                      :member-name "CustomDomain")
                                     (admin-create-user-config :target-type
                                      admin-create-user-config-type
                                      :member-name "AdminCreateUserConfig")
                                     (user-pool-add-ons :target-type
                                      user-pool-add-ons-type :member-name
                                      "UserPoolAddOns")
                                     (username-configuration :target-type
                                      username-configuration-type :member-name
                                      "UsernameConfiguration")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (account-recovery-setting :target-type
                                      account-recovery-setting-type
                                      :member-name "AccountRecoverySetting")
                                     (user-pool-tier :target-type
                                      user-pool-tier-type :member-name
                                      "UserPoolTier"))
                                    (:shape-name "UserPoolType"))

(smithy/sdk/shapes:define-enum user-status-type
    common-lisp:nil
  (:unconfirmed "UNCONFIRMED")
  (:confirmed "CONFIRMED")
  (:archived "ARCHIVED")
  (:compromised "COMPROMISED")
  (:unknown "UNKNOWN")
  (:reset-required "RESET_REQUIRED")
  (:force-change-password "FORCE_CHANGE_PASSWORD")
  (:external-provider "EXTERNAL_PROVIDER"))

(smithy/sdk/shapes:define-structure user-type common-lisp:nil
                                    ((username :target-type username-type
                                      :member-name "Username")
                                     (attributes :target-type
                                      attribute-list-type :member-name
                                      "Attributes")
                                     (user-create-date :target-type date-type
                                      :member-name "UserCreateDate")
                                     (user-last-modified-date :target-type
                                      date-type :member-name
                                      "UserLastModifiedDate")
                                     (enabled :target-type boolean-type
                                      :member-name "Enabled")
                                     (user-status :target-type user-status-type
                                      :member-name "UserStatus")
                                     (mfaoptions :target-type
                                      mfaoption-list-type :member-name
                                      "MFAOptions"))
                                    (:shape-name "UserType"))

(smithy/sdk/shapes:define-enum user-verification-type
    common-lisp:nil
  (:required "required")
  (:preferred "preferred"))

(smithy/sdk/shapes:define-enum username-attribute-type
    common-lisp:nil
  (:phone-number "phone_number")
  (:email "email"))

(smithy/sdk/shapes:define-list username-attributes-list-type :member
                               username-attribute-type)

(smithy/sdk/shapes:define-structure username-configuration-type common-lisp:nil
                                    ((case-sensitive :target-type
                                      wrapped-boolean-type :required
                                      common-lisp:t :member-name
                                      "CaseSensitive"))
                                    (:shape-name "UsernameConfigurationType"))

(smithy/sdk/shapes:define-error username-exists-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "UsernameExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type username-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list users-list-type :member user-type)

(smithy/sdk/shapes:define-structure verification-message-template-type
                                    common-lisp:nil
                                    ((sms-message :target-type
                                      sms-verification-message-type
                                      :member-name "SmsMessage")
                                     (email-message :target-type
                                      email-verification-message-type
                                      :member-name "EmailMessage")
                                     (email-subject :target-type
                                      email-verification-subject-type
                                      :member-name "EmailSubject")
                                     (email-message-by-link :target-type
                                      email-verification-message-by-link-type
                                      :member-name "EmailMessageByLink")
                                     (email-subject-by-link :target-type
                                      email-verification-subject-by-link-type
                                      :member-name "EmailSubjectByLink")
                                     (default-email-option :target-type
                                      default-email-option-type :member-name
                                      "DefaultEmailOption"))
                                    (:shape-name
                                     "VerificationMessageTemplateType"))

(smithy/sdk/shapes:define-enum verified-attribute-type
    common-lisp:nil
  (:phone-number "phone_number")
  (:email "email"))

(smithy/sdk/shapes:define-list verified-attributes-list-type :member
                               verified-attribute-type)

(smithy/sdk/shapes:define-input verify-software-token-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :member-name "AccessToken")
                                 (session :target-type session-type
                                  :member-name "Session")
                                 (user-code :target-type
                                  software-token-mfauser-code-type :required
                                  common-lisp:t :member-name "UserCode")
                                 (friendly-device-name :target-type string-type
                                  :member-name "FriendlyDeviceName"))
                                (:shape-name "VerifySoftwareTokenRequest"))

(smithy/sdk/shapes:define-output verify-software-token-response common-lisp:nil
                                 ((status :target-type
                                   verify-software-token-response-type
                                   :member-name "Status")
                                  (session :target-type session-type
                                   :member-name "Session"))
                                 (:shape-name "VerifySoftwareTokenResponse"))

(smithy/sdk/shapes:define-enum verify-software-token-response-type
    common-lisp:nil
  (:success "SUCCESS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-input verify-user-attribute-request common-lisp:nil
                                ((access-token :target-type token-model-type
                                  :required common-lisp:t :member-name
                                  "AccessToken")
                                 (attribute-name :target-type
                                  attribute-name-type :required common-lisp:t
                                  :member-name "AttributeName")
                                 (code :target-type confirmation-code-type
                                  :required common-lisp:t :member-name "Code"))
                                (:shape-name "VerifyUserAttributeRequest"))

(smithy/sdk/shapes:define-output verify-user-attribute-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "VerifyUserAttributeResponse"))

(smithy/sdk/shapes:define-type web-authn-authenticator-attachment-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-authn-authenticator-transport-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list web-authn-authenticator-transports-list :member
                               web-authn-authenticator-transport-type)

(smithy/sdk/shapes:define-error web-authn-challenge-not-found-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "WebAuthnChallengeNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error web-authn-client-mismatch-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "WebAuthnClientMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error web-authn-configuration-missing-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "WebAuthnConfigurationMissingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure web-authn-configuration-type
                                    common-lisp:nil
                                    ((relying-party-id :target-type
                                      relying-party-id-type :member-name
                                      "RelyingPartyId")
                                     (user-verification :target-type
                                      user-verification-type :member-name
                                      "UserVerification"))
                                    (:shape-name "WebAuthnConfigurationType"))

(smithy/sdk/shapes:define-structure web-authn-credential-description
                                    common-lisp:nil
                                    ((credential-id :target-type string-type
                                      :required common-lisp:t :member-name
                                      "CredentialId")
                                     (friendly-credential-name :target-type
                                      string-type :required common-lisp:t
                                      :member-name "FriendlyCredentialName")
                                     (relying-party-id :target-type string-type
                                      :required common-lisp:t :member-name
                                      "RelyingPartyId")
                                     (authenticator-attachment :target-type
                                      web-authn-authenticator-attachment-type
                                      :member-name "AuthenticatorAttachment")
                                     (authenticator-transports :target-type
                                      web-authn-authenticator-transports-list
                                      :required common-lisp:t :member-name
                                      "AuthenticatorTransports")
                                     (created-at :target-type date-type
                                      :required common-lisp:t :member-name
                                      "CreatedAt"))
                                    (:shape-name
                                     "WebAuthnCredentialDescription"))

(smithy/sdk/shapes:define-list web-authn-credential-description-list-type
                               :member web-authn-credential-description)

(smithy/sdk/shapes:define-error web-authn-credential-not-supported-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "WebAuthnCredentialNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type web-authn-credentials-query-limit-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error web-authn-not-enabled-exception common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name "WebAuthnNotEnabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error web-authn-origin-not-allowed-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "WebAuthnOriginNotAllowedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error web-authn-relying-party-mismatch-exception
                                common-lisp:nil
                                ((message :target-type message-type
                                  :member-name "message"))
                                (:shape-name
                                 "WebAuthnRelyingPartyMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type wrapped-boolean-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type wrapped-integer-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/operation:define-operation add-custom-attributes :shape-name
                                       "AddCustomAttributes" :input
                                       add-custom-attributes-request :output
                                       add-custom-attributes-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-import-in-progress-exception))

(smithy/sdk/operation:define-operation admin-add-user-to-group :shape-name
                                       "AdminAddUserToGroup" :input
                                       admin-add-user-to-group-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-confirm-sign-up :shape-name
                                       "AdminConfirmSignUp" :input
                                       admin-confirm-sign-up-request :output
                                       admin-confirm-sign-up-response :errors
                                       (internal-error-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-failed-attempts-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-create-user :shape-name
                                       "AdminCreateUser" :input
                                       admin-create-user-request :output
                                       admin-create-user-response :errors
                                       (code-delivery-failure-exception
                                        internal-error-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        not-authorized-exception
                                        precondition-not-met-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        unsupported-user-state-exception
                                        user-lambda-validation-exception
                                        username-exists-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-delete-user :shape-name
                                       "AdminDeleteUser" :input
                                       admin-delete-user-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-delete-user-attributes :shape-name
                                       "AdminDeleteUserAttributes" :input
                                       admin-delete-user-attributes-request
                                       :output
                                       admin-delete-user-attributes-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-disable-provider-for-user
                                       :shape-name
                                       "AdminDisableProviderForUser" :input
                                       admin-disable-provider-for-user-request
                                       :output
                                       admin-disable-provider-for-user-response
                                       :errors
                                       (alias-exists-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-disable-user :shape-name
                                       "AdminDisableUser" :input
                                       admin-disable-user-request :output
                                       admin-disable-user-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-enable-user :shape-name
                                       "AdminEnableUser" :input
                                       admin-enable-user-request :output
                                       admin-enable-user-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-forget-device :shape-name
                                       "AdminForgetDevice" :input
                                       admin-forget-device-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-get-device :shape-name
                                       "AdminGetDevice" :input
                                       admin-get-device-request :output
                                       admin-get-device-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation admin-get-user :shape-name
                                       "AdminGetUser" :input
                                       admin-get-user-request :output
                                       admin-get-user-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-initiate-auth :shape-name
                                       "AdminInitiateAuth" :input
                                       admin-initiate-auth-request :output
                                       admin-initiate-auth-response :errors
                                       (internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        invalid-user-pool-configuration-exception
                                        mfamethod-not-found-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        unsupported-operation-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-link-provider-for-user :shape-name
                                       "AdminLinkProviderForUser" :input
                                       admin-link-provider-for-user-request
                                       :output
                                       admin-link-provider-for-user-response
                                       :errors
                                       (alias-exists-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-list-devices :shape-name
                                       "AdminListDevices" :input
                                       admin-list-devices-request :output
                                       admin-list-devices-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation admin-list-groups-for-user :shape-name
                                       "AdminListGroupsForUser" :input
                                       admin-list-groups-for-user-request
                                       :output
                                       admin-list-groups-for-user-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-list-user-auth-events :shape-name
                                       "AdminListUserAuthEvents" :input
                                       admin-list-user-auth-events-request
                                       :output
                                       admin-list-user-auth-events-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception
                                        user-pool-add-on-not-enabled-exception))

(smithy/sdk/operation:define-operation admin-remove-user-from-group :shape-name
                                       "AdminRemoveUserFromGroup" :input
                                       admin-remove-user-from-group-request
                                       :output common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-reset-user-password :shape-name
                                       "AdminResetUserPassword" :input
                                       admin-reset-user-password-request
                                       :output
                                       admin-reset-user-password-response
                                       :errors
                                       (internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-respond-to-auth-challenge
                                       :shape-name
                                       "AdminRespondToAuthChallenge" :input
                                       admin-respond-to-auth-challenge-request
                                       :output
                                       admin-respond-to-auth-challenge-response
                                       :errors
                                       (alias-exists-exception
                                        code-mismatch-exception
                                        expired-code-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        invalid-user-pool-configuration-exception
                                        mfamethod-not-found-exception
                                        not-authorized-exception
                                        password-history-policy-violation-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        software-token-mfanot-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-set-user-mfapreference :shape-name
                                       "AdminSetUserMFAPreference" :input
                                       admin-set-user-mfapreference-request
                                       :output
                                       admin-set-user-mfapreference-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-set-user-password :shape-name
                                       "AdminSetUserPassword" :input
                                       admin-set-user-password-request :output
                                       admin-set-user-password-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        not-authorized-exception
                                        password-history-policy-violation-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-set-user-settings :shape-name
                                       "AdminSetUserSettings" :input
                                       admin-set-user-settings-request :output
                                       admin-set-user-settings-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-update-auth-event-feedback
                                       :shape-name
                                       "AdminUpdateAuthEventFeedback" :input
                                       admin-update-auth-event-feedback-request
                                       :output
                                       admin-update-auth-event-feedback-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception
                                        user-pool-add-on-not-enabled-exception))

(smithy/sdk/operation:define-operation admin-update-device-status :shape-name
                                       "AdminUpdateDeviceStatus" :input
                                       admin-update-device-status-request
                                       :output
                                       admin-update-device-status-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-update-user-attributes :shape-name
                                       "AdminUpdateUserAttributes" :input
                                       admin-update-user-attributes-request
                                       :output
                                       admin-update-user-attributes-response
                                       :errors
                                       (alias-exists-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation admin-user-global-sign-out :shape-name
                                       "AdminUserGlobalSignOut" :input
                                       admin-user-global-sign-out-request
                                       :output
                                       admin-user-global-sign-out-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation associate-software-token :shape-name
                                       "AssociateSoftwareToken" :input
                                       associate-software-token-request :output
                                       associate-software-token-response
                                       :errors
                                       (concurrent-modification-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        software-token-mfanot-found-exception))

(smithy/sdk/operation:define-operation change-password :shape-name
                                       "ChangePassword" :input
                                       change-password-request :output
                                       change-password-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        password-history-policy-violation-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation complete-web-authn-registration
                                       :shape-name
                                       "CompleteWebAuthnRegistration" :input
                                       complete-web-authn-registration-request
                                       :output
                                       complete-web-authn-registration-response
                                       :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        too-many-requests-exception
                                        web-authn-challenge-not-found-exception
                                        web-authn-client-mismatch-exception
                                        web-authn-credential-not-supported-exception
                                        web-authn-not-enabled-exception
                                        web-authn-origin-not-allowed-exception
                                        web-authn-relying-party-mismatch-exception))

(smithy/sdk/operation:define-operation confirm-device :shape-name
                                       "ConfirmDevice" :input
                                       confirm-device-request :output
                                       confirm-device-response :errors
                                       (device-key-exists-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        username-exists-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation confirm-forgot-password :shape-name
                                       "ConfirmForgotPassword" :input
                                       confirm-forgot-password-request :output
                                       confirm-forgot-password-response :errors
                                       (code-mismatch-exception
                                        expired-code-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        password-history-policy-violation-exception
                                        resource-not-found-exception
                                        too-many-failed-attempts-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation confirm-sign-up :shape-name
                                       "ConfirmSignUp" :input
                                       confirm-sign-up-request :output
                                       confirm-sign-up-response :errors
                                       (alias-exists-exception
                                        code-mismatch-exception
                                        expired-code-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-failed-attempts-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation create-group :shape-name "CreateGroup"
                                       :input create-group-request :output
                                       create-group-response :errors
                                       (group-exists-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-identity-provider :shape-name
                                       "CreateIdentityProvider" :input
                                       create-identity-provider-request :output
                                       create-identity-provider-response
                                       :errors
                                       (duplicate-provider-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-managed-login-branding
                                       :shape-name "CreateManagedLoginBranding"
                                       :input
                                       create-managed-login-branding-request
                                       :output
                                       create-managed-login-branding-response
                                       :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        managed-login-branding-exists-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-resource-server :shape-name
                                       "CreateResourceServer" :input
                                       create-resource-server-request :output
                                       create-resource-server-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-user-import-job :shape-name
                                       "CreateUserImportJob" :input
                                       create-user-import-job-request :output
                                       create-user-import-job-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        precondition-not-met-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-user-pool :shape-name
                                       "CreateUserPool" :input
                                       create-user-pool-request :output
                                       create-user-pool-response :errors
                                       (feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        tier-change-not-allowed-exception
                                        too-many-requests-exception
                                        user-pool-tagging-exception))

(smithy/sdk/operation:define-operation create-user-pool-client :shape-name
                                       "CreateUserPoolClient" :input
                                       create-user-pool-client-request :output
                                       create-user-pool-client-response :errors
                                       (feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-oauth-flow-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        scope-does-not-exist-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation create-user-pool-domain :shape-name
                                       "CreateUserPoolDomain" :input
                                       create-user-pool-domain-request :output
                                       create-user-pool-domain-response :errors
                                       (concurrent-modification-exception
                                        feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-group :shape-name "DeleteGroup"
                                       :input delete-group-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-identity-provider :shape-name
                                       "DeleteIdentityProvider" :input
                                       delete-identity-provider-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unsupported-identity-provider-exception))

(smithy/sdk/operation:define-operation delete-managed-login-branding
                                       :shape-name "DeleteManagedLoginBranding"
                                       :input
                                       delete-managed-login-branding-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-resource-server :shape-name
                                       "DeleteResourceServer" :input
                                       delete-resource-server-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       common-lisp:null :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation delete-user-attributes :shape-name
                                       "DeleteUserAttributes" :input
                                       delete-user-attributes-request :output
                                       delete-user-attributes-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation delete-user-pool :shape-name
                                       "DeleteUserPool" :input
                                       delete-user-pool-request :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-import-in-progress-exception))

(smithy/sdk/operation:define-operation delete-user-pool-client :shape-name
                                       "DeleteUserPoolClient" :input
                                       delete-user-pool-client-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-user-pool-domain :shape-name
                                       "DeleteUserPoolDomain" :input
                                       delete-user-pool-domain-request :output
                                       delete-user-pool-domain-response :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-web-authn-credential :shape-name
                                       "DeleteWebAuthnCredential" :input
                                       delete-web-authn-credential-request
                                       :output
                                       delete-web-authn-credential-response
                                       :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-identity-provider :shape-name
                                       "DescribeIdentityProvider" :input
                                       describe-identity-provider-request
                                       :output
                                       describe-identity-provider-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-managed-login-branding
                                       :shape-name
                                       "DescribeManagedLoginBranding" :input
                                       describe-managed-login-branding-request
                                       :output
                                       describe-managed-login-branding-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation
 describe-managed-login-branding-by-client :shape-name
 "DescribeManagedLoginBrandingByClient" :input
 describe-managed-login-branding-by-client-request :output
 describe-managed-login-branding-by-client-response :errors
 (internal-error-exception invalid-parameter-exception not-authorized-exception
  resource-not-found-exception too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-resource-server :shape-name
                                       "DescribeResourceServer" :input
                                       describe-resource-server-request :output
                                       describe-resource-server-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-risk-configuration :shape-name
                                       "DescribeRiskConfiguration" :input
                                       describe-risk-configuration-request
                                       :output
                                       describe-risk-configuration-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-pool-add-on-not-enabled-exception))

(smithy/sdk/operation:define-operation describe-user-import-job :shape-name
                                       "DescribeUserImportJob" :input
                                       describe-user-import-job-request :output
                                       describe-user-import-job-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-user-pool :shape-name
                                       "DescribeUserPool" :input
                                       describe-user-pool-request :output
                                       describe-user-pool-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-pool-tagging-exception))

(smithy/sdk/operation:define-operation describe-user-pool-client :shape-name
                                       "DescribeUserPoolClient" :input
                                       describe-user-pool-client-request
                                       :output
                                       describe-user-pool-client-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-user-pool-domain :shape-name
                                       "DescribeUserPoolDomain" :input
                                       describe-user-pool-domain-request
                                       :output
                                       describe-user-pool-domain-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation forget-device :shape-name "ForgetDevice"
                                       :input forget-device-request :output
                                       common-lisp:null :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation forgot-password :shape-name
                                       "ForgotPassword" :input
                                       forgot-password-request :output
                                       forgot-password-response :errors
                                       (code-delivery-failure-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation get-csvheader :shape-name "GetCSVHeader"
                                       :input get-csvheader-request :output
                                       get-csvheader-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-device :shape-name "GetDevice"
                                       :input get-device-request :output
                                       get-device-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation get-group :shape-name "GetGroup" :input
                                       get-group-request :output
                                       get-group-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-identity-provider-by-identifier
                                       :shape-name
                                       "GetIdentityProviderByIdentifier" :input
                                       get-identity-provider-by-identifier-request
                                       :output
                                       get-identity-provider-by-identifier-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-log-delivery-configuration
                                       :shape-name
                                       "GetLogDeliveryConfiguration" :input
                                       get-log-delivery-configuration-request
                                       :output
                                       get-log-delivery-configuration-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-signing-certificate :shape-name
                                       "GetSigningCertificate" :input
                                       get-signing-certificate-request :output
                                       get-signing-certificate-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-tokens-from-refresh-token
                                       :shape-name "GetTokensFromRefreshToken"
                                       :input
                                       get-tokens-from-refresh-token-request
                                       :output
                                       get-tokens-from-refresh-token-response
                                       :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        refresh-token-reuse-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation get-uicustomization :shape-name
                                       "GetUICustomization" :input
                                       get-uicustomization-request :output
                                       get-uicustomization-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-user :shape-name "GetUser" :input
                                       get-user-request :output
                                       get-user-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation get-user-attribute-verification-code
                                       :shape-name
                                       "GetUserAttributeVerificationCode"
                                       :input
                                       get-user-attribute-verification-code-request
                                       :output
                                       get-user-attribute-verification-code-response
                                       :errors
                                       (code-delivery-failure-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation get-user-auth-factors :shape-name
                                       "GetUserAuthFactors" :input
                                       get-user-auth-factors-request :output
                                       get-user-auth-factors-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation get-user-pool-mfa-config :shape-name
                                       "GetUserPoolMfaConfig" :input
                                       get-user-pool-mfa-config-request :output
                                       get-user-pool-mfa-config-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation global-sign-out :shape-name
                                       "GlobalSignOut" :input
                                       global-sign-out-request :output
                                       global-sign-out-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception))

(smithy/sdk/operation:define-operation initiate-auth :shape-name "InitiateAuth"
                                       :input initiate-auth-request :output
                                       initiate-auth-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        unsupported-operation-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation list-devices :shape-name "ListDevices"
                                       :input list-devices-request :output
                                       list-devices-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation list-groups :shape-name "ListGroups"
                                       :input list-groups-request :output
                                       list-groups-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-identity-providers :shape-name
                                       "ListIdentityProviders" :input
                                       list-identity-providers-request :output
                                       list-identity-providers-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-resource-servers :shape-name
                                       "ListResourceServers" :input
                                       list-resource-servers-request :output
                                       list-resource-servers-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-user-import-jobs :shape-name
                                       "ListUserImportJobs" :input
                                       list-user-import-jobs-request :output
                                       list-user-import-jobs-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-user-pool-clients :shape-name
                                       "ListUserPoolClients" :input
                                       list-user-pool-clients-request :output
                                       list-user-pool-clients-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-user-pools :shape-name
                                       "ListUserPools" :input
                                       list-user-pools-request :output
                                       list-user-pools-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-users-in-group :shape-name
                                       "ListUsersInGroup" :input
                                       list-users-in-group-request :output
                                       list-users-in-group-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-web-authn-credentials :shape-name
                                       "ListWebAuthnCredentials" :input
                                       list-web-authn-credentials-request
                                       :output
                                       list-web-authn-credentials-response
                                       :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation resend-confirmation-code :shape-name
                                       "ResendConfirmationCode" :input
                                       resend-confirmation-code-request :output
                                       resend-confirmation-code-response
                                       :errors
                                       (code-delivery-failure-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation respond-to-auth-challenge :shape-name
                                       "RespondToAuthChallenge" :input
                                       respond-to-auth-challenge-request
                                       :output
                                       respond-to-auth-challenge-response
                                       :errors
                                       (alias-exists-exception
                                        code-mismatch-exception
                                        expired-code-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        invalid-user-pool-configuration-exception
                                        mfamethod-not-found-exception
                                        not-authorized-exception
                                        password-history-policy-violation-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        software-token-mfanot-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation revoke-token :shape-name "RevokeToken"
                                       :input revoke-token-request :output
                                       revoke-token-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        too-many-requests-exception
                                        unauthorized-exception
                                        unsupported-operation-exception
                                        unsupported-token-type-exception))

(smithy/sdk/operation:define-operation set-log-delivery-configuration
                                       :shape-name
                                       "SetLogDeliveryConfiguration" :input
                                       set-log-delivery-configuration-request
                                       :output
                                       set-log-delivery-configuration-response
                                       :errors
                                       (feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation set-risk-configuration :shape-name
                                       "SetRiskConfiguration" :input
                                       set-risk-configuration-request :output
                                       set-risk-configuration-response :errors
                                       (code-delivery-failure-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-pool-add-on-not-enabled-exception))

(smithy/sdk/operation:define-operation set-uicustomization :shape-name
                                       "SetUICustomization" :input
                                       set-uicustomization-request :output
                                       set-uicustomization-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation set-user-mfapreference :shape-name
                                       "SetUserMFAPreference" :input
                                       set-user-mfapreference-request :output
                                       set-user-mfapreference-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation set-user-pool-mfa-config :shape-name
                                       "SetUserPoolMfaConfig" :input
                                       set-user-pool-mfa-config-request :output
                                       set-user-pool-mfa-config-response
                                       :errors
                                       (concurrent-modification-exception
                                        feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation set-user-settings :shape-name
                                       "SetUserSettings" :input
                                       set-user-settings-request :output
                                       set-user-settings-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation sign-up :shape-name "SignUp" :input
                                       sign-up-request :output sign-up-response
                                       :errors
                                       (code-delivery-failure-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-password-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        username-exists-exception))

(smithy/sdk/operation:define-operation start-user-import-job :shape-name
                                       "StartUserImportJob" :input
                                       start-user-import-job-request :output
                                       start-user-import-job-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        precondition-not-met-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation start-web-authn-registration :shape-name
                                       "StartWebAuthnRegistration" :input
                                       start-web-authn-registration-request
                                       :output
                                       start-web-authn-registration-response
                                       :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        too-many-requests-exception
                                        web-authn-configuration-missing-exception
                                        web-authn-not-enabled-exception))

(smithy/sdk/operation:define-operation stop-user-import-job :shape-name
                                       "StopUserImportJob" :input
                                       stop-user-import-job-request :output
                                       stop-user-import-job-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        precondition-not-met-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-auth-event-feedback :shape-name
                                       "UpdateAuthEventFeedback" :input
                                       update-auth-event-feedback-request
                                       :output
                                       update-auth-event-feedback-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-found-exception
                                        user-pool-add-on-not-enabled-exception))

(smithy/sdk/operation:define-operation update-device-status :shape-name
                                       "UpdateDeviceStatus" :input
                                       update-device-status-request :output
                                       update-device-status-response :errors
                                       (forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation update-group :shape-name "UpdateGroup"
                                       :input update-group-request :output
                                       update-group-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-identity-provider :shape-name
                                       "UpdateIdentityProvider" :input
                                       update-identity-provider-request :output
                                       update-identity-provider-response
                                       :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unsupported-identity-provider-exception))

(smithy/sdk/operation:define-operation update-managed-login-branding
                                       :shape-name "UpdateManagedLoginBranding"
                                       :input
                                       update-managed-login-branding-request
                                       :output
                                       update-managed-login-branding-response
                                       :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-resource-server :shape-name
                                       "UpdateResourceServer" :input
                                       update-resource-server-request :output
                                       update-resource-server-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-user-attributes :shape-name
                                       "UpdateUserAttributes" :input
                                       update-user-attributes-request :output
                                       update-user-attributes-response :errors
                                       (alias-exists-exception
                                        code-delivery-failure-exception
                                        code-mismatch-exception
                                        expired-code-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-lambda-response-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unexpected-lambda-exception
                                        user-lambda-validation-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation update-user-pool :shape-name
                                       "UpdateUserPool" :input
                                       update-user-pool-request :output
                                       update-user-pool-response :errors
                                       (concurrent-modification-exception
                                        feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-email-role-access-policy-exception
                                        invalid-parameter-exception
                                        invalid-sms-role-access-policy-exception
                                        invalid-sms-role-trust-relationship-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        tier-change-not-allowed-exception
                                        too-many-requests-exception
                                        user-import-in-progress-exception
                                        user-pool-tagging-exception))

(smithy/sdk/operation:define-operation update-user-pool-client :shape-name
                                       "UpdateUserPoolClient" :input
                                       update-user-pool-client-request :output
                                       update-user-pool-client-response :errors
                                       (concurrent-modification-exception
                                        feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-oauth-flow-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        scope-does-not-exist-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-user-pool-domain :shape-name
                                       "UpdateUserPoolDomain" :input
                                       update-user-pool-domain-request :output
                                       update-user-pool-domain-response :errors
                                       (concurrent-modification-exception
                                        feature-unavailable-in-tier-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation verify-software-token :shape-name
                                       "VerifySoftwareToken" :input
                                       verify-software-token-request :output
                                       verify-software-token-response :errors
                                       (code-mismatch-exception
                                        enable-software-token-mfaexception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-user-pool-configuration-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        software-token-mfanot-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))

(smithy/sdk/operation:define-operation verify-user-attribute :shape-name
                                       "VerifyUserAttribute" :input
                                       verify-user-attribute-request :output
                                       verify-user-attribute-response :errors
                                       (alias-exists-exception
                                        code-mismatch-exception
                                        expired-code-exception
                                        forbidden-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        password-reset-required-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        user-not-confirmed-exception
                                        user-not-found-exception))
