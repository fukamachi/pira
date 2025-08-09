(uiop/package:define-package #:pira/amplifybackend (:use)
                             (:export #:additional-constraints-element
                              #:amplify-backend #:auth-resources
                              #:authenticated-element
                              #:backend-apiapp-sync-auth-settings
                              #:backend-apiauth-type
                              #:backend-apiconflict-resolution
                              #:backend-apiresource-config
                              #:backend-auth-apple-provider-config
                              #:backend-auth-social-provider-config
                              #:backend-job-resp-obj
                              #:backend-storage-permissions
                              #:bad-request-exception #:clone-backend
                              #:clone-backend-request #:clone-backend-response
                              #:create-backend #:create-backend-api
                              #:create-backend-apirequest
                              #:create-backend-apiresponse
                              #:create-backend-auth
                              #:create-backend-auth-forgot-password-config
                              #:create-backend-auth-identity-pool-config
                              #:create-backend-auth-mfaconfig
                              #:create-backend-auth-oauth-config
                              #:create-backend-auth-password-policy-config
                              #:create-backend-auth-request
                              #:create-backend-auth-resource-config
                              #:create-backend-auth-response
                              #:create-backend-auth-user-pool-config
                              #:create-backend-auth-verification-message-config
                              #:create-backend-config
                              #:create-backend-config-request
                              #:create-backend-config-response
                              #:create-backend-request
                              #:create-backend-response
                              #:create-backend-storage
                              #:create-backend-storage-request
                              #:create-backend-storage-resource-config
                              #:create-backend-storage-response #:create-token
                              #:create-token-request #:create-token-response
                              #:delete-backend #:delete-backend-api
                              #:delete-backend-apirequest
                              #:delete-backend-apiresponse
                              #:delete-backend-auth
                              #:delete-backend-auth-request
                              #:delete-backend-auth-response
                              #:delete-backend-request
                              #:delete-backend-response
                              #:delete-backend-storage
                              #:delete-backend-storage-request
                              #:delete-backend-storage-response #:delete-token
                              #:delete-token-request #:delete-token-response
                              #:delivery-method #:email-settings
                              #:gateway-timeout-exception
                              #:generate-backend-apimodels
                              #:generate-backend-apimodels-request
                              #:generate-backend-apimodels-response
                              #:get-backend #:get-backend-api
                              #:get-backend-apimodels
                              #:get-backend-apimodels-request
                              #:get-backend-apimodels-response
                              #:get-backend-apirequest
                              #:get-backend-apiresponse #:get-backend-auth
                              #:get-backend-auth-request
                              #:get-backend-auth-response #:get-backend-job
                              #:get-backend-job-request
                              #:get-backend-job-response #:get-backend-request
                              #:get-backend-response #:get-backend-storage
                              #:get-backend-storage-request
                              #:get-backend-storage-resource-config
                              #:get-backend-storage-response #:get-token
                              #:get-token-request #:get-token-response
                              #:import-backend-auth
                              #:import-backend-auth-request
                              #:import-backend-auth-response
                              #:import-backend-storage
                              #:import-backend-storage-request
                              #:import-backend-storage-response
                              #:list-backend-jobs #:list-backend-jobs-request
                              #:list-backend-jobs-response
                              #:list-of-additional-constraints-element
                              #:list-of-authenticated-element
                              #:list-of-backend-apiauth-type
                              #:list-of-backend-job-resp-obj
                              #:list-of-mfa-types-element
                              #:list-of-oauth-scopes-element
                              #:list-of-required-sign-up-attributes-element
                              #:list-of-s3bucket-info
                              #:list-of-un-authenticated-element
                              #:list-of-string #:list-s3buckets
                              #:list-s3buckets-request
                              #:list-s3buckets-response
                              #:login-auth-config-req-obj #:mfamode
                              #:mfa-types-element #:mode #:not-found-exception
                              #:oauth-grant-type #:oauth-scopes-element
                              #:remove-all-backends
                              #:remove-all-backends-request
                              #:remove-all-backends-response
                              #:remove-backend-config
                              #:remove-backend-config-request
                              #:remove-backend-config-response
                              #:required-sign-up-attributes-element
                              #:resolution-strategy #:resource-config
                              #:s3bucket-info #:service #:service-name
                              #:settings #:sign-in-method #:sms-settings
                              #:social-provider-settings #:status
                              #:too-many-requests-exception
                              #:un-authenticated-element #:update-backend-api
                              #:update-backend-apirequest
                              #:update-backend-apiresponse
                              #:update-backend-auth
                              #:update-backend-auth-forgot-password-config
                              #:update-backend-auth-identity-pool-config
                              #:update-backend-auth-mfaconfig
                              #:update-backend-auth-oauth-config
                              #:update-backend-auth-password-policy-config
                              #:update-backend-auth-request
                              #:update-backend-auth-resource-config
                              #:update-backend-auth-response
                              #:update-backend-auth-user-pool-config
                              #:update-backend-auth-verification-message-config
                              #:update-backend-config
                              #:update-backend-config-request
                              #:update-backend-config-response
                              #:update-backend-job #:update-backend-job-request
                              #:update-backend-job-response
                              #:update-backend-storage
                              #:update-backend-storage-request
                              #:update-backend-storage-resource-config
                              #:update-backend-storage-response #:boolean
                              #:double #:integer-min1max25 #:string))
(common-lisp:in-package #:pira/amplifybackend)

(smithy/sdk/service:define-service amplify-backend :shape-name "AmplifyBackend"
                                   :version "2020-08-11" :title
                                   "AmplifyBackend" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "AmplifyBackend")
                                      ("arnNamespace" . "amplifybackend")
                                      ("cloudFormationName" . "AmplifyBackend")
                                      ("cloudTrailEventSource"
                                       . "amplifybackend.amazonaws.com")
                                      ("endpointPrefix" . "amplifybackend"))
                                     ("aws.auth#sigv4"
                                      ("name" . "amplifybackend"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum additional-constraints-element
    common-lisp:nil
  (:require-digit "REQUIRE_DIGIT")
  (:require-lowercase "REQUIRE_LOWERCASE")
  (:require-symbol "REQUIRE_SYMBOL")
  (:require-uppercase "REQUIRE_UPPERCASE"))

(smithy/sdk/shapes:define-enum auth-resources
    common-lisp:nil
  (:user-pool-only "USER_POOL_ONLY")
  (:identity-pool-and-user-pool "IDENTITY_POOL_AND_USER_POOL"))

(smithy/sdk/shapes:define-enum authenticated-element
    common-lisp:nil
  (:read "READ")
  (:create-and-update "CREATE_AND_UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-structure backend-apiapp-sync-auth-settings
                                    common-lisp:nil
                                    ((cognito-user-pool-id :target-type string
                                      :member-name "CognitoUserPoolId"
                                      :json-name "cognitoUserPoolId")
                                     (description :target-type string
                                      :member-name "Description" :json-name
                                      "description")
                                     (expiration-time :target-type double
                                      :member-name "ExpirationTime" :json-name
                                      "expirationTime")
                                     (open-idauth-ttl :target-type string
                                      :member-name "OpenIDAuthTTL" :json-name
                                      "openIDAuthTTL")
                                     (open-idclient-id :target-type string
                                      :member-name "OpenIDClientId" :json-name
                                      "openIDClientId")
                                     (open-idiat-ttl :target-type string
                                      :member-name "OpenIDIatTTL" :json-name
                                      "openIDIatTTL")
                                     (open-idissue-url :target-type string
                                      :member-name "OpenIDIssueURL" :json-name
                                      "openIDIssueURL")
                                     (open-idprovider-name :target-type string
                                      :member-name "OpenIDProviderName"
                                      :json-name "openIDProviderName"))
                                    (:shape-name
                                     "BackendAPIAppSyncAuthSettings"))

(smithy/sdk/shapes:define-structure backend-apiauth-type common-lisp:nil
                                    ((mode :target-type mode :member-name
                                      "Mode" :json-name "mode")
                                     (settings :target-type
                                      backend-apiapp-sync-auth-settings
                                      :member-name "Settings" :json-name
                                      "settings"))
                                    (:shape-name "BackendAPIAuthType"))

(smithy/sdk/shapes:define-structure backend-apiconflict-resolution
                                    common-lisp:nil
                                    ((resolution-strategy :target-type
                                      resolution-strategy :member-name
                                      "ResolutionStrategy" :json-name
                                      "resolutionStrategy"))
                                    (:shape-name
                                     "BackendAPIConflictResolution"))

(smithy/sdk/shapes:define-structure backend-apiresource-config common-lisp:nil
                                    ((additional-auth-types :target-type
                                      list-of-backend-apiauth-type :member-name
                                      "AdditionalAuthTypes" :json-name
                                      "additionalAuthTypes")
                                     (api-name :target-type string :member-name
                                      "ApiName" :json-name "apiName")
                                     (conflict-resolution :target-type
                                      backend-apiconflict-resolution
                                      :member-name "ConflictResolution"
                                      :json-name "conflictResolution")
                                     (default-auth-type :target-type
                                      backend-apiauth-type :member-name
                                      "DefaultAuthType" :json-name
                                      "defaultAuthType")
                                     (service :target-type string :member-name
                                      "Service" :json-name "service")
                                     (transform-schema :target-type string
                                      :member-name "TransformSchema" :json-name
                                      "transformSchema"))
                                    (:shape-name "BackendAPIResourceConfig"))

(smithy/sdk/shapes:define-structure backend-auth-apple-provider-config
                                    common-lisp:nil
                                    ((client-id :target-type string
                                      :member-name "ClientId" :json-name
                                      "client_id")
                                     (key-id :target-type string :member-name
                                      "KeyId" :json-name "key_id")
                                     (private-key :target-type string
                                      :member-name "PrivateKey" :json-name
                                      "private_key")
                                     (team-id :target-type string :member-name
                                      "TeamId" :json-name "team_id"))
                                    (:shape-name
                                     "BackendAuthAppleProviderConfig"))

(smithy/sdk/shapes:define-structure backend-auth-social-provider-config
                                    common-lisp:nil
                                    ((client-id :target-type string
                                      :member-name "ClientId" :json-name
                                      "client_id")
                                     (client-secret :target-type string
                                      :member-name "ClientSecret" :json-name
                                      "client_secret"))
                                    (:shape-name
                                     "BackendAuthSocialProviderConfig"))

(smithy/sdk/shapes:define-structure backend-job-resp-obj common-lisp:nil
                                    ((app-id :target-type string :required
                                      common-lisp:t :member-name "AppId"
                                      :json-name "appId")
                                     (backend-environment-name :target-type
                                      string :required common-lisp:t
                                      :member-name "BackendEnvironmentName"
                                      :json-name "backendEnvironmentName")
                                     (create-time :target-type string
                                      :member-name "CreateTime" :json-name
                                      "createTime")
                                     (error :target-type string :member-name
                                      "Error" :json-name "error")
                                     (job-id :target-type string :member-name
                                      "JobId" :json-name "jobId")
                                     (operation :target-type string
                                      :member-name "Operation" :json-name
                                      "operation")
                                     (status :target-type string :member-name
                                      "Status" :json-name "status")
                                     (update-time :target-type string
                                      :member-name "UpdateTime" :json-name
                                      "updateTime"))
                                    (:shape-name "BackendJobRespObj"))

(smithy/sdk/shapes:define-structure backend-storage-permissions common-lisp:nil
                                    ((authenticated :target-type
                                      list-of-authenticated-element :required
                                      common-lisp:t :member-name
                                      "Authenticated" :json-name
                                      "authenticated")
                                     (un-authenticated :target-type
                                      list-of-un-authenticated-element
                                      :member-name "UnAuthenticated" :json-name
                                      "unAuthenticated"))
                                    (:shape-name "BackendStoragePermissions"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input clone-backend-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (target-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetEnvironmentName" :json-name
                                  "targetEnvironmentName"))
                                (:shape-name "CloneBackendRequest"))

(smithy/sdk/shapes:define-output clone-backend-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CloneBackendResponse"))

(smithy/sdk/shapes:define-input create-backend-apirequest common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :json-name
                                  "backendEnvironmentName")
                                 (resource-config :target-type
                                  backend-apiresource-config :required
                                  common-lisp:t :member-name "ResourceConfig"
                                  :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "CreateBackendAPIRequest"))

(smithy/sdk/shapes:define-output create-backend-apiresponse common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CreateBackendAPIResponse"))

(smithy/sdk/shapes:define-structure create-backend-auth-forgot-password-config
                                    common-lisp:nil
                                    ((delivery-method :target-type
                                      delivery-method :required common-lisp:t
                                      :member-name "DeliveryMethod" :json-name
                                      "deliveryMethod")
                                     (email-settings :target-type
                                      email-settings :member-name
                                      "EmailSettings" :json-name
                                      "emailSettings")
                                     (sms-settings :target-type sms-settings
                                      :member-name "SmsSettings" :json-name
                                      "smsSettings"))
                                    (:shape-name
                                     "CreateBackendAuthForgotPasswordConfig"))

(smithy/sdk/shapes:define-structure create-backend-auth-identity-pool-config
                                    common-lisp:nil
                                    ((identity-pool-name :target-type string
                                      :required common-lisp:t :member-name
                                      "IdentityPoolName" :json-name
                                      "identityPoolName")
                                     (unauthenticated-login :target-type
                                      boolean :required common-lisp:t
                                      :member-name "UnauthenticatedLogin"
                                      :json-name "unauthenticatedLogin"))
                                    (:shape-name
                                     "CreateBackendAuthIdentityPoolConfig"))

(smithy/sdk/shapes:define-structure create-backend-auth-mfaconfig
                                    common-lisp:nil
                                    ((mfamode :target-type mfamode :required
                                      common-lisp:t :member-name "MFAMode")
                                     (settings :target-type settings
                                      :member-name "Settings" :json-name
                                      "settings"))
                                    (:shape-name "CreateBackendAuthMFAConfig"))

(smithy/sdk/shapes:define-structure create-backend-auth-oauth-config
                                    common-lisp:nil
                                    ((domain-prefix :target-type string
                                      :member-name "DomainPrefix" :json-name
                                      "domainPrefix")
                                     (oauth-grant-type :target-type
                                      oauth-grant-type :required common-lisp:t
                                      :member-name "OAuthGrantType" :json-name
                                      "oAuthGrantType")
                                     (oauth-scopes :target-type
                                      list-of-oauth-scopes-element :required
                                      common-lisp:t :member-name "OAuthScopes"
                                      :json-name "oAuthScopes")
                                     (redirect-sign-in-uris :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "RedirectSignInURIs"
                                      :json-name "redirectSignInURIs")
                                     (redirect-sign-out-uris :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "RedirectSignOutURIs"
                                      :json-name "redirectSignOutURIs")
                                     (social-provider-settings :target-type
                                      social-provider-settings :member-name
                                      "SocialProviderSettings" :json-name
                                      "socialProviderSettings"))
                                    (:shape-name
                                     "CreateBackendAuthOAuthConfig"))

(smithy/sdk/shapes:define-structure create-backend-auth-password-policy-config
                                    common-lisp:nil
                                    ((additional-constraints :target-type
                                      list-of-additional-constraints-element
                                      :member-name "AdditionalConstraints"
                                      :json-name "additionalConstraints")
                                     (minimum-length :target-type double
                                      :required common-lisp:t :member-name
                                      "MinimumLength" :json-name
                                      "minimumLength"))
                                    (:shape-name
                                     "CreateBackendAuthPasswordPolicyConfig"))

(smithy/sdk/shapes:define-input create-backend-auth-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :json-name
                                  "backendEnvironmentName")
                                 (resource-config :target-type
                                  create-backend-auth-resource-config :required
                                  common-lisp:t :member-name "ResourceConfig"
                                  :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "CreateBackendAuthRequest"))

(smithy/sdk/shapes:define-structure create-backend-auth-resource-config
                                    common-lisp:nil
                                    ((auth-resources :target-type
                                      auth-resources :required common-lisp:t
                                      :member-name "AuthResources" :json-name
                                      "authResources")
                                     (identity-pool-configs :target-type
                                      create-backend-auth-identity-pool-config
                                      :member-name "IdentityPoolConfigs"
                                      :json-name "identityPoolConfigs")
                                     (service :target-type service :required
                                      common-lisp:t :member-name "Service"
                                      :json-name "service")
                                     (user-pool-configs :target-type
                                      create-backend-auth-user-pool-config
                                      :required common-lisp:t :member-name
                                      "UserPoolConfigs" :json-name
                                      "userPoolConfigs"))
                                    (:shape-name
                                     "CreateBackendAuthResourceConfig"))

(smithy/sdk/shapes:define-output create-backend-auth-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CreateBackendAuthResponse"))

(smithy/sdk/shapes:define-structure create-backend-auth-user-pool-config
                                    common-lisp:nil
                                    ((forgot-password :target-type
                                      create-backend-auth-forgot-password-config
                                      :member-name "ForgotPassword" :json-name
                                      "forgotPassword")
                                     (mfa :target-type
                                      create-backend-auth-mfaconfig
                                      :member-name "Mfa" :json-name "mfa")
                                     (oauth :target-type
                                      create-backend-auth-oauth-config
                                      :member-name "OAuth" :json-name "oAuth")
                                     (password-policy :target-type
                                      create-backend-auth-password-policy-config
                                      :member-name "PasswordPolicy" :json-name
                                      "passwordPolicy")
                                     (required-sign-up-attributes :target-type
                                      list-of-required-sign-up-attributes-element
                                      :required common-lisp:t :member-name
                                      "RequiredSignUpAttributes" :json-name
                                      "requiredSignUpAttributes")
                                     (sign-in-method :target-type
                                      sign-in-method :required common-lisp:t
                                      :member-name "SignInMethod" :json-name
                                      "signInMethod")
                                     (user-pool-name :target-type string
                                      :required common-lisp:t :member-name
                                      "UserPoolName" :json-name "userPoolName")
                                     (verification-message :target-type
                                      create-backend-auth-verification-message-config
                                      :member-name "VerificationMessage"
                                      :json-name "verificationMessage"))
                                    (:shape-name
                                     "CreateBackendAuthUserPoolConfig"))

(smithy/sdk/shapes:define-structure
 create-backend-auth-verification-message-config common-lisp:nil
 ((delivery-method :target-type delivery-method :required common-lisp:t
   :member-name "DeliveryMethod" :json-name "deliveryMethod")
  (email-settings :target-type email-settings :member-name "EmailSettings"
   :json-name "emailSettings")
  (sms-settings :target-type sms-settings :member-name "SmsSettings" :json-name
   "smsSettings"))
 (:shape-name "CreateBackendAuthVerificationMessageConfig"))

(smithy/sdk/shapes:define-input create-backend-config-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-manager-app-id :target-type string
                                  :member-name "BackendManagerAppId" :json-name
                                  "backendManagerAppId"))
                                (:shape-name "CreateBackendConfigRequest"))

(smithy/sdk/shapes:define-output create-backend-config-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CreateBackendConfigResponse"))

(smithy/sdk/shapes:define-input create-backend-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId" :json-name
                                  "appId")
                                 (app-name :target-type string :required
                                  common-lisp:t :member-name "AppName"
                                  :json-name "appName")
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :json-name
                                  "backendEnvironmentName")
                                 (resource-config :target-type resource-config
                                  :member-name "ResourceConfig" :json-name
                                  "resourceConfig")
                                 (resource-name :target-type string
                                  :member-name "ResourceName" :json-name
                                  "resourceName"))
                                (:shape-name "CreateBackendRequest"))

(smithy/sdk/shapes:define-output create-backend-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CreateBackendResponse"))

(smithy/sdk/shapes:define-input create-backend-storage-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :json-name
                                  "backendEnvironmentName")
                                 (resource-config :target-type
                                  create-backend-storage-resource-config
                                  :required common-lisp:t :member-name
                                  "ResourceConfig" :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "CreateBackendStorageRequest"))

(smithy/sdk/shapes:define-structure create-backend-storage-resource-config
                                    common-lisp:nil
                                    ((bucket-name :target-type string
                                      :member-name "BucketName" :json-name
                                      "bucketName")
                                     (permissions :target-type
                                      backend-storage-permissions :required
                                      common-lisp:t :member-name "Permissions"
                                      :json-name "permissions")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName" :json-name "serviceName"))
                                    (:shape-name
                                     "CreateBackendStorageResourceConfig"))

(smithy/sdk/shapes:define-output create-backend-storage-response
                                 common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "CreateBackendStorageResponse"))

(smithy/sdk/shapes:define-input create-token-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t))
                                (:shape-name "CreateTokenRequest"))

