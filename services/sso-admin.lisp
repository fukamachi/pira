(uiop/package:define-package #:pira/sso-admin (:use)
                             (:export #:access-control-attribute
                              #:access-control-attribute-key
                              #:access-control-attribute-list
                              #:access-control-attribute-value
                              #:access-control-attribute-value-source
                              #:access-control-attribute-value-source-list
                              #:access-denied-exception
                              #:access-denied-exception-message
                              #:account-assignment
                              #:account-assignment-for-principal
                              #:account-assignment-list
                              #:account-assignment-list-for-principal
                              #:account-assignment-operation-status
                              #:account-assignment-operation-status-list
                              #:account-assignment-operation-status-metadata
                              #:account-id #:account-list
                              #:actor-policy-document #:application
                              #:application-access-scope-resource
                              #:application-arn #:application-assignment
                              #:application-assignment-for-principal
                              #:application-assignment-list-for-principal
                              #:application-assignments-list
                              #:application-authentication-method-resource
                              #:application-grant-resource #:application-list
                              #:application-name-type #:application-provider
                              #:application-provider-arn
                              #:application-provider-list #:application-status
                              #:application-url #:application-visibility
                              #:assignment-required
                              #:attach-customer-managed-policy-reference-to-permission-set
                              #:attach-customer-managed-policy-reference-to-permission-set-request
                              #:attach-customer-managed-policy-reference-to-permission-set-response
                              #:attach-managed-policy-to-permission-set
                              #:attach-managed-policy-to-permission-set-request
                              #:attach-managed-policy-to-permission-set-response
                              #:attached-managed-policy
                              #:attached-managed-policy-list
                              #:authentication-method
                              #:authentication-method-item
                              #:authentication-method-type
                              #:authentication-methods
                              #:authorization-code-grant
                              #:authorized-token-issuer
                              #:authorized-token-issuers #:claim-attribute-path
                              #:client-token #:conflict-exception
                              #:conflict-exception-message
                              #:create-account-assignment
                              #:create-account-assignment-request
                              #:create-account-assignment-response
                              #:create-application
                              #:create-application-assignment
                              #:create-application-assignment-request
                              #:create-application-assignment-response
                              #:create-application-request
                              #:create-application-response #:create-instance
                              #:create-instance-access-control-attribute-configuration
                              #:create-instance-access-control-attribute-configuration-request
                              #:create-instance-access-control-attribute-configuration-response
                              #:create-instance-request
                              #:create-instance-response
                              #:create-permission-set
                              #:create-permission-set-request
                              #:create-permission-set-response
                              #:create-trusted-token-issuer
                              #:create-trusted-token-issuer-request
                              #:create-trusted-token-issuer-response
                              #:customer-managed-policy-reference
                              #:customer-managed-policy-reference-list #:date
                              #:delete-account-assignment
                              #:delete-account-assignment-request
                              #:delete-account-assignment-response
                              #:delete-application
                              #:delete-application-access-scope
                              #:delete-application-access-scope-request
                              #:delete-application-assignment
                              #:delete-application-assignment-request
                              #:delete-application-assignment-response
                              #:delete-application-authentication-method
                              #:delete-application-authentication-method-request
                              #:delete-application-grant
                              #:delete-application-grant-request
                              #:delete-application-request
                              #:delete-application-response
                              #:delete-inline-policy-from-permission-set
                              #:delete-inline-policy-from-permission-set-request
                              #:delete-inline-policy-from-permission-set-response
                              #:delete-instance
                              #:delete-instance-access-control-attribute-configuration
                              #:delete-instance-access-control-attribute-configuration-request
                              #:delete-instance-access-control-attribute-configuration-response
                              #:delete-instance-request
                              #:delete-instance-response
                              #:delete-permission-set
                              #:delete-permission-set-request
                              #:delete-permission-set-response
                              #:delete-permissions-boundary-from-permission-set
                              #:delete-permissions-boundary-from-permission-set-request
                              #:delete-permissions-boundary-from-permission-set-response
                              #:delete-trusted-token-issuer
                              #:delete-trusted-token-issuer-request
                              #:delete-trusted-token-issuer-response
                              #:describe-account-assignment-creation-status
                              #:describe-account-assignment-creation-status-request
                              #:describe-account-assignment-creation-status-response
                              #:describe-account-assignment-deletion-status
                              #:describe-account-assignment-deletion-status-request
                              #:describe-account-assignment-deletion-status-response
                              #:describe-application
                              #:describe-application-assignment
                              #:describe-application-assignment-request
                              #:describe-application-assignment-response
                              #:describe-application-provider
                              #:describe-application-provider-request
                              #:describe-application-provider-response
                              #:describe-application-request
                              #:describe-application-response
                              #:describe-instance
                              #:describe-instance-access-control-attribute-configuration
                              #:describe-instance-access-control-attribute-configuration-request
                              #:describe-instance-access-control-attribute-configuration-response
                              #:describe-instance-request
                              #:describe-instance-response
                              #:describe-permission-set
                              #:describe-permission-set-provisioning-status
                              #:describe-permission-set-provisioning-status-request
                              #:describe-permission-set-provisioning-status-response
                              #:describe-permission-set-request
                              #:describe-permission-set-response
                              #:describe-trusted-token-issuer
                              #:describe-trusted-token-issuer-request
                              #:describe-trusted-token-issuer-response
                              #:description
                              #:detach-customer-managed-policy-reference-from-permission-set
                              #:detach-customer-managed-policy-reference-from-permission-set-request
                              #:detach-customer-managed-policy-reference-from-permission-set-response
                              #:detach-managed-policy-from-permission-set
                              #:detach-managed-policy-from-permission-set-request
                              #:detach-managed-policy-from-permission-set-response
                              #:display-data #:duration #:federation-protocol
                              #:get-application-access-scope
                              #:get-application-access-scope-request
                              #:get-application-access-scope-response
                              #:get-application-assignment-configuration
                              #:get-application-assignment-configuration-request
                              #:get-application-assignment-configuration-response
                              #:get-application-authentication-method
                              #:get-application-authentication-method-request
                              #:get-application-authentication-method-response
                              #:get-application-grant
                              #:get-application-grant-request
                              #:get-application-grant-response
                              #:get-inline-policy-for-permission-set
                              #:get-inline-policy-for-permission-set-request
                              #:get-inline-policy-for-permission-set-response
                              #:get-permissions-boundary-for-permission-set
                              #:get-permissions-boundary-for-permission-set-request
                              #:get-permissions-boundary-for-permission-set-response
                              #:grant #:grant-item #:grant-type #:grants
                              #:iam-authentication-method #:icon-url #:id
                              #:instance-access-control-attribute-configuration
                              #:instance-access-control-attribute-configuration-status
                              #:instance-access-control-attribute-configuration-status-reason
                              #:instance-arn #:instance-list
                              #:instance-metadata #:instance-status
                              #:internal-failure-message
                              #:internal-server-exception #:jmespath
                              #:jwks-retrieval-option #:jwt-bearer-grant
                              #:list-account-assignment-creation-status
                              #:list-account-assignment-creation-status-request
                              #:list-account-assignment-creation-status-response
                              #:list-account-assignment-deletion-status
                              #:list-account-assignment-deletion-status-request
                              #:list-account-assignment-deletion-status-response
                              #:list-account-assignments
                              #:list-account-assignments-filter
                              #:list-account-assignments-for-principal
                              #:list-account-assignments-for-principal-request
                              #:list-account-assignments-for-principal-response
                              #:list-account-assignments-request
                              #:list-account-assignments-response
                              #:list-accounts-for-provisioned-permission-set
                              #:list-accounts-for-provisioned-permission-set-request
                              #:list-accounts-for-provisioned-permission-set-response
                              #:list-application-access-scopes
                              #:list-application-access-scopes-request
                              #:list-application-access-scopes-response
                              #:list-application-assignments
                              #:list-application-assignments-filter
                              #:list-application-assignments-for-principal
                              #:list-application-assignments-for-principal-request
                              #:list-application-assignments-for-principal-response
                              #:list-application-assignments-request
                              #:list-application-assignments-response
                              #:list-application-authentication-methods
                              #:list-application-authentication-methods-request
                              #:list-application-authentication-methods-response
                              #:list-application-grants
                              #:list-application-grants-request
                              #:list-application-grants-response
                              #:list-application-providers
                              #:list-application-providers-request
                              #:list-application-providers-response
                              #:list-applications #:list-applications-filter
                              #:list-applications-request
                              #:list-applications-response
                              #:list-customer-managed-policy-references-in-permission-set
                              #:list-customer-managed-policy-references-in-permission-set-request
                              #:list-customer-managed-policy-references-in-permission-set-response
                              #:list-instances #:list-instances-request
                              #:list-instances-response
                              #:list-managed-policies-in-permission-set
                              #:list-managed-policies-in-permission-set-request
                              #:list-managed-policies-in-permission-set-response
                              #:list-permission-set-provisioning-status
                              #:list-permission-set-provisioning-status-request
                              #:list-permission-set-provisioning-status-response
                              #:list-permission-sets
                              #:list-permission-sets-provisioned-to-account
                              #:list-permission-sets-provisioned-to-account-request
                              #:list-permission-sets-provisioned-to-account-response
                              #:list-permission-sets-request
                              #:list-permission-sets-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-trusted-token-issuers
                              #:list-trusted-token-issuers-request
                              #:list-trusted-token-issuers-response
                              #:managed-policy-arn #:managed-policy-name
                              #:managed-policy-path #:max-results #:name
                              #:name-type #:oidc-jwt-configuration
                              #:oidc-jwt-update-configuration
                              #:operation-status-filter #:permission-set
                              #:permission-set-arn #:permission-set-description
                              #:permission-set-list #:permission-set-name
                              #:permission-set-policy-document
                              #:permission-set-provisioning-status
                              #:permission-set-provisioning-status-list
                              #:permission-set-provisioning-status-metadata
                              #:permissions-boundary #:portal-options
                              #:principal-id #:principal-type
                              #:provision-permission-set
                              #:provision-permission-set-request
                              #:provision-permission-set-response
                              #:provision-target-type #:provisioning-status
                              #:put-application-access-scope
                              #:put-application-access-scope-request
                              #:put-application-assignment-configuration
                              #:put-application-assignment-configuration-request
                              #:put-application-assignment-configuration-response
                              #:put-application-authentication-method
                              #:put-application-authentication-method-request
                              #:put-application-grant
                              #:put-application-grant-request
                              #:put-inline-policy-to-permission-set
                              #:put-inline-policy-to-permission-set-request
                              #:put-inline-policy-to-permission-set-response
                              #:put-permissions-boundary-to-permission-set
                              #:put-permissions-boundary-to-permission-set-request
                              #:put-permissions-boundary-to-permission-set-response
                              #:reason #:redirect-uris #:refresh-token-grant
                              #:relay-state #:resource-not-found-exception
                              #:resource-not-found-message
                              #:resource-server-config #:resource-server-scope
                              #:resource-server-scope-details
                              #:resource-server-scopes #:swbexternal-service
                              #:scope #:scope-details #:scope-target
                              #:scope-targets #:scopes
                              #:service-quota-exceeded-exception
                              #:service-quota-exceeded-message
                              #:sign-in-options #:sign-in-origin
                              #:status-values #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:taggable-resource-arn #:target-id #:target-type
                              #:throttling-exception
                              #:throttling-exception-message #:token
                              #:token-exchange-grant #:token-issuer-audience
                              #:token-issuer-audiences
                              #:trusted-token-issuer-arn
                              #:trusted-token-issuer-configuration
                              #:trusted-token-issuer-list
                              #:trusted-token-issuer-metadata
                              #:trusted-token-issuer-name
                              #:trusted-token-issuer-type
                              #:trusted-token-issuer-update-configuration
                              #:trusted-token-issuer-url #:uri #:uuid
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-application
                              #:update-application-portal-options
                              #:update-application-request
                              #:update-application-response #:update-instance
                              #:update-instance-access-control-attribute-configuration
                              #:update-instance-access-control-attribute-configuration-request
                              #:update-instance-access-control-attribute-configuration-response
                              #:update-instance-request
                              #:update-instance-response
                              #:update-permission-set
                              #:update-permission-set-request
                              #:update-permission-set-response
                              #:update-trusted-token-issuer
                              #:update-trusted-token-issuer-request
                              #:update-trusted-token-issuer-response
                              #:validation-exception
                              #:validation-exception-message))
(common-lisp:in-package #:pira/sso-admin)

(smithy/sdk/service:define-service swbexternal-service :shape-name
                                   "SWBExternalService" :version "2020-07-20"
                                   :title "AWS Single Sign-On Admin" :traits
                                   '(("aws.api#service" ("sdkId" . "SSO Admin")
                                      ("arnNamespace" . "sso")
                                      ("cloudFormationName" . "SSO")
                                      ("cloudTrailEventSource"
                                       . "sso.amazonaws.com")
                                      ("endpointPrefix" . "sso"))
                                     ("aws.auth#sigv4" ("name" . "sso"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure access-control-attribute common-lisp:nil
                                    ((key :target-type
                                      access-control-attribute-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type
                                      access-control-attribute-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "AccessControlAttribute"))

(smithy/sdk/shapes:define-type access-control-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-control-attribute-list :member
                               access-control-attribute)

(smithy/sdk/shapes:define-structure access-control-attribute-value
                                    common-lisp:nil
                                    ((source :target-type
                                      access-control-attribute-value-source-list
                                      :required common-lisp:t :member-name
                                      "Source"))
                                    (:shape-name "AccessControlAttributeValue"))

(smithy/sdk/shapes:define-type access-control-attribute-value-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-control-attribute-value-source-list
                               :member access-control-attribute-value-source)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  access-denied-exception-message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-denied-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-assignment common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (permission-set-arn :target-type
                                      permission-set-arn :member-name
                                      "PermissionSetArn")
                                     (principal-type :target-type
                                      principal-type :member-name
                                      "PrincipalType")
                                     (principal-id :target-type principal-id
                                      :member-name "PrincipalId"))
                                    (:shape-name "AccountAssignment"))

(smithy/sdk/shapes:define-structure account-assignment-for-principal
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (permission-set-arn :target-type
                                      permission-set-arn :member-name
                                      "PermissionSetArn")
                                     (principal-id :target-type principal-id
                                      :member-name "PrincipalId")
                                     (principal-type :target-type
                                      principal-type :member-name
                                      "PrincipalType"))
                                    (:shape-name
                                     "AccountAssignmentForPrincipal"))

(smithy/sdk/shapes:define-list account-assignment-list :member
                               account-assignment)

(smithy/sdk/shapes:define-list account-assignment-list-for-principal :member
                               account-assignment-for-principal)

(smithy/sdk/shapes:define-structure account-assignment-operation-status
                                    common-lisp:nil
                                    ((status :target-type status-values
                                      :member-name "Status")
                                     (request-id :target-type uuid :member-name
                                      "RequestId")
                                     (failure-reason :target-type reason
                                      :member-name "FailureReason")
                                     (target-id :target-type target-id
                                      :member-name "TargetId")
                                     (target-type :target-type target-type
                                      :member-name "TargetType")
                                     (permission-set-arn :target-type
                                      permission-set-arn :member-name
                                      "PermissionSetArn")
                                     (principal-type :target-type
                                      principal-type :member-name
                                      "PrincipalType")
                                     (principal-id :target-type principal-id
                                      :member-name "PrincipalId")
                                     (created-date :target-type date
                                      :member-name "CreatedDate"))
                                    (:shape-name
                                     "AccountAssignmentOperationStatus"))

(smithy/sdk/shapes:define-list account-assignment-operation-status-list :member
                               account-assignment-operation-status-metadata)

(smithy/sdk/shapes:define-structure
 account-assignment-operation-status-metadata common-lisp:nil
 ((status :target-type status-values :member-name "Status")
  (request-id :target-type uuid :member-name "RequestId")
  (created-date :target-type date :member-name "CreatedDate"))
 (:shape-name "AccountAssignmentOperationStatusMetadata"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-list :member account-id)

(smithy/sdk/shapes:define-type actor-policy-document
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((application-arn :target-type
                                      application-arn :member-name
                                      "ApplicationArn")
                                     (application-provider-arn :target-type
                                      application-provider-arn :member-name
                                      "ApplicationProviderArn")
                                     (name :target-type name-type :member-name
                                      "Name")
                                     (application-account :target-type
                                      account-id :member-name
                                      "ApplicationAccount")
                                     (instance-arn :target-type instance-arn
                                      :member-name "InstanceArn")
                                     (status :target-type application-status
                                      :member-name "Status")
                                     (portal-options :target-type
                                      portal-options :member-name
                                      "PortalOptions")
                                     (description :target-type description
                                      :member-name "Description")
                                     (created-date :target-type date
                                      :member-name "CreatedDate"))
                                    (:shape-name "Application"))

common-lisp:nil

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-assignment common-lisp:nil
                                    ((application-arn :target-type
                                      application-arn :required common-lisp:t
                                      :member-name "ApplicationArn")
                                     (principal-id :target-type principal-id
                                      :required common-lisp:t :member-name
                                      "PrincipalId")
                                     (principal-type :target-type
                                      principal-type :required common-lisp:t
                                      :member-name "PrincipalType"))
                                    (:shape-name "ApplicationAssignment"))

(smithy/sdk/shapes:define-structure application-assignment-for-principal
                                    common-lisp:nil
                                    ((application-arn :target-type
                                      application-arn :member-name
                                      "ApplicationArn")
                                     (principal-id :target-type principal-id
                                      :member-name "PrincipalId")
                                     (principal-type :target-type
                                      principal-type :member-name
                                      "PrincipalType"))
                                    (:shape-name
                                     "ApplicationAssignmentForPrincipal"))

(smithy/sdk/shapes:define-list application-assignment-list-for-principal
                               :member application-assignment-for-principal)

(smithy/sdk/shapes:define-list application-assignments-list :member
                               application-assignment)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-list application-list :member application)

(smithy/sdk/shapes:define-type application-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-provider common-lisp:nil
                                    ((application-provider-arn :target-type
                                      application-provider-arn :required
                                      common-lisp:t :member-name
                                      "ApplicationProviderArn")
                                     (federation-protocol :target-type
                                      federation-protocol :member-name
                                      "FederationProtocol")
                                     (display-data :target-type display-data
                                      :member-name "DisplayData")
                                     (resource-server-config :target-type
                                      resource-server-config :member-name
                                      "ResourceServerConfig"))
                                    (:shape-name "ApplicationProvider"))

(smithy/sdk/shapes:define-type application-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-provider-list :member
                               application-provider)

(smithy/sdk/shapes:define-enum application-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type application-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum application-visibility
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type assignment-required
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input
 attach-customer-managed-policy-reference-to-permission-set-request
 common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn")
  (customer-managed-policy-reference :target-type
   customer-managed-policy-reference :required common-lisp:t :member-name
   "CustomerManagedPolicyReference"))
 (:shape-name "AttachCustomerManagedPolicyReferenceToPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 attach-customer-managed-policy-reference-to-permission-set-response
 common-lisp:nil common-lisp:nil
 (:shape-name "AttachCustomerManagedPolicyReferenceToPermissionSetResponse"))

(smithy/sdk/shapes:define-input attach-managed-policy-to-permission-set-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (managed-policy-arn :target-type
                                  managed-policy-arn :required common-lisp:t
                                  :member-name "ManagedPolicyArn"))
                                (:shape-name
                                 "AttachManagedPolicyToPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 attach-managed-policy-to-permission-set-response common-lisp:nil
 common-lisp:nil (:shape-name "AttachManagedPolicyToPermissionSetResponse"))

(smithy/sdk/shapes:define-structure attached-managed-policy common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (arn :target-type managed-policy-arn
                                      :member-name "Arn"))
                                    (:shape-name "AttachedManagedPolicy"))

