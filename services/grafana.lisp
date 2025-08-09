(uiop/package:define-package #:pira/grafana (:use)
                             (:export #:awsgrafana-control-plane
                              #:account-access-type #:allowed-organization
                              #:allowed-organizations #:api-key #:api-key-name
                              #:api-key-token #:assertion-attribute
                              #:assertion-attributes #:associate-license
                              #:associate-license-request
                              #:associate-license-response #:authentication
                              #:authentication-description
                              #:authentication-provider-types
                              #:authentication-providers
                              #:authentication-summary #:aws-sso-authentication
                              #:client-token #:configuration #:create-workspace
                              #:create-workspace-api-key
                              #:create-workspace-api-key-request
                              #:create-workspace-api-key-response
                              #:create-workspace-request
                              #:create-workspace-response
                              #:create-workspace-service-account
                              #:create-workspace-service-account-token
                              #:data-source-type #:data-source-types-list
                              #:delete-workspace #:delete-workspace-api-key
                              #:delete-workspace-api-key-request
                              #:delete-workspace-api-key-response
                              #:delete-workspace-request
                              #:delete-workspace-response
                              #:delete-workspace-service-account
                              #:delete-workspace-service-account-token
                              #:describe-workspace
                              #:describe-workspace-authentication
                              #:describe-workspace-authentication-request
                              #:describe-workspace-authentication-response
                              #:describe-workspace-configuration
                              #:describe-workspace-configuration-request
                              #:describe-workspace-configuration-response
                              #:describe-workspace-request
                              #:describe-workspace-response #:description
                              #:disassociate-license
                              #:disassociate-license-request
                              #:disassociate-license-response #:endpoint
                              #:grafana-token #:grafana-version
                              #:grafana-version-list #:iam-role-arn
                              #:idp-metadata #:idp-metadata-url #:license
                              #:license-type #:list-permissions
                              #:list-permissions-request
                              #:list-permissions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:list-versions
                              #:list-workspace-service-account-tokens
                              #:list-workspace-service-accounts
                              #:list-workspaces #:list-workspaces-request
                              #:list-workspaces-response
                              #:login-validity-duration
                              #:network-access-configuration
                              #:notification-destination-type
                              #:notification-destinations-list
                              #:organization-role-name #:organizational-unit
                              #:organizational-unit-list
                              #:overridable-configuration-json
                              #:pagination-token #:permission
                              #:permission-entry #:permission-entry-list
                              #:permission-type #:prefix-list-id
                              #:prefix-list-ids #:role #:role-value
                              #:role-value-list #:role-values #:ssoclient-id
                              #:saml-authentication #:saml-configuration
                              #:saml-configuration-status #:security-group-id
                              #:security-group-ids #:service-account
                              #:service-account-list #:service-account-name
                              #:service-account-summary #:service-account-token
                              #:service-account-token-key
                              #:service-account-token-list
                              #:service-account-token-name
                              #:service-account-token-summary
                              #:service-account-token-summary-with-key #:sso-id
                              #:stack-set-name #:subnet-id #:subnet-ids
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-action
                              #:update-error #:update-error-list
                              #:update-instruction #:update-instruction-batch
                              #:update-permissions #:update-permissions-request
                              #:update-permissions-response #:update-workspace
                              #:update-workspace-authentication
                              #:update-workspace-authentication-request
                              #:update-workspace-authentication-response
                              #:update-workspace-configuration
                              #:update-workspace-configuration-request
                              #:update-workspace-configuration-response
                              #:update-workspace-request
                              #:update-workspace-response #:user #:user-list
                              #:user-type #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vpc-configuration
                              #:vpce-id #:vpce-ids #:workspace
                              #:workspace-description #:workspace-id
                              #:workspace-list #:workspace-name
                              #:workspace-status #:workspace-summary))
(common-lisp:in-package #:pira/grafana)

(smithy/sdk/service:define-service awsgrafana-control-plane :shape-name
                                   "AWSGrafanaControlPlane" :version
                                   "2020-08-18" :title "Amazon Managed Grafana"
                                   :traits
                                   '(("aws.api#controlPlane")
                                     ("aws.api#service" ("sdkId" . "grafana")
                                      ("arnNamespace" . "grafana")
                                      ("cloudFormationName" . "Grafana")
                                      ("cloudTrailEventSource"
                                       . "EVENT_SOURCE_VALUE"))
                                     ("aws.auth#sigv4" ("name" . "grafana"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-access-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type allowed-organization
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-organizations :member
                               allowed-organization)

common-lisp:nil

(smithy/sdk/shapes:define-type api-key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-key-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assertion-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assertion-attributes common-lisp:nil
                                    ((name :target-type assertion-attribute
                                      :member-name "name")
                                     (login :target-type assertion-attribute
                                      :member-name "login")
                                     (email :target-type assertion-attribute
                                      :member-name "email")
                                     (groups :target-type assertion-attribute
                                      :member-name "groups")
                                     (role :target-type assertion-attribute
                                      :member-name "role")
                                     (org :target-type assertion-attribute
                                      :member-name "org"))
                                    (:shape-name "AssertionAttributes"))

(smithy/sdk/shapes:define-structure associate-license-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (license-type :target-type license-type
                                      :required common-lisp:t :member-name
                                      "licenseType")
                                     (grafana-token :target-type grafana-token
                                      :member-name "grafanaToken" :http-header
                                      "Grafana-Token"))
                                    (:shape-name "AssociateLicenseRequest"))

(smithy/sdk/shapes:define-structure associate-license-response common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "AssociateLicenseResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-structure authentication-description common-lisp:nil
                                    ((providers :target-type
                                      authentication-providers :required
                                      common-lisp:t :member-name "providers")
                                     (saml :target-type saml-authentication
                                      :member-name "saml")
                                     (aws-sso :target-type
                                      aws-sso-authentication :member-name
                                      "awsSso"))
                                    (:shape-name "AuthenticationDescription"))

(smithy/sdk/shapes:define-type authentication-provider-types
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list authentication-providers :member
                               authentication-provider-types)

(smithy/sdk/shapes:define-structure authentication-summary common-lisp:nil
                                    ((providers :target-type
                                      authentication-providers :required
                                      common-lisp:t :member-name "providers")
                                     (saml-configuration-status :target-type
                                      saml-configuration-status :member-name
                                      "samlConfigurationStatus"))
                                    (:shape-name "AuthenticationSummary"))

(smithy/sdk/shapes:define-structure aws-sso-authentication common-lisp:nil
                                    ((sso-client-id :target-type ssoclient-id
                                      :member-name "ssoClientId"))
                                    (:shape-name "AwsSsoAuthentication"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-workspace-api-key-request
                                    common-lisp:nil
                                    ((key-name :target-type api-key-name
                                      :required common-lisp:t :member-name
                                      "keyName")
                                     (key-role :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "keyRole")
                                     (seconds-to-live :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "secondsToLive")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "CreateWorkspaceApiKeyRequest"))

(smithy/sdk/shapes:define-structure create-workspace-api-key-response
                                    common-lisp:nil
                                    ((key-name :target-type api-key-name
                                      :required common-lisp:t :member-name
                                      "keyName")
                                     (key :target-type api-key-token :required
                                      common-lisp:t :member-name "key")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "CreateWorkspaceApiKeyResponse"))

(smithy/sdk/shapes:define-structure create-workspace-request common-lisp:nil
                                    ((account-access-type :target-type
                                      account-access-type :required
                                      common-lisp:t :member-name
                                      "accountAccessType")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (organization-role-name :target-type
                                      organization-role-name :member-name
                                      "organizationRoleName")
                                     (permission-type :target-type
                                      permission-type :required common-lisp:t
                                      :member-name "permissionType")
                                     (stack-set-name :target-type
                                      stack-set-name :member-name
                                      "stackSetName")
                                     (workspace-data-sources :target-type
                                      data-source-types-list :member-name
                                      "workspaceDataSources")
                                     (workspace-description :target-type
                                      description :member-name
                                      "workspaceDescription")
                                     (workspace-name :target-type
                                      workspace-name :member-name
                                      "workspaceName")
                                     (workspace-notification-destinations
                                      :target-type
                                      notification-destinations-list
                                      :member-name
                                      "workspaceNotificationDestinations")
                                     (workspace-organizational-units
                                      :target-type organizational-unit-list
                                      :member-name
                                      "workspaceOrganizationalUnits")
                                     (workspace-role-arn :target-type
                                      iam-role-arn :member-name
                                      "workspaceRoleArn")
                                     (authentication-providers :target-type
                                      authentication-providers :required
                                      common-lisp:t :member-name
                                      "authenticationProviders")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "vpcConfiguration")
                                     (configuration :target-type
                                      overridable-configuration-json
                                      :member-name "configuration")
                                     (network-access-control :target-type
                                      network-access-configuration :member-name
                                      "networkAccessControl")
                                     (grafana-version :target-type
                                      grafana-version :member-name
                                      "grafanaVersion"))
                                    (:shape-name "CreateWorkspaceRequest"))

(smithy/sdk/shapes:define-structure create-workspace-response common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "CreateWorkspaceResponse"))

(smithy/sdk/shapes:define-input create-workspace-service-account-request
                                common-lisp:nil
                                ((name :target-type service-account-name
                                  :required common-lisp:t :member-name "name")
                                 (grafana-role :target-type role :required
                                  common-lisp:t :member-name "grafanaRole")
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "CreateWorkspaceServiceAccountRequest"))

(smithy/sdk/shapes:define-output create-workspace-service-account-response
                                 common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (grafana-role :target-type role :required
                                   common-lisp:t :member-name "grafanaRole")
                                  (workspace-id :target-type workspace-id
                                   :required common-lisp:t :member-name
                                   "workspaceId"))
                                 (:shape-name
                                  "CreateWorkspaceServiceAccountResponse"))

(smithy/sdk/shapes:define-input create-workspace-service-account-token-request
                                common-lisp:nil
                                ((name :target-type service-account-token-name
                                  :required common-lisp:t :member-name "name")
                                 (seconds-to-live :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "secondsToLive")
                                 (service-account-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceAccountId"
                                  :http-label common-lisp:t)
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "CreateWorkspaceServiceAccountTokenRequest"))

(smithy/sdk/shapes:define-output
 create-workspace-service-account-token-response common-lisp:nil
 ((service-account-token :target-type service-account-token-summary-with-key
   :required common-lisp:t :member-name "serviceAccountToken")
  (service-account-id :target-type smithy/sdk/smithy-types:string :required
   common-lisp:t :member-name "serviceAccountId")
  (workspace-id :target-type workspace-id :required common-lisp:t :member-name
   "workspaceId"))
 (:shape-name "CreateWorkspaceServiceAccountTokenResponse"))

(smithy/sdk/shapes:define-type data-source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-source-types-list :member data-source-type)

(smithy/sdk/shapes:define-structure delete-workspace-api-key-request
                                    common-lisp:nil
                                    ((key-name :target-type api-key-name
                                      :required common-lisp:t :member-name
                                      "keyName")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "DeleteWorkspaceApiKeyRequest"))

(smithy/sdk/shapes:define-structure delete-workspace-api-key-response
                                    common-lisp:nil
                                    ((key-name :target-type api-key-name
                                      :required common-lisp:t :member-name
                                      "keyName")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "DeleteWorkspaceApiKeyResponse"))

(smithy/sdk/shapes:define-structure delete-workspace-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "DeleteWorkspaceRequest"))

(smithy/sdk/shapes:define-structure delete-workspace-response common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "DeleteWorkspaceResponse"))

