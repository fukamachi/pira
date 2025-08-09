(uiop/package:define-package #:pira/sts (:use)
                             (:export #:awssecurity-token-service-v20110615
                              #:assume-role #:assume-role-request
                              #:assume-role-response #:assume-role-with-saml
                              #:assume-role-with-samlrequest
                              #:assume-role-with-samlresponse
                              #:assume-role-with-web-identity
                              #:assume-role-with-web-identity-request
                              #:assume-role-with-web-identity-response
                              #:assume-root #:assume-root-request
                              #:assume-root-response #:assumed-role-user
                              #:audience #:credentials
                              #:decode-authorization-message
                              #:decode-authorization-message-request
                              #:decode-authorization-message-response
                              #:expired-token-exception #:federated-user
                              #:get-access-key-info
                              #:get-access-key-info-request
                              #:get-access-key-info-response
                              #:get-caller-identity
                              #:get-caller-identity-request
                              #:get-caller-identity-response
                              #:get-federation-token
                              #:get-federation-token-request
                              #:get-federation-token-response
                              #:get-session-token #:get-session-token-request
                              #:get-session-token-response
                              #:idpcommunication-error-exception
                              #:idprejected-claim-exception
                              #:invalid-authorization-message-exception
                              #:invalid-identity-token-exception #:issuer
                              #:malformed-policy-document-exception
                              #:name-qualifier
                              #:packed-policy-too-large-exception
                              #:policy-descriptor-type #:provided-context
                              #:provided-contexts-list-type
                              #:region-disabled-exception
                              #:root-duration-seconds-type #:samlassertion-type
                              #:subject #:subject-type #:tag
                              #:target-principal-type #:access-key-id-type
                              #:access-key-secret-type #:account-type
                              #:arn-type #:assumed-role-id-type
                              #:client-token-type #:context-assertion-type
                              #:date-type #:decoded-message-type
                              #:duration-seconds-type #:encoded-message-type
                              #:expired-identity-token-message
                              #:external-id-type #:federated-id-type
                              #:idp-communication-error-message
                              #:idp-rejected-claim-message
                              #:invalid-authorization-message
                              #:invalid-identity-token-message
                              #:malformed-policy-document-message
                              #:non-negative-integer-type
                              #:packed-policy-too-large-message
                              #:policy-descriptor-list-type
                              #:region-disabled-message
                              #:role-duration-seconds-type
                              #:role-session-name-type #:serial-number-type
                              #:session-policy-document-type
                              #:source-identity-type #:tag-key-list-type
                              #:tag-key-type #:tag-list-type #:tag-value-type
                              #:token-code-type #:token-type
                              #:unrestricted-session-policy-document-type
                              #:url-type #:user-id-type #:user-name-type
                              #:web-identity-subject-type))
(common-lisp:in-package #:pira/sts)

(smithy/sdk/service:define-service awssecurity-token-service-v20110615
                                   :shape-name
                                   "AWSSecurityTokenServiceV20110615" :version
                                   "2011-06-15" :title
                                   "AWS Security Token Service" :xml-namespace
                                   '(:uri
                                     "https://sts.amazonaws.com/doc/2011-06-15/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "STS")
                                      ("arnNamespace" . "sts")
                                      ("cloudFormationName" . "STS")
                                      ("cloudTrailEventSource"
                                       . "sts.amazonaws.com")
                                      ("endpointPrefix" . "sts"))
                                     ("aws.auth#sigv4" ("name" . "sts"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-input assume-role-request common-lisp:nil
                                ((role-arn :target-type arn-type :required
                                  common-lisp:t :member-name "RoleArn")
                                 (role-session-name :target-type
                                  role-session-name-type :required
                                  common-lisp:t :member-name "RoleSessionName")
                                 (policy-arns :target-type
                                  policy-descriptor-list-type :member-name
                                  "PolicyArns")
                                 (policy :target-type
                                  unrestricted-session-policy-document-type
                                  :member-name "Policy")
                                 (duration-seconds :target-type
                                  role-duration-seconds-type :member-name
                                  "DurationSeconds")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags")
                                 (transitive-tag-keys :target-type
                                  tag-key-list-type :member-name
                                  "TransitiveTagKeys")
                                 (external-id :target-type external-id-type
                                  :member-name "ExternalId")
                                 (serial-number :target-type serial-number-type
                                  :member-name "SerialNumber")
                                 (token-code :target-type token-code-type
                                  :member-name "TokenCode")
                                 (source-identity :target-type
                                  source-identity-type :member-name
                                  "SourceIdentity")
                                 (provided-contexts :target-type
                                  provided-contexts-list-type :member-name
                                  "ProvidedContexts"))
                                (:shape-name "AssumeRoleRequest"))

(smithy/sdk/shapes:define-output assume-role-response common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (assumed-role-user :target-type
                                   assumed-role-user :member-name
                                   "AssumedRoleUser")
                                  (packed-policy-size :target-type
                                   non-negative-integer-type :member-name
                                   "PackedPolicySize")
                                  (source-identity :target-type
                                   source-identity-type :member-name
                                   "SourceIdentity"))
                                 (:shape-name "AssumeRoleResponse"))

(smithy/sdk/shapes:define-input assume-role-with-samlrequest common-lisp:nil
                                ((role-arn :target-type arn-type :required
                                  common-lisp:t :member-name "RoleArn")
                                 (principal-arn :target-type arn-type :required
                                  common-lisp:t :member-name "PrincipalArn")
                                 (samlassertion :target-type samlassertion-type
                                  :required common-lisp:t :member-name
                                  "SAMLAssertion")
                                 (policy-arns :target-type
                                  policy-descriptor-list-type :member-name
                                  "PolicyArns")
                                 (policy :target-type
                                  session-policy-document-type :member-name
                                  "Policy")
                                 (duration-seconds :target-type
                                  role-duration-seconds-type :member-name
                                  "DurationSeconds"))
                                (:shape-name "AssumeRoleWithSAMLRequest"))

(smithy/sdk/shapes:define-output assume-role-with-samlresponse common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (assumed-role-user :target-type
                                   assumed-role-user :member-name
                                   "AssumedRoleUser")
                                  (packed-policy-size :target-type
                                   non-negative-integer-type :member-name
                                   "PackedPolicySize")
                                  (subject :target-type subject :member-name
                                   "Subject")
                                  (subject-type :target-type subject-type
                                   :member-name "SubjectType")
                                  (issuer :target-type issuer :member-name
                                   "Issuer")
                                  (audience :target-type audience :member-name
                                   "Audience")
                                  (name-qualifier :target-type name-qualifier
                                   :member-name "NameQualifier")
                                  (source-identity :target-type
                                   source-identity-type :member-name
                                   "SourceIdentity"))
                                 (:shape-name "AssumeRoleWithSAMLResponse"))

(smithy/sdk/shapes:define-input assume-role-with-web-identity-request
                                common-lisp:nil
                                ((role-arn :target-type arn-type :required
                                  common-lisp:t :member-name "RoleArn")
                                 (role-session-name :target-type
                                  role-session-name-type :required
                                  common-lisp:t :member-name "RoleSessionName")
                                 (web-identity-token :target-type
                                  client-token-type :required common-lisp:t
                                  :member-name "WebIdentityToken")
                                 (provider-id :target-type url-type
                                  :member-name "ProviderId")
                                 (policy-arns :target-type
                                  policy-descriptor-list-type :member-name
                                  "PolicyArns")
                                 (policy :target-type
                                  session-policy-document-type :member-name
                                  "Policy")
                                 (duration-seconds :target-type
                                  role-duration-seconds-type :member-name
                                  "DurationSeconds"))
                                (:shape-name
                                 "AssumeRoleWithWebIdentityRequest"))

(smithy/sdk/shapes:define-output assume-role-with-web-identity-response
                                 common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (subject-from-web-identity-token :target-type
                                   web-identity-subject-type :member-name
                                   "SubjectFromWebIdentityToken")
                                  (assumed-role-user :target-type
                                   assumed-role-user :member-name
                                   "AssumedRoleUser")
                                  (packed-policy-size :target-type
                                   non-negative-integer-type :member-name
                                   "PackedPolicySize")
                                  (provider :target-type issuer :member-name
                                   "Provider")
                                  (audience :target-type audience :member-name
                                   "Audience")
                                  (source-identity :target-type
                                   source-identity-type :member-name
                                   "SourceIdentity"))
                                 (:shape-name
                                  "AssumeRoleWithWebIdentityResponse"))

(smithy/sdk/shapes:define-input assume-root-request common-lisp:nil
                                ((target-principal :target-type
                                  target-principal-type :required common-lisp:t
                                  :member-name "TargetPrincipal")
                                 (task-policy-arn :target-type
                                  policy-descriptor-type :required
                                  common-lisp:t :member-name "TaskPolicyArn")
                                 (duration-seconds :target-type
                                  root-duration-seconds-type :member-name
                                  "DurationSeconds"))
                                (:shape-name "AssumeRootRequest"))

(smithy/sdk/shapes:define-output assume-root-response common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (source-identity :target-type
                                   source-identity-type :member-name
                                   "SourceIdentity"))
                                 (:shape-name "AssumeRootResponse"))

