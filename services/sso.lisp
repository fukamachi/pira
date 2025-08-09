(uiop/package:define-package #:pira/sso (:use)
                             (:export #:access-key-type #:access-token-type
                              #:account-id-type #:account-info
                              #:account-list-type #:account-name-type
                              #:email-address-type #:error-description
                              #:expiration-timestamp-type
                              #:get-role-credentials #:list-account-roles
                              #:list-accounts #:logout #:max-result-type
                              #:next-token-type #:role-credentials #:role-info
                              #:role-list-type #:role-name-type
                              #:swbportal-service #:secret-access-key-type
                              #:session-token-type))
(common-lisp:in-package #:pira/sso)

(smithy/sdk/service:define-service swbportal-service :shape-name
                                   "SWBPortalService" :version "2019-06-10"
                                   :title "AWS Single Sign-On" :traits
                                   '(("aws.api#service" ("sdkId" . "SSO")
                                      ("arnNamespace" . "awsssoportal")
                                      ("cloudFormationName" . "SSO")
                                      ("cloudTrailEventSource"
                                       . "sso.amazonaws.com")
                                      ("endpointPrefix" . "portal.sso"))
                                     ("aws.auth#sigv4"
                                      ("name" . "awsssoportal"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type access-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-info common-lisp:nil
                                    ((account-id :target-type account-id-type
                                      :member-name "accountId")
                                     (account-name :target-type
                                      account-name-type :member-name
                                      "accountName")
                                     (email-address :target-type
                                      email-address-type :member-name
                                      "emailAddress"))
                                    (:shape-name "AccountInfo"))

(smithy/sdk/shapes:define-list account-list-type :member account-info)

(smithy/sdk/shapes:define-type account-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-address-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiration-timestamp-type
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input get-role-credentials-request common-lisp:nil
                                ((role-name :target-type role-name-type
                                  :required common-lisp:t :member-name
                                  "roleName" :http-query "role_name")
                                 (account-id :target-type account-id-type
                                  :required common-lisp:t :member-name
                                  "accountId" :http-query "account_id")
                                 (access-token :target-type access-token-type
                                  :required common-lisp:t :member-name
                                  "accessToken" :http-header
                                  "x-amz-sso_bearer_token"))
                                (:shape-name "GetRoleCredentialsRequest"))

(smithy/sdk/shapes:define-output get-role-credentials-response common-lisp:nil
                                 ((role-credentials :target-type
                                   role-credentials :member-name
                                   "roleCredentials"))
                                 (:shape-name "GetRoleCredentialsResponse"))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-account-roles-request common-lisp:nil
                                ((next-token :target-type next-token-type
                                  :member-name "nextToken" :http-query
                                  "next_token")
                                 (max-results :target-type max-result-type
                                  :member-name "maxResults" :http-query
                                  "max_result")
                                 (access-token :target-type access-token-type
                                  :required common-lisp:t :member-name
                                  "accessToken" :http-header
                                  "x-amz-sso_bearer_token")
                                 (account-id :target-type account-id-type
                                  :required common-lisp:t :member-name
                                  "accountId" :http-query "account_id"))
                                (:shape-name "ListAccountRolesRequest"))

(smithy/sdk/shapes:define-output list-account-roles-response common-lisp:nil
                                 ((next-token :target-type next-token-type
                                   :member-name "nextToken")
                                  (role-list :target-type role-list-type
                                   :member-name "roleList"))
                                 (:shape-name "ListAccountRolesResponse"))

(smithy/sdk/shapes:define-input list-accounts-request common-lisp:nil
                                ((next-token :target-type next-token-type
                                  :member-name "nextToken" :http-query
                                  "next_token")
                                 (max-results :target-type max-result-type
                                  :member-name "maxResults" :http-query
                                  "max_result")
                                 (access-token :target-type access-token-type
                                  :required common-lisp:t :member-name
                                  "accessToken" :http-header
                                  "x-amz-sso_bearer_token"))
                                (:shape-name "ListAccountsRequest"))

(smithy/sdk/shapes:define-output list-accounts-response common-lisp:nil
                                 ((next-token :target-type next-token-type
                                   :member-name "nextToken")
                                  (account-list :target-type account-list-type
                                   :member-name "accountList"))
                                 (:shape-name "ListAccountsResponse"))

(smithy/sdk/shapes:define-input logout-request common-lisp:nil
                                ((access-token :target-type access-token-type
                                  :required common-lisp:t :member-name
                                  "accessToken" :http-header
                                  "x-amz-sso_bearer_token"))
                                (:shape-name "LogoutRequest"))

(smithy/sdk/shapes:define-type max-result-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure role-credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      access-key-type :member-name
                                      "accessKeyId")
                                     (secret-access-key :target-type
                                      secret-access-key-type :member-name
                                      "secretAccessKey")
                                     (session-token :target-type
                                      session-token-type :member-name
                                      "sessionToken")
                                     (expiration :target-type
                                      expiration-timestamp-type :member-name
                                      "expiration"))
                                    (:shape-name "RoleCredentials"))

(smithy/sdk/shapes:define-structure role-info common-lisp:nil
                                    ((role-name :target-type role-name-type
                                      :member-name "roleName")
                                     (account-id :target-type account-id-type
                                      :member-name "accountId"))
                                    (:shape-name "RoleInfo"))

(smithy/sdk/shapes:define-list role-list-type :member role-info)

(smithy/sdk/shapes:define-type role-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-access-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-token-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/operation:define-operation get-role-credentials :shape-name
                                       "GetRoleCredentials" :input
                                       get-role-credentials-request :output
                                       get-role-credentials-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/federation/credentials" :code 200)

(smithy/sdk/operation:define-operation list-account-roles :shape-name
                                       "ListAccountRoles" :input
                                       list-account-roles-request :output
                                       list-account-roles-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/assignment/roles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-accounts :shape-name "ListAccounts"
                                       :input list-accounts-request :output
                                       list-accounts-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/assignment/accounts" :code 200)

(smithy/sdk/operation:define-operation logout :shape-name "Logout" :input
                                       logout-request :output common-lisp:null
                                       :errors
                                       (invalid-request-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/logout" :code 200)