(smithy/sdk/shapes:define-input delete-workspace-service-account-request
                                common-lisp:nil
                                ((service-account-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceAccountId"
                                  :http-label common-lisp:t)
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteWorkspaceServiceAccountRequest"))

(smithy/sdk/shapes:define-output delete-workspace-service-account-response
                                 common-lisp:nil
                                 ((service-account-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "serviceAccountId")
                                  (workspace-id :target-type workspace-id
                                   :required common-lisp:t :member-name
                                   "workspaceId"))
                                 (:shape-name
                                  "DeleteWorkspaceServiceAccountResponse"))

(smithy/sdk/shapes:define-input delete-workspace-service-account-token-request
                                common-lisp:nil
                                ((token-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "tokenId"
                                  :http-label common-lisp:t)
                                 (service-account-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceAccountId"
                                  :http-label common-lisp:t)
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteWorkspaceServiceAccountTokenRequest"))

(smithy/sdk/shapes:define-output
 delete-workspace-service-account-token-response common-lisp:nil
 ((token-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "tokenId")
  (service-account-id :target-type smithy/sdk/smithy-types:string :required
   common-lisp:t :member-name "serviceAccountId")
  (workspace-id :target-type workspace-id :required common-lisp:t :member-name
   "workspaceId"))
 (:shape-name "DeleteWorkspaceServiceAccountTokenResponse"))

(smithy/sdk/shapes:define-structure describe-workspace-authentication-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "DescribeWorkspaceAuthenticationRequest"))

(smithy/sdk/shapes:define-structure describe-workspace-authentication-response
                                    common-lisp:nil
                                    ((authentication :target-type
                                      authentication-description :required
                                      common-lisp:t :member-name
                                      "authentication"))
                                    (:shape-name
                                     "DescribeWorkspaceAuthenticationResponse"))

(smithy/sdk/shapes:define-structure describe-workspace-configuration-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name
                                     "DescribeWorkspaceConfigurationRequest"))

(smithy/sdk/shapes:define-structure describe-workspace-configuration-response
                                    common-lisp:nil
                                    ((configuration :target-type
                                      overridable-configuration-json :required
                                      common-lisp:t :member-name
                                      "configuration")
                                     (grafana-version :target-type
                                      grafana-version :member-name
                                      "grafanaVersion"))
                                    (:shape-name
                                     "DescribeWorkspaceConfigurationResponse"))

(smithy/sdk/shapes:define-structure describe-workspace-request common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "DescribeWorkspaceRequest"))

(smithy/sdk/shapes:define-structure describe-workspace-response common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "DescribeWorkspaceResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure disassociate-license-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (license-type :target-type license-type
                                      :required common-lisp:t :member-name
                                      "licenseType"))
                                    (:shape-name "DisassociateLicenseRequest"))