(smithy/sdk/shapes:define-structure assumed-role-user common-lisp:nil
                                    ((assumed-role-id :target-type
                                      assumed-role-id-type :required
                                      common-lisp:t :member-name
                                      "AssumedRoleId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "AssumedRoleUser"))

(smithy/sdk/shapes:define-type audience smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure credentials common-lisp:nil
                                    ((access-key-id :target-type
                                      access-key-id-type :required
                                      common-lisp:t :member-name "AccessKeyId")
                                     (secret-access-key :target-type
                                      access-key-secret-type :required
                                      common-lisp:t :member-name
                                      "SecretAccessKey")
                                     (session-token :target-type token-type
                                      :required common-lisp:t :member-name
                                      "SessionToken")
                                     (expiration :target-type date-type
                                      :required common-lisp:t :member-name
                                      "Expiration"))
                                    (:shape-name "Credentials"))

(smithy/sdk/shapes:define-input decode-authorization-message-request
                                common-lisp:nil
                                ((encoded-message :target-type
                                  encoded-message-type :required common-lisp:t
                                  :member-name "EncodedMessage"))
                                (:shape-name
                                 "DecodeAuthorizationMessageRequest"))

(smithy/sdk/shapes:define-output decode-authorization-message-response
                                 common-lisp:nil
                                 ((decoded-message :target-type
                                   decoded-message-type :member-name
                                   "DecodedMessage"))
                                 (:shape-name
                                  "DecodeAuthorizationMessageResponse"))

(smithy/sdk/shapes:define-error expired-token-exception common-lisp:nil
                                ((message :target-type
                                  expired-identity-token-message :member-name
                                  "message"))
                                (:shape-name "ExpiredTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure federated-user common-lisp:nil
                                    ((federated-user-id :target-type
                                      federated-id-type :required common-lisp:t
                                      :member-name "FederatedUserId")
                                     (arn :target-type arn-type :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "FederatedUser"))

(smithy/sdk/shapes:define-input get-access-key-info-request common-lisp:nil
                                ((access-key-id :target-type access-key-id-type
                                  :required common-lisp:t :member-name
                                  "AccessKeyId"))
                                (:shape-name "GetAccessKeyInfoRequest"))

(smithy/sdk/shapes:define-output get-access-key-info-response common-lisp:nil
                                 ((account :target-type account-type
                                   :member-name "Account"))
                                 (:shape-name "GetAccessKeyInfoResponse"))

(smithy/sdk/shapes:define-input get-caller-identity-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetCallerIdentityRequest"))

(smithy/sdk/shapes:define-output get-caller-identity-response common-lisp:nil
                                 ((user-id :target-type user-id-type
                                   :member-name "UserId")
                                  (account :target-type account-type
                                   :member-name "Account")
                                  (arn :target-type arn-type :member-name
                                   "Arn"))
                                 (:shape-name "GetCallerIdentityResponse"))

(smithy/sdk/shapes:define-input get-federation-token-request common-lisp:nil
                                ((name :target-type user-name-type :required
                                  common-lisp:t :member-name "Name")
                                 (policy :target-type
                                  session-policy-document-type :member-name
                                  "Policy")
                                 (policy-arns :target-type
                                  policy-descriptor-list-type :member-name
                                  "PolicyArns")
                                 (duration-seconds :target-type
                                  duration-seconds-type :member-name
                                  "DurationSeconds")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags"))
                                (:shape-name "GetFederationTokenRequest"))

(smithy/sdk/shapes:define-output get-federation-token-response common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials")
                                  (federated-user :target-type federated-user
                                   :member-name "FederatedUser")
                                  (packed-policy-size :target-type
                                   non-negative-integer-type :member-name
                                   "PackedPolicySize"))
                                 (:shape-name "GetFederationTokenResponse"))

(smithy/sdk/shapes:define-input get-session-token-request common-lisp:nil
                                ((duration-seconds :target-type
                                  duration-seconds-type :member-name
                                  "DurationSeconds")
                                 (serial-number :target-type serial-number-type
                                  :member-name "SerialNumber")
                                 (token-code :target-type token-code-type
                                  :member-name "TokenCode"))
                                (:shape-name "GetSessionTokenRequest"))

(smithy/sdk/shapes:define-output get-session-token-response common-lisp:nil
                                 ((credentials :target-type credentials
                                   :member-name "Credentials"))
                                 (:shape-name "GetSessionTokenResponse"))

(smithy/sdk/shapes:define-error idpcommunication-error-exception
                                common-lisp:nil
                                ((message :target-type
                                  idp-communication-error-message :member-name
                                  "message"))
                                (:shape-name "IDPCommunicationErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error idprejected-claim-exception common-lisp:nil
                                ((message :target-type
                                  idp-rejected-claim-message :member-name
                                  "message"))
                                (:shape-name "IDPRejectedClaimException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error invalid-authorization-message-exception
                                common-lisp:nil
                                ((message :target-type
                                  invalid-authorization-message :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidAuthorizationMessageException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-identity-token-exception
                                common-lisp:nil
                                ((message :target-type
                                  invalid-identity-token-message :member-name
                                  "message"))
                                (:shape-name "InvalidIdentityTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type issuer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type
                                  malformed-policy-document-message
                                  :member-name "message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type name-qualifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error packed-policy-too-large-exception
                                common-lisp:nil
                                ((message :target-type
                                  packed-policy-too-large-message :member-name
                                  "message"))
                                (:shape-name "PackedPolicyTooLargeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure policy-descriptor-type common-lisp:nil
                                    ((arn :target-type arn-type :member-name
                                      "arn"))
                                    (:shape-name "PolicyDescriptorType"))

(smithy/sdk/shapes:define-structure provided-context common-lisp:nil
                                    ((provider-arn :target-type arn-type
                                      :member-name "ProviderArn")
                                     (context-assertion :target-type
                                      context-assertion-type :member-name
                                      "ContextAssertion"))
                                    (:shape-name "ProvidedContext"))

(smithy/sdk/shapes:define-list provided-contexts-list-type :member
                               provided-context)

(smithy/sdk/shapes:define-error region-disabled-exception common-lisp:nil
                                ((message :target-type region-disabled-message
                                  :member-name "message"))
                                (:shape-name "RegionDisabledException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type root-duration-seconds-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type samlassertion-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subject-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key-type :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value-type
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type target-principal-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-key-secret-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assumed-role-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type context-assertion-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type decoded-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-seconds-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type encoded-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expired-identity-token-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type federated-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idp-communication-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idp-rejected-claim-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invalid-authorization-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invalid-identity-token-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type malformed-policy-document-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-integer-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type packed-policy-too-large-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-descriptor-list-type :member
                               policy-descriptor-type)

(smithy/sdk/shapes:define-type region-disabled-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-duration-seconds-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-session-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type serial-number-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-policy-document-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-identity-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list-type :member tag-key-type)

(smithy/sdk/shapes:define-type tag-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list-type :member tag)

(smithy/sdk/shapes:define-type tag-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-code-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unrestricted-session-policy-document-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type url-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-identity-subject-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation assume-role :shape-name "AssumeRole"
                                       :input assume-role-request :output
                                       assume-role-response :errors
                                       (expired-token-exception
                                        malformed-policy-document-exception
                                        packed-policy-too-large-exception
                                        region-disabled-exception))

(smithy/sdk/operation:define-operation assume-role-with-saml :shape-name
                                       "AssumeRoleWithSAML" :input
                                       assume-role-with-samlrequest :output
                                       assume-role-with-samlresponse :errors
                                       (expired-token-exception
                                        idprejected-claim-exception
                                        invalid-identity-token-exception
                                        malformed-policy-document-exception
                                        packed-policy-too-large-exception
                                        region-disabled-exception))

(smithy/sdk/operation:define-operation assume-role-with-web-identity
                                       :shape-name "AssumeRoleWithWebIdentity"
                                       :input
                                       assume-role-with-web-identity-request
                                       :output
                                       assume-role-with-web-identity-response
                                       :errors
                                       (expired-token-exception
                                        idpcommunication-error-exception
                                        idprejected-claim-exception
                                        invalid-identity-token-exception
                                        malformed-policy-document-exception
                                        packed-policy-too-large-exception
                                        region-disabled-exception))

(smithy/sdk/operation:define-operation assume-root :shape-name "AssumeRoot"
                                       :input assume-root-request :output
                                       assume-root-response :errors
                                       (expired-token-exception
                                        region-disabled-exception))

(smithy/sdk/operation:define-operation decode-authorization-message :shape-name
                                       "DecodeAuthorizationMessage" :input
                                       decode-authorization-message-request
                                       :output
                                       decode-authorization-message-response
                                       :errors
                                       (invalid-authorization-message-exception))

(smithy/sdk/operation:define-operation get-access-key-info :shape-name
                                       "GetAccessKeyInfo" :input
                                       get-access-key-info-request :output
                                       get-access-key-info-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-caller-identity :shape-name
                                       "GetCallerIdentity" :input
                                       get-caller-identity-request :output
                                       get-caller-identity-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-federation-token :shape-name
                                       "GetFederationToken" :input
                                       get-federation-token-request :output
                                       get-federation-token-response :errors
                                       (malformed-policy-document-exception
                                        packed-policy-too-large-exception
                                        region-disabled-exception))

(smithy/sdk/operation:define-operation get-session-token :shape-name
                                       "GetSessionToken" :input
                                       get-session-token-request :output
                                       get-session-token-response :errors
                                       (region-disabled-exception))
