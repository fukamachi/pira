(uiop/package:define-package #:pira/cognito-identity (:use)
                             (:export #:arnstring #:awscognito-identity-service
                              #:access-key-string #:account-id
                              #:ambiguous-role-resolution-type #:claim-name
                              #:claim-value #:classic-flow
                              #:cognito-identity-provider
                              #:cognito-identity-provider-client-id
                              #:cognito-identity-provider-list
                              #:cognito-identity-provider-name
                              #:cognito-identity-provider-token-check
                              #:create-identity-pool #:credentials #:date-type
                              #:delete-identities #:delete-identity-pool
                              #:describe-identity #:describe-identity-pool
                              #:developer-provider-name
                              #:developer-user-identifier
                              #:developer-user-identifier-list #:error-code
                              #:get-credentials-for-identity #:get-id
                              #:get-identity-pool-roles #:get-open-id-token
                              #:get-open-id-token-for-developer-identity
                              #:get-principal-tag-attribute-map #:hide-disabled
                              #:identities-list #:identity-description
                              #:identity-id #:identity-id-list #:identity-pool
                              #:identity-pool-id #:identity-pool-name
                              #:identity-pool-short-description
                              #:identity-pool-tags-list-type
                              #:identity-pool-tags-type
                              #:identity-pool-unauthenticated
                              #:identity-pools-list #:identity-provider-id
                              #:identity-provider-name
                              #:identity-provider-token #:identity-providers
                              #:list-identities #:list-identity-pools
                              #:list-tags-for-resource #:logins-list
                              #:logins-map #:lookup-developer-identity
                              #:mapping-rule #:mapping-rule-match-type
                              #:mapping-rules-list #:merge-developer-identities
                              #:oidcprovider-list #:oidctoken #:pagination-key
                              #:principal-tag-id #:principal-tag-value
                              #:principal-tags #:query-limit #:role-mapping
                              #:role-mapping-map #:role-mapping-type
                              #:role-type #:roles-map
                              #:rules-configuration-type #:samlprovider-list
                              #:secret-key-string #:session-token-string
                              #:set-identity-pool-roles
                              #:set-principal-tag-attribute-map #:string
                              #:tag-keys-type #:tag-resource #:tag-value-type
                              #:token-duration #:unlink-developer-identity
                              #:unlink-identity #:unprocessed-identity-id
                              #:unprocessed-identity-id-list #:untag-resource
                              #:update-identity-pool #:use-defaults))
(common-lisp:in-package #:pira/cognito-identity)

(smithy/sdk/service:define-service awscognito-identity-service :shape-name
                                   "AWSCognitoIdentityService" :version
                                   "2014-06-30" :title
                                   "Amazon Cognito Identity" :operations
                                   '(create-identity-pool delete-identities
                                     delete-identity-pool describe-identity
                                     describe-identity-pool
                                     get-credentials-for-identity get-id
                                     get-identity-pool-roles get-open-id-token
                                     get-open-id-token-for-developer-identity
                                     get-principal-tag-attribute-map
                                     list-identities list-identity-pools
                                     list-tags-for-resource
                                     lookup-developer-identity
                                     merge-developer-identities
                                     set-identity-pool-roles
                                     set-principal-tag-attribute-map
                                     tag-resource unlink-developer-identity
                                     unlink-identity untag-resource
                                     update-identity-pool)
                                   :xml-namespace
                                   '(:uri
                                     "http://cognito-identity.amazonaws.com/doc/2014-06-30/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Cognito Identity")
                                      ("arnNamespace" . "cognito-identity")
                                      ("cloudFormationName" . "Cognito")
                                      ("cloudTrailEventSource"
                                       . "cognito-identity.amazonaws.com")
                                      ("endpointPrefix" . "cognito-identity"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cognito-identity"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type arnstring smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ambiguous-role-resolution-type
    common-lisp:nil
  (:authenticated-role "AuthenticatedRole")
  (:deny "Deny"))

(smithy/sdk/shapes:define-type claim-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type claim-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type classic-flow smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure cognito-identity-provider common-lisp:nil
                                    ((provider-name :target-type
                                      cognito-identity-provider-name
                                      :member-name "ProviderName")
                                     (client-id :target-type
                                      cognito-identity-provider-client-id
                                      :member-name "ClientId")
                                     (server-side-token-check :target-type
                                      cognito-identity-provider-token-check
                                      :member-name "ServerSideTokenCheck"))
                                    (:shape-name "CognitoIdentityProvider"))

(smithy/sdk/shapes:define-type cognito-identity-provider-client-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cognito-identity-provider-list :member
                               cognito-identity-provider)

(smithy/sdk/shapes:define-type cognito-identity-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cognito-identity-provider-token-check
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-identity-pool-input common-lisp:nil
                                ((identity-pool-name :target-type
                                  identity-pool-name :required common-lisp:t
                                  :member-name "IdentityPoolName")
                                 (allow-unauthenticated-identities :target-type
                                  identity-pool-unauthenticated :required
                                  common-lisp:t :member-name
                                  "AllowUnauthenticatedIdentities")
                                 (allow-classic-flow :target-type classic-flow
                                  :member-name "AllowClassicFlow")
                                 (supported-login-providers :target-type
                                  identity-providers :member-name
                                  "SupportedLoginProviders")
                                 (developer-provider-name :target-type
                                  developer-provider-name :member-name
                                  "DeveloperProviderName")
                                 (open-id-connect-provider-arns :target-type
                                  oidcprovider-list :member-name
                                  "OpenIdConnectProviderARNs")
                                 (cognito-identity-providers :target-type
                                  cognito-identity-provider-list :member-name
                                  "CognitoIdentityProviders")
                                 (saml-provider-arns :target-type
                                  samlprovider-list :member-name
                                  "SamlProviderARNs")
                                 (identity-pool-tags :target-type
                                  identity-pool-tags-type :member-name
                                  "IdentityPoolTags"))
                                (:shape-name "CreateIdentityPoolInput"))

(smithy/sdk/shapes:define-structure credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      access-key-string :member-name
                                      "AccessKeyId")
                                     (secret-key :target-type secret-key-string
                                      :member-name "SecretKey")
                                     (session-token :target-type
                                      session-token-string :member-name
                                      "SessionToken")
                                     (expiration :target-type date-type
                                      :member-name "Expiration"))
                                    (:shape-name "Credentials"))

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-identities-input common-lisp:nil
                                ((identity-ids-to-delete :target-type
                                  identity-id-list :required common-lisp:t
                                  :member-name "IdentityIdsToDelete"))
                                (:shape-name "DeleteIdentitiesInput"))

