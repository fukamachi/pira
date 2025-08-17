(uiop/package:define-package #:pira/sso-oidc (:use)
                             (:export #:awsssooidcservice #:access-token
                              #:arn-type #:assertion #:auth-code
                              #:aws-additional-details #:client-id
                              #:client-name #:client-secret #:client-type
                              #:code-verifier #:create-token
                              #:create-token-with-iam #:device-code #:error
                              #:error-description #:expiration-in-seconds
                              #:grant-type #:grant-types #:id-token
                              #:identity-context #:interval-in-seconds
                              #:location #:long-time-stamp-type #:redirect-uris
                              #:refresh-token #:region #:register-client
                              #:scope #:scopes #:start-device-authorization
                              #:subject-token #:token-type #:token-type-uri
                              #:uri #:user-code))
(common-lisp:in-package #:pira/sso-oidc)

(smithy/sdk/service:define-service awsssooidcservice :shape-name
                                   "AWSSSOOIDCService" :version "2019-06-10"
                                   :title "AWS SSO OIDC" :operations
                                   '(create-token create-token-with-iam
                                     register-client
                                     start-device-authorization)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SSO OIDC")
                                      ("arnNamespace" . "sso-oauth")
                                      ("cloudFormationName" . "SSOOIDC")
                                      ("cloudTrailEventSource"
                                       . "ssooidc.amazonaws.com")
                                      ("endpointPrefix" . "oidc"))
                                     ("aws.auth#sigv4" ("name" . "sso-oauth"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type access-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assertion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error authorization-pending-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "AuthorizationPendingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure aws-additional-details common-lisp:nil
                                    ((identity-context :target-type
                                      identity-context :member-name
                                      "identityContext"))
                                    (:shape-name "AwsAdditionalDetails"))

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-secret smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-verifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-token-request common-lisp:nil
                                ((client-id :target-type client-id :required
                                  common-lisp:t :member-name "clientId")
                                 (client-secret :target-type client-secret
                                  :required common-lisp:t :member-name
                                  "clientSecret")
                                 (grant-type :target-type grant-type :required
                                  common-lisp:t :member-name "grantType")
                                 (device-code :target-type device-code
                                  :member-name "deviceCode")
                                 (code :target-type auth-code :member-name
                                  "code")
                                 (refresh-token :target-type refresh-token
                                  :member-name "refreshToken")
                                 (scope :target-type scopes :member-name
                                  "scope")
                                 (redirect-uri :target-type uri :member-name
                                  "redirectUri")
                                 (code-verifier :target-type code-verifier
                                  :member-name "codeVerifier"))
                                (:shape-name "CreateTokenRequest"))

(smithy/sdk/shapes:define-output create-token-response common-lisp:nil
                                 ((access-token :target-type access-token
                                   :member-name "accessToken")
                                  (token-type :target-type token-type
                                   :member-name "tokenType")
                                  (expires-in :target-type
                                   expiration-in-seconds :member-name
                                   "expiresIn")
                                  (refresh-token :target-type refresh-token
                                   :member-name "refreshToken")
                                  (id-token :target-type id-token :member-name
                                   "idToken"))
                                 (:shape-name "CreateTokenResponse"))

(smithy/sdk/shapes:define-input create-token-with-iamrequest common-lisp:nil
                                ((client-id :target-type client-id :required
                                  common-lisp:t :member-name "clientId")
                                 (grant-type :target-type grant-type :required
                                  common-lisp:t :member-name "grantType")
                                 (code :target-type auth-code :member-name
                                  "code")
                                 (refresh-token :target-type refresh-token
                                  :member-name "refreshToken")
                                 (assertion :target-type assertion :member-name
                                  "assertion")
                                 (scope :target-type scopes :member-name
                                  "scope")
                                 (redirect-uri :target-type uri :member-name
                                  "redirectUri")
                                 (subject-token :target-type subject-token
                                  :member-name "subjectToken")
                                 (subject-token-type :target-type
                                  token-type-uri :member-name
                                  "subjectTokenType")
                                 (requested-token-type :target-type
                                  token-type-uri :member-name
                                  "requestedTokenType")
                                 (code-verifier :target-type code-verifier
                                  :member-name "codeVerifier"))
                                (:shape-name "CreateTokenWithIAMRequest"))

(smithy/sdk/shapes:define-output create-token-with-iamresponse common-lisp:nil
                                 ((access-token :target-type access-token
                                   :member-name "accessToken")
                                  (token-type :target-type token-type
                                   :member-name "tokenType")
                                  (expires-in :target-type
                                   expiration-in-seconds :member-name
                                   "expiresIn")
                                  (refresh-token :target-type refresh-token
                                   :member-name "refreshToken")
                                  (id-token :target-type id-token :member-name
                                   "idToken")
                                  (issued-token-type :target-type
                                   token-type-uri :member-name
                                   "issuedTokenType")
                                  (scope :target-type scopes :member-name
                                   "scope")
                                  (aws-additional-details :target-type
                                   aws-additional-details :member-name
                                   "awsAdditionalDetails"))
                                 (:shape-name "CreateTokenWithIAMResponse"))

(smithy/sdk/shapes:define-type device-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error expired-token-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "ExpiredTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type grant-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list grant-types :member grant-type)

(smithy/sdk/shapes:define-type id-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type interval-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-client-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InvalidClientException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error invalid-client-metadata-exception
                                common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InvalidClientMetadataException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-grant-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InvalidGrantException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-redirect-uri-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InvalidRedirectUriException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-region-exception
                                common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description")
                                 (endpoint :target-type location :member-name
                                  "endpoint")
                                 (region :target-type region :member-name
                                  "region"))
                                (:shape-name "InvalidRequestRegionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-scope-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "InvalidScopeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long-time-stamp-type
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list redirect-uris :member uri)

(smithy/sdk/shapes:define-type refresh-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-client-request common-lisp:nil
                                ((client-name :target-type client-name
                                  :required common-lisp:t :member-name
                                  "clientName")
                                 (client-type :target-type client-type
                                  :required common-lisp:t :member-name
                                  "clientType")
                                 (scopes :target-type scopes :member-name
                                  "scopes")
                                 (redirect-uris :target-type redirect-uris
                                  :member-name "redirectUris")
                                 (grant-types :target-type grant-types
                                  :member-name "grantTypes")
                                 (issuer-url :target-type uri :member-name
                                  "issuerUrl")
                                 (entitled-application-arn :target-type
                                  arn-type :member-name
                                  "entitledApplicationArn"))
                                (:shape-name "RegisterClientRequest"))

(smithy/sdk/shapes:define-output register-client-response common-lisp:nil
                                 ((client-id :target-type client-id
                                   :member-name "clientId")
                                  (client-secret :target-type client-secret
                                   :member-name "clientSecret")
                                  (client-id-issued-at :target-type
                                   long-time-stamp-type :member-name
                                   "clientIdIssuedAt")
                                  (client-secret-expires-at :target-type
                                   long-time-stamp-type :member-name
                                   "clientSecretExpiresAt")
                                  (authorization-endpoint :target-type uri
                                   :member-name "authorizationEndpoint")
                                  (token-endpoint :target-type uri :member-name
                                   "tokenEndpoint"))
                                 (:shape-name "RegisterClientResponse"))

(smithy/sdk/shapes:define-type scope smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scopes :member scope)

(smithy/sdk/shapes:define-error slow-down-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "SlowDownException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input start-device-authorization-request
                                common-lisp:nil
                                ((client-id :target-type client-id :required
                                  common-lisp:t :member-name "clientId")
                                 (client-secret :target-type client-secret
                                  :required common-lisp:t :member-name
                                  "clientSecret")
                                 (start-url :target-type uri :required
                                  common-lisp:t :member-name "startUrl"))
                                (:shape-name "StartDeviceAuthorizationRequest"))

(smithy/sdk/shapes:define-output start-device-authorization-response
                                 common-lisp:nil
                                 ((device-code :target-type device-code
                                   :member-name "deviceCode")
                                  (user-code :target-type user-code
                                   :member-name "userCode")
                                  (verification-uri :target-type uri
                                   :member-name "verificationUri")
                                  (verification-uri-complete :target-type uri
                                   :member-name "verificationUriComplete")
                                  (expires-in :target-type
                                   expiration-in-seconds :member-name
                                   "expiresIn")
                                  (interval :target-type interval-in-seconds
                                   :member-name "interval"))
                                 (:shape-name
                                  "StartDeviceAuthorizationResponse"))

(smithy/sdk/shapes:define-type subject-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-type-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-client-exception common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "UnauthorizedClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-grant-type-exception
                                common-lisp:nil
                                ((error :target-type error :member-name
                                  "error")
                                 (error-description :target-type
                                  error-description :member-name
                                  "error_description"))
                                (:shape-name "UnsupportedGrantTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type user-code smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-token :shape-name "CreateToken"
                                       :input create-token-request :output
                                       create-token-response :errors
                                       (access-denied-exception
                                        authorization-pending-exception
                                        expired-token-exception
                                        internal-server-exception
                                        invalid-client-exception
                                        invalid-grant-exception
                                        invalid-request-exception
                                        invalid-scope-exception
                                        slow-down-exception
                                        unauthorized-client-exception
                                        unsupported-grant-type-exception)
                                       :method "POST" :uri "/token" :code 200)

(smithy/sdk/operation:define-operation create-token-with-iam :shape-name
                                       "CreateTokenWithIAM" :input
                                       create-token-with-iamrequest :output
                                       create-token-with-iamresponse :errors
                                       (access-denied-exception
                                        authorization-pending-exception
                                        expired-token-exception
                                        internal-server-exception
                                        invalid-client-exception
                                        invalid-grant-exception
                                        invalid-request-exception
                                        invalid-request-region-exception
                                        invalid-scope-exception
                                        slow-down-exception
                                        unauthorized-client-exception
                                        unsupported-grant-type-exception)
                                       :method "POST" :uri "/token?aws_iam=t"
                                       :code 200)

(smithy/sdk/operation:define-operation register-client :shape-name
                                       "RegisterClient" :input
                                       register-client-request :output
                                       register-client-response :errors
                                       (internal-server-exception
                                        invalid-client-metadata-exception
                                        invalid-redirect-uri-exception
                                        invalid-request-exception
                                        invalid-scope-exception
                                        unsupported-grant-type-exception)
                                       :method "POST" :uri "/client/register"
                                       :code 200)

(smithy/sdk/operation:define-operation start-device-authorization :shape-name
                                       "StartDeviceAuthorization" :input
                                       start-device-authorization-request
                                       :output
                                       start-device-authorization-response
                                       :errors
                                       (internal-server-exception
                                        invalid-client-exception
                                        invalid-request-exception
                                        slow-down-exception
                                        unauthorized-client-exception)
                                       :method "POST" :uri
                                       "/device_authorization" :code 200)