(smithy/sdk/shapes:define-list attached-managed-policy-list :member
                               attached-managed-policy)

(smithy/sdk/shapes:define-union authentication-method common-lisp:nil
                                ((iam :target-type iam-authentication-method
                                  :member-name "Iam"))
                                (:shape-name "AuthenticationMethod"))

(smithy/sdk/shapes:define-structure authentication-method-item common-lisp:nil
                                    ((authentication-method-type :target-type
                                      authentication-method-type :member-name
                                      "AuthenticationMethodType")
                                     (authentication-method :target-type
                                      authentication-method :member-name
                                      "AuthenticationMethod"))
                                    (:shape-name "AuthenticationMethodItem"))

(smithy/sdk/shapes:define-enum authentication-method-type
    common-lisp:nil
  (:iam "IAM"))

(smithy/sdk/shapes:define-list authentication-methods :member
                               authentication-method-item)

(smithy/sdk/shapes:define-structure authorization-code-grant common-lisp:nil
                                    ((redirect-uris :target-type redirect-uris
                                      :member-name "RedirectUris"))
                                    (:shape-name "AuthorizationCodeGrant"))

(smithy/sdk/shapes:define-structure authorized-token-issuer common-lisp:nil
                                    ((trusted-token-issuer-arn :target-type
                                      trusted-token-issuer-arn :member-name
                                      "TrustedTokenIssuerArn")
                                     (authorized-audiences :target-type
                                      token-issuer-audiences :member-name
                                      "AuthorizedAudiences"))
                                    (:shape-name "AuthorizedTokenIssuer"))