(smithy/sdk/shapes:define-output delete-identities-response common-lisp:nil
                                 ((unprocessed-identity-ids :target-type
                                   unprocessed-identity-id-list :member-name
                                   "UnprocessedIdentityIds"))
                                 (:shape-name "DeleteIdentitiesResponse"))

(smithy/sdk/shapes:define-input delete-identity-pool-input common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId"))
                                (:shape-name "DeleteIdentityPoolInput"))

(smithy/sdk/shapes:define-input describe-identity-input common-lisp:nil
                                ((identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId"))
                                (:shape-name "DescribeIdentityInput"))

(smithy/sdk/shapes:define-input describe-identity-pool-input common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId"))
                                (:shape-name "DescribeIdentityPoolInput"))

(smithy/sdk/shapes:define-type developer-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error developer-user-already-registered-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "DeveloperUserAlreadyRegisteredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type developer-user-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list developer-user-identifier-list :member
                               developer-user-identifier)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:access-denied "AccessDenied")
  (:internal-server-error "InternalServerError"))

(smithy/sdk/shapes:define-error external-service-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ExternalServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input get-credentials-for-identity-input
                                common-lisp:nil
                                ((identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId")
                                 (logins :target-type logins-map :member-name
                                  "Logins")
                                 (custom-role-arn :target-type arnstring
                                  :member-name "CustomRoleArn"))
                                (:shape-name "GetCredentialsForIdentityInput"))

(smithy/sdk/shapes:define-output get-credentials-for-identity-response
                                 common-lisp:nil
                                 ((identity-id :target-type identity-id
                                   :member-name "IdentityId")
                                  (credentials :target-type credentials
                                   :member-name "Credentials"))
                                 (:shape-name
                                  "GetCredentialsForIdentityResponse"))

(smithy/sdk/shapes:define-input get-id-input common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "AccountId")
                                 (identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (logins :target-type logins-map :member-name
                                  "Logins"))
                                (:shape-name "GetIdInput"))