(smithy/sdk/shapes:define-output create-token-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (challenge-code :target-type string
                                   :member-name "ChallengeCode" :json-name
                                   "challengeCode")
                                  (session-id :target-type string :member-name
                                   "SessionId" :json-name "sessionId")
                                  (ttl :target-type string :member-name "Ttl"
                                   :json-name "ttl"))
                                 (:shape-name "CreateTokenResponse"))

(smithy/sdk/shapes:define-input delete-backend-apirequest common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-config :target-type
                                  backend-apiresource-config :member-name
                                  "ResourceConfig" :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "DeleteBackendAPIRequest"))

(smithy/sdk/shapes:define-output delete-backend-apiresponse common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "DeleteBackendAPIResponse"))

(smithy/sdk/shapes:define-input delete-backend-auth-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "DeleteBackendAuthRequest"))

(smithy/sdk/shapes:define-output delete-backend-auth-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "DeleteBackendAuthResponse"))

(smithy/sdk/shapes:define-input delete-backend-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteBackendRequest"))

(smithy/sdk/shapes:define-output delete-backend-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "DeleteBackendResponse"))

(smithy/sdk/shapes:define-input delete-backend-storage-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName")
                                 (service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName" :json-name "serviceName"))
                                (:shape-name "DeleteBackendStorageRequest"))

(smithy/sdk/shapes:define-output delete-backend-storage-response
                                 common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "DeleteBackendStorageResponse"))

