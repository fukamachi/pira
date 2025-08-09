(uiop/package:define-package #:pira/eks-auth (:use)
                             (:export #:access-denied-exception
                              #:assume-role-for-pod-identity
                              #:assume-role-for-pod-identity-request
                              #:assume-role-for-pod-identity-response
                              #:assumed-role-user #:cluster-name #:credentials
                              #:eksauth-frontend #:expired-token-exception
                              #:internal-server-exception
                              #:invalid-parameter-exception
                              #:invalid-request-exception
                              #:invalid-token-exception #:jwt-token
                              #:pod-identity-association
                              #:resource-not-found-exception
                              #:service-unavailable-exception #:subject
                              #:throttling-exception))
(common-lisp:in-package #:pira/eks-auth)

(smithy/sdk/service:define-service eksauth-frontend :shape-name
                                   "EKSAuthFrontend" :version "2023-11-26"
                                   :title "Amazon EKS Auth" :traits
                                   '(("aws.api#service" ("sdkId" . "EKS Auth")
                                      ("arnNamespace" . "eks-auth")
                                      ("endpointPrefix" . "eks-auth"))
                                     ("aws.auth#sigv4" ("name" . "eks-auth"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input assume-role-for-pod-identity-request
                                common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (token :target-type jwt-token :required
                                  common-lisp:t :member-name "token"))
                                (:shape-name "AssumeRoleForPodIdentityRequest"))

(smithy/sdk/shapes:define-output assume-role-for-pod-identity-response
                                 common-lisp:nil
                                 ((subject :target-type subject :required
                                   common-lisp:t :member-name "subject")
                                  (audience :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "audience")
                                  (pod-identity-association :target-type
                                   pod-identity-association :required
                                   common-lisp:t :member-name
                                   "podIdentityAssociation")
                                  (assumed-role-user :target-type
                                   assumed-role-user :required common-lisp:t
                                   :member-name "assumedRoleUser")
                                  (credentials :target-type credentials
                                   :required common-lisp:t :member-name
                                   "credentials"))
                                 (:shape-name
                                  "AssumeRoleForPodIdentityResponse"))

(smithy/sdk/shapes:define-structure assumed-role-user common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "arn")
                                     (assume-role-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "assumeRoleId"))
                                    (:shape-name "AssumedRoleUser"))

(smithy/sdk/shapes:define-type cluster-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure credentials common-lisp:nil
                                    ((session-token :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "sessionToken")
                                     (secret-access-key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "secretAccessKey")
                                     (access-key-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "accessKeyId")
                                     (expiration :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "expiration"))
                                    (:shape-name "Credentials"))

(smithy/sdk/shapes:define-error expired-token-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ExpiredTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-token-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InvalidTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type jwt-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pod-identity-association common-lisp:nil
                                    ((association-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "associationArn")
                                     (association-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "associationId"))
                                    (:shape-name "PodIdentityAssociation"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure subject common-lisp:nil
                                    ((namespace :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "namespace")
                                     (service-account :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "serviceAccount"))
                                    (:shape-name "Subject"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/operation:define-operation assume-role-for-pod-identity :shape-name
                                       "AssumeRoleForPodIdentity" :input
                                       assume-role-for-pod-identity-request
                                       :output
                                       assume-role-for-pod-identity-response
                                       :errors
                                       (access-denied-exception
                                        expired-token-exception
                                        internal-server-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/assume-role-for-pod-identity"
                                       :code 200)