(smithy/sdk/shapes:define-list authorized-token-issuers :member
                               authorized-token-issuer)

(smithy/sdk/shapes:define-type claim-attribute-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  conflict-exception-message :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type conflict-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-account-assignment-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (target-id :target-type target-id :required
                                  common-lisp:t :member-name "TargetId")
                                 (target-type :target-type target-type
                                  :required common-lisp:t :member-name
                                  "TargetType")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType")
                                 (principal-id :target-type principal-id
                                  :required common-lisp:t :member-name
                                  "PrincipalId"))
                                (:shape-name "CreateAccountAssignmentRequest"))

(smithy/sdk/shapes:define-output create-account-assignment-response
                                 common-lisp:nil
                                 ((account-assignment-creation-status
                                   :target-type
                                   account-assignment-operation-status
                                   :member-name
                                   "AccountAssignmentCreationStatus"))
                                 (:shape-name
                                  "CreateAccountAssignmentResponse"))

(smithy/sdk/shapes:define-input create-application-assignment-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (principal-id :target-type principal-id
                                  :required common-lisp:t :member-name
                                  "PrincipalId")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType"))
                                (:shape-name
                                 "CreateApplicationAssignmentRequest"))

(smithy/sdk/shapes:define-output create-application-assignment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateApplicationAssignmentResponse"))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (application-provider-arn :target-type
                                  application-provider-arn :required
                                  common-lisp:t :member-name
                                  "ApplicationProviderArn")
                                 (name :target-type application-name-type
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (portal-options :target-type portal-options
                                  :member-name "PortalOptions")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (status :target-type application-status
                                  :member-name "Status")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "ApplicationArn"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input
 create-instance-access-control-attribute-configuration-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (instance-access-control-attribute-configuration :target-type
   instance-access-control-attribute-configuration :required common-lisp:t
   :member-name "InstanceAccessControlAttributeConfiguration"))
 (:shape-name "CreateInstanceAccessControlAttributeConfigurationRequest"))

(smithy/sdk/shapes:define-output
 create-instance-access-control-attribute-configuration-response
 common-lisp:nil common-lisp:nil
 (:shape-name "CreateInstanceAccessControlAttributeConfigurationResponse"))