(smithy/sdk/shapes:define-structure disassociate-license-response
                                    common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "DisassociateLicenseResponse"))

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grafana-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type grafana-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list grafana-version-list :member grafana-version)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union idp-metadata common-lisp:nil
                                ((url :target-type idp-metadata-url
                                  :member-name "url")
                                 (xml :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "xml"))
                                (:shape-name "IdpMetadata"))

(smithy/sdk/shapes:define-type idp-metadata-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

common-lisp:nil

(smithy/sdk/shapes:define-type license-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-permissions-request common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (user-type :target-type user-type
                                      :member-name "userType" :http-query
                                      "userType")
                                     (user-id :target-type sso-id :member-name
                                      "userId" :http-query "userId")
                                     (group-id :target-type sso-id :member-name
                                      "groupId" :http-query "groupId")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "ListPermissionsRequest"))

(smithy/sdk/shapes:define-structure list-permissions-response common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (permissions :target-type
                                      permission-entry-list :required
                                      common-lisp:t :member-name
                                      "permissions"))
                                    (:shape-name "ListPermissionsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-versions-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (workspace-id :target-type workspace-id
                                  :member-name "workspaceId" :http-query
                                  "workspace-id"))
                                (:shape-name "ListVersionsRequest"))

(smithy/sdk/shapes:define-output list-versions-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (grafana-versions :target-type
                                   grafana-version-list :member-name
                                   "grafanaVersions"))
                                 (:shape-name "ListVersionsResponse"))