(smithy/sdk/shapes:define-output get-id-response common-lisp:nil
                                 ((identity-id :target-type identity-id
                                   :member-name "IdentityId"))
                                 (:shape-name "GetIdResponse"))

(smithy/sdk/shapes:define-input get-identity-pool-roles-input common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId"))
                                (:shape-name "GetIdentityPoolRolesInput"))

(smithy/sdk/shapes:define-output get-identity-pool-roles-response
                                 common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (roles :target-type roles-map :member-name
                                   "Roles")
                                  (role-mappings :target-type role-mapping-map
                                   :member-name "RoleMappings"))
                                 (:shape-name "GetIdentityPoolRolesResponse"))

(smithy/sdk/shapes:define-input get-open-id-token-for-developer-identity-input
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (identity-id :target-type identity-id
                                  :member-name "IdentityId")
                                 (logins :target-type logins-map :required
                                  common-lisp:t :member-name "Logins")
                                 (principal-tags :target-type principal-tags
                                  :member-name "PrincipalTags")
                                 (token-duration :target-type token-duration
                                  :member-name "TokenDuration"))
                                (:shape-name
                                 "GetOpenIdTokenForDeveloperIdentityInput"))

(smithy/sdk/shapes:define-output
 get-open-id-token-for-developer-identity-response common-lisp:nil
 ((identity-id :target-type identity-id :member-name "IdentityId")
  (token :target-type oidctoken :member-name "Token"))
 (:shape-name "GetOpenIdTokenForDeveloperIdentityResponse"))

(smithy/sdk/shapes:define-input get-open-id-token-input common-lisp:nil
                                ((identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId")
                                 (logins :target-type logins-map :member-name
                                  "Logins"))
                                (:shape-name "GetOpenIdTokenInput"))

(smithy/sdk/shapes:define-output get-open-id-token-response common-lisp:nil
                                 ((identity-id :target-type identity-id
                                   :member-name "IdentityId")
                                  (token :target-type oidctoken :member-name
                                   "Token"))
                                 (:shape-name "GetOpenIdTokenResponse"))

(smithy/sdk/shapes:define-input get-principal-tag-attribute-map-input
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (identity-provider-name :target-type
                                  identity-provider-name :required
                                  common-lisp:t :member-name
                                  "IdentityProviderName"))
                                (:shape-name
                                 "GetPrincipalTagAttributeMapInput"))

(smithy/sdk/shapes:define-output get-principal-tag-attribute-map-response
                                 common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (identity-provider-name :target-type
                                   identity-provider-name :member-name
                                   "IdentityProviderName")
                                  (use-defaults :target-type use-defaults
                                   :member-name "UseDefaults")
                                  (principal-tags :target-type principal-tags
                                   :member-name "PrincipalTags"))
                                 (:shape-name
                                  "GetPrincipalTagAttributeMapResponse"))

(smithy/sdk/shapes:define-type hide-disabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list identities-list :member identity-description)