(smithy/sdk/shapes:define-input delete-token-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type string :required
                                  common-lisp:t :member-name "SessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteTokenRequest"))

(smithy/sdk/shapes:define-output delete-token-response common-lisp:nil
                                 ((is-success :target-type boolean :member-name
                                   "IsSuccess" :json-name "isSuccess"))
                                 (:shape-name "DeleteTokenResponse"))

(smithy/sdk/shapes:define-enum delivery-method
    common-lisp:nil
  (:email "EMAIL")
  (:sms "SMS"))

(smithy/sdk/shapes:define-structure email-settings common-lisp:nil
                                    ((email-message :target-type string
                                      :member-name "EmailMessage" :json-name
                                      "emailMessage")
                                     (email-subject :target-type string
                                      :member-name "EmailSubject" :json-name
                                      "emailSubject"))
                                    (:shape-name "EmailSettings"))

(smithy/sdk/shapes:define-error gateway-timeout-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "GatewayTimeoutException")
                                (:error-code 504))

(smithy/sdk/shapes:define-input generate-backend-apimodels-request
                                common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "GenerateBackendAPIModelsRequest"))

(smithy/sdk/shapes:define-output generate-backend-apimodels-response
                                 common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name
                                  "GenerateBackendAPIModelsResponse"))