(smithy/sdk/shapes:define-input list-workspace-service-account-tokens-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (service-account-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceAccountId"
                                  :http-label common-lisp:t)
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "ListWorkspaceServiceAccountTokensRequest"))

(smithy/sdk/shapes:define-output list-workspace-service-account-tokens-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (service-account-tokens :target-type
                                   service-account-token-list :required
                                   common-lisp:t :member-name
                                   "serviceAccountTokens")
                                  (service-account-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "serviceAccountId")
                                  (workspace-id :target-type workspace-id
                                   :required common-lisp:t :member-name
                                   "workspaceId"))
                                 (:shape-name
                                  "ListWorkspaceServiceAccountTokensResponse"))

(smithy/sdk/shapes:define-input list-workspace-service-accounts-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (workspace-id :target-type workspace-id
                                  :required common-lisp:t :member-name
                                  "workspaceId" :http-label common-lisp:t))
                                (:shape-name
                                 "ListWorkspaceServiceAccountsRequest"))

(smithy/sdk/shapes:define-output list-workspace-service-accounts-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (service-accounts :target-type
                                   service-account-list :required common-lisp:t
                                   :member-name "serviceAccounts")
                                  (workspace-id :target-type workspace-id
                                   :required common-lisp:t :member-name
                                   "workspaceId"))
                                 (:shape-name
                                  "ListWorkspaceServiceAccountsResponse"))