(smithy/sdk/shapes:define-structure identity-description common-lisp:nil
                                    ((identity-id :target-type identity-id
                                      :member-name "IdentityId")
                                     (logins :target-type logins-list
                                      :member-name "Logins")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (last-modified-date :target-type date-type
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "IdentityDescription"))

(smithy/sdk/shapes:define-type identity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list identity-id-list :member identity-id)

(smithy/sdk/shapes:define-structure identity-pool common-lisp:nil
                                    ((identity-pool-id :target-type
                                      identity-pool-id :required common-lisp:t
                                      :member-name "IdentityPoolId")
                                     (identity-pool-name :target-type
                                      identity-pool-name :required
                                      common-lisp:t :member-name
                                      "IdentityPoolName")
                                     (allow-unauthenticated-identities
                                      :target-type
                                      identity-pool-unauthenticated :required
                                      common-lisp:t :member-name
                                      "AllowUnauthenticatedIdentities")
                                     (allow-classic-flow :target-type
                                      classic-flow :member-name
                                      "AllowClassicFlow")
                                     (supported-login-providers :target-type
                                      identity-providers :member-name
                                      "SupportedLoginProviders")
                                     (developer-provider-name :target-type
                                      developer-provider-name :member-name
                                      "DeveloperProviderName")
                                     (open-id-connect-provider-arns
                                      :target-type oidcprovider-list
                                      :member-name "OpenIdConnectProviderARNs")
                                     (cognito-identity-providers :target-type
                                      cognito-identity-provider-list
                                      :member-name "CognitoIdentityProviders")
                                     (saml-provider-arns :target-type
                                      samlprovider-list :member-name
                                      "SamlProviderARNs")
                                     (identity-pool-tags :target-type
                                      identity-pool-tags-type :member-name
                                      "IdentityPoolTags"))
                                    (:shape-name "IdentityPool"))

(smithy/sdk/shapes:define-type identity-pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-pool-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-pool-short-description
                                    common-lisp:nil
                                    ((identity-pool-id :target-type
                                      identity-pool-id :member-name
                                      "IdentityPoolId")
                                     (identity-pool-name :target-type
                                      identity-pool-name :member-name
                                      "IdentityPoolName"))
                                    (:shape-name
                                     "IdentityPoolShortDescription"))

(smithy/sdk/shapes:define-list identity-pool-tags-list-type :member
                               tag-keys-type)

(smithy/sdk/shapes:define-map identity-pool-tags-type :key tag-keys-type :value
                              tag-value-type)

(smithy/sdk/shapes:define-type identity-pool-unauthenticated
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list identity-pools-list :member
                               identity-pool-short-description)

(smithy/sdk/shapes:define-type identity-provider-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-provider-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map identity-providers :key identity-provider-name
                              :value identity-provider-id)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-identity-pool-configuration-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidIdentityPoolConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-identities-input common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (max-results :target-type query-limit
                                  :required common-lisp:t :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken")
                                 (hide-disabled :target-type hide-disabled
                                  :member-name "HideDisabled"))
                                (:shape-name "ListIdentitiesInput"))

(smithy/sdk/shapes:define-output list-identities-response common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (identities :target-type identities-list
                                   :member-name "Identities")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name "ListIdentitiesResponse"))