(smithy/sdk/shapes:define-input get-backend-apimodels-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "GetBackendAPIModelsRequest"))

(smithy/sdk/shapes:define-output get-backend-apimodels-response common-lisp:nil
                                 ((models :target-type string :member-name
                                   "Models" :json-name "models")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status")
                                  (model-introspection-schema :target-type
                                   string :member-name
                                   "ModelIntrospectionSchema" :json-name
                                   "modelIntrospectionSchema"))
                                 (:shape-name "GetBackendAPIModelsResponse"))

(smithy/sdk/shapes:define-input get-backend-apirequest common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-config :target-type
                                  backend-apiresource-config :member-name
                                  "ResourceConfig" :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "GetBackendAPIRequest"))

(smithy/sdk/shapes:define-output get-backend-apiresponse common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (resource-config :target-type
                                   backend-apiresource-config :member-name
                                   "ResourceConfig" :json-name
                                   "resourceConfig")
                                  (resource-name :target-type string
                                   :member-name "ResourceName" :json-name
                                   "resourceName"))
                                 (:shape-name "GetBackendAPIResponse"))

(smithy/sdk/shapes:define-input get-backend-auth-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "GetBackendAuthRequest"))

(smithy/sdk/shapes:define-output get-backend-auth-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (resource-config :target-type
                                   create-backend-auth-resource-config
                                   :member-name "ResourceConfig" :json-name
                                   "resourceConfig")
                                  (resource-name :target-type string
                                   :member-name "ResourceName" :json-name
                                   "resourceName"))
                                 (:shape-name "GetBackendAuthResponse"))

(smithy/sdk/shapes:define-input get-backend-job-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (job-id :target-type string :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBackendJobRequest"))

(smithy/sdk/shapes:define-output get-backend-job-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (create-time :target-type string :member-name
                                   "CreateTime" :json-name "createTime")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status")
                                  (update-time :target-type string :member-name
                                   "UpdateTime" :json-name "updateTime"))
                                 (:shape-name "GetBackendJobResponse"))

(smithy/sdk/shapes:define-input get-backend-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :member-name "BackendEnvironmentName"
                                  :json-name "backendEnvironmentName"))
                                (:shape-name "GetBackendRequest"))