(smithy/sdk/shapes:define-structure list-workspaces-request common-lisp:nil
                                    ((max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListWorkspacesRequest"))

(smithy/sdk/shapes:define-structure list-workspaces-response common-lisp:nil
                                    ((workspaces :target-type workspace-list
                                      :required common-lisp:t :member-name
                                      "workspaces")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListWorkspacesResponse"))

(smithy/sdk/shapes:define-type login-validity-duration
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-access-configuration
                                    common-lisp:nil
                                    ((prefix-list-ids :target-type
                                      prefix-list-ids :required common-lisp:t
                                      :member-name "prefixListIds")
                                     (vpce-ids :target-type vpce-ids :required
                                      common-lisp:t :member-name "vpceIds"))
                                    (:shape-name "NetworkAccessConfiguration"))

(smithy/sdk/shapes:define-type notification-destination-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list notification-destinations-list :member
                               notification-destination-type)

(smithy/sdk/shapes:define-type organization-role-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organizational-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organizational-unit-list :member
                               organizational-unit)

(smithy/sdk/shapes:define-type overridable-configuration-json
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure permission-entry common-lisp:nil
                                    ((user :target-type user :required
                                      common-lisp:t :member-name "user")
                                     (role :target-type role :required
                                      common-lisp:t :member-name "role"))
                                    (:shape-name "PermissionEntry"))

(smithy/sdk/shapes:define-list permission-entry-list :member permission-entry)

(smithy/sdk/shapes:define-type permission-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prefix-list-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list prefix-list-ids :member prefix-list-id)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list role-value-list :member role-value)

(smithy/sdk/shapes:define-structure role-values common-lisp:nil
                                    ((editor :target-type role-value-list
                                      :member-name "editor")
                                     (admin :target-type role-value-list
                                      :member-name "admin"))
                                    (:shape-name "RoleValues"))

(smithy/sdk/shapes:define-type ssoclient-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saml-authentication common-lisp:nil
                                    ((status :target-type
                                      saml-configuration-status :required
                                      common-lisp:t :member-name "status")
                                     (configuration :target-type
                                      saml-configuration :member-name
                                      "configuration"))
                                    (:shape-name "SamlAuthentication"))

(smithy/sdk/shapes:define-structure saml-configuration common-lisp:nil
                                    ((idp-metadata :target-type idp-metadata
                                      :required common-lisp:t :member-name
                                      "idpMetadata")
                                     (assertion-attributes :target-type
                                      assertion-attributes :member-name
                                      "assertionAttributes")
                                     (role-values :target-type role-values
                                      :member-name "roleValues")
                                     (allowed-organizations :target-type
                                      allowed-organizations :member-name
                                      "allowedOrganizations")
                                     (login-validity-duration :target-type
                                      login-validity-duration :member-name
                                      "loginValidityDuration"))
                                    (:shape-name "SamlConfiguration"))

(smithy/sdk/shapes:define-type saml-configuration-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

common-lisp:nil

(smithy/sdk/shapes:define-list service-account-list :member
                               service-account-summary)

(smithy/sdk/shapes:define-type service-account-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-account-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (is-disabled :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "isDisabled")
                                     (grafana-role :target-type role :required
                                      common-lisp:t :member-name
                                      "grafanaRole"))
                                    (:shape-name "ServiceAccountSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type service-account-token-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-account-token-list :member
                               service-account-token-summary)

(smithy/sdk/shapes:define-type service-account-token-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-account-token-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (expires-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "expiresAt")
                                     (last-used-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUsedAt"))
                                    (:shape-name "ServiceAccountTokenSummary"))

(smithy/sdk/shapes:define-structure service-account-token-summary-with-key
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (key :target-type
                                      service-account-token-key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name
                                     "ServiceAccountTokenSummaryWithKey"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sso-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "tagKeys"
                                      :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type update-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure update-error common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message")
                                     (caused-by :target-type update-instruction
                                      :required common-lisp:t :member-name
                                      "causedBy"))
                                    (:shape-name "UpdateError"))

(smithy/sdk/shapes:define-list update-error-list :member update-error)

(smithy/sdk/shapes:define-structure update-instruction common-lisp:nil
                                    ((action :target-type update-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (role :target-type role :required
                                      common-lisp:t :member-name "role")
                                     (users :target-type user-list :required
                                      common-lisp:t :member-name "users"))
                                    (:shape-name "UpdateInstruction"))

(smithy/sdk/shapes:define-list update-instruction-batch :member
                               update-instruction)

(smithy/sdk/shapes:define-structure update-permissions-request common-lisp:nil
                                    ((update-instruction-batch :target-type
                                      update-instruction-batch :required
                                      common-lisp:t :member-name
                                      "updateInstructionBatch")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId"))
                                    (:shape-name "UpdatePermissionsRequest"))

(smithy/sdk/shapes:define-structure update-permissions-response common-lisp:nil
                                    ((errors :target-type update-error-list
                                      :required common-lisp:t :member-name
                                      "errors"))
                                    (:shape-name "UpdatePermissionsResponse"))

(smithy/sdk/shapes:define-structure update-workspace-authentication-request
                                    common-lisp:nil
                                    ((workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (authentication-providers :target-type
                                      authentication-providers :required
                                      common-lisp:t :member-name
                                      "authenticationProviders")
                                     (saml-configuration :target-type
                                      saml-configuration :member-name
                                      "samlConfiguration"))
                                    (:shape-name
                                     "UpdateWorkspaceAuthenticationRequest"))

(smithy/sdk/shapes:define-structure update-workspace-authentication-response
                                    common-lisp:nil
                                    ((authentication :target-type
                                      authentication-description :required
                                      common-lisp:t :member-name
                                      "authentication"))
                                    (:shape-name
                                     "UpdateWorkspaceAuthenticationResponse"))

(smithy/sdk/shapes:define-structure update-workspace-configuration-request
                                    common-lisp:nil
                                    ((configuration :target-type
                                      overridable-configuration-json :required
                                      common-lisp:t :member-name
                                      "configuration")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (grafana-version :target-type
                                      grafana-version :member-name
                                      "grafanaVersion"))
                                    (:shape-name
                                     "UpdateWorkspaceConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-workspace-configuration-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "UpdateWorkspaceConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-workspace-request common-lisp:nil
                                    ((account-access-type :target-type
                                      account-access-type :member-name
                                      "accountAccessType")
                                     (organization-role-name :target-type
                                      organization-role-name :member-name
                                      "organizationRoleName")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "permissionType")
                                     (stack-set-name :target-type
                                      stack-set-name :member-name
                                      "stackSetName")
                                     (workspace-data-sources :target-type
                                      data-source-types-list :member-name
                                      "workspaceDataSources")
                                     (workspace-description :target-type
                                      description :member-name
                                      "workspaceDescription")
                                     (workspace-id :target-type workspace-id
                                      :required common-lisp:t :member-name
                                      "workspaceId")
                                     (workspace-name :target-type
                                      workspace-name :member-name
                                      "workspaceName")
                                     (workspace-notification-destinations
                                      :target-type
                                      notification-destinations-list
                                      :member-name
                                      "workspaceNotificationDestinations")
                                     (workspace-organizational-units
                                      :target-type organizational-unit-list
                                      :member-name
                                      "workspaceOrganizationalUnits")
                                     (workspace-role-arn :target-type
                                      iam-role-arn :member-name
                                      "workspaceRoleArn")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "vpcConfiguration")
                                     (remove-vpc-configuration :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "removeVpcConfiguration")
                                     (network-access-control :target-type
                                      network-access-configuration :member-name
                                      "networkAccessControl")
                                     (remove-network-access-configuration
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "removeNetworkAccessConfiguration"))
                                    (:shape-name "UpdateWorkspaceRequest"))

(smithy/sdk/shapes:define-structure update-workspace-response common-lisp:nil
                                    ((workspace :target-type
                                      workspace-description :required
                                      common-lisp:t :member-name "workspace"))
                                    (:shape-name "UpdateWorkspaceResponse"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((id :target-type sso-id :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type user-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-type user-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-type vpce-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpce-ids :member vpce-id)

common-lisp:nil

(smithy/sdk/shapes:define-structure workspace-description common-lisp:nil
                                    ((account-access-type :target-type
                                      account-access-type :member-name
                                      "accountAccessType")
                                     (created :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "created")
                                     (data-sources :target-type
                                      data-source-types-list :required
                                      common-lisp:t :member-name "dataSources")
                                     (description :target-type description
                                      :member-name "description")
                                     (endpoint :target-type endpoint :required
                                      common-lisp:t :member-name "endpoint")
                                     (grafana-version :target-type
                                      grafana-version :required common-lisp:t
                                      :member-name "grafanaVersion")
                                     (id :target-type workspace-id :required
                                      common-lisp:t :member-name "id")
                                     (modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modified")
                                     (name :target-type workspace-name
                                      :member-name "name")
                                     (organization-role-name :target-type
                                      organization-role-name :member-name
                                      "organizationRoleName")
                                     (notification-destinations :target-type
                                      notification-destinations-list
                                      :member-name "notificationDestinations")
                                     (organizational-units :target-type
                                      organizational-unit-list :member-name
                                      "organizationalUnits")
                                     (permission-type :target-type
                                      permission-type :member-name
                                      "permissionType")
                                     (stack-set-name :target-type
                                      stack-set-name :member-name
                                      "stackSetName")
                                     (status :target-type workspace-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (workspace-role-arn :target-type
                                      iam-role-arn :member-name
                                      "workspaceRoleArn")
                                     (license-type :target-type license-type
                                      :member-name "licenseType")
                                     (free-trial-consumed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "freeTrialConsumed")
                                     (license-expiration :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "licenseExpiration")
                                     (free-trial-expiration :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "freeTrialExpiration")
                                     (authentication :target-type
                                      authentication-summary :required
                                      common-lisp:t :member-name
                                      "authentication")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "vpcConfiguration")
                                     (network-access-control :target-type
                                      network-access-configuration :member-name
                                      "networkAccessControl")
                                     (grafana-token :target-type grafana-token
                                      :member-name "grafanaToken"))
                                    (:shape-name "WorkspaceDescription"))

(smithy/sdk/shapes:define-type workspace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspace-list :member workspace-summary)

(smithy/sdk/shapes:define-type workspace-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workspace-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workspace-summary common-lisp:nil
                                    ((created :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "created")
                                     (description :target-type description
                                      :member-name "description")
                                     (endpoint :target-type endpoint :required
                                      common-lisp:t :member-name "endpoint")
                                     (grafana-version :target-type
                                      grafana-version :required common-lisp:t
                                      :member-name "grafanaVersion")
                                     (id :target-type workspace-id :required
                                      common-lisp:t :member-name "id")
                                     (modified :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "modified")
                                     (name :target-type workspace-name
                                      :member-name "name")
                                     (notification-destinations :target-type
                                      notification-destinations-list
                                      :member-name "notificationDestinations")
                                     (status :target-type workspace-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (authentication :target-type
                                      authentication-summary :required
                                      common-lisp:t :member-name
                                      "authentication")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (license-type :target-type license-type
                                      :member-name "licenseType")
                                     (grafana-token :target-type grafana-token
                                      :member-name "grafanaToken"))
                                    (:shape-name "WorkspaceSummary"))

(smithy/sdk/operation:define-operation associate-license :shape-name
                                       "AssociateLicense" :input
                                       associate-license-request :output
                                       associate-license-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/licenses/{licenseType}"
                                       :code 202)

(smithy/sdk/operation:define-operation create-workspace :shape-name
                                       "CreateWorkspace" :input
                                       create-workspace-request :output
                                       create-workspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workspaces" :code
                                       202)

(smithy/sdk/operation:define-operation create-workspace-api-key :shape-name
                                       "CreateWorkspaceApiKey" :input
                                       create-workspace-api-key-request :output
                                       create-workspace-api-key-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/apikeys"
                                       :code 200)

(smithy/sdk/operation:define-operation create-workspace-service-account
                                       :shape-name
                                       "CreateWorkspaceServiceAccount" :input
                                       create-workspace-service-account-request
                                       :output
                                       create-workspace-service-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/serviceaccounts"
                                       :code 200)

(smithy/sdk/operation:define-operation create-workspace-service-account-token
                                       :shape-name
                                       "CreateWorkspaceServiceAccountToken"
                                       :input
                                       create-workspace-service-account-token-request
                                       :output
                                       create-workspace-service-account-token-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-workspace :shape-name
                                       "DeleteWorkspace" :input
                                       delete-workspace-request :output
                                       delete-workspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}" :code 202)

(smithy/sdk/operation:define-operation delete-workspace-api-key :shape-name
                                       "DeleteWorkspaceApiKey" :input
                                       delete-workspace-api-key-request :output
                                       delete-workspace-api-key-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/apikeys/{keyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-workspace-service-account
                                       :shape-name
                                       "DeleteWorkspaceServiceAccount" :input
                                       delete-workspace-service-account-request
                                       :output
                                       delete-workspace-service-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-workspace-service-account-token
                                       :shape-name
                                       "DeleteWorkspaceServiceAccountToken"
                                       :input
                                       delete-workspace-service-account-token-request
                                       :output
                                       delete-workspace-service-account-token-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens/{tokenId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-workspace :shape-name
                                       "DescribeWorkspace" :input
                                       describe-workspace-request :output
                                       describe-workspace-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}" :code 200)

(smithy/sdk/operation:define-operation describe-workspace-authentication
                                       :shape-name
                                       "DescribeWorkspaceAuthentication" :input
                                       describe-workspace-authentication-request
                                       :output
                                       describe-workspace-authentication-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/authentication"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-workspace-configuration
                                       :shape-name
                                       "DescribeWorkspaceConfiguration" :input
                                       describe-workspace-configuration-request
                                       :output
                                       describe-workspace-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-license :shape-name
                                       "DisassociateLicense" :input
                                       disassociate-license-request :output
                                       disassociate-license-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workspaces/{workspaceId}/licenses/{licenseType}"
                                       :code 202)

(smithy/sdk/operation:define-operation list-permissions :shape-name
                                       "ListPermissions" :input
                                       list-permissions-request :output
                                       list-permissions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/permissions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-versions :shape-name "ListVersions"
                                       :input list-versions-request :output
                                       list-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/versions" :code 200)

(smithy/sdk/operation:define-operation list-workspace-service-account-tokens
                                       :shape-name
                                       "ListWorkspaceServiceAccountTokens"
                                       :input
                                       list-workspace-service-account-tokens-request
                                       :output
                                       list-workspace-service-account-tokens-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/serviceaccounts/{serviceAccountId}/tokens"
                                       :code 200)

(smithy/sdk/operation:define-operation list-workspace-service-accounts
                                       :shape-name
                                       "ListWorkspaceServiceAccounts" :input
                                       list-workspace-service-accounts-request
                                       :output
                                       list-workspace-service-accounts-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workspaces/{workspaceId}/serviceaccounts"
                                       :code 200)

(smithy/sdk/operation:define-operation list-workspaces :shape-name
                                       "ListWorkspaces" :input
                                       list-workspaces-request :output
                                       list-workspaces-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri "/workspaces" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-permissions :shape-name
                                       "UpdatePermissions" :input
                                       update-permissions-request :output
                                       update-permissions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/workspaces/{workspaceId}/permissions"
                                       :code 200)

(smithy/sdk/operation:define-operation update-workspace :shape-name
                                       "UpdateWorkspace" :input
                                       update-workspace-request :output
                                       update-workspace-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}" :code 202)

(smithy/sdk/operation:define-operation update-workspace-authentication
                                       :shape-name
                                       "UpdateWorkspaceAuthentication" :input
                                       update-workspace-authentication-request
                                       :output
                                       update-workspace-authentication-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workspaces/{workspaceId}/authentication"
                                       :code 200)

(smithy/sdk/operation:define-operation update-workspace-configuration
                                       :shape-name
                                       "UpdateWorkspaceConfiguration" :input
                                       update-workspace-configuration-request
                                       :output
                                       update-workspace-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/workspaces/{workspaceId}/configuration"
                                       :code 202)