(smithy/sdk/shapes:define-input create-instance-request common-lisp:nil
                                ((name :target-type name-type :member-name
                                  "Name")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateInstanceRequest"))

(smithy/sdk/shapes:define-output create-instance-response common-lisp:nil
                                 ((instance-arn :target-type instance-arn
                                   :member-name "InstanceArn"))
                                 (:shape-name "CreateInstanceResponse"))

(smithy/sdk/shapes:define-input create-permission-set-request common-lisp:nil
                                ((name :target-type permission-set-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type
                                  permission-set-description :member-name
                                  "Description")
                                 (instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (session-duration :target-type duration
                                  :member-name "SessionDuration")
                                 (relay-state :target-type relay-state
                                  :member-name "RelayState")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreatePermissionSetRequest"))

(smithy/sdk/shapes:define-output create-permission-set-response common-lisp:nil
                                 ((permission-set :target-type permission-set
                                   :member-name "PermissionSet"))
                                 (:shape-name "CreatePermissionSetResponse"))

(smithy/sdk/shapes:define-input create-trusted-token-issuer-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (name :target-type trusted-token-issuer-name
                                  :required common-lisp:t :member-name "Name")
                                 (trusted-token-issuer-type :target-type
                                  trusted-token-issuer-type :required
                                  common-lisp:t :member-name
                                  "TrustedTokenIssuerType")
                                 (trusted-token-issuer-configuration
                                  :target-type
                                  trusted-token-issuer-configuration :required
                                  common-lisp:t :member-name
                                  "TrustedTokenIssuerConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateTrustedTokenIssuerRequest"))

(smithy/sdk/shapes:define-output create-trusted-token-issuer-response
                                 common-lisp:nil
                                 ((trusted-token-issuer-arn :target-type
                                   trusted-token-issuer-arn :member-name
                                   "TrustedTokenIssuerArn"))
                                 (:shape-name
                                  "CreateTrustedTokenIssuerResponse"))

(smithy/sdk/shapes:define-structure customer-managed-policy-reference
                                    common-lisp:nil
                                    ((name :target-type managed-policy-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (path :target-type managed-policy-path
                                      :member-name "Path"))
                                    (:shape-name
                                     "CustomerManagedPolicyReference"))

(smithy/sdk/shapes:define-list customer-managed-policy-reference-list :member
                               customer-managed-policy-reference)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-account-assignment-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (target-id :target-type target-id :required
                                  common-lisp:t :member-name "TargetId")
                                 (target-type :target-type target-type
                                  :required common-lisp:t :member-name
                                  "TargetType")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType")
                                 (principal-id :target-type principal-id
                                  :required common-lisp:t :member-name
                                  "PrincipalId"))
                                (:shape-name "DeleteAccountAssignmentRequest"))

(smithy/sdk/shapes:define-output delete-account-assignment-response
                                 common-lisp:nil
                                 ((account-assignment-deletion-status
                                   :target-type
                                   account-assignment-operation-status
                                   :member-name
                                   "AccountAssignmentDeletionStatus"))
                                 (:shape-name
                                  "DeleteAccountAssignmentResponse"))

(smithy/sdk/shapes:define-input delete-application-access-scope-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope"))
                                (:shape-name
                                 "DeleteApplicationAccessScopeRequest"))

(smithy/sdk/shapes:define-input delete-application-assignment-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (principal-id :target-type principal-id
                                  :required common-lisp:t :member-name
                                  "PrincipalId")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType"))
                                (:shape-name
                                 "DeleteApplicationAssignmentRequest"))

(smithy/sdk/shapes:define-output delete-application-assignment-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteApplicationAssignmentResponse"))

(smithy/sdk/shapes:define-input
 delete-application-authentication-method-request common-lisp:nil
 ((application-arn :target-type application-arn :required common-lisp:t
   :member-name "ApplicationArn")
  (authentication-method-type :target-type authentication-method-type :required
   common-lisp:t :member-name "AuthenticationMethodType"))
 (:shape-name "DeleteApplicationAuthenticationMethodRequest"))

(smithy/sdk/shapes:define-input delete-application-grant-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (grant-type :target-type grant-type :required
                                  common-lisp:t :member-name "GrantType"))
                                (:shape-name "DeleteApplicationGrantRequest"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn"))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input
 delete-inline-policy-from-permission-set-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn"))
 (:shape-name "DeleteInlinePolicyFromPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 delete-inline-policy-from-permission-set-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteInlinePolicyFromPermissionSetResponse"))

(smithy/sdk/shapes:define-input
 delete-instance-access-control-attribute-configuration-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn"))
 (:shape-name "DeleteInstanceAccessControlAttributeConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-instance-access-control-attribute-configuration-response
 common-lisp:nil common-lisp:nil
 (:shape-name "DeleteInstanceAccessControlAttributeConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-instance-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn"))
                                (:shape-name "DeleteInstanceRequest"))

(smithy/sdk/shapes:define-output delete-instance-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteInstanceResponse"))

(smithy/sdk/shapes:define-input delete-permission-set-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn"))
                                (:shape-name "DeletePermissionSetRequest"))

(smithy/sdk/shapes:define-output delete-permission-set-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePermissionSetResponse"))

(smithy/sdk/shapes:define-input
 delete-permissions-boundary-from-permission-set-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn"))
 (:shape-name "DeletePermissionsBoundaryFromPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 delete-permissions-boundary-from-permission-set-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeletePermissionsBoundaryFromPermissionSetResponse"))

(smithy/sdk/shapes:define-input delete-trusted-token-issuer-request
                                common-lisp:nil
                                ((trusted-token-issuer-arn :target-type
                                  trusted-token-issuer-arn :required
                                  common-lisp:t :member-name
                                  "TrustedTokenIssuerArn"))
                                (:shape-name "DeleteTrustedTokenIssuerRequest"))

(smithy/sdk/shapes:define-output delete-trusted-token-issuer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTrustedTokenIssuerResponse"))

(smithy/sdk/shapes:define-input
 describe-account-assignment-creation-status-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (account-assignment-creation-request-id :target-type uuid :required
   common-lisp:t :member-name "AccountAssignmentCreationRequestId"))
 (:shape-name "DescribeAccountAssignmentCreationStatusRequest"))

(smithy/sdk/shapes:define-output
 describe-account-assignment-creation-status-response common-lisp:nil
 ((account-assignment-creation-status :target-type
   account-assignment-operation-status :member-name
   "AccountAssignmentCreationStatus"))
 (:shape-name "DescribeAccountAssignmentCreationStatusResponse"))

(smithy/sdk/shapes:define-input
 describe-account-assignment-deletion-status-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (account-assignment-deletion-request-id :target-type uuid :required
   common-lisp:t :member-name "AccountAssignmentDeletionRequestId"))
 (:shape-name "DescribeAccountAssignmentDeletionStatusRequest"))

(smithy/sdk/shapes:define-output
 describe-account-assignment-deletion-status-response common-lisp:nil
 ((account-assignment-deletion-status :target-type
   account-assignment-operation-status :member-name
   "AccountAssignmentDeletionStatus"))
 (:shape-name "DescribeAccountAssignmentDeletionStatusResponse"))

(smithy/sdk/shapes:define-input describe-application-assignment-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (principal-id :target-type principal-id
                                  :required common-lisp:t :member-name
                                  "PrincipalId")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType"))
                                (:shape-name
                                 "DescribeApplicationAssignmentRequest"))

(smithy/sdk/shapes:define-output describe-application-assignment-response
                                 common-lisp:nil
                                 ((principal-type :target-type principal-type
                                   :member-name "PrincipalType")
                                  (principal-id :target-type principal-id
                                   :member-name "PrincipalId")
                                  (application-arn :target-type application-arn
                                   :member-name "ApplicationArn"))
                                 (:shape-name
                                  "DescribeApplicationAssignmentResponse"))

(smithy/sdk/shapes:define-input describe-application-provider-request
                                common-lisp:nil
                                ((application-provider-arn :target-type
                                  application-provider-arn :required
                                  common-lisp:t :member-name
                                  "ApplicationProviderArn"))
                                (:shape-name
                                 "DescribeApplicationProviderRequest"))

(smithy/sdk/shapes:define-output describe-application-provider-response
                                 common-lisp:nil
                                 ((application-provider-arn :target-type
                                   application-provider-arn :required
                                   common-lisp:t :member-name
                                   "ApplicationProviderArn")
                                  (federation-protocol :target-type
                                   federation-protocol :member-name
                                   "FederationProtocol")
                                  (display-data :target-type display-data
                                   :member-name "DisplayData")
                                  (resource-server-config :target-type
                                   resource-server-config :member-name
                                   "ResourceServerConfig"))
                                 (:shape-name
                                  "DescribeApplicationProviderResponse"))

(smithy/sdk/shapes:define-input describe-application-request common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn"))
                                (:shape-name "DescribeApplicationRequest"))

(smithy/sdk/shapes:define-output describe-application-response common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "ApplicationArn")
                                  (application-provider-arn :target-type
                                   application-provider-arn :member-name
                                   "ApplicationProviderArn")
                                  (name :target-type name-type :member-name
                                   "Name")
                                  (application-account :target-type account-id
                                   :member-name "ApplicationAccount")
                                  (instance-arn :target-type instance-arn
                                   :member-name "InstanceArn")
                                  (status :target-type application-status
                                   :member-name "Status")
                                  (portal-options :target-type portal-options
                                   :member-name "PortalOptions")
                                  (description :target-type description
                                   :member-name "Description")
                                  (created-date :target-type date :member-name
                                   "CreatedDate"))
                                 (:shape-name "DescribeApplicationResponse"))

(smithy/sdk/shapes:define-input
 describe-instance-access-control-attribute-configuration-request
 common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn"))
 (:shape-name "DescribeInstanceAccessControlAttributeConfigurationRequest"))

(smithy/sdk/shapes:define-output
 describe-instance-access-control-attribute-configuration-response
 common-lisp:nil
 ((status :target-type instance-access-control-attribute-configuration-status
   :member-name "Status")
  (status-reason :target-type
   instance-access-control-attribute-configuration-status-reason :member-name
   "StatusReason")
  (instance-access-control-attribute-configuration :target-type
   instance-access-control-attribute-configuration :member-name
   "InstanceAccessControlAttributeConfiguration"))
 (:shape-name "DescribeInstanceAccessControlAttributeConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-instance-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn"))
                                (:shape-name "DescribeInstanceRequest"))

(smithy/sdk/shapes:define-output describe-instance-response common-lisp:nil
                                 ((instance-arn :target-type instance-arn
                                   :member-name "InstanceArn")
                                  (identity-store-id :target-type id
                                   :member-name "IdentityStoreId")
                                  (owner-account-id :target-type account-id
                                   :member-name "OwnerAccountId")
                                  (name :target-type name-type :member-name
                                   "Name")
                                  (created-date :target-type date :member-name
                                   "CreatedDate")
                                  (status :target-type instance-status
                                   :member-name "Status"))
                                 (:shape-name "DescribeInstanceResponse"))

(smithy/sdk/shapes:define-input
 describe-permission-set-provisioning-status-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (provision-permission-set-request-id :target-type uuid :required
   common-lisp:t :member-name "ProvisionPermissionSetRequestId"))
 (:shape-name "DescribePermissionSetProvisioningStatusRequest"))

(smithy/sdk/shapes:define-output
 describe-permission-set-provisioning-status-response common-lisp:nil
 ((permission-set-provisioning-status :target-type
   permission-set-provisioning-status :member-name
   "PermissionSetProvisioningStatus"))
 (:shape-name "DescribePermissionSetProvisioningStatusResponse"))

(smithy/sdk/shapes:define-input describe-permission-set-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn"))
                                (:shape-name "DescribePermissionSetRequest"))

(smithy/sdk/shapes:define-output describe-permission-set-response
                                 common-lisp:nil
                                 ((permission-set :target-type permission-set
                                   :member-name "PermissionSet"))
                                 (:shape-name "DescribePermissionSetResponse"))

(smithy/sdk/shapes:define-input describe-trusted-token-issuer-request
                                common-lisp:nil
                                ((trusted-token-issuer-arn :target-type
                                  trusted-token-issuer-arn :required
                                  common-lisp:t :member-name
                                  "TrustedTokenIssuerArn"))
                                (:shape-name
                                 "DescribeTrustedTokenIssuerRequest"))

(smithy/sdk/shapes:define-output describe-trusted-token-issuer-response
                                 common-lisp:nil
                                 ((trusted-token-issuer-arn :target-type
                                   trusted-token-issuer-arn :member-name
                                   "TrustedTokenIssuerArn")
                                  (name :target-type trusted-token-issuer-name
                                   :member-name "Name")
                                  (trusted-token-issuer-type :target-type
                                   trusted-token-issuer-type :member-name
                                   "TrustedTokenIssuerType")
                                  (trusted-token-issuer-configuration
                                   :target-type
                                   trusted-token-issuer-configuration
                                   :member-name
                                   "TrustedTokenIssuerConfiguration"))
                                 (:shape-name
                                  "DescribeTrustedTokenIssuerResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 detach-customer-managed-policy-reference-from-permission-set-request
 common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn")
  (customer-managed-policy-reference :target-type
   customer-managed-policy-reference :required common-lisp:t :member-name
   "CustomerManagedPolicyReference"))
 (:shape-name "DetachCustomerManagedPolicyReferenceFromPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 detach-customer-managed-policy-reference-from-permission-set-response
 common-lisp:nil common-lisp:nil
 (:shape-name "DetachCustomerManagedPolicyReferenceFromPermissionSetResponse"))

(smithy/sdk/shapes:define-input
 detach-managed-policy-from-permission-set-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn")
  (managed-policy-arn :target-type managed-policy-arn :required common-lisp:t
   :member-name "ManagedPolicyArn"))
 (:shape-name "DetachManagedPolicyFromPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 detach-managed-policy-from-permission-set-response common-lisp:nil
 common-lisp:nil (:shape-name "DetachManagedPolicyFromPermissionSetResponse"))

(smithy/sdk/shapes:define-structure display-data common-lisp:nil
                                    ((display-name :target-type name
                                      :member-name "DisplayName")
                                     (icon-url :target-type icon-url
                                      :member-name "IconUrl")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "DisplayData"))

(smithy/sdk/shapes:define-type duration smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum federation-protocol
    common-lisp:nil
  (:saml "SAML")
  (:oauth "OAUTH"))

(smithy/sdk/shapes:define-input get-application-access-scope-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope"))
                                (:shape-name
                                 "GetApplicationAccessScopeRequest"))

(smithy/sdk/shapes:define-output get-application-access-scope-response
                                 common-lisp:nil
                                 ((scope :target-type scope :required
                                   common-lisp:t :member-name "Scope")
                                  (authorized-targets :target-type
                                   scope-targets :member-name
                                   "AuthorizedTargets"))
                                 (:shape-name
                                  "GetApplicationAccessScopeResponse"))

(smithy/sdk/shapes:define-input
 get-application-assignment-configuration-request common-lisp:nil
 ((application-arn :target-type application-arn :required common-lisp:t
   :member-name "ApplicationArn"))
 (:shape-name "GetApplicationAssignmentConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-application-assignment-configuration-response common-lisp:nil
 ((assignment-required :target-type assignment-required :required common-lisp:t
   :member-name "AssignmentRequired"))
 (:shape-name "GetApplicationAssignmentConfigurationResponse"))

(smithy/sdk/shapes:define-input get-application-authentication-method-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (authentication-method-type :target-type
                                  authentication-method-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationMethodType"))
                                (:shape-name
                                 "GetApplicationAuthenticationMethodRequest"))

(smithy/sdk/shapes:define-output get-application-authentication-method-response
                                 common-lisp:nil
                                 ((authentication-method :target-type
                                   authentication-method :member-name
                                   "AuthenticationMethod"))
                                 (:shape-name
                                  "GetApplicationAuthenticationMethodResponse"))

(smithy/sdk/shapes:define-input get-application-grant-request common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (grant-type :target-type grant-type :required
                                  common-lisp:t :member-name "GrantType"))
                                (:shape-name "GetApplicationGrantRequest"))

(smithy/sdk/shapes:define-output get-application-grant-response common-lisp:nil
                                 ((grant :target-type grant :required
                                   common-lisp:t :member-name "Grant"))
                                 (:shape-name "GetApplicationGrantResponse"))

(smithy/sdk/shapes:define-input get-inline-policy-for-permission-set-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn"))
                                (:shape-name
                                 "GetInlinePolicyForPermissionSetRequest"))

(smithy/sdk/shapes:define-output get-inline-policy-for-permission-set-response
                                 common-lisp:nil
                                 ((inline-policy :target-type
                                   permission-set-policy-document :member-name
                                   "InlinePolicy"))
                                 (:shape-name
                                  "GetInlinePolicyForPermissionSetResponse"))

(smithy/sdk/shapes:define-input
 get-permissions-boundary-for-permission-set-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn"))
 (:shape-name "GetPermissionsBoundaryForPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 get-permissions-boundary-for-permission-set-response common-lisp:nil
 ((permissions-boundary :target-type permissions-boundary :member-name
   "PermissionsBoundary"))
 (:shape-name "GetPermissionsBoundaryForPermissionSetResponse"))

(smithy/sdk/shapes:define-union grant common-lisp:nil
                                ((authorization-code :target-type
                                  authorization-code-grant :member-name
                                  "AuthorizationCode")
                                 (jwt-bearer :target-type jwt-bearer-grant
                                  :member-name "JwtBearer")
                                 (refresh-token :target-type
                                  refresh-token-grant :member-name
                                  "RefreshToken")
                                 (token-exchange :target-type
                                  token-exchange-grant :member-name
                                  "TokenExchange"))
                                (:shape-name "Grant"))

(smithy/sdk/shapes:define-structure grant-item common-lisp:nil
                                    ((grant-type :target-type grant-type
                                      :required common-lisp:t :member-name
                                      "GrantType")
                                     (grant :target-type grant :required
                                      common-lisp:t :member-name "Grant"))
                                    (:shape-name "GrantItem"))

(smithy/sdk/shapes:define-enum grant-type
    common-lisp:nil
  (:authorization-code "authorization_code")
  (:refresh-token "refresh_token")
  (:jwt-bearer "urn:ietf:params:oauth:grant-type:jwt-bearer")
  (:token-exchange "urn:ietf:params:oauth:grant-type:token-exchange"))

(smithy/sdk/shapes:define-list grants :member grant-item)

(smithy/sdk/shapes:define-structure iam-authentication-method common-lisp:nil
                                    ((actor-policy :target-type
                                      actor-policy-document :required
                                      common-lisp:t :member-name
                                      "ActorPolicy"))
                                    (:shape-name "IamAuthenticationMethod"))

(smithy/sdk/shapes:define-type icon-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 instance-access-control-attribute-configuration common-lisp:nil
 ((access-control-attributes :target-type access-control-attribute-list
   :required common-lisp:t :member-name "AccessControlAttributes"))
 (:shape-name "InstanceAccessControlAttributeConfiguration"))

(smithy/sdk/shapes:define-enum instance-access-control-attribute-configuration-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:creation-in-progress "CREATION_IN_PROGRESS")
  (:creation-failed "CREATION_FAILED"))

(smithy/sdk/shapes:define-type
 instance-access-control-attribute-configuration-status-reason
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-list :member instance-metadata)

(smithy/sdk/shapes:define-structure instance-metadata common-lisp:nil
                                    ((instance-arn :target-type instance-arn
                                      :member-name "InstanceArn")
                                     (identity-store-id :target-type id
                                      :member-name "IdentityStoreId")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (name :target-type name-type :member-name
                                      "Name")
                                     (created-date :target-type date
                                      :member-name "CreatedDate")
                                     (status :target-type instance-status
                                      :member-name "Status"))
                                    (:shape-name "InstanceMetadata"))

(smithy/sdk/shapes:define-enum instance-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-type internal-failure-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type internal-failure-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type jmespath smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum jwks-retrieval-option
    common-lisp:nil
  (:open-id-discovery "OPEN_ID_DISCOVERY"))

(smithy/sdk/shapes:define-structure jwt-bearer-grant common-lisp:nil
                                    ((authorized-token-issuers :target-type
                                      authorized-token-issuers :member-name
                                      "AuthorizedTokenIssuers"))
                                    (:shape-name "JwtBearerGrant"))

(smithy/sdk/shapes:define-input list-account-assignment-creation-status-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (filter :target-type operation-status-filter
                                  :member-name "Filter"))
                                (:shape-name
                                 "ListAccountAssignmentCreationStatusRequest"))

(smithy/sdk/shapes:define-output
 list-account-assignment-creation-status-response common-lisp:nil
 ((account-assignments-creation-status :target-type
   account-assignment-operation-status-list :member-name
   "AccountAssignmentsCreationStatus")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListAccountAssignmentCreationStatusResponse"))

(smithy/sdk/shapes:define-input list-account-assignment-deletion-status-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (filter :target-type operation-status-filter
                                  :member-name "Filter"))
                                (:shape-name
                                 "ListAccountAssignmentDeletionStatusRequest"))

(smithy/sdk/shapes:define-output
 list-account-assignment-deletion-status-response common-lisp:nil
 ((account-assignments-deletion-status :target-type
   account-assignment-operation-status-list :member-name
   "AccountAssignmentsDeletionStatus")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListAccountAssignmentDeletionStatusResponse"))

(smithy/sdk/shapes:define-structure list-account-assignments-filter
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId"))
                                    (:shape-name
                                     "ListAccountAssignmentsFilter"))

(smithy/sdk/shapes:define-input list-account-assignments-for-principal-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (principal-id :target-type principal-id
                                  :required common-lisp:t :member-name
                                  "PrincipalId")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType")
                                 (filter :target-type
                                  list-account-assignments-filter :member-name
                                  "Filter")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListAccountAssignmentsForPrincipalRequest"))

(smithy/sdk/shapes:define-output
 list-account-assignments-for-principal-response common-lisp:nil
 ((account-assignments :target-type account-assignment-list-for-principal
   :member-name "AccountAssignments")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListAccountAssignmentsForPrincipalResponse"))

(smithy/sdk/shapes:define-input list-account-assignments-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (account-id :target-type target-id :required
                                  common-lisp:t :member-name "AccountId")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListAccountAssignmentsRequest"))

(smithy/sdk/shapes:define-output list-account-assignments-response
                                 common-lisp:nil
                                 ((account-assignments :target-type
                                   account-assignment-list :member-name
                                   "AccountAssignments")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListAccountAssignmentsResponse"))

(smithy/sdk/shapes:define-input
 list-accounts-for-provisioned-permission-set-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn")
  (provisioning-status :target-type provisioning-status :member-name
   "ProvisioningStatus")
  (max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListAccountsForProvisionedPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 list-accounts-for-provisioned-permission-set-response common-lisp:nil
 ((account-ids :target-type account-list :member-name "AccountIds")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListAccountsForProvisionedPermissionSetResponse"))

(smithy/sdk/shapes:define-input list-application-access-scopes-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListApplicationAccessScopesRequest"))

(smithy/sdk/shapes:define-output list-application-access-scopes-response
                                 common-lisp:nil
                                 ((scopes :target-type scopes :required
                                   common-lisp:t :member-name "Scopes")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListApplicationAccessScopesResponse"))

(smithy/sdk/shapes:define-structure list-application-assignments-filter
                                    common-lisp:nil
                                    ((application-arn :target-type
                                      application-arn :member-name
                                      "ApplicationArn"))
                                    (:shape-name
                                     "ListApplicationAssignmentsFilter"))

(smithy/sdk/shapes:define-input
 list-application-assignments-for-principal-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (principal-id :target-type principal-id :required common-lisp:t :member-name
   "PrincipalId")
  (principal-type :target-type principal-type :required common-lisp:t
   :member-name "PrincipalType")
  (filter :target-type list-application-assignments-filter :member-name
   "Filter")
  (next-token :target-type token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults"))
 (:shape-name "ListApplicationAssignmentsForPrincipalRequest"))

(smithy/sdk/shapes:define-output
 list-application-assignments-for-principal-response common-lisp:nil
 ((application-assignments :target-type
   application-assignment-list-for-principal :member-name
   "ApplicationAssignments")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListApplicationAssignmentsForPrincipalResponse"))

(smithy/sdk/shapes:define-input list-application-assignments-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListApplicationAssignmentsRequest"))

(smithy/sdk/shapes:define-output list-application-assignments-response
                                 common-lisp:nil
                                 ((application-assignments :target-type
                                   application-assignments-list :member-name
                                   "ApplicationAssignments")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListApplicationAssignmentsResponse"))

(smithy/sdk/shapes:define-input list-application-authentication-methods-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListApplicationAuthenticationMethodsRequest"))

(smithy/sdk/shapes:define-output
 list-application-authentication-methods-response common-lisp:nil
 ((authentication-methods :target-type authentication-methods :member-name
   "AuthenticationMethods")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListApplicationAuthenticationMethodsResponse"))

(smithy/sdk/shapes:define-input list-application-grants-request common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListApplicationGrantsRequest"))

(smithy/sdk/shapes:define-output list-application-grants-response
                                 common-lisp:nil
                                 ((grants :target-type grants :required
                                   common-lisp:t :member-name "Grants")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListApplicationGrantsResponse"))

(smithy/sdk/shapes:define-input list-application-providers-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListApplicationProvidersRequest"))

(smithy/sdk/shapes:define-output list-application-providers-response
                                 common-lisp:nil
                                 ((application-providers :target-type
                                   application-provider-list :member-name
                                   "ApplicationProviders")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListApplicationProvidersResponse"))

(smithy/sdk/shapes:define-structure list-applications-filter common-lisp:nil
                                    ((application-account :target-type
                                      account-id :member-name
                                      "ApplicationAccount")
                                     (application-provider :target-type
                                      application-provider-arn :member-name
                                      "ApplicationProvider"))
                                    (:shape-name "ListApplicationsFilter"))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (filter :target-type list-applications-filter
                                  :member-name "Filter"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((applications :target-type application-list
                                   :member-name "Applications")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input
 list-customer-managed-policy-references-in-permission-set-request
 common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn")
  (max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListCustomerManagedPolicyReferencesInPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 list-customer-managed-policy-references-in-permission-set-response
 common-lisp:nil
 ((customer-managed-policy-references :target-type
   customer-managed-policy-reference-list :member-name
   "CustomerManagedPolicyReferences")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListCustomerManagedPolicyReferencesInPermissionSetResponse"))

(smithy/sdk/shapes:define-input list-instances-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListInstancesRequest"))

(smithy/sdk/shapes:define-output list-instances-response common-lisp:nil
                                 ((instances :target-type instance-list
                                   :member-name "Instances")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListInstancesResponse"))

(smithy/sdk/shapes:define-input list-managed-policies-in-permission-set-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListManagedPoliciesInPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 list-managed-policies-in-permission-set-response common-lisp:nil
 ((attached-managed-policies :target-type attached-managed-policy-list
   :member-name "AttachedManagedPolicies")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListManagedPoliciesInPermissionSetResponse"))

(smithy/sdk/shapes:define-input list-permission-set-provisioning-status-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (filter :target-type operation-status-filter
                                  :member-name "Filter"))
                                (:shape-name
                                 "ListPermissionSetProvisioningStatusRequest"))

(smithy/sdk/shapes:define-output
 list-permission-set-provisioning-status-response common-lisp:nil
 ((permission-sets-provisioning-status :target-type
   permission-set-provisioning-status-list :member-name
   "PermissionSetsProvisioningStatus")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListPermissionSetProvisioningStatusResponse"))

(smithy/sdk/shapes:define-input
 list-permission-sets-provisioned-to-account-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (account-id :target-type account-id :required common-lisp:t :member-name
   "AccountId")
  (provisioning-status :target-type provisioning-status :member-name
   "ProvisioningStatus")
  (max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListPermissionSetsProvisionedToAccountRequest"))

(smithy/sdk/shapes:define-output
 list-permission-sets-provisioned-to-account-response common-lisp:nil
 ((next-token :target-type token :member-name "NextToken")
  (permission-sets :target-type permission-set-list :member-name
   "PermissionSets"))
 (:shape-name "ListPermissionSetsProvisionedToAccountResponse"))

(smithy/sdk/shapes:define-input list-permission-sets-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPermissionSetsRequest"))

(smithy/sdk/shapes:define-output list-permission-sets-response common-lisp:nil
                                 ((permission-sets :target-type
                                   permission-set-list :member-name
                                   "PermissionSets")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListPermissionSetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :member-name "InstanceArn")
                                 (resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-trusted-token-issuers-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListTrustedTokenIssuersRequest"))

(smithy/sdk/shapes:define-output list-trusted-token-issuers-response
                                 common-lisp:nil
                                 ((trusted-token-issuers :target-type
                                   trusted-token-issuer-list :member-name
                                   "TrustedTokenIssuers")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListTrustedTokenIssuersResponse"))

(smithy/sdk/shapes:define-type managed-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type managed-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type managed-policy-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure oidc-jwt-configuration common-lisp:nil
                                    ((issuer-url :target-type
                                      trusted-token-issuer-url :required
                                      common-lisp:t :member-name "IssuerUrl")
                                     (claim-attribute-path :target-type
                                      claim-attribute-path :required
                                      common-lisp:t :member-name
                                      "ClaimAttributePath")
                                     (identity-store-attribute-path
                                      :target-type jmespath :required
                                      common-lisp:t :member-name
                                      "IdentityStoreAttributePath")
                                     (jwks-retrieval-option :target-type
                                      jwks-retrieval-option :required
                                      common-lisp:t :member-name
                                      "JwksRetrievalOption"))
                                    (:shape-name "OidcJwtConfiguration"))

(smithy/sdk/shapes:define-structure oidc-jwt-update-configuration
                                    common-lisp:nil
                                    ((claim-attribute-path :target-type
                                      claim-attribute-path :member-name
                                      "ClaimAttributePath")
                                     (identity-store-attribute-path
                                      :target-type jmespath :member-name
                                      "IdentityStoreAttributePath")
                                     (jwks-retrieval-option :target-type
                                      jwks-retrieval-option :member-name
                                      "JwksRetrievalOption"))
                                    (:shape-name "OidcJwtUpdateConfiguration"))

(smithy/sdk/shapes:define-structure operation-status-filter common-lisp:nil
                                    ((status :target-type status-values
                                      :member-name "Status"))
                                    (:shape-name "OperationStatusFilter"))

(smithy/sdk/shapes:define-structure permission-set common-lisp:nil
                                    ((name :target-type permission-set-name
                                      :member-name "Name")
                                     (permission-set-arn :target-type
                                      permission-set-arn :member-name
                                      "PermissionSetArn")
                                     (description :target-type
                                      permission-set-description :member-name
                                      "Description")
                                     (created-date :target-type date
                                      :member-name "CreatedDate")
                                     (session-duration :target-type duration
                                      :member-name "SessionDuration")
                                     (relay-state :target-type relay-state
                                      :member-name "RelayState"))
                                    (:shape-name "PermissionSet"))

(smithy/sdk/shapes:define-type permission-set-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type permission-set-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list permission-set-list :member permission-set-arn)

(smithy/sdk/shapes:define-type permission-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type permission-set-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-set-provisioning-status
                                    common-lisp:nil
                                    ((status :target-type status-values
                                      :member-name "Status")
                                     (request-id :target-type uuid :member-name
                                      "RequestId")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (permission-set-arn :target-type
                                      permission-set-arn :member-name
                                      "PermissionSetArn")
                                     (failure-reason :target-type reason
                                      :member-name "FailureReason")
                                     (created-date :target-type date
                                      :member-name "CreatedDate"))
                                    (:shape-name
                                     "PermissionSetProvisioningStatus"))

(smithy/sdk/shapes:define-list permission-set-provisioning-status-list :member
                               permission-set-provisioning-status-metadata)

(smithy/sdk/shapes:define-structure permission-set-provisioning-status-metadata
                                    common-lisp:nil
                                    ((status :target-type status-values
                                      :member-name "Status")
                                     (request-id :target-type uuid :member-name
                                      "RequestId")
                                     (created-date :target-type date
                                      :member-name "CreatedDate"))
                                    (:shape-name
                                     "PermissionSetProvisioningStatusMetadata"))

(smithy/sdk/shapes:define-structure permissions-boundary common-lisp:nil
                                    ((customer-managed-policy-reference
                                      :target-type
                                      customer-managed-policy-reference
                                      :member-name
                                      "CustomerManagedPolicyReference")
                                     (managed-policy-arn :target-type
                                      managed-policy-arn :member-name
                                      "ManagedPolicyArn"))
                                    (:shape-name "PermissionsBoundary"))

(smithy/sdk/shapes:define-structure portal-options common-lisp:nil
                                    ((sign-in-options :target-type
                                      sign-in-options :member-name
                                      "SignInOptions")
                                     (visibility :target-type
                                      application-visibility :member-name
                                      "Visibility"))
                                    (:shape-name "PortalOptions"))

(smithy/sdk/shapes:define-type principal-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum principal-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP"))

(smithy/sdk/shapes:define-input provision-permission-set-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (target-id :target-type target-id :member-name
                                  "TargetId")
                                 (target-type :target-type
                                  provision-target-type :required common-lisp:t
                                  :member-name "TargetType"))
                                (:shape-name "ProvisionPermissionSetRequest"))

(smithy/sdk/shapes:define-output provision-permission-set-response
                                 common-lisp:nil
                                 ((permission-set-provisioning-status
                                   :target-type
                                   permission-set-provisioning-status
                                   :member-name
                                   "PermissionSetProvisioningStatus"))
                                 (:shape-name "ProvisionPermissionSetResponse"))

(smithy/sdk/shapes:define-enum provision-target-type
    common-lisp:nil
  (:aws-account "AWS_ACCOUNT")
  (:all-provisioned-accounts "ALL_PROVISIONED_ACCOUNTS"))

(smithy/sdk/shapes:define-enum provisioning-status
    common-lisp:nil
  (:latest-permission-set-provisioned "LATEST_PERMISSION_SET_PROVISIONED")
  (:latest-permission-set-not-provisioned
   "LATEST_PERMISSION_SET_NOT_PROVISIONED"))

(smithy/sdk/shapes:define-input put-application-access-scope-request
                                common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (authorized-targets :target-type scope-targets
                                  :member-name "AuthorizedTargets")
                                 (application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn"))
                                (:shape-name
                                 "PutApplicationAccessScopeRequest"))

(smithy/sdk/shapes:define-input
 put-application-assignment-configuration-request common-lisp:nil
 ((application-arn :target-type application-arn :required common-lisp:t
   :member-name "ApplicationArn")
  (assignment-required :target-type assignment-required :required common-lisp:t
   :member-name "AssignmentRequired"))
 (:shape-name "PutApplicationAssignmentConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-application-assignment-configuration-response common-lisp:nil
 common-lisp:nil (:shape-name "PutApplicationAssignmentConfigurationResponse"))

(smithy/sdk/shapes:define-input put-application-authentication-method-request
                                common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (authentication-method-type :target-type
                                  authentication-method-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationMethodType")
                                 (authentication-method :target-type
                                  authentication-method :required common-lisp:t
                                  :member-name "AuthenticationMethod"))
                                (:shape-name
                                 "PutApplicationAuthenticationMethodRequest"))

(smithy/sdk/shapes:define-input put-application-grant-request common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (grant-type :target-type grant-type :required
                                  common-lisp:t :member-name "GrantType")
                                 (grant :target-type grant :required
                                  common-lisp:t :member-name "Grant"))
                                (:shape-name "PutApplicationGrantRequest"))

(smithy/sdk/shapes:define-input put-inline-policy-to-permission-set-request
                                common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (inline-policy :target-type
                                  permission-set-policy-document :required
                                  common-lisp:t :member-name "InlinePolicy"))
                                (:shape-name
                                 "PutInlinePolicyToPermissionSetRequest"))

(smithy/sdk/shapes:define-output put-inline-policy-to-permission-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutInlinePolicyToPermissionSetResponse"))

(smithy/sdk/shapes:define-input
 put-permissions-boundary-to-permission-set-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (permission-set-arn :target-type permission-set-arn :required common-lisp:t
   :member-name "PermissionSetArn")
  (permissions-boundary :target-type permissions-boundary :required
   common-lisp:t :member-name "PermissionsBoundary"))
 (:shape-name "PutPermissionsBoundaryToPermissionSetRequest"))

(smithy/sdk/shapes:define-output
 put-permissions-boundary-to-permission-set-response common-lisp:nil
 common-lisp:nil (:shape-name "PutPermissionsBoundaryToPermissionSetResponse"))

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list redirect-uris :member uri)

(smithy/sdk/shapes:define-structure refresh-token-grant common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "RefreshTokenGrant"))

(smithy/sdk/shapes:define-type relay-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  resource-not-found-message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-not-found-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-server-config common-lisp:nil
                                    ((scopes :target-type
                                      resource-server-scopes :member-name
                                      "Scopes"))
                                    (:shape-name "ResourceServerConfig"))

(smithy/sdk/shapes:define-type resource-server-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-server-scope-details
                                    common-lisp:nil
                                    ((long-description :target-type description
                                      :member-name "LongDescription")
                                     (detailed-title :target-type description
                                      :member-name "DetailedTitle"))
                                    (:shape-name "ResourceServerScopeDetails"))

(smithy/sdk/shapes:define-map resource-server-scopes :key resource-server-scope
                              :value resource-server-scope-details)

(smithy/sdk/shapes:define-type scope smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scope-details common-lisp:nil
                                    ((scope :target-type scope :required
                                      common-lisp:t :member-name "Scope")
                                     (authorized-targets :target-type
                                      scope-targets :member-name
                                      "AuthorizedTargets"))
                                    (:shape-name "ScopeDetails"))

(smithy/sdk/shapes:define-type scope-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scope-targets :member scope-target)

(smithy/sdk/shapes:define-list scopes :member scope-details)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  service-quota-exceeded-message :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type service-quota-exceeded-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sign-in-options common-lisp:nil
                                    ((origin :target-type sign-in-origin
                                      :required common-lisp:t :member-name
                                      "Origin")
                                     (application-url :target-type
                                      application-url :member-name
                                      "ApplicationUrl"))
                                    (:shape-name "SignInOptions"))

(smithy/sdk/shapes:define-enum sign-in-origin
    common-lisp:nil
  (:identity-center "IDENTITY_CENTER")
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-enum status-values
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED"))

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
                                ((instance-arn :target-type instance-arn
                                  :member-name "InstanceArn")
                                 (resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:aws-account "AWS_ACCOUNT"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  throttling-exception-message :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type throttling-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure token-exchange-grant common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TokenExchangeGrant"))

(smithy/sdk/shapes:define-type token-issuer-audience
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list token-issuer-audiences :member
                               token-issuer-audience)

(smithy/sdk/shapes:define-type trusted-token-issuer-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union trusted-token-issuer-configuration
                                common-lisp:nil
                                ((oidc-jwt-configuration :target-type
                                  oidc-jwt-configuration :member-name
                                  "OidcJwtConfiguration"))
                                (:shape-name "TrustedTokenIssuerConfiguration"))

(smithy/sdk/shapes:define-list trusted-token-issuer-list :member
                               trusted-token-issuer-metadata)

(smithy/sdk/shapes:define-structure trusted-token-issuer-metadata
                                    common-lisp:nil
                                    ((trusted-token-issuer-arn :target-type
                                      trusted-token-issuer-arn :member-name
                                      "TrustedTokenIssuerArn")
                                     (name :target-type
                                      trusted-token-issuer-name :member-name
                                      "Name")
                                     (trusted-token-issuer-type :target-type
                                      trusted-token-issuer-type :member-name
                                      "TrustedTokenIssuerType"))
                                    (:shape-name "TrustedTokenIssuerMetadata"))

(smithy/sdk/shapes:define-type trusted-token-issuer-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trusted-token-issuer-type
    common-lisp:nil
  (:oidc-jwt "OIDC_JWT"))

(smithy/sdk/shapes:define-union trusted-token-issuer-update-configuration
                                common-lisp:nil
                                ((oidc-jwt-configuration :target-type
                                  oidc-jwt-update-configuration :member-name
                                  "OidcJwtConfiguration"))
                                (:shape-name
                                 "TrustedTokenIssuerUpdateConfiguration"))

(smithy/sdk/shapes:define-type trusted-token-issuer-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :member-name "InstanceArn")
                                 (resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-application-portal-options
                                    common-lisp:nil
                                    ((sign-in-options :target-type
                                      sign-in-options :member-name
                                      "SignInOptions"))
                                    (:shape-name
                                     "UpdateApplicationPortalOptions"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-arn :target-type application-arn
                                  :required common-lisp:t :member-name
                                  "ApplicationArn")
                                 (name :target-type application-name-type
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (status :target-type application-status
                                  :member-name "Status")
                                 (portal-options :target-type
                                  update-application-portal-options
                                  :member-name "PortalOptions"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-input
 update-instance-access-control-attribute-configuration-request common-lisp:nil
 ((instance-arn :target-type instance-arn :required common-lisp:t :member-name
   "InstanceArn")
  (instance-access-control-attribute-configuration :target-type
   instance-access-control-attribute-configuration :required common-lisp:t
   :member-name "InstanceAccessControlAttributeConfiguration"))
 (:shape-name "UpdateInstanceAccessControlAttributeConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-instance-access-control-attribute-configuration-response
 common-lisp:nil common-lisp:nil
 (:shape-name "UpdateInstanceAccessControlAttributeConfigurationResponse"))

(smithy/sdk/shapes:define-input update-instance-request common-lisp:nil
                                ((name :target-type name-type :required
                                  common-lisp:t :member-name "Name")
                                 (instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn"))
                                (:shape-name "UpdateInstanceRequest"))

(smithy/sdk/shapes:define-output update-instance-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateInstanceResponse"))

(smithy/sdk/shapes:define-input update-permission-set-request common-lisp:nil
                                ((instance-arn :target-type instance-arn
                                  :required common-lisp:t :member-name
                                  "InstanceArn")
                                 (permission-set-arn :target-type
                                  permission-set-arn :required common-lisp:t
                                  :member-name "PermissionSetArn")
                                 (description :target-type
                                  permission-set-description :member-name
                                  "Description")
                                 (session-duration :target-type duration
                                  :member-name "SessionDuration")
                                 (relay-state :target-type relay-state
                                  :member-name "RelayState"))
                                (:shape-name "UpdatePermissionSetRequest"))

(smithy/sdk/shapes:define-output update-permission-set-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdatePermissionSetResponse"))

(smithy/sdk/shapes:define-input update-trusted-token-issuer-request
                                common-lisp:nil
                                ((trusted-token-issuer-arn :target-type
                                  trusted-token-issuer-arn :required
                                  common-lisp:t :member-name
                                  "TrustedTokenIssuerArn")
                                 (name :target-type trusted-token-issuer-name
                                  :member-name "Name")
                                 (trusted-token-issuer-configuration
                                  :target-type
                                  trusted-token-issuer-update-configuration
                                  :member-name
                                  "TrustedTokenIssuerConfiguration"))
                                (:shape-name "UpdateTrustedTokenIssuerRequest"))

(smithy/sdk/shapes:define-output update-trusted-token-issuer-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateTrustedTokenIssuerResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  validation-exception-message :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type validation-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation
 attach-customer-managed-policy-reference-to-permission-set :shape-name
 "AttachCustomerManagedPolicyReferenceToPermissionSet" :input
 attach-customer-managed-policy-reference-to-permission-set-request :output
 attach-customer-managed-policy-reference-to-permission-set-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception))

(smithy/sdk/operation:define-operation attach-managed-policy-to-permission-set
                                       :shape-name
                                       "AttachManagedPolicyToPermissionSet"
                                       :input
                                       attach-managed-policy-to-permission-set-request
                                       :output
                                       attach-managed-policy-to-permission-set-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-account-assignment :shape-name
                                       "CreateAccountAssignment" :input
                                       create-account-assignment-request
                                       :output
                                       create-account-assignment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-application-assignment
                                       :shape-name
                                       "CreateApplicationAssignment" :input
                                       create-application-assignment-request
                                       :output
                                       create-application-assignment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-instance :shape-name
                                       "CreateInstance" :input
                                       create-instance-request :output
                                       create-instance-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 create-instance-access-control-attribute-configuration :shape-name
 "CreateInstanceAccessControlAttributeConfiguration" :input
 create-instance-access-control-attribute-configuration-request :output
 create-instance-access-control-attribute-configuration-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation create-permission-set :shape-name
                                       "CreatePermissionSet" :input
                                       create-permission-set-request :output
                                       create-permission-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-trusted-token-issuer :shape-name
                                       "CreateTrustedTokenIssuer" :input
                                       create-trusted-token-issuer-request
                                       :output
                                       create-trusted-token-issuer-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-account-assignment :shape-name
                                       "DeleteAccountAssignment" :input
                                       delete-account-assignment-request
                                       :output
                                       delete-account-assignment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-application-access-scope
                                       :shape-name
                                       "DeleteApplicationAccessScope" :input
                                       delete-application-access-scope-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-application-assignment
                                       :shape-name
                                       "DeleteApplicationAssignment" :input
                                       delete-application-assignment-request
                                       :output
                                       delete-application-assignment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-application-authentication-method
                                       :shape-name
                                       "DeleteApplicationAuthenticationMethod"
                                       :input
                                       delete-application-authentication-method-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-application-grant :shape-name
                                       "DeleteApplicationGrant" :input
                                       delete-application-grant-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-inline-policy-from-permission-set
                                       :shape-name
                                       "DeleteInlinePolicyFromPermissionSet"
                                       :input
                                       delete-inline-policy-from-permission-set-request
                                       :output
                                       delete-inline-policy-from-permission-set-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-instance :shape-name
                                       "DeleteInstance" :input
                                       delete-instance-request :output
                                       delete-instance-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 delete-instance-access-control-attribute-configuration :shape-name
 "DeleteInstanceAccessControlAttributeConfiguration" :input
 delete-instance-access-control-attribute-configuration-request :output
 delete-instance-access-control-attribute-configuration-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation delete-permission-set :shape-name
                                       "DeletePermissionSet" :input
                                       delete-permission-set-request :output
                                       delete-permission-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 delete-permissions-boundary-from-permission-set :shape-name
 "DeletePermissionsBoundaryFromPermissionSet" :input
 delete-permissions-boundary-from-permission-set-request :output
 delete-permissions-boundary-from-permission-set-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation delete-trusted-token-issuer :shape-name
                                       "DeleteTrustedTokenIssuer" :input
                                       delete-trusted-token-issuer-request
                                       :output
                                       delete-trusted-token-issuer-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 describe-account-assignment-creation-status :shape-name
 "DescribeAccountAssignmentCreationStatus" :input
 describe-account-assignment-creation-status-request :output
 describe-account-assignment-creation-status-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation
 describe-account-assignment-deletion-status :shape-name
 "DescribeAccountAssignmentDeletionStatus" :input
 describe-account-assignment-deletion-status-request :output
 describe-account-assignment-deletion-status-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation describe-application :shape-name
                                       "DescribeApplication" :input
                                       describe-application-request :output
                                       describe-application-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-application-assignment
                                       :shape-name
                                       "DescribeApplicationAssignment" :input
                                       describe-application-assignment-request
                                       :output
                                       describe-application-assignment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-application-provider
                                       :shape-name
                                       "DescribeApplicationProvider" :input
                                       describe-application-provider-request
                                       :output
                                       describe-application-provider-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-instance :shape-name
                                       "DescribeInstance" :input
                                       describe-instance-request :output
                                       describe-instance-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 describe-instance-access-control-attribute-configuration :shape-name
 "DescribeInstanceAccessControlAttributeConfiguration" :input
 describe-instance-access-control-attribute-configuration-request :output
 describe-instance-access-control-attribute-configuration-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation describe-permission-set :shape-name
                                       "DescribePermissionSet" :input
                                       describe-permission-set-request :output
                                       describe-permission-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 describe-permission-set-provisioning-status :shape-name
 "DescribePermissionSetProvisioningStatus" :input
 describe-permission-set-provisioning-status-request :output
 describe-permission-set-provisioning-status-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation describe-trusted-token-issuer
                                       :shape-name "DescribeTrustedTokenIssuer"
                                       :input
                                       describe-trusted-token-issuer-request
                                       :output
                                       describe-trusted-token-issuer-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 detach-customer-managed-policy-reference-from-permission-set :shape-name
 "DetachCustomerManagedPolicyReferenceFromPermissionSet" :input
 detach-customer-managed-policy-reference-from-permission-set-request :output
 detach-customer-managed-policy-reference-from-permission-set-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation
 detach-managed-policy-from-permission-set :shape-name
 "DetachManagedPolicyFromPermissionSet" :input
 detach-managed-policy-from-permission-set-request :output
 detach-managed-policy-from-permission-set-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation get-application-access-scope :shape-name
                                       "GetApplicationAccessScope" :input
                                       get-application-access-scope-request
                                       :output
                                       get-application-access-scope-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-application-assignment-configuration
                                       :shape-name
                                       "GetApplicationAssignmentConfiguration"
                                       :input
                                       get-application-assignment-configuration-request
                                       :output
                                       get-application-assignment-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-application-authentication-method
                                       :shape-name
                                       "GetApplicationAuthenticationMethod"
                                       :input
                                       get-application-authentication-method-request
                                       :output
                                       get-application-authentication-method-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-application-grant :shape-name
                                       "GetApplicationGrant" :input
                                       get-application-grant-request :output
                                       get-application-grant-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-inline-policy-for-permission-set
                                       :shape-name
                                       "GetInlinePolicyForPermissionSet" :input
                                       get-inline-policy-for-permission-set-request
                                       :output
                                       get-inline-policy-for-permission-set-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 get-permissions-boundary-for-permission-set :shape-name
 "GetPermissionsBoundaryForPermissionSet" :input
 get-permissions-boundary-for-permission-set-request :output
 get-permissions-boundary-for-permission-set-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-account-assignment-creation-status
                                       :shape-name
                                       "ListAccountAssignmentCreationStatus"
                                       :input
                                       list-account-assignment-creation-status-request
                                       :output
                                       list-account-assignment-creation-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-account-assignment-deletion-status
                                       :shape-name
                                       "ListAccountAssignmentDeletionStatus"
                                       :input
                                       list-account-assignment-deletion-status-request
                                       :output
                                       list-account-assignment-deletion-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-account-assignments :shape-name
                                       "ListAccountAssignments" :input
                                       list-account-assignments-request :output
                                       list-account-assignments-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-account-assignments-for-principal
                                       :shape-name
                                       "ListAccountAssignmentsForPrincipal"
                                       :input
                                       list-account-assignments-for-principal-request
                                       :output
                                       list-account-assignments-for-principal-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-accounts-for-provisioned-permission-set :shape-name
 "ListAccountsForProvisionedPermissionSet" :input
 list-accounts-for-provisioned-permission-set-request :output
 list-accounts-for-provisioned-permission-set-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-application-access-scopes
                                       :shape-name
                                       "ListApplicationAccessScopes" :input
                                       list-application-access-scopes-request
                                       :output
                                       list-application-access-scopes-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-application-assignments :shape-name
                                       "ListApplicationAssignments" :input
                                       list-application-assignments-request
                                       :output
                                       list-application-assignments-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-application-assignments-for-principal :shape-name
 "ListApplicationAssignmentsForPrincipal" :input
 list-application-assignments-for-principal-request :output
 list-application-assignments-for-principal-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-application-authentication-methods
                                       :shape-name
                                       "ListApplicationAuthenticationMethods"
                                       :input
                                       list-application-authentication-methods-request
                                       :output
                                       list-application-authentication-methods-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-application-grants :shape-name
                                       "ListApplicationGrants" :input
                                       list-application-grants-request :output
                                       list-application-grants-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-application-providers :shape-name
                                       "ListApplicationProviders" :input
                                       list-application-providers-request
                                       :output
                                       list-application-providers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-customer-managed-policy-references-in-permission-set :shape-name
 "ListCustomerManagedPolicyReferencesInPermissionSet" :input
 list-customer-managed-policy-references-in-permission-set-request :output
 list-customer-managed-policy-references-in-permission-set-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-instances :shape-name
                                       "ListInstances" :input
                                       list-instances-request :output
                                       list-instances-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-managed-policies-in-permission-set
                                       :shape-name
                                       "ListManagedPoliciesInPermissionSet"
                                       :input
                                       list-managed-policies-in-permission-set-request
                                       :output
                                       list-managed-policies-in-permission-set-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-permission-set-provisioning-status
                                       :shape-name
                                       "ListPermissionSetProvisioningStatus"
                                       :input
                                       list-permission-set-provisioning-status-request
                                       :output
                                       list-permission-set-provisioning-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-permission-sets :shape-name
                                       "ListPermissionSets" :input
                                       list-permission-sets-request :output
                                       list-permission-sets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-permission-sets-provisioned-to-account :shape-name
 "ListPermissionSetsProvisionedToAccount" :input
 list-permission-sets-provisioned-to-account-request :output
 list-permission-sets-provisioned-to-account-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-trusted-token-issuers :shape-name
                                       "ListTrustedTokenIssuers" :input
                                       list-trusted-token-issuers-request
                                       :output
                                       list-trusted-token-issuers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation provision-permission-set :shape-name
                                       "ProvisionPermissionSet" :input
                                       provision-permission-set-request :output
                                       provision-permission-set-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-application-access-scope :shape-name
                                       "PutApplicationAccessScope" :input
                                       put-application-access-scope-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-application-assignment-configuration
                                       :shape-name
                                       "PutApplicationAssignmentConfiguration"
                                       :input
                                       put-application-assignment-configuration-request
                                       :output
                                       put-application-assignment-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-application-authentication-method
                                       :shape-name
                                       "PutApplicationAuthenticationMethod"
                                       :input
                                       put-application-authentication-method-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-application-grant :shape-name
                                       "PutApplicationGrant" :input
                                       put-application-grant-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-inline-policy-to-permission-set
                                       :shape-name
                                       "PutInlinePolicyToPermissionSet" :input
                                       put-inline-policy-to-permission-set-request
                                       :output
                                       put-inline-policy-to-permission-set-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 put-permissions-boundary-to-permission-set :shape-name
 "PutPermissionsBoundaryToPermissionSet" :input
 put-permissions-boundary-to-permission-set-request :output
 put-permissions-boundary-to-permission-set-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-instance :shape-name
                                       "UpdateInstance" :input
                                       update-instance-request :output
                                       update-instance-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 update-instance-access-control-attribute-configuration :shape-name
 "UpdateInstanceAccessControlAttributeConfiguration" :input
 update-instance-access-control-attribute-configuration-request :output
 update-instance-access-control-attribute-configuration-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation update-permission-set :shape-name
                                       "UpdatePermissionSet" :input
                                       update-permission-set-request :output
                                       update-permission-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-trusted-token-issuer :shape-name
                                       "UpdateTrustedTokenIssuer" :input
                                       update-trusted-token-issuer-request
                                       :output
                                       update-trusted-token-issuer-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