(smithy/sdk/shapes:define-output get-backend-response common-lisp:nil
                                 ((amplify-feature-flags :target-type string
                                   :member-name "AmplifyFeatureFlags"
                                   :json-name "amplifyFeatureFlags")
                                  (amplify-meta-config :target-type string
                                   :member-name "AmplifyMetaConfig" :json-name
                                   "amplifyMetaConfig")
                                  (app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (app-name :target-type string :member-name
                                   "AppName" :json-name "appName")
                                  (backend-environment-list :target-type
                                   list-of-string :member-name
                                   "BackendEnvironmentList" :json-name
                                   "backendEnvironmentList")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error"))
                                 (:shape-name "GetBackendResponse"))

(smithy/sdk/shapes:define-input get-backend-storage-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "GetBackendStorageRequest"))

(smithy/sdk/shapes:define-structure get-backend-storage-resource-config
                                    common-lisp:nil
                                    ((bucket-name :target-type string
                                      :member-name "BucketName" :json-name
                                      "bucketName")
                                     (imported :target-type boolean :required
                                      common-lisp:t :member-name "Imported"
                                      :json-name "imported")
                                     (permissions :target-type
                                      backend-storage-permissions :member-name
                                      "Permissions" :json-name "permissions")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName" :json-name "serviceName"))
                                    (:shape-name
                                     "GetBackendStorageResourceConfig"))

(smithy/sdk/shapes:define-output get-backend-storage-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (resource-config :target-type
                                   get-backend-storage-resource-config
                                   :member-name "ResourceConfig" :json-name
                                   "resourceConfig")
                                  (resource-name :target-type string
                                   :member-name "ResourceName" :json-name
                                   "resourceName"))
                                 (:shape-name "GetBackendStorageResponse"))

(smithy/sdk/shapes:define-input get-token-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type string :required
                                  common-lisp:t :member-name "SessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTokenRequest"))

(smithy/sdk/shapes:define-output get-token-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (challenge-code :target-type string
                                   :member-name "ChallengeCode" :json-name
                                   "challengeCode")
                                  (session-id :target-type string :member-name
                                   "SessionId" :json-name "sessionId")
                                  (ttl :target-type string :member-name "Ttl"
                                   :json-name "ttl"))
                                 (:shape-name "GetTokenResponse"))

(smithy/sdk/shapes:define-input import-backend-auth-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (identity-pool-id :target-type string
                                  :member-name "IdentityPoolId" :json-name
                                  "identityPoolId")
                                 (native-client-id :target-type string
                                  :required common-lisp:t :member-name
                                  "NativeClientId" :json-name "nativeClientId")
                                 (user-pool-id :target-type string :required
                                  common-lisp:t :member-name "UserPoolId"
                                  :json-name "userPoolId")
                                 (web-client-id :target-type string :required
                                  common-lisp:t :member-name "WebClientId"
                                  :json-name "webClientId"))
                                (:shape-name "ImportBackendAuthRequest"))

(smithy/sdk/shapes:define-output import-backend-auth-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "ImportBackendAuthResponse"))

(smithy/sdk/shapes:define-input import-backend-storage-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (bucket-name :target-type string :member-name
                                  "BucketName" :json-name "bucketName")
                                 (service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName" :json-name "serviceName"))
                                (:shape-name "ImportBackendStorageRequest"))

(smithy/sdk/shapes:define-output import-backend-storage-response
                                 common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "ImportBackendStorageResponse"))

(smithy/sdk/shapes:define-input list-backend-jobs-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (job-id :target-type string :member-name
                                  "JobId" :json-name "jobId")
                                 (max-results :target-type integer-min1max25
                                  :member-name "MaxResults" :json-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken")
                                 (operation :target-type string :member-name
                                  "Operation" :json-name "operation")
                                 (status :target-type string :member-name
                                  "Status" :json-name "status"))
                                (:shape-name "ListBackendJobsRequest"))

(smithy/sdk/shapes:define-output list-backend-jobs-response common-lisp:nil
                                 ((jobs :target-type
                                   list-of-backend-job-resp-obj :member-name
                                   "Jobs" :json-name "jobs")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListBackendJobsResponse"))

(smithy/sdk/shapes:define-list list-of-additional-constraints-element :member
                               additional-constraints-element)

(smithy/sdk/shapes:define-list list-of-authenticated-element :member
                               authenticated-element)

(smithy/sdk/shapes:define-list list-of-backend-apiauth-type :member
                               backend-apiauth-type)

(smithy/sdk/shapes:define-list list-of-backend-job-resp-obj :member
                               backend-job-resp-obj)

(smithy/sdk/shapes:define-list list-of-mfa-types-element :member
                               mfa-types-element)

(smithy/sdk/shapes:define-list list-of-oauth-scopes-element :member
                               oauth-scopes-element)

(smithy/sdk/shapes:define-list list-of-required-sign-up-attributes-element
                               :member required-sign-up-attributes-element)

(smithy/sdk/shapes:define-list list-of-s3bucket-info :member s3bucket-info)

(smithy/sdk/shapes:define-list list-of-un-authenticated-element :member
                               un-authenticated-element)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-input list-s3buckets-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :json-name "nextToken"))
                                (:shape-name "ListS3BucketsRequest"))