(smithy/sdk/shapes:define-input list-identity-pools-input common-lisp:nil
                                ((max-results :target-type query-limit
                                  :required common-lisp:t :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "ListIdentityPoolsInput"))

(smithy/sdk/shapes:define-output list-identity-pools-response common-lisp:nil
                                 ((identity-pools :target-type
                                   identity-pools-list :member-name
                                   "IdentityPools")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name "ListIdentityPoolsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arnstring :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type identity-pool-tags-type
                                   :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-list logins-list :member identity-provider-name)

(smithy/sdk/shapes:define-map logins-map :key identity-provider-name :value
                              identity-provider-token)

(smithy/sdk/shapes:define-input lookup-developer-identity-input common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (identity-id :target-type identity-id
                                  :member-name "IdentityId")
                                 (developer-user-identifier :target-type
                                  developer-user-identifier :member-name
                                  "DeveloperUserIdentifier")
                                 (max-results :target-type query-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-key
                                  :member-name "NextToken"))
                                (:shape-name "LookupDeveloperIdentityInput"))

(smithy/sdk/shapes:define-output lookup-developer-identity-response
                                 common-lisp:nil
                                 ((identity-id :target-type identity-id
                                   :member-name "IdentityId")
                                  (developer-user-identifier-list :target-type
                                   developer-user-identifier-list :member-name
                                   "DeveloperUserIdentifierList")
                                  (next-token :target-type pagination-key
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "LookupDeveloperIdentityResponse"))

(smithy/sdk/shapes:define-structure mapping-rule common-lisp:nil
                                    ((claim :target-type claim-name :required
                                      common-lisp:t :member-name "Claim")
                                     (match-type :target-type
                                      mapping-rule-match-type :required
                                      common-lisp:t :member-name "MatchType")
                                     (value :target-type claim-value :required
                                      common-lisp:t :member-name "Value")
                                     (role-arn :target-type arnstring :required
                                      common-lisp:t :member-name "RoleARN"))
                                    (:shape-name "MappingRule"))

(smithy/sdk/shapes:define-enum mapping-rule-match-type
    common-lisp:nil
  (:equals "Equals")
  (:contains "Contains")
  (:starts-with "StartsWith")
  (:not-equal "NotEqual"))

(smithy/sdk/shapes:define-list mapping-rules-list :member mapping-rule)

(smithy/sdk/shapes:define-input merge-developer-identities-input
                                common-lisp:nil
                                ((source-user-identifier :target-type
                                  developer-user-identifier :required
                                  common-lisp:t :member-name
                                  "SourceUserIdentifier")
                                 (destination-user-identifier :target-type
                                  developer-user-identifier :required
                                  common-lisp:t :member-name
                                  "DestinationUserIdentifier")
                                 (developer-provider-name :target-type
                                  developer-provider-name :required
                                  common-lisp:t :member-name
                                  "DeveloperProviderName")
                                 (identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId"))
                                (:shape-name "MergeDeveloperIdentitiesInput"))

(smithy/sdk/shapes:define-output merge-developer-identities-response
                                 common-lisp:nil
                                 ((identity-id :target-type identity-id
                                   :member-name "IdentityId"))
                                 (:shape-name
                                  "MergeDeveloperIdentitiesResponse"))

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list oidcprovider-list :member arnstring)

(smithy/sdk/shapes:define-type oidctoken smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-tag-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map principal-tags :key principal-tag-id :value
                              principal-tag-value)

(smithy/sdk/shapes:define-type query-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error resource-conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure role-mapping common-lisp:nil
                                    ((type :target-type role-mapping-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (ambiguous-role-resolution :target-type
                                      ambiguous-role-resolution-type
                                      :member-name "AmbiguousRoleResolution")
                                     (rules-configuration :target-type
                                      rules-configuration-type :member-name
                                      "RulesConfiguration"))
                                    (:shape-name "RoleMapping"))

(smithy/sdk/shapes:define-map role-mapping-map :key identity-provider-name
                              :value role-mapping)

(smithy/sdk/shapes:define-enum role-mapping-type
    common-lisp:nil
  (:token "Token")
  (:rules "Rules"))

(smithy/sdk/shapes:define-type role-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map roles-map :key role-type :value arnstring)

(smithy/sdk/shapes:define-structure rules-configuration-type common-lisp:nil
                                    ((rules :target-type mapping-rules-list
                                      :required common-lisp:t :member-name
                                      "Rules"))
                                    (:shape-name "RulesConfigurationType"))

(smithy/sdk/shapes:define-list samlprovider-list :member arnstring)

(smithy/sdk/shapes:define-type secret-key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input set-identity-pool-roles-input common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (roles :target-type roles-map :required
                                  common-lisp:t :member-name "Roles")
                                 (role-mappings :target-type role-mapping-map
                                  :member-name "RoleMappings"))
                                (:shape-name "SetIdentityPoolRolesInput"))

(smithy/sdk/shapes:define-input set-principal-tag-attribute-map-input
                                common-lisp:nil
                                ((identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (identity-provider-name :target-type
                                  identity-provider-name :required
                                  common-lisp:t :member-name
                                  "IdentityProviderName")
                                 (use-defaults :target-type use-defaults
                                  :member-name "UseDefaults")
                                 (principal-tags :target-type principal-tags
                                  :member-name "PrincipalTags"))
                                (:shape-name
                                 "SetPrincipalTagAttributeMapInput"))

(smithy/sdk/shapes:define-output set-principal-tag-attribute-map-response
                                 common-lisp:nil
                                 ((identity-pool-id :target-type
                                   identity-pool-id :member-name
                                   "IdentityPoolId")
                                  (identity-provider-name :target-type
                                   identity-provider-name :member-name
                                   "IdentityProviderName")
                                  (use-defaults :target-type use-defaults
                                   :member-name "UseDefaults")
                                  (principal-tags :target-type principal-tags
                                   :member-name "PrincipalTags"))
                                 (:shape-name
                                  "SetPrincipalTagAttributeMapResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-keys-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arnstring :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type identity-pool-tags-type
                                  :required common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-duration smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input unlink-developer-identity-input common-lisp:nil
                                ((identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId")
                                 (identity-pool-id :target-type
                                  identity-pool-id :required common-lisp:t
                                  :member-name "IdentityPoolId")
                                 (developer-provider-name :target-type
                                  developer-provider-name :required
                                  common-lisp:t :member-name
                                  "DeveloperProviderName")
                                 (developer-user-identifier :target-type
                                  developer-user-identifier :required
                                  common-lisp:t :member-name
                                  "DeveloperUserIdentifier"))
                                (:shape-name "UnlinkDeveloperIdentityInput"))

(smithy/sdk/shapes:define-input unlink-identity-input common-lisp:nil
                                ((identity-id :target-type identity-id
                                  :required common-lisp:t :member-name
                                  "IdentityId")
                                 (logins :target-type logins-map :required
                                  common-lisp:t :member-name "Logins")
                                 (logins-to-remove :target-type logins-list
                                  :required common-lisp:t :member-name
                                  "LoginsToRemove"))
                                (:shape-name "UnlinkIdentityInput"))

(smithy/sdk/shapes:define-structure unprocessed-identity-id common-lisp:nil
                                    ((identity-id :target-type identity-id
                                      :member-name "IdentityId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode"))
                                    (:shape-name "UnprocessedIdentityId"))

(smithy/sdk/shapes:define-list unprocessed-identity-id-list :member
                               unprocessed-identity-id)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arnstring :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type
                                  identity-pool-tags-list-type :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type use-defaults smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation create-identity-pool :shape-name
                                       "CreateIdentityPool" :input
                                       create-identity-pool-input :output
                                       identity-pool :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-identities :shape-name
                                       "DeleteIdentities" :input
                                       delete-identities-input :output
                                       delete-identities-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation delete-identity-pool :shape-name
                                       "DeleteIdentityPool" :input
                                       delete-identity-pool-input :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-identity :shape-name
                                       "DescribeIdentity" :input
                                       describe-identity-input :output
                                       identity-description :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation describe-identity-pool :shape-name
                                       "DescribeIdentityPool" :input
                                       describe-identity-pool-input :output
                                       identity-pool :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-credentials-for-identity :shape-name
                                       "GetCredentialsForIdentity" :input
                                       get-credentials-for-identity-input
                                       :output
                                       get-credentials-for-identity-response
                                       :errors
                                       (external-service-exception
                                        internal-error-exception
                                        invalid-identity-pool-configuration-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-id :shape-name "GetId" :input
                                       get-id-input :output get-id-response
                                       :errors
                                       (external-service-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-identity-pool-roles :shape-name
                                       "GetIdentityPoolRoles" :input
                                       get-identity-pool-roles-input :output
                                       get-identity-pool-roles-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-open-id-token :shape-name
                                       "GetOpenIdToken" :input
                                       get-open-id-token-input :output
                                       get-open-id-token-response :errors
                                       (external-service-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-open-id-token-for-developer-identity
                                       :shape-name
                                       "GetOpenIdTokenForDeveloperIdentity"
                                       :input
                                       get-open-id-token-for-developer-identity-input
                                       :output
                                       get-open-id-token-for-developer-identity-response
                                       :errors
                                       (developer-user-already-registered-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation get-principal-tag-attribute-map
                                       :shape-name
                                       "GetPrincipalTagAttributeMap" :input
                                       get-principal-tag-attribute-map-input
                                       :output
                                       get-principal-tag-attribute-map-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-identities :shape-name
                                       "ListIdentities" :input
                                       list-identities-input :output
                                       list-identities-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-identity-pools :shape-name
                                       "ListIdentityPools" :input
                                       list-identity-pools-input :output
                                       list-identity-pools-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation lookup-developer-identity :shape-name
                                       "LookupDeveloperIdentity" :input
                                       lookup-developer-identity-input :output
                                       lookup-developer-identity-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation merge-developer-identities :shape-name
                                       "MergeDeveloperIdentities" :input
                                       merge-developer-identities-input :output
                                       merge-developer-identities-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation set-identity-pool-roles :shape-name
                                       "SetIdentityPoolRoles" :input
                                       set-identity-pool-roles-input :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation set-principal-tag-attribute-map
                                       :shape-name
                                       "SetPrincipalTagAttributeMap" :input
                                       set-principal-tag-attribute-map-input
                                       :output
                                       set-principal-tag-attribute-map-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation unlink-developer-identity :shape-name
                                       "UnlinkDeveloperIdentity" :input
                                       unlink-developer-identity-input :output
                                       common-lisp:null :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation unlink-identity :shape-name
                                       "UnlinkIdentity" :input
                                       unlink-identity-input :output
                                       common-lisp:null :errors
                                       (external-service-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        not-authorized-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))

(smithy/sdk/operation:define-operation update-identity-pool :shape-name
                                       "UpdateIdentityPool" :input
                                       identity-pool :output identity-pool
                                       :errors
                                       (concurrent-modification-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        not-authorized-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        too-many-requests-exception))