(smithy/sdk/shapes:define-output list-s3buckets-response common-lisp:nil
                                 ((buckets :target-type list-of-s3bucket-info
                                   :member-name "Buckets" :json-name "buckets")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListS3BucketsResponse"))

(smithy/sdk/shapes:define-structure login-auth-config-req-obj common-lisp:nil
                                    ((aws-cognito-identity-pool-id :target-type
                                      string :member-name
                                      "AwsCognitoIdentityPoolId" :json-name
                                      "aws_cognito_identity_pool_id")
                                     (aws-cognito-region :target-type string
                                      :member-name "AwsCognitoRegion"
                                      :json-name "aws_cognito_region")
                                     (aws-user-pools-id :target-type string
                                      :member-name "AwsUserPoolsId" :json-name
                                      "aws_user_pools_id")
                                     (aws-user-pools-web-client-id :target-type
                                      string :member-name
                                      "AwsUserPoolsWebClientId" :json-name
                                      "aws_user_pools_web_client_id"))
                                    (:shape-name "LoginAuthConfigReqObj"))

(smithy/sdk/shapes:define-enum mfamode
    common-lisp:nil
  (:on "ON")
  (:off "OFF")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-enum mfa-types-element
    common-lisp:nil
  (:sms "SMS")
  (:totp "TOTP"))

(smithy/sdk/shapes:define-enum mode
    common-lisp:nil
  (:api-key "API_KEY")
  (:aws-iam "AWS_IAM")
  (:amazon-cognito-user-pools "AMAZON_COGNITO_USER_POOLS")
  (:openid-connect "OPENID_CONNECT"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType" :json-name
                                  "resourceType"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum oauth-grant-type
    common-lisp:nil
  (:code "CODE")
  (:implicit "IMPLICIT"))

(smithy/sdk/shapes:define-enum oauth-scopes-element
    common-lisp:nil
  (:phone "PHONE")
  (:email "EMAIL")
  (:openid "OPENID")
  (:profile "PROFILE")
  (:aws-cognito-signin-user-admin "AWS_COGNITO_SIGNIN_USER_ADMIN"))

(smithy/sdk/shapes:define-input remove-all-backends-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (clean-amplify-app :target-type boolean
                                  :member-name "CleanAmplifyApp" :json-name
                                  "cleanAmplifyApp"))
                                (:shape-name "RemoveAllBackendsRequest"))

(smithy/sdk/shapes:define-output remove-all-backends-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "RemoveAllBackendsResponse"))

(smithy/sdk/shapes:define-input remove-backend-config-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveBackendConfigRequest"))

(smithy/sdk/shapes:define-output remove-backend-config-response common-lisp:nil
                                 ((error :target-type string :member-name
                                   "Error" :json-name "error"))
                                 (:shape-name "RemoveBackendConfigResponse"))

(smithy/sdk/shapes:define-enum required-sign-up-attributes-element
    common-lisp:nil
  (:address "ADDRESS")
  (:birthdate "BIRTHDATE")
  (:email "EMAIL")
  (:family-name "FAMILY_NAME")
  (:gender "GENDER")
  (:given-name "GIVEN_NAME")
  (:locale "LOCALE")
  (:middle-name "MIDDLE_NAME")
  (:name "NAME")
  (:nickname "NICKNAME")
  (:phone-number "PHONE_NUMBER")
  (:picture "PICTURE")
  (:preferred-username "PREFERRED_USERNAME")
  (:profile "PROFILE")
  (:updated-at "UPDATED_AT")
  (:website "WEBSITE")
  (:zone-info "ZONE_INFO"))

(smithy/sdk/shapes:define-enum resolution-strategy
    common-lisp:nil
  (:optimistic-concurrency "OPTIMISTIC_CONCURRENCY")
  (:lambda "LAMBDA")
  (:automerge "AUTOMERGE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure resource-config common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "ResourceConfig"))

(smithy/sdk/shapes:define-structure s3bucket-info common-lisp:nil
                                    ((creation-date :target-type string
                                      :member-name "CreationDate" :json-name
                                      "creationDate")
                                     (name :target-type string :member-name
                                      "Name" :json-name "name"))
                                    (:shape-name "S3BucketInfo"))

(smithy/sdk/shapes:define-enum service
    common-lisp:nil
  (:cognito "COGNITO"))

(smithy/sdk/shapes:define-enum service-name
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-structure settings common-lisp:nil
                                    ((mfa-types :target-type
                                      list-of-mfa-types-element :member-name
                                      "MfaTypes" :json-name "mfaTypes")
                                     (sms-message :target-type string
                                      :member-name "SmsMessage" :json-name
                                      "smsMessage"))
                                    (:shape-name "Settings"))

(smithy/sdk/shapes:define-enum sign-in-method
    common-lisp:nil
  (:email "EMAIL")
  (:email-and-phone-number "EMAIL_AND_PHONE_NUMBER")
  (:phone-number "PHONE_NUMBER")
  (:username "USERNAME"))

(smithy/sdk/shapes:define-structure sms-settings common-lisp:nil
                                    ((sms-message :target-type string
                                      :member-name "SmsMessage" :json-name
                                      "smsMessage"))
                                    (:shape-name "SmsSettings"))

(smithy/sdk/shapes:define-structure social-provider-settings common-lisp:nil
                                    ((facebook :target-type
                                      backend-auth-social-provider-config
                                      :member-name "Facebook")
                                     (google :target-type
                                      backend-auth-social-provider-config
                                      :member-name "Google")
                                     (login-with-amazon :target-type
                                      backend-auth-social-provider-config
                                      :member-name "LoginWithAmazon")
                                     (sign-in-with-apple :target-type
                                      backend-auth-apple-provider-config
                                      :member-name "SignInWithApple"))
                                    (:shape-name "SocialProviderSettings"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:latest "LATEST")
  (:stale "STALE"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((limit-type :target-type string :member-name
                                  "LimitType" :json-name "limitType")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum un-authenticated-element
    common-lisp:nil
  (:read "READ")
  (:create-and-update "CREATE_AND_UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-input update-backend-apirequest common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-config :target-type
                                  backend-apiresource-config :member-name
                                  "ResourceConfig" :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "UpdateBackendAPIRequest"))

(smithy/sdk/shapes:define-output update-backend-apiresponse common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "UpdateBackendAPIResponse"))

(smithy/sdk/shapes:define-structure update-backend-auth-forgot-password-config
                                    common-lisp:nil
                                    ((delivery-method :target-type
                                      delivery-method :member-name
                                      "DeliveryMethod" :json-name
                                      "deliveryMethod")
                                     (email-settings :target-type
                                      email-settings :member-name
                                      "EmailSettings" :json-name
                                      "emailSettings")
                                     (sms-settings :target-type sms-settings
                                      :member-name "SmsSettings" :json-name
                                      "smsSettings"))
                                    (:shape-name
                                     "UpdateBackendAuthForgotPasswordConfig"))

(smithy/sdk/shapes:define-structure update-backend-auth-identity-pool-config
                                    common-lisp:nil
                                    ((unauthenticated-login :target-type
                                      boolean :member-name
                                      "UnauthenticatedLogin" :json-name
                                      "unauthenticatedLogin"))
                                    (:shape-name
                                     "UpdateBackendAuthIdentityPoolConfig"))

(smithy/sdk/shapes:define-structure update-backend-auth-mfaconfig
                                    common-lisp:nil
                                    ((mfamode :target-type mfamode :member-name
                                      "MFAMode")
                                     (settings :target-type settings
                                      :member-name "Settings" :json-name
                                      "settings"))
                                    (:shape-name "UpdateBackendAuthMFAConfig"))

(smithy/sdk/shapes:define-structure update-backend-auth-oauth-config
                                    common-lisp:nil
                                    ((domain-prefix :target-type string
                                      :member-name "DomainPrefix" :json-name
                                      "domainPrefix")
                                     (oauth-grant-type :target-type
                                      oauth-grant-type :member-name
                                      "OAuthGrantType" :json-name
                                      "oAuthGrantType")
                                     (oauth-scopes :target-type
                                      list-of-oauth-scopes-element :member-name
                                      "OAuthScopes" :json-name "oAuthScopes")
                                     (redirect-sign-in-uris :target-type
                                      list-of-string :member-name
                                      "RedirectSignInURIs" :json-name
                                      "redirectSignInURIs")
                                     (redirect-sign-out-uris :target-type
                                      list-of-string :member-name
                                      "RedirectSignOutURIs" :json-name
                                      "redirectSignOutURIs")
                                     (social-provider-settings :target-type
                                      social-provider-settings :member-name
                                      "SocialProviderSettings" :json-name
                                      "socialProviderSettings"))
                                    (:shape-name
                                     "UpdateBackendAuthOAuthConfig"))

(smithy/sdk/shapes:define-structure update-backend-auth-password-policy-config
                                    common-lisp:nil
                                    ((additional-constraints :target-type
                                      list-of-additional-constraints-element
                                      :member-name "AdditionalConstraints"
                                      :json-name "additionalConstraints")
                                     (minimum-length :target-type double
                                      :member-name "MinimumLength" :json-name
                                      "minimumLength"))
                                    (:shape-name
                                     "UpdateBackendAuthPasswordPolicyConfig"))

(smithy/sdk/shapes:define-input update-backend-auth-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-config :target-type
                                  update-backend-auth-resource-config :required
                                  common-lisp:t :member-name "ResourceConfig"
                                  :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "UpdateBackendAuthRequest"))

(smithy/sdk/shapes:define-structure update-backend-auth-resource-config
                                    common-lisp:nil
                                    ((auth-resources :target-type
                                      auth-resources :required common-lisp:t
                                      :member-name "AuthResources" :json-name
                                      "authResources")
                                     (identity-pool-configs :target-type
                                      update-backend-auth-identity-pool-config
                                      :member-name "IdentityPoolConfigs"
                                      :json-name "identityPoolConfigs")
                                     (service :target-type service :required
                                      common-lisp:t :member-name "Service"
                                      :json-name "service")
                                     (user-pool-configs :target-type
                                      update-backend-auth-user-pool-config
                                      :required common-lisp:t :member-name
                                      "UserPoolConfigs" :json-name
                                      "userPoolConfigs"))
                                    (:shape-name
                                     "UpdateBackendAuthResourceConfig"))

(smithy/sdk/shapes:define-output update-backend-auth-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "UpdateBackendAuthResponse"))

(smithy/sdk/shapes:define-structure update-backend-auth-user-pool-config
                                    common-lisp:nil
                                    ((forgot-password :target-type
                                      update-backend-auth-forgot-password-config
                                      :member-name "ForgotPassword" :json-name
                                      "forgotPassword")
                                     (mfa :target-type
                                      update-backend-auth-mfaconfig
                                      :member-name "Mfa" :json-name "mfa")
                                     (oauth :target-type
                                      update-backend-auth-oauth-config
                                      :member-name "OAuth" :json-name "oAuth")
                                     (password-policy :target-type
                                      update-backend-auth-password-policy-config
                                      :member-name "PasswordPolicy" :json-name
                                      "passwordPolicy")
                                     (verification-message :target-type
                                      update-backend-auth-verification-message-config
                                      :member-name "VerificationMessage"
                                      :json-name "verificationMessage"))
                                    (:shape-name
                                     "UpdateBackendAuthUserPoolConfig"))

(smithy/sdk/shapes:define-structure
 update-backend-auth-verification-message-config common-lisp:nil
 ((delivery-method :target-type delivery-method :required common-lisp:t
   :member-name "DeliveryMethod" :json-name "deliveryMethod")
  (email-settings :target-type email-settings :member-name "EmailSettings"
   :json-name "emailSettings")
  (sms-settings :target-type sms-settings :member-name "SmsSettings" :json-name
   "smsSettings"))
 (:shape-name "UpdateBackendAuthVerificationMessageConfig"))

(smithy/sdk/shapes:define-input update-backend-config-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (login-auth-config :target-type
                                  login-auth-config-req-obj :member-name
                                  "LoginAuthConfig" :json-name
                                  "loginAuthConfig"))
                                (:shape-name "UpdateBackendConfigRequest"))

(smithy/sdk/shapes:define-output update-backend-config-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-manager-app-id :target-type string
                                   :member-name "BackendManagerAppId"
                                   :json-name "backendManagerAppId")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (login-auth-config :target-type
                                   login-auth-config-req-obj :member-name
                                   "LoginAuthConfig" :json-name
                                   "loginAuthConfig"))
                                 (:shape-name "UpdateBackendConfigResponse"))

(smithy/sdk/shapes:define-input update-backend-job-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (job-id :target-type string :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t)
                                 (operation :target-type string :member-name
                                  "Operation" :json-name "operation")
                                 (status :target-type string :member-name
                                  "Status" :json-name "status"))
                                (:shape-name "UpdateBackendJobRequest"))

(smithy/sdk/shapes:define-output update-backend-job-response common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (create-time :target-type string :member-name
                                   "CreateTime" :json-name "createTime")
                                  (error :target-type string :member-name
                                   "Error" :json-name "error")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (operation :target-type string :member-name
                                   "Operation" :json-name "operation")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status")
                                  (update-time :target-type string :member-name
                                   "UpdateTime" :json-name "updateTime"))
                                 (:shape-name "UpdateBackendJobResponse"))

(smithy/sdk/shapes:define-input update-backend-storage-request common-lisp:nil
                                ((app-id :target-type string :required
                                  common-lisp:t :member-name "AppId"
                                  :http-label common-lisp:t)
                                 (backend-environment-name :target-type string
                                  :required common-lisp:t :member-name
                                  "BackendEnvironmentName" :http-label
                                  common-lisp:t)
                                 (resource-config :target-type
                                  update-backend-storage-resource-config
                                  :required common-lisp:t :member-name
                                  "ResourceConfig" :json-name "resourceConfig")
                                 (resource-name :target-type string :required
                                  common-lisp:t :member-name "ResourceName"
                                  :json-name "resourceName"))
                                (:shape-name "UpdateBackendStorageRequest"))

(smithy/sdk/shapes:define-structure update-backend-storage-resource-config
                                    common-lisp:nil
                                    ((permissions :target-type
                                      backend-storage-permissions :required
                                      common-lisp:t :member-name "Permissions"
                                      :json-name "permissions")
                                     (service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName" :json-name "serviceName"))
                                    (:shape-name
                                     "UpdateBackendStorageResourceConfig"))

(smithy/sdk/shapes:define-output update-backend-storage-response
                                 common-lisp:nil
                                 ((app-id :target-type string :member-name
                                   "AppId" :json-name "appId")
                                  (backend-environment-name :target-type string
                                   :member-name "BackendEnvironmentName"
                                   :json-name "backendEnvironmentName")
                                  (job-id :target-type string :member-name
                                   "JobId" :json-name "jobId")
                                  (status :target-type string :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "UpdateBackendStorageResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer-min1max25
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation clone-backend :shape-name "CloneBackend"
                                       :input clone-backend-request :output
                                       clone-backend-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/environments/{BackendEnvironmentName}/clone"
                                       :code 200)

(smithy/sdk/operation:define-operation create-backend :shape-name
                                       "CreateBackend" :input
                                       create-backend-request :output
                                       create-backend-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/backend" :code 200)

(smithy/sdk/operation:define-operation create-backend-api :shape-name
                                       "CreateBackendAPI" :input
                                       create-backend-apirequest :output
                                       create-backend-apiresponse :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/api" :code 200)

(smithy/sdk/operation:define-operation create-backend-auth :shape-name
                                       "CreateBackendAuth" :input
                                       create-backend-auth-request :output
                                       create-backend-auth-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/auth" :code 200)

(smithy/sdk/operation:define-operation create-backend-config :shape-name
                                       "CreateBackendConfig" :input
                                       create-backend-config-request :output
                                       create-backend-config-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/config" :code 200)

(smithy/sdk/operation:define-operation create-backend-storage :shape-name
                                       "CreateBackendStorage" :input
                                       create-backend-storage-request :output
                                       create-backend-storage-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/storage" :code 200)

(smithy/sdk/operation:define-operation create-token :shape-name "CreateToken"
                                       :input create-token-request :output
                                       create-token-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/challenge" :code 200)

(smithy/sdk/operation:define-operation delete-backend :shape-name
                                       "DeleteBackend" :input
                                       delete-backend-request :output
                                       delete-backend-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/environments/{BackendEnvironmentName}/remove"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backend-api :shape-name
                                       "DeleteBackendAPI" :input
                                       delete-backend-apirequest :output
                                       delete-backend-apiresponse :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/api/{BackendEnvironmentName}/remove"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backend-auth :shape-name
                                       "DeleteBackendAuth" :input
                                       delete-backend-auth-request :output
                                       delete-backend-auth-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/auth/{BackendEnvironmentName}/remove"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backend-storage :shape-name
                                       "DeleteBackendStorage" :input
                                       delete-backend-storage-request :output
                                       delete-backend-storage-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/storage/{BackendEnvironmentName}/remove"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-token :shape-name "DeleteToken"
                                       :input delete-token-request :output
                                       delete-token-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/challenge/{SessionId}/remove"
                                       :code 200)

(smithy/sdk/operation:define-operation generate-backend-apimodels :shape-name
                                       "GenerateBackendAPIModels" :input
                                       generate-backend-apimodels-request
                                       :output
                                       generate-backend-apimodels-response
                                       :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/api/{BackendEnvironmentName}/generateModels"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backend :shape-name "GetBackend"
                                       :input get-backend-request :output
                                       get-backend-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/details" :code 200)

(smithy/sdk/operation:define-operation get-backend-api :shape-name
                                       "GetBackendAPI" :input
                                       get-backend-apirequest :output
                                       get-backend-apiresponse :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/api/{BackendEnvironmentName}/details"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backend-apimodels :shape-name
                                       "GetBackendAPIModels" :input
                                       get-backend-apimodels-request :output
                                       get-backend-apimodels-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/api/{BackendEnvironmentName}/getModels"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backend-auth :shape-name
                                       "GetBackendAuth" :input
                                       get-backend-auth-request :output
                                       get-backend-auth-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/auth/{BackendEnvironmentName}/details"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backend-job :shape-name
                                       "GetBackendJob" :input
                                       get-backend-job-request :output
                                       get-backend-job-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-backend-storage :shape-name
                                       "GetBackendStorage" :input
                                       get-backend-storage-request :output
                                       get-backend-storage-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/storage/{BackendEnvironmentName}/details"
                                       :code 200)

(smithy/sdk/operation:define-operation get-token :shape-name "GetToken" :input
                                       get-token-request :output
                                       get-token-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/backend/{AppId}/challenge/{SessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation import-backend-auth :shape-name
                                       "ImportBackendAuth" :input
                                       import-backend-auth-request :output
                                       import-backend-auth-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/auth/{BackendEnvironmentName}/import"
                                       :code 200)

(smithy/sdk/operation:define-operation import-backend-storage :shape-name
                                       "ImportBackendStorage" :input
                                       import-backend-storage-request :output
                                       import-backend-storage-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/storage/{BackendEnvironmentName}/import"
                                       :code 200)

(smithy/sdk/operation:define-operation list-backend-jobs :shape-name
                                       "ListBackendJobs" :input
                                       list-backend-jobs-request :output
                                       list-backend-jobs-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/job/{BackendEnvironmentName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-s3buckets :shape-name
                                       "ListS3Buckets" :input
                                       list-s3buckets-request :output
                                       list-s3buckets-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/s3Buckets" :code
                                       200)

(smithy/sdk/operation:define-operation remove-all-backends :shape-name
                                       "RemoveAllBackends" :input
                                       remove-all-backends-request :output
                                       remove-all-backends-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/remove" :code 200)

(smithy/sdk/operation:define-operation remove-backend-config :shape-name
                                       "RemoveBackendConfig" :input
                                       remove-backend-config-request :output
                                       remove-backend-config-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/config/remove" :code
                                       200)

(smithy/sdk/operation:define-operation update-backend-api :shape-name
                                       "UpdateBackendAPI" :input
                                       update-backend-apirequest :output
                                       update-backend-apiresponse :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/api/{BackendEnvironmentName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-backend-auth :shape-name
                                       "UpdateBackendAuth" :input
                                       update-backend-auth-request :output
                                       update-backend-auth-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/auth/{BackendEnvironmentName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-backend-config :shape-name
                                       "UpdateBackendConfig" :input
                                       update-backend-config-request :output
                                       update-backend-config-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/config/update" :code
                                       200)

(smithy/sdk/operation:define-operation update-backend-job :shape-name
                                       "UpdateBackendJob" :input
                                       update-backend-job-request :output
                                       update-backend-job-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/job/{BackendEnvironmentName}/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-backend-storage :shape-name
                                       "UpdateBackendStorage" :input
                                       update-backend-storage-request :output
                                       update-backend-storage-response :errors
                                       (bad-request-exception
                                        gateway-timeout-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/backend/{AppId}/storage/{BackendEnvironmentName}"
                                       :code 200)
