(uiop/package:define-package #:pira/kms (:use)
                             (:export #:awsaccount-id-type #:algorithm-spec
                              #:alias-list #:alias-list-entry #:alias-name-type
                              #:arn-type #:attestation-document-type
                              #:backing-key-id-response-type
                              #:backing-key-id-type #:boolean-type
                              #:cancel-key-deletion #:ciphertext-type
                              #:cloud-hsm-cluster-id-type
                              #:connect-custom-key-store
                              #:connection-error-code-type
                              #:connection-state-type #:create-alias
                              #:create-custom-key-store #:create-grant
                              #:create-key #:custom-key-store-id-type
                              #:custom-key-store-name-type
                              #:custom-key-store-type #:custom-key-stores-list
                              #:custom-key-stores-list-entry
                              #:customer-master-key-spec #:data-key-pair-spec
                              #:data-key-spec #:date-type #:decrypt
                              #:delete-alias #:delete-custom-key-store
                              #:delete-imported-key-material
                              #:derive-shared-secret
                              #:describe-custom-key-stores #:describe-key
                              #:description-type #:disable-key
                              #:disable-key-rotation
                              #:disconnect-custom-key-store #:enable-key
                              #:enable-key-rotation #:encrypt
                              #:encryption-algorithm-spec
                              #:encryption-algorithm-spec-list
                              #:encryption-context-key
                              #:encryption-context-type
                              #:encryption-context-value #:error-message-type
                              #:expiration-model-type #:generate-data-key
                              #:generate-data-key-pair
                              #:generate-data-key-pair-without-plaintext
                              #:generate-data-key-without-plaintext
                              #:generate-mac #:generate-random #:get-key-policy
                              #:get-key-rotation-status
                              #:get-parameters-for-import #:get-public-key
                              #:grant-constraints #:grant-id-type #:grant-list
                              #:grant-list-entry #:grant-name-type
                              #:grant-operation #:grant-operation-list
                              #:grant-token-list #:grant-token-type
                              #:import-key-material #:import-state
                              #:import-type #:include-key-material
                              #:key-agreement-algorithm-spec
                              #:key-agreement-algorithm-spec-list
                              #:key-encryption-mechanism #:key-id-type
                              #:key-list #:key-list-entry #:key-manager-type
                              #:key-material-description-type
                              #:key-material-state #:key-metadata #:key-spec
                              #:key-state #:key-store-password-type
                              #:key-usage-type #:limit-type #:list-aliases
                              #:list-grants #:list-grants-response
                              #:list-key-policies #:list-key-rotations
                              #:list-keys #:list-resource-tags
                              #:list-retirable-grants #:mac-algorithm-spec
                              #:mac-algorithm-spec-list #:marker-type
                              #:message-type #:multi-region-configuration
                              #:multi-region-key #:multi-region-key-list
                              #:multi-region-key-type #:nullable-boolean-type
                              #:number-of-bytes-type #:origin-type
                              #:pending-window-in-days-type #:plaintext-type
                              #:policy-name-list #:policy-name-type
                              #:policy-type #:principal-id-type
                              #:public-key-type #:put-key-policy #:re-encrypt
                              #:recipient-info #:region-type #:replicate-key
                              #:retire-grant #:revoke-grant
                              #:rotate-key-on-demand
                              #:rotation-period-in-days-type #:rotation-type
                              #:rotations-list #:rotations-list-entry
                              #:schedule-key-deletion #:sign
                              #:signing-algorithm-spec
                              #:signing-algorithm-spec-list #:tag
                              #:tag-key-list #:tag-key-type #:tag-list
                              #:tag-resource #:tag-value-type #:trent-service
                              #:trust-anchor-certificate-type #:untag-resource
                              #:update-alias #:update-custom-key-store
                              #:update-key-description #:update-primary-region
                              #:verify #:verify-mac #:wrapping-key-spec
                              #:xks-key-configuration-type #:xks-key-id-type
                              #:xks-proxy-authentication-access-key-id-type
                              #:xks-proxy-authentication-credential-type
                              #:xks-proxy-authentication-raw-secret-access-key-type
                              #:xks-proxy-configuration-type
                              #:xks-proxy-connectivity-type
                              #:xks-proxy-uri-endpoint-type
                              #:xks-proxy-uri-path-type
                              #:xks-proxy-vpc-endpoint-service-name-type))
(common-lisp:in-package #:pira/kms)

(smithy/sdk/service:define-service trent-service :shape-name "TrentService"
                                   :version "2014-11-01" :title
                                   "AWS Key Management Service" :xml-namespace
                                   '(:uri
                                     "https://trent.amazonaws.com/doc/2014-11-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "KMS")
                                      ("arnNamespace" . "kms")
                                      ("cloudFormationName" . "KMS")
                                      ("cloudTrailEventSource"
                                       . "kms.amazonaws.com")
                                      ("endpointPrefix" . "kms"))
                                     ("aws.auth#sigv4" ("name" . "kms"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type awsaccount-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum algorithm-spec
    common-lisp:nil
  (:rsaes-pkcs1-v1-5 "RSAES_PKCS1_V1_5")
  (:rsaes-oaep-sha-1 "RSAES_OAEP_SHA_1")
  (:rsaes-oaep-sha-256 "RSAES_OAEP_SHA_256")
  (:rsa-aes-key-wrap-sha-1 "RSA_AES_KEY_WRAP_SHA_1")
  (:rsa-aes-key-wrap-sha-256 "RSA_AES_KEY_WRAP_SHA_256")
  (:sm2pke "SM2PKE"))

(smithy/sdk/shapes:define-list alias-list :member alias-list-entry)

(smithy/sdk/shapes:define-structure alias-list-entry common-lisp:nil
                                    ((alias-name :target-type alias-name-type
                                      :member-name "AliasName")
                                     (alias-arn :target-type arn-type
                                      :member-name "AliasArn")
                                     (target-key-id :target-type key-id-type
                                      :member-name "TargetKeyId")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (last-updated-date :target-type date-type
                                      :member-name "LastUpdatedDate"))
                                    (:shape-name "AliasListEntry"))

(smithy/sdk/shapes:define-type alias-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-name "AlreadyExists") (:error-code 409))

(smithy/sdk/shapes:define-type arn-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attestation-document-type
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type backing-key-id-response-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type backing-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-type smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-key-deletion-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId"))
                                (:shape-name "CancelKeyDeletionRequest"))

(smithy/sdk/shapes:define-output cancel-key-deletion-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId"))
                                 (:shape-name "CancelKeyDeletionResponse"))

(smithy/sdk/shapes:define-type ciphertext-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type cloud-hsm-cluster-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error cloud-hsm-cluster-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "CloudHsmClusterInUseException")
                                (:error-name "CloudHsmClusterInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 cloud-hsm-cluster-invalid-configuration-exception common-lisp:nil
 ((message :target-type error-message-type :member-name "message"))
 (:shape-name "CloudHsmClusterInvalidConfigurationException")
 (:error-name "CloudHsmClusterInvalidConfigurationException") (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-cluster-not-active-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "CloudHsmClusterNotActiveException")
                                (:error-name
                                 "CloudHsmClusterNotActiveException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-cluster-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "CloudHsmClusterNotFoundException")
                                (:error-name
                                 "CloudHsmClusterNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-hsm-cluster-not-related-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "CloudHsmClusterNotRelatedException")
                                (:error-name
                                 "CloudHsmClusterNotRelatedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input connect-custom-key-store-request
                                common-lisp:nil
                                ((custom-key-store-id :target-type
                                  custom-key-store-id-type :required
                                  common-lisp:t :member-name
                                  "CustomKeyStoreId"))
                                (:shape-name "ConnectCustomKeyStoreRequest"))

(smithy/sdk/shapes:define-output connect-custom-key-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ConnectCustomKeyStoreResponse"))

(smithy/sdk/shapes:define-enum connection-error-code-type
    common-lisp:nil
  (:invalid-credentials "INVALID_CREDENTIALS")
  (:cluster-not-found "CLUSTER_NOT_FOUND")
  (:network-errors "NETWORK_ERRORS")
  (:internal-error "INTERNAL_ERROR")
  (:insufficient-cloudhsm-hsms "INSUFFICIENT_CLOUDHSM_HSMS")
  (:user-locked-out "USER_LOCKED_OUT")
  (:user-not-found "USER_NOT_FOUND")
  (:user-logged-in "USER_LOGGED_IN")
  (:subnet-not-found "SUBNET_NOT_FOUND")
  (:insufficient-free-addresses-in-subnet
   "INSUFFICIENT_FREE_ADDRESSES_IN_SUBNET")
  (:xks-proxy-access-denied "XKS_PROXY_ACCESS_DENIED")
  (:xks-proxy-not-reachable "XKS_PROXY_NOT_REACHABLE")
  (:xks-vpc-endpoint-service-not-found "XKS_VPC_ENDPOINT_SERVICE_NOT_FOUND")
  (:xks-proxy-invalid-response "XKS_PROXY_INVALID_RESPONSE")
  (:xks-proxy-invalid-configuration "XKS_PROXY_INVALID_CONFIGURATION")
  (:xks-vpc-endpoint-service-invalid-configuration
   "XKS_VPC_ENDPOINT_SERVICE_INVALID_CONFIGURATION")
  (:xks-proxy-timed-out "XKS_PROXY_TIMED_OUT")
  (:xks-proxy-invalid-tls-configuration "XKS_PROXY_INVALID_TLS_CONFIGURATION"))

(smithy/sdk/shapes:define-enum connection-state-type
    common-lisp:nil
  (:connected "CONNECTED")
  (:connecting "CONNECTING")
  (:failed "FAILED")
  (:disconnected "DISCONNECTED")
  (:disconnecting "DISCONNECTING"))

(smithy/sdk/shapes:define-input create-alias-request common-lisp:nil
                                ((alias-name :target-type alias-name-type
                                  :required common-lisp:t :member-name
                                  "AliasName")
                                 (target-key-id :target-type key-id-type
                                  :required common-lisp:t :member-name
                                  "TargetKeyId"))
                                (:shape-name "CreateAliasRequest"))

(smithy/sdk/shapes:define-input create-custom-key-store-request common-lisp:nil
                                ((custom-key-store-name :target-type
                                  custom-key-store-name-type :required
                                  common-lisp:t :member-name
                                  "CustomKeyStoreName")
                                 (cloud-hsm-cluster-id :target-type
                                  cloud-hsm-cluster-id-type :member-name
                                  "CloudHsmClusterId")
                                 (trust-anchor-certificate :target-type
                                  trust-anchor-certificate-type :member-name
                                  "TrustAnchorCertificate")
                                 (key-store-password :target-type
                                  key-store-password-type :member-name
                                  "KeyStorePassword")
                                 (custom-key-store-type :target-type
                                  custom-key-store-type :member-name
                                  "CustomKeyStoreType")
                                 (xks-proxy-uri-endpoint :target-type
                                  xks-proxy-uri-endpoint-type :member-name
                                  "XksProxyUriEndpoint")
                                 (xks-proxy-uri-path :target-type
                                  xks-proxy-uri-path-type :member-name
                                  "XksProxyUriPath")
                                 (xks-proxy-vpc-endpoint-service-name
                                  :target-type
                                  xks-proxy-vpc-endpoint-service-name-type
                                  :member-name
                                  "XksProxyVpcEndpointServiceName")
                                 (xks-proxy-authentication-credential
                                  :target-type
                                  xks-proxy-authentication-credential-type
                                  :member-name
                                  "XksProxyAuthenticationCredential")
                                 (xks-proxy-connectivity :target-type
                                  xks-proxy-connectivity-type :member-name
                                  "XksProxyConnectivity"))
                                (:shape-name "CreateCustomKeyStoreRequest"))

(smithy/sdk/shapes:define-output create-custom-key-store-response
                                 common-lisp:nil
                                 ((custom-key-store-id :target-type
                                   custom-key-store-id-type :member-name
                                   "CustomKeyStoreId"))
                                 (:shape-name "CreateCustomKeyStoreResponse"))

(smithy/sdk/shapes:define-input create-grant-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (grantee-principal :target-type
                                  principal-id-type :required common-lisp:t
                                  :member-name "GranteePrincipal")
                                 (retiring-principal :target-type
                                  principal-id-type :member-name
                                  "RetiringPrincipal")
                                 (operations :target-type grant-operation-list
                                  :required common-lisp:t :member-name
                                  "Operations")
                                 (constraints :target-type grant-constraints
                                  :member-name "Constraints")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (name :target-type grant-name-type
                                  :member-name "Name")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "CreateGrantRequest"))

(smithy/sdk/shapes:define-output create-grant-response common-lisp:nil
                                 ((grant-token :target-type grant-token-type
                                   :member-name "GrantToken")
                                  (grant-id :target-type grant-id-type
                                   :member-name "GrantId"))
                                 (:shape-name "CreateGrantResponse"))

(smithy/sdk/shapes:define-input create-key-request common-lisp:nil
                                ((policy :target-type policy-type :member-name
                                  "Policy")
                                 (description :target-type description-type
                                  :member-name "Description")
                                 (key-usage :target-type key-usage-type
                                  :member-name "KeyUsage")
                                 (customer-master-key-spec :target-type
                                  customer-master-key-spec :member-name
                                  "CustomerMasterKeySpec")
                                 (key-spec :target-type key-spec :member-name
                                  "KeySpec")
                                 (origin :target-type origin-type :member-name
                                  "Origin")
                                 (custom-key-store-id :target-type
                                  custom-key-store-id-type :member-name
                                  "CustomKeyStoreId")
                                 (bypass-policy-lockout-safety-check
                                  :target-type boolean-type :member-name
                                  "BypassPolicyLockoutSafetyCheck")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (multi-region :target-type
                                  nullable-boolean-type :member-name
                                  "MultiRegion")
                                 (xks-key-id :target-type xks-key-id-type
                                  :member-name "XksKeyId"))
                                (:shape-name "CreateKeyRequest"))

(smithy/sdk/shapes:define-output create-key-response common-lisp:nil
                                 ((key-metadata :target-type key-metadata
                                   :member-name "KeyMetadata"))
                                 (:shape-name "CreateKeyResponse"))

(smithy/sdk/shapes:define-error custom-key-store-has-cmks-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "CustomKeyStoreHasCMKsException")
                                (:error-name "CustomKeyStoreHasCMKsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type custom-key-store-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error custom-key-store-invalid-state-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "CustomKeyStoreInvalidStateException")
                                (:error-name
                                 "CustomKeyStoreInvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error custom-key-store-name-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "CustomKeyStoreNameInUseException")
                                (:error-name
                                 "CustomKeyStoreNameInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type custom-key-store-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error custom-key-store-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "CustomKeyStoreNotFoundException")
                                (:error-name "CustomKeyStoreNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum custom-key-store-type
    common-lisp:nil
  (:aws-cloudhsm "AWS_CLOUDHSM")
  (:external-key-store "EXTERNAL_KEY_STORE"))

(smithy/sdk/shapes:define-list custom-key-stores-list :member
                               custom-key-stores-list-entry)

(smithy/sdk/shapes:define-structure custom-key-stores-list-entry
                                    common-lisp:nil
                                    ((custom-key-store-id :target-type
                                      custom-key-store-id-type :member-name
                                      "CustomKeyStoreId")
                                     (custom-key-store-name :target-type
                                      custom-key-store-name-type :member-name
                                      "CustomKeyStoreName")
                                     (cloud-hsm-cluster-id :target-type
                                      cloud-hsm-cluster-id-type :member-name
                                      "CloudHsmClusterId")
                                     (trust-anchor-certificate :target-type
                                      trust-anchor-certificate-type
                                      :member-name "TrustAnchorCertificate")
                                     (connection-state :target-type
                                      connection-state-type :member-name
                                      "ConnectionState")
                                     (connection-error-code :target-type
                                      connection-error-code-type :member-name
                                      "ConnectionErrorCode")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (custom-key-store-type :target-type
                                      custom-key-store-type :member-name
                                      "CustomKeyStoreType")
                                     (xks-proxy-configuration :target-type
                                      xks-proxy-configuration-type :member-name
                                      "XksProxyConfiguration"))
                                    (:shape-name "CustomKeyStoresListEntry"))

(smithy/sdk/shapes:define-enum customer-master-key-spec
    common-lisp:nil
  (:rsa-2048 "RSA_2048")
  (:rsa-3072 "RSA_3072")
  (:rsa-4096 "RSA_4096")
  (:ecc-nist-p256 "ECC_NIST_P256")
  (:ecc-nist-p384 "ECC_NIST_P384")
  (:ecc-nist-p521 "ECC_NIST_P521")
  (:ecc-secg-p256k1 "ECC_SECG_P256K1")
  (:symmetric-default "SYMMETRIC_DEFAULT")
  (:hmac-224 "HMAC_224")
  (:hmac-256 "HMAC_256")
  (:hmac-384 "HMAC_384")
  (:hmac-512 "HMAC_512")
  (:sm2 "SM2"))

(smithy/sdk/shapes:define-enum data-key-pair-spec
    common-lisp:nil
  (:rsa-2048 "RSA_2048")
  (:rsa-3072 "RSA_3072")
  (:rsa-4096 "RSA_4096")
  (:ecc-nist-p256 "ECC_NIST_P256")
  (:ecc-nist-p384 "ECC_NIST_P384")
  (:ecc-nist-p521 "ECC_NIST_P521")
  (:ecc-secg-p256k1 "ECC_SECG_P256K1")
  (:sm2 "SM2"))

(smithy/sdk/shapes:define-enum data-key-spec
    common-lisp:nil
  (:aes-256 "AES_256")
  (:aes-128 "AES_128"))

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input decrypt-request common-lisp:nil
                                ((ciphertext-blob :target-type ciphertext-type
                                  :required common-lisp:t :member-name
                                  "CiphertextBlob")
                                 (encryption-context :target-type
                                  encryption-context-type :member-name
                                  "EncryptionContext")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (key-id :target-type key-id-type :member-name
                                  "KeyId")
                                 (encryption-algorithm :target-type
                                  encryption-algorithm-spec :member-name
                                  "EncryptionAlgorithm")
                                 (recipient :target-type recipient-info
                                  :member-name "Recipient")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "DecryptRequest"))

(smithy/sdk/shapes:define-output decrypt-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (plaintext :target-type plaintext-type
                                   :member-name "Plaintext")
                                  (encryption-algorithm :target-type
                                   encryption-algorithm-spec :member-name
                                   "EncryptionAlgorithm")
                                  (ciphertext-for-recipient :target-type
                                   ciphertext-type :member-name
                                   "CiphertextForRecipient")
                                  (key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "KeyMaterialId"))
                                 (:shape-name "DecryptResponse"))

(smithy/sdk/shapes:define-input delete-alias-request common-lisp:nil
                                ((alias-name :target-type alias-name-type
                                  :required common-lisp:t :member-name
                                  "AliasName"))
                                (:shape-name "DeleteAliasRequest"))

(smithy/sdk/shapes:define-input delete-custom-key-store-request common-lisp:nil
                                ((custom-key-store-id :target-type
                                  custom-key-store-id-type :required
                                  common-lisp:t :member-name
                                  "CustomKeyStoreId"))
                                (:shape-name "DeleteCustomKeyStoreRequest"))

(smithy/sdk/shapes:define-output delete-custom-key-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCustomKeyStoreResponse"))

(smithy/sdk/shapes:define-input delete-imported-key-material-request
                                common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (key-material-id :target-type
                                  backing-key-id-type :member-name
                                  "KeyMaterialId"))
                                (:shape-name
                                 "DeleteImportedKeyMaterialRequest"))

(smithy/sdk/shapes:define-output delete-imported-key-material-response
                                 common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (key-material-id :target-type
                                   backing-key-id-response-type :member-name
                                   "KeyMaterialId"))
                                 (:shape-name
                                  "DeleteImportedKeyMaterialResponse"))

(smithy/sdk/shapes:define-error dependency-timeout-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "DependencyTimeoutException")
                                (:error-name "DependencyTimeout")
                                (:error-code 503))

(smithy/sdk/shapes:define-input derive-shared-secret-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (key-agreement-algorithm :target-type
                                  key-agreement-algorithm-spec :required
                                  common-lisp:t :member-name
                                  "KeyAgreementAlgorithm")
                                 (public-key :target-type public-key-type
                                  :required common-lisp:t :member-name
                                  "PublicKey")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun")
                                 (recipient :target-type recipient-info
                                  :member-name "Recipient"))
                                (:shape-name "DeriveSharedSecretRequest"))

(smithy/sdk/shapes:define-output derive-shared-secret-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (shared-secret :target-type plaintext-type
                                   :member-name "SharedSecret")
                                  (ciphertext-for-recipient :target-type
                                   ciphertext-type :member-name
                                   "CiphertextForRecipient")
                                  (key-agreement-algorithm :target-type
                                   key-agreement-algorithm-spec :member-name
                                   "KeyAgreementAlgorithm")
                                  (key-origin :target-type origin-type
                                   :member-name "KeyOrigin"))
                                 (:shape-name "DeriveSharedSecretResponse"))

(smithy/sdk/shapes:define-input describe-custom-key-stores-request
                                common-lisp:nil
                                ((custom-key-store-id :target-type
                                  custom-key-store-id-type :member-name
                                  "CustomKeyStoreId")
                                 (custom-key-store-name :target-type
                                  custom-key-store-name-type :member-name
                                  "CustomKeyStoreName")
                                 (limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "DescribeCustomKeyStoresRequest"))

(smithy/sdk/shapes:define-output describe-custom-key-stores-response
                                 common-lisp:nil
                                 ((custom-key-stores :target-type
                                   custom-key-stores-list :member-name
                                   "CustomKeyStores")
                                  (next-marker :target-type marker-type
                                   :member-name "NextMarker")
                                  (truncated :target-type boolean-type
                                   :member-name "Truncated"))
                                 (:shape-name
                                  "DescribeCustomKeyStoresResponse"))

(smithy/sdk/shapes:define-input describe-key-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens"))
                                (:shape-name "DescribeKeyRequest"))

(smithy/sdk/shapes:define-output describe-key-response common-lisp:nil
                                 ((key-metadata :target-type key-metadata
                                   :member-name "KeyMetadata"))
                                 (:shape-name "DescribeKeyResponse"))

(smithy/sdk/shapes:define-type description-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disable-key-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId"))
                                (:shape-name "DisableKeyRequest"))

(smithy/sdk/shapes:define-input disable-key-rotation-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId"))
                                (:shape-name "DisableKeyRotationRequest"))

(smithy/sdk/shapes:define-error disabled-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "DisabledException")
                                (:error-name "Disabled") (:error-code 409))

(smithy/sdk/shapes:define-input disconnect-custom-key-store-request
                                common-lisp:nil
                                ((custom-key-store-id :target-type
                                  custom-key-store-id-type :required
                                  common-lisp:t :member-name
                                  "CustomKeyStoreId"))
                                (:shape-name "DisconnectCustomKeyStoreRequest"))

(smithy/sdk/shapes:define-output disconnect-custom-key-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisconnectCustomKeyStoreResponse"))

(smithy/sdk/shapes:define-error dry-run-operation-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "DryRunOperationException")
                                (:error-name "DryRunOperation")
                                (:error-code 412))

(smithy/sdk/shapes:define-input enable-key-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId"))
                                (:shape-name "EnableKeyRequest"))

(smithy/sdk/shapes:define-input enable-key-rotation-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (rotation-period-in-days :target-type
                                  rotation-period-in-days-type :member-name
                                  "RotationPeriodInDays"))
                                (:shape-name "EnableKeyRotationRequest"))

(smithy/sdk/shapes:define-input encrypt-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (plaintext :target-type plaintext-type
                                  :required common-lisp:t :member-name
                                  "Plaintext")
                                 (encryption-context :target-type
                                  encryption-context-type :member-name
                                  "EncryptionContext")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (encryption-algorithm :target-type
                                  encryption-algorithm-spec :member-name
                                  "EncryptionAlgorithm")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "EncryptRequest"))

(smithy/sdk/shapes:define-output encrypt-response common-lisp:nil
                                 ((ciphertext-blob :target-type ciphertext-type
                                   :member-name "CiphertextBlob")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (encryption-algorithm :target-type
                                   encryption-algorithm-spec :member-name
                                   "EncryptionAlgorithm"))
                                 (:shape-name "EncryptResponse"))

(smithy/sdk/shapes:define-enum encryption-algorithm-spec
    common-lisp:nil
  (:symmetric-default "SYMMETRIC_DEFAULT")
  (:rsaes-oaep-sha-1 "RSAES_OAEP_SHA_1")
  (:rsaes-oaep-sha-256 "RSAES_OAEP_SHA_256")
  (:sm2pke "SM2PKE"))

(smithy/sdk/shapes:define-list encryption-algorithm-spec-list :member
                               encryption-algorithm-spec)

(smithy/sdk/shapes:define-type encryption-context-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map encryption-context-type :key
                              encryption-context-key :value
                              encryption-context-value)

(smithy/sdk/shapes:define-type encryption-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum expiration-model-type
    common-lisp:nil
  (:key-material-expires "KEY_MATERIAL_EXPIRES")
  (:key-material-does-not-expire "KEY_MATERIAL_DOES_NOT_EXPIRE"))

(smithy/sdk/shapes:define-error expired-import-token-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "ExpiredImportTokenException")
                                (:error-name "ExpiredImportTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input generate-data-key-pair-request common-lisp:nil
                                ((encryption-context :target-type
                                  encryption-context-type :member-name
                                  "EncryptionContext")
                                 (key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (key-pair-spec :target-type data-key-pair-spec
                                  :required common-lisp:t :member-name
                                  "KeyPairSpec")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (recipient :target-type recipient-info
                                  :member-name "Recipient")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "GenerateDataKeyPairRequest"))

(smithy/sdk/shapes:define-output generate-data-key-pair-response
                                 common-lisp:nil
                                 ((private-key-ciphertext-blob :target-type
                                   ciphertext-type :member-name
                                   "PrivateKeyCiphertextBlob")
                                  (private-key-plaintext :target-type
                                   plaintext-type :member-name
                                   "PrivateKeyPlaintext")
                                  (public-key :target-type public-key-type
                                   :member-name "PublicKey")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (key-pair-spec :target-type
                                   data-key-pair-spec :member-name
                                   "KeyPairSpec")
                                  (ciphertext-for-recipient :target-type
                                   ciphertext-type :member-name
                                   "CiphertextForRecipient")
                                  (key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "KeyMaterialId"))
                                 (:shape-name "GenerateDataKeyPairResponse"))

(smithy/sdk/shapes:define-input
 generate-data-key-pair-without-plaintext-request common-lisp:nil
 ((encryption-context :target-type encryption-context-type :member-name
   "EncryptionContext")
  (key-id :target-type key-id-type :required common-lisp:t :member-name
   "KeyId")
  (key-pair-spec :target-type data-key-pair-spec :required common-lisp:t
   :member-name "KeyPairSpec")
  (grant-tokens :target-type grant-token-list :member-name "GrantTokens")
  (dry-run :target-type nullable-boolean-type :member-name "DryRun"))
 (:shape-name "GenerateDataKeyPairWithoutPlaintextRequest"))

(smithy/sdk/shapes:define-output
 generate-data-key-pair-without-plaintext-response common-lisp:nil
 ((private-key-ciphertext-blob :target-type ciphertext-type :member-name
   "PrivateKeyCiphertextBlob")
  (public-key :target-type public-key-type :member-name "PublicKey")
  (key-id :target-type key-id-type :member-name "KeyId")
  (key-pair-spec :target-type data-key-pair-spec :member-name "KeyPairSpec")
  (key-material-id :target-type backing-key-id-type :member-name
   "KeyMaterialId"))
 (:shape-name "GenerateDataKeyPairWithoutPlaintextResponse"))

(smithy/sdk/shapes:define-input generate-data-key-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (encryption-context :target-type
                                  encryption-context-type :member-name
                                  "EncryptionContext")
                                 (number-of-bytes :target-type
                                  number-of-bytes-type :member-name
                                  "NumberOfBytes")
                                 (key-spec :target-type data-key-spec
                                  :member-name "KeySpec")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (recipient :target-type recipient-info
                                  :member-name "Recipient")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "GenerateDataKeyRequest"))

(smithy/sdk/shapes:define-output generate-data-key-response common-lisp:nil
                                 ((ciphertext-blob :target-type ciphertext-type
                                   :member-name "CiphertextBlob")
                                  (plaintext :target-type plaintext-type
                                   :member-name "Plaintext")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (ciphertext-for-recipient :target-type
                                   ciphertext-type :member-name
                                   "CiphertextForRecipient")
                                  (key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "KeyMaterialId"))
                                 (:shape-name "GenerateDataKeyResponse"))

(smithy/sdk/shapes:define-input generate-data-key-without-plaintext-request
                                common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (encryption-context :target-type
                                  encryption-context-type :member-name
                                  "EncryptionContext")
                                 (key-spec :target-type data-key-spec
                                  :member-name "KeySpec")
                                 (number-of-bytes :target-type
                                  number-of-bytes-type :member-name
                                  "NumberOfBytes")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name
                                 "GenerateDataKeyWithoutPlaintextRequest"))

(smithy/sdk/shapes:define-output generate-data-key-without-plaintext-response
                                 common-lisp:nil
                                 ((ciphertext-blob :target-type ciphertext-type
                                   :member-name "CiphertextBlob")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "KeyMaterialId"))
                                 (:shape-name
                                  "GenerateDataKeyWithoutPlaintextResponse"))

(smithy/sdk/shapes:define-input generate-mac-request common-lisp:nil
                                ((message :target-type plaintext-type :required
                                  common-lisp:t :member-name "Message")
                                 (key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (mac-algorithm :target-type mac-algorithm-spec
                                  :required common-lisp:t :member-name
                                  "MacAlgorithm")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "GenerateMacRequest"))

(smithy/sdk/shapes:define-output generate-mac-response common-lisp:nil
                                 ((mac :target-type ciphertext-type
                                   :member-name "Mac")
                                  (mac-algorithm :target-type
                                   mac-algorithm-spec :member-name
                                   "MacAlgorithm")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId"))
                                 (:shape-name "GenerateMacResponse"))

(smithy/sdk/shapes:define-input generate-random-request common-lisp:nil
                                ((number-of-bytes :target-type
                                  number-of-bytes-type :member-name
                                  "NumberOfBytes")
                                 (custom-key-store-id :target-type
                                  custom-key-store-id-type :member-name
                                  "CustomKeyStoreId")
                                 (recipient :target-type recipient-info
                                  :member-name "Recipient"))
                                (:shape-name "GenerateRandomRequest"))

(smithy/sdk/shapes:define-output generate-random-response common-lisp:nil
                                 ((plaintext :target-type plaintext-type
                                   :member-name "Plaintext")
                                  (ciphertext-for-recipient :target-type
                                   ciphertext-type :member-name
                                   "CiphertextForRecipient"))
                                 (:shape-name "GenerateRandomResponse"))

(smithy/sdk/shapes:define-input get-key-policy-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (policy-name :target-type policy-name-type
                                  :member-name "PolicyName"))
                                (:shape-name "GetKeyPolicyRequest"))

(smithy/sdk/shapes:define-output get-key-policy-response common-lisp:nil
                                 ((policy :target-type policy-type :member-name
                                   "Policy")
                                  (policy-name :target-type policy-name-type
                                   :member-name "PolicyName"))
                                 (:shape-name "GetKeyPolicyResponse"))

(smithy/sdk/shapes:define-input get-key-rotation-status-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId"))
                                (:shape-name "GetKeyRotationStatusRequest"))

(smithy/sdk/shapes:define-output get-key-rotation-status-response
                                 common-lisp:nil
                                 ((key-rotation-enabled :target-type
                                   boolean-type :member-name
                                   "KeyRotationEnabled")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (rotation-period-in-days :target-type
                                   rotation-period-in-days-type :member-name
                                   "RotationPeriodInDays")
                                  (next-rotation-date :target-type date-type
                                   :member-name "NextRotationDate")
                                  (on-demand-rotation-start-date :target-type
                                   date-type :member-name
                                   "OnDemandRotationStartDate"))
                                 (:shape-name "GetKeyRotationStatusResponse"))

(smithy/sdk/shapes:define-input get-parameters-for-import-request
                                common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (wrapping-algorithm :target-type
                                  algorithm-spec :required common-lisp:t
                                  :member-name "WrappingAlgorithm")
                                 (wrapping-key-spec :target-type
                                  wrapping-key-spec :required common-lisp:t
                                  :member-name "WrappingKeySpec"))
                                (:shape-name "GetParametersForImportRequest"))

(smithy/sdk/shapes:define-output get-parameters-for-import-response
                                 common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (import-token :target-type ciphertext-type
                                   :member-name "ImportToken")
                                  (public-key :target-type plaintext-type
                                   :member-name "PublicKey")
                                  (parameters-valid-to :target-type date-type
                                   :member-name "ParametersValidTo"))
                                 (:shape-name "GetParametersForImportResponse"))

(smithy/sdk/shapes:define-input get-public-key-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens"))
                                (:shape-name "GetPublicKeyRequest"))

(smithy/sdk/shapes:define-output get-public-key-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (public-key :target-type public-key-type
                                   :member-name "PublicKey")
                                  (customer-master-key-spec :target-type
                                   customer-master-key-spec :member-name
                                   "CustomerMasterKeySpec")
                                  (key-spec :target-type key-spec :member-name
                                   "KeySpec")
                                  (key-usage :target-type key-usage-type
                                   :member-name "KeyUsage")
                                  (encryption-algorithms :target-type
                                   encryption-algorithm-spec-list :member-name
                                   "EncryptionAlgorithms")
                                  (signing-algorithms :target-type
                                   signing-algorithm-spec-list :member-name
                                   "SigningAlgorithms")
                                  (key-agreement-algorithms :target-type
                                   key-agreement-algorithm-spec-list
                                   :member-name "KeyAgreementAlgorithms"))
                                 (:shape-name "GetPublicKeyResponse"))

(smithy/sdk/shapes:define-structure grant-constraints common-lisp:nil
                                    ((encryption-context-subset :target-type
                                      encryption-context-type :member-name
                                      "EncryptionContextSubset")
                                     (encryption-context-equals :target-type
                                      encryption-context-type :member-name
                                      "EncryptionContextEquals"))
                                    (:shape-name "GrantConstraints"))

(smithy/sdk/shapes:define-type grant-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list grant-list :member grant-list-entry)

(smithy/sdk/shapes:define-structure grant-list-entry common-lisp:nil
                                    ((key-id :target-type key-id-type
                                      :member-name "KeyId")
                                     (grant-id :target-type grant-id-type
                                      :member-name "GrantId")
                                     (name :target-type grant-name-type
                                      :member-name "Name")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (grantee-principal :target-type
                                      principal-id-type :member-name
                                      "GranteePrincipal")
                                     (retiring-principal :target-type
                                      principal-id-type :member-name
                                      "RetiringPrincipal")
                                     (issuing-account :target-type
                                      principal-id-type :member-name
                                      "IssuingAccount")
                                     (operations :target-type
                                      grant-operation-list :member-name
                                      "Operations")
                                     (constraints :target-type
                                      grant-constraints :member-name
                                      "Constraints"))
                                    (:shape-name "GrantListEntry"))

(smithy/sdk/shapes:define-type grant-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum grant-operation
    common-lisp:nil
  (:decrypt "Decrypt")
  (:encrypt "Encrypt")
  (:generate-data-key "GenerateDataKey")
  (:generate-data-key-without-plaintext "GenerateDataKeyWithoutPlaintext")
  (:re-encrypt-from "ReEncryptFrom")
  (:re-encrypt-to "ReEncryptTo")
  (:sign "Sign")
  (:verify "Verify")
  (:get-public-key "GetPublicKey")
  (:create-grant "CreateGrant")
  (:retire-grant "RetireGrant")
  (:describe-key "DescribeKey")
  (:generate-data-key-pair "GenerateDataKeyPair")
  (:generate-data-key-pair-without-plaintext
   "GenerateDataKeyPairWithoutPlaintext")
  (:generate-mac "GenerateMac")
  (:verify-mac "VerifyMac")
  (:derive-shared-secret "DeriveSharedSecret"))

(smithy/sdk/shapes:define-list grant-operation-list :member grant-operation)

(smithy/sdk/shapes:define-list grant-token-list :member grant-token-type)

(smithy/sdk/shapes:define-type grant-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-key-material-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (import-token :target-type ciphertext-type
                                  :required common-lisp:t :member-name
                                  "ImportToken")
                                 (encrypted-key-material :target-type
                                  ciphertext-type :required common-lisp:t
                                  :member-name "EncryptedKeyMaterial")
                                 (valid-to :target-type date-type :member-name
                                  "ValidTo")
                                 (expiration-model :target-type
                                  expiration-model-type :member-name
                                  "ExpirationModel")
                                 (import-type :target-type import-type
                                  :member-name "ImportType")
                                 (key-material-description :target-type
                                  key-material-description-type :member-name
                                  "KeyMaterialDescription")
                                 (key-material-id :target-type
                                  backing-key-id-type :member-name
                                  "KeyMaterialId"))
                                (:shape-name "ImportKeyMaterialRequest"))

(smithy/sdk/shapes:define-output import-key-material-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "KeyMaterialId"))
                                 (:shape-name "ImportKeyMaterialResponse"))

(smithy/sdk/shapes:define-enum import-state
    common-lisp:nil
  (:imported "IMPORTED")
  (:pending-import "PENDING_IMPORT"))

(smithy/sdk/shapes:define-enum import-type
    common-lisp:nil
  (:new-key-material "NEW_KEY_MATERIAL")
  (:existing-key-material "EXISTING_KEY_MATERIAL"))

(smithy/sdk/shapes:define-enum include-key-material
    common-lisp:nil
  (:all-key-material "ALL_KEY_MATERIAL")
  (:rotations-only "ROTATIONS_ONLY"))

(smithy/sdk/shapes:define-error incorrect-key-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "IncorrectKeyException")
                                (:error-name "IncorrectKeyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error incorrect-key-material-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "IncorrectKeyMaterialException")
                                (:error-name "IncorrectKeyMaterialException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error incorrect-trust-anchor-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "IncorrectTrustAnchorException")
                                (:error-name "IncorrectTrustAnchorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-alias-name-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidAliasNameException")
                                (:error-name "InvalidAliasName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-arn-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidArnException")
                                (:error-name "InvalidArn") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-ciphertext-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidCiphertextException")
                                (:error-name "InvalidCiphertext")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-grant-id-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidGrantIdException")
                                (:error-name "InvalidGrantId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-grant-token-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidGrantTokenException")
                                (:error-name "InvalidGrantToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-import-token-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidImportTokenException")
                                (:error-name "InvalidImportTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-key-usage-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidKeyUsageException")
                                (:error-name "InvalidKeyUsage")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-marker-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "InvalidMarkerException")
                                (:error-name "InvalidMarker") (:error-code 400))

(smithy/sdk/shapes:define-error kmsinternal-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "KMSInternalException")
                                (:error-name "KMSInternal") (:error-code 500))

(smithy/sdk/shapes:define-error kmsinvalid-mac-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "KMSInvalidMacException")
                                (:error-name "KMSInvalidMac") (:error-code 400))

(smithy/sdk/shapes:define-error kmsinvalid-signature-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "KMSInvalidSignatureException")
                                (:error-name "KMSInvalidSignature")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsinvalid-state-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "KMSInvalidStateException")
                                (:error-name "KMSInvalidStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum key-agreement-algorithm-spec
    common-lisp:nil
  (:ecdh "ECDH"))

(smithy/sdk/shapes:define-list key-agreement-algorithm-spec-list :member
                               key-agreement-algorithm-spec)

(smithy/sdk/shapes:define-enum key-encryption-mechanism
    common-lisp:nil
  (:rsaes-oaep-sha-256 "RSAES_OAEP_SHA_256"))

(smithy/sdk/shapes:define-type key-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list key-list :member key-list-entry)

(smithy/sdk/shapes:define-structure key-list-entry common-lisp:nil
                                    ((key-id :target-type key-id-type
                                      :member-name "KeyId")
                                     (key-arn :target-type arn-type
                                      :member-name "KeyArn"))
                                    (:shape-name "KeyListEntry"))

(smithy/sdk/shapes:define-enum key-manager-type
    common-lisp:nil
  (:aws "AWS")
  (:customer "CUSTOMER"))

(smithy/sdk/shapes:define-type key-material-description-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum key-material-state
    common-lisp:nil
  (:non-current "NON_CURRENT")
  (:current "CURRENT")
  (:pending-rotation "PENDING_ROTATION"))

(smithy/sdk/shapes:define-structure key-metadata common-lisp:nil
                                    ((awsaccount-id :target-type
                                      awsaccount-id-type :member-name
                                      "AWSAccountId")
                                     (key-id :target-type key-id-type :required
                                      common-lisp:t :member-name "KeyId")
                                     (arn :target-type arn-type :member-name
                                      "Arn")
                                     (creation-date :target-type date-type
                                      :member-name "CreationDate")
                                     (enabled :target-type boolean-type
                                      :member-name "Enabled")
                                     (description :target-type description-type
                                      :member-name "Description")
                                     (key-usage :target-type key-usage-type
                                      :member-name "KeyUsage")
                                     (key-state :target-type key-state
                                      :member-name "KeyState")
                                     (deletion-date :target-type date-type
                                      :member-name "DeletionDate")
                                     (valid-to :target-type date-type
                                      :member-name "ValidTo")
                                     (origin :target-type origin-type
                                      :member-name "Origin")
                                     (custom-key-store-id :target-type
                                      custom-key-store-id-type :member-name
                                      "CustomKeyStoreId")
                                     (cloud-hsm-cluster-id :target-type
                                      cloud-hsm-cluster-id-type :member-name
                                      "CloudHsmClusterId")
                                     (expiration-model :target-type
                                      expiration-model-type :member-name
                                      "ExpirationModel")
                                     (key-manager :target-type key-manager-type
                                      :member-name "KeyManager")
                                     (customer-master-key-spec :target-type
                                      customer-master-key-spec :member-name
                                      "CustomerMasterKeySpec")
                                     (key-spec :target-type key-spec
                                      :member-name "KeySpec")
                                     (encryption-algorithms :target-type
                                      encryption-algorithm-spec-list
                                      :member-name "EncryptionAlgorithms")
                                     (signing-algorithms :target-type
                                      signing-algorithm-spec-list :member-name
                                      "SigningAlgorithms")
                                     (key-agreement-algorithms :target-type
                                      key-agreement-algorithm-spec-list
                                      :member-name "KeyAgreementAlgorithms")
                                     (multi-region :target-type
                                      nullable-boolean-type :member-name
                                      "MultiRegion")
                                     (multi-region-configuration :target-type
                                      multi-region-configuration :member-name
                                      "MultiRegionConfiguration")
                                     (pending-deletion-window-in-days
                                      :target-type pending-window-in-days-type
                                      :member-name
                                      "PendingDeletionWindowInDays")
                                     (mac-algorithms :target-type
                                      mac-algorithm-spec-list :member-name
                                      "MacAlgorithms")
                                     (xks-key-configuration :target-type
                                      xks-key-configuration-type :member-name
                                      "XksKeyConfiguration")
                                     (current-key-material-id :target-type
                                      backing-key-id-type :member-name
                                      "CurrentKeyMaterialId"))
                                    (:shape-name "KeyMetadata"))

(smithy/sdk/shapes:define-enum key-spec
    common-lisp:nil
  (:rsa-2048 "RSA_2048")
  (:rsa-3072 "RSA_3072")
  (:rsa-4096 "RSA_4096")
  (:ecc-nist-p256 "ECC_NIST_P256")
  (:ecc-nist-p384 "ECC_NIST_P384")
  (:ecc-nist-p521 "ECC_NIST_P521")
  (:ecc-secg-p256k1 "ECC_SECG_P256K1")
  (:symmetric-default "SYMMETRIC_DEFAULT")
  (:hmac-224 "HMAC_224")
  (:hmac-256 "HMAC_256")
  (:hmac-384 "HMAC_384")
  (:hmac-512 "HMAC_512")
  (:sm2 "SM2")
  (:ml-dsa-44 "ML_DSA_44")
  (:ml-dsa-65 "ML_DSA_65")
  (:ml-dsa-87 "ML_DSA_87"))

(smithy/sdk/shapes:define-enum key-state
    common-lisp:nil
  (:creating "Creating")
  (:enabled "Enabled")
  (:disabled "Disabled")
  (:pending-deletion "PendingDeletion")
  (:pending-import "PendingImport")
  (:pending-replica-deletion "PendingReplicaDeletion")
  (:unavailable "Unavailable")
  (:updating "Updating"))

(smithy/sdk/shapes:define-type key-store-password-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error key-unavailable-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "KeyUnavailableException")
                                (:error-name "KeyUnavailable")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum key-usage-type
    common-lisp:nil
  (:sign-verify "SIGN_VERIFY")
  (:encrypt-decrypt "ENCRYPT_DECRYPT")
  (:generate-verify-mac "GENERATE_VERIFY_MAC")
  (:key-agreement "KEY_AGREEMENT"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceeded") (:error-code 400))

(smithy/sdk/shapes:define-type limit-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-aliases-request common-lisp:nil
                                ((key-id :target-type key-id-type :member-name
                                  "KeyId")
                                 (limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "ListAliasesRequest"))

(smithy/sdk/shapes:define-output list-aliases-response common-lisp:nil
                                 ((aliases :target-type alias-list :member-name
                                   "Aliases")
                                  (next-marker :target-type marker-type
                                   :member-name "NextMarker")
                                  (truncated :target-type boolean-type
                                   :member-name "Truncated"))
                                 (:shape-name "ListAliasesResponse"))

(smithy/sdk/shapes:define-input list-grants-request common-lisp:nil
                                ((limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (grant-id :target-type grant-id-type
                                  :member-name "GrantId")
                                 (grantee-principal :target-type
                                  principal-id-type :member-name
                                  "GranteePrincipal"))
                                (:shape-name "ListGrantsRequest"))

(smithy/sdk/shapes:define-structure list-grants-response common-lisp:nil
                                    ((grants :target-type grant-list
                                      :member-name "Grants")
                                     (next-marker :target-type marker-type
                                      :member-name "NextMarker")
                                     (truncated :target-type boolean-type
                                      :member-name "Truncated"))
                                    (:shape-name "ListGrantsResponse"))

(smithy/sdk/shapes:define-input list-key-policies-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "ListKeyPoliciesRequest"))

(smithy/sdk/shapes:define-output list-key-policies-response common-lisp:nil
                                 ((policy-names :target-type policy-name-list
                                   :member-name "PolicyNames")
                                  (next-marker :target-type marker-type
                                   :member-name "NextMarker")
                                  (truncated :target-type boolean-type
                                   :member-name "Truncated"))
                                 (:shape-name "ListKeyPoliciesResponse"))

(smithy/sdk/shapes:define-input list-key-rotations-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (include-key-material :target-type
                                  include-key-material :member-name
                                  "IncludeKeyMaterial")
                                 (limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "ListKeyRotationsRequest"))

(smithy/sdk/shapes:define-output list-key-rotations-response common-lisp:nil
                                 ((rotations :target-type rotations-list
                                   :member-name "Rotations")
                                  (next-marker :target-type marker-type
                                   :member-name "NextMarker")
                                  (truncated :target-type boolean-type
                                   :member-name "Truncated"))
                                 (:shape-name "ListKeyRotationsResponse"))

(smithy/sdk/shapes:define-input list-keys-request common-lisp:nil
                                ((limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "ListKeysRequest"))

(smithy/sdk/shapes:define-output list-keys-response common-lisp:nil
                                 ((keys :target-type key-list :member-name
                                   "Keys")
                                  (next-marker :target-type marker-type
                                   :member-name "NextMarker")
                                  (truncated :target-type boolean-type
                                   :member-name "Truncated"))
                                 (:shape-name "ListKeysResponse"))

(smithy/sdk/shapes:define-input list-resource-tags-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker"))
                                (:shape-name "ListResourceTagsRequest"))

(smithy/sdk/shapes:define-output list-resource-tags-response common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-marker :target-type marker-type
                                   :member-name "NextMarker")
                                  (truncated :target-type boolean-type
                                   :member-name "Truncated"))
                                 (:shape-name "ListResourceTagsResponse"))

(smithy/sdk/shapes:define-input list-retirable-grants-request common-lisp:nil
                                ((limit :target-type limit-type :member-name
                                  "Limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker")
                                 (retiring-principal :target-type
                                  principal-id-type :required common-lisp:t
                                  :member-name "RetiringPrincipal"))
                                (:shape-name "ListRetirableGrantsRequest"))

(smithy/sdk/shapes:define-enum mac-algorithm-spec
    common-lisp:nil
  (:hmac-sha-224 "HMAC_SHA_224")
  (:hmac-sha-256 "HMAC_SHA_256")
  (:hmac-sha-384 "HMAC_SHA_384")
  (:hmac-sha-512 "HMAC_SHA_512"))

(smithy/sdk/shapes:define-list mac-algorithm-spec-list :member
                               mac-algorithm-spec)

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-name "MalformedPolicyDocument")
                                (:error-code 400))

(smithy/sdk/shapes:define-type marker-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum message-type
    common-lisp:nil
  (:raw "RAW")
  (:digest "DIGEST")
  (:external-mu "EXTERNAL_MU"))

(smithy/sdk/shapes:define-structure multi-region-configuration common-lisp:nil
                                    ((multi-region-key-type :target-type
                                      multi-region-key-type :member-name
                                      "MultiRegionKeyType")
                                     (primary-key :target-type multi-region-key
                                      :member-name "PrimaryKey")
                                     (replica-keys :target-type
                                      multi-region-key-list :member-name
                                      "ReplicaKeys"))
                                    (:shape-name "MultiRegionConfiguration"))

(smithy/sdk/shapes:define-structure multi-region-key common-lisp:nil
                                    ((arn :target-type arn-type :member-name
                                      "Arn")
                                     (region :target-type region-type
                                      :member-name "Region"))
                                    (:shape-name "MultiRegionKey"))

(smithy/sdk/shapes:define-list multi-region-key-list :member multi-region-key)

(smithy/sdk/shapes:define-enum multi-region-key-type
    common-lisp:nil
  (:primary "PRIMARY")
  (:replica "REPLICA"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-name "NotFound") (:error-code 404))

(smithy/sdk/shapes:define-type nullable-boolean-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type number-of-bytes-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum origin-type
    common-lisp:nil
  (:aws-kms "AWS_KMS")
  (:external "EXTERNAL")
  (:aws-cloudhsm "AWS_CLOUDHSM")
  (:external-key-store "EXTERNAL_KEY_STORE"))

(smithy/sdk/shapes:define-type pending-window-in-days-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type plaintext-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list policy-name-list :member policy-name-type)

(smithy/sdk/shapes:define-type policy-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-key-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input put-key-policy-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (policy-name :target-type policy-name-type
                                  :member-name "PolicyName")
                                 (policy :target-type policy-type :required
                                  common-lisp:t :member-name "Policy")
                                 (bypass-policy-lockout-safety-check
                                  :target-type boolean-type :member-name
                                  "BypassPolicyLockoutSafetyCheck"))
                                (:shape-name "PutKeyPolicyRequest"))

(smithy/sdk/shapes:define-input re-encrypt-request common-lisp:nil
                                ((ciphertext-blob :target-type ciphertext-type
                                  :required common-lisp:t :member-name
                                  "CiphertextBlob")
                                 (source-encryption-context :target-type
                                  encryption-context-type :member-name
                                  "SourceEncryptionContext")
                                 (source-key-id :target-type key-id-type
                                  :member-name "SourceKeyId")
                                 (destination-key-id :target-type key-id-type
                                  :required common-lisp:t :member-name
                                  "DestinationKeyId")
                                 (destination-encryption-context :target-type
                                  encryption-context-type :member-name
                                  "DestinationEncryptionContext")
                                 (source-encryption-algorithm :target-type
                                  encryption-algorithm-spec :member-name
                                  "SourceEncryptionAlgorithm")
                                 (destination-encryption-algorithm :target-type
                                  encryption-algorithm-spec :member-name
                                  "DestinationEncryptionAlgorithm")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "ReEncryptRequest"))

(smithy/sdk/shapes:define-output re-encrypt-response common-lisp:nil
                                 ((ciphertext-blob :target-type ciphertext-type
                                   :member-name "CiphertextBlob")
                                  (source-key-id :target-type key-id-type
                                   :member-name "SourceKeyId")
                                  (key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (source-encryption-algorithm :target-type
                                   encryption-algorithm-spec :member-name
                                   "SourceEncryptionAlgorithm")
                                  (destination-encryption-algorithm
                                   :target-type encryption-algorithm-spec
                                   :member-name
                                   "DestinationEncryptionAlgorithm")
                                  (source-key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "SourceKeyMaterialId")
                                  (destination-key-material-id :target-type
                                   backing-key-id-type :member-name
                                   "DestinationKeyMaterialId"))
                                 (:shape-name "ReEncryptResponse"))

(smithy/sdk/shapes:define-structure recipient-info common-lisp:nil
                                    ((key-encryption-algorithm :target-type
                                      key-encryption-mechanism :member-name
                                      "KeyEncryptionAlgorithm")
                                     (attestation-document :target-type
                                      attestation-document-type :member-name
                                      "AttestationDocument"))
                                    (:shape-name "RecipientInfo"))

(smithy/sdk/shapes:define-type region-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input replicate-key-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (replica-region :target-type region-type
                                  :required common-lisp:t :member-name
                                  "ReplicaRegion")
                                 (policy :target-type policy-type :member-name
                                  "Policy")
                                 (bypass-policy-lockout-safety-check
                                  :target-type boolean-type :member-name
                                  "BypassPolicyLockoutSafetyCheck")
                                 (description :target-type description-type
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "ReplicateKeyRequest"))

(smithy/sdk/shapes:define-output replicate-key-response common-lisp:nil
                                 ((replica-key-metadata :target-type
                                   key-metadata :member-name
                                   "ReplicaKeyMetadata")
                                  (replica-policy :target-type policy-type
                                   :member-name "ReplicaPolicy")
                                  (replica-tags :target-type tag-list
                                   :member-name "ReplicaTags"))
                                 (:shape-name "ReplicateKeyResponse"))

(smithy/sdk/shapes:define-input retire-grant-request common-lisp:nil
                                ((grant-token :target-type grant-token-type
                                  :member-name "GrantToken")
                                 (key-id :target-type key-id-type :member-name
                                  "KeyId")
                                 (grant-id :target-type grant-id-type
                                  :member-name "GrantId")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "RetireGrantRequest"))

(smithy/sdk/shapes:define-input revoke-grant-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (grant-id :target-type grant-id-type :required
                                  common-lisp:t :member-name "GrantId")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "RevokeGrantRequest"))

(smithy/sdk/shapes:define-input rotate-key-on-demand-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId"))
                                (:shape-name "RotateKeyOnDemandRequest"))

(smithy/sdk/shapes:define-output rotate-key-on-demand-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId"))
                                 (:shape-name "RotateKeyOnDemandResponse"))

(smithy/sdk/shapes:define-type rotation-period-in-days-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum rotation-type
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:on-demand "ON_DEMAND"))

(smithy/sdk/shapes:define-list rotations-list :member rotations-list-entry)

(smithy/sdk/shapes:define-structure rotations-list-entry common-lisp:nil
                                    ((key-id :target-type key-id-type
                                      :member-name "KeyId")
                                     (key-material-id :target-type
                                      backing-key-id-type :member-name
                                      "KeyMaterialId")
                                     (key-material-description :target-type
                                      key-material-description-type
                                      :member-name "KeyMaterialDescription")
                                     (import-state :target-type import-state
                                      :member-name "ImportState")
                                     (key-material-state :target-type
                                      key-material-state :member-name
                                      "KeyMaterialState")
                                     (expiration-model :target-type
                                      expiration-model-type :member-name
                                      "ExpirationModel")
                                     (valid-to :target-type date-type
                                      :member-name "ValidTo")
                                     (rotation-date :target-type date-type
                                      :member-name "RotationDate")
                                     (rotation-type :target-type rotation-type
                                      :member-name "RotationType"))
                                    (:shape-name "RotationsListEntry"))

(smithy/sdk/shapes:define-input schedule-key-deletion-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (pending-window-in-days :target-type
                                  pending-window-in-days-type :member-name
                                  "PendingWindowInDays"))
                                (:shape-name "ScheduleKeyDeletionRequest"))

(smithy/sdk/shapes:define-output schedule-key-deletion-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (deletion-date :target-type date-type
                                   :member-name "DeletionDate")
                                  (key-state :target-type key-state
                                   :member-name "KeyState")
                                  (pending-window-in-days :target-type
                                   pending-window-in-days-type :member-name
                                   "PendingWindowInDays"))
                                 (:shape-name "ScheduleKeyDeletionResponse"))

(smithy/sdk/shapes:define-input sign-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (message :target-type plaintext-type :required
                                  common-lisp:t :member-name "Message")
                                 (message-type :target-type message-type
                                  :member-name "MessageType")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (signing-algorithm :target-type
                                  signing-algorithm-spec :required
                                  common-lisp:t :member-name
                                  "SigningAlgorithm")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "SignRequest"))

(smithy/sdk/shapes:define-output sign-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (signature :target-type ciphertext-type
                                   :member-name "Signature")
                                  (signing-algorithm :target-type
                                   signing-algorithm-spec :member-name
                                   "SigningAlgorithm"))
                                 (:shape-name "SignResponse"))

(smithy/sdk/shapes:define-enum signing-algorithm-spec
    common-lisp:nil
  (:rsassa-pss-sha-256 "RSASSA_PSS_SHA_256")
  (:rsassa-pss-sha-384 "RSASSA_PSS_SHA_384")
  (:rsassa-pss-sha-512 "RSASSA_PSS_SHA_512")
  (:rsassa-pkcs1-v1-5-sha-256 "RSASSA_PKCS1_V1_5_SHA_256")
  (:rsassa-pkcs1-v1-5-sha-384 "RSASSA_PKCS1_V1_5_SHA_384")
  (:rsassa-pkcs1-v1-5-sha-512 "RSASSA_PKCS1_V1_5_SHA_512")
  (:ecdsa-sha-256 "ECDSA_SHA_256")
  (:ecdsa-sha-384 "ECDSA_SHA_384")
  (:ecdsa-sha-512 "ECDSA_SHA_512")
  (:sm2dsa "SM2DSA")
  (:ml-dsa-shake-256 "ML_DSA_SHAKE_256"))

(smithy/sdk/shapes:define-list signing-algorithm-spec-list :member
                               signing-algorithm-spec)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((tag-key :target-type tag-key-type
                                      :required common-lisp:t :member-name
                                      "TagKey")
                                     (tag-value :target-type tag-value-type
                                      :required common-lisp:t :member-name
                                      "TagValue"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-error tag-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "TagException")
                                (:error-name "TagException") (:error-code 400))

(smithy/sdk/shapes:define-list tag-key-list :member tag-key-type)

(smithy/sdk/shapes:define-type tag-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type trust-anchor-certificate-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-name "UnsupportedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-alias-request common-lisp:nil
                                ((alias-name :target-type alias-name-type
                                  :required common-lisp:t :member-name
                                  "AliasName")
                                 (target-key-id :target-type key-id-type
                                  :required common-lisp:t :member-name
                                  "TargetKeyId"))
                                (:shape-name "UpdateAliasRequest"))

(smithy/sdk/shapes:define-input update-custom-key-store-request common-lisp:nil
                                ((custom-key-store-id :target-type
                                  custom-key-store-id-type :required
                                  common-lisp:t :member-name
                                  "CustomKeyStoreId")
                                 (new-custom-key-store-name :target-type
                                  custom-key-store-name-type :member-name
                                  "NewCustomKeyStoreName")
                                 (key-store-password :target-type
                                  key-store-password-type :member-name
                                  "KeyStorePassword")
                                 (cloud-hsm-cluster-id :target-type
                                  cloud-hsm-cluster-id-type :member-name
                                  "CloudHsmClusterId")
                                 (xks-proxy-uri-endpoint :target-type
                                  xks-proxy-uri-endpoint-type :member-name
                                  "XksProxyUriEndpoint")
                                 (xks-proxy-uri-path :target-type
                                  xks-proxy-uri-path-type :member-name
                                  "XksProxyUriPath")
                                 (xks-proxy-vpc-endpoint-service-name
                                  :target-type
                                  xks-proxy-vpc-endpoint-service-name-type
                                  :member-name
                                  "XksProxyVpcEndpointServiceName")
                                 (xks-proxy-authentication-credential
                                  :target-type
                                  xks-proxy-authentication-credential-type
                                  :member-name
                                  "XksProxyAuthenticationCredential")
                                 (xks-proxy-connectivity :target-type
                                  xks-proxy-connectivity-type :member-name
                                  "XksProxyConnectivity"))
                                (:shape-name "UpdateCustomKeyStoreRequest"))

(smithy/sdk/shapes:define-output update-custom-key-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateCustomKeyStoreResponse"))

(smithy/sdk/shapes:define-input update-key-description-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (description :target-type description-type
                                  :required common-lisp:t :member-name
                                  "Description"))
                                (:shape-name "UpdateKeyDescriptionRequest"))

(smithy/sdk/shapes:define-input update-primary-region-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (primary-region :target-type region-type
                                  :required common-lisp:t :member-name
                                  "PrimaryRegion"))
                                (:shape-name "UpdatePrimaryRegionRequest"))

(smithy/sdk/shapes:define-input verify-mac-request common-lisp:nil
                                ((message :target-type plaintext-type :required
                                  common-lisp:t :member-name "Message")
                                 (key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (mac-algorithm :target-type mac-algorithm-spec
                                  :required common-lisp:t :member-name
                                  "MacAlgorithm")
                                 (mac :target-type ciphertext-type :required
                                  common-lisp:t :member-name "Mac")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "VerifyMacRequest"))

(smithy/sdk/shapes:define-output verify-mac-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (mac-valid :target-type boolean-type
                                   :member-name "MacValid")
                                  (mac-algorithm :target-type
                                   mac-algorithm-spec :member-name
                                   "MacAlgorithm"))
                                 (:shape-name "VerifyMacResponse"))

(smithy/sdk/shapes:define-input verify-request common-lisp:nil
                                ((key-id :target-type key-id-type :required
                                  common-lisp:t :member-name "KeyId")
                                 (message :target-type plaintext-type :required
                                  common-lisp:t :member-name "Message")
                                 (message-type :target-type message-type
                                  :member-name "MessageType")
                                 (signature :target-type ciphertext-type
                                  :required common-lisp:t :member-name
                                  "Signature")
                                 (signing-algorithm :target-type
                                  signing-algorithm-spec :required
                                  common-lisp:t :member-name
                                  "SigningAlgorithm")
                                 (grant-tokens :target-type grant-token-list
                                  :member-name "GrantTokens")
                                 (dry-run :target-type nullable-boolean-type
                                  :member-name "DryRun"))
                                (:shape-name "VerifyRequest"))

(smithy/sdk/shapes:define-output verify-response common-lisp:nil
                                 ((key-id :target-type key-id-type :member-name
                                   "KeyId")
                                  (signature-valid :target-type boolean-type
                                   :member-name "SignatureValid")
                                  (signing-algorithm :target-type
                                   signing-algorithm-spec :member-name
                                   "SigningAlgorithm"))
                                 (:shape-name "VerifyResponse"))

(smithy/sdk/shapes:define-enum wrapping-key-spec
    common-lisp:nil
  (:rsa-2048 "RSA_2048")
  (:rsa-3072 "RSA_3072")
  (:rsa-4096 "RSA_4096")
  (:sm2 "SM2"))

(smithy/sdk/shapes:define-error xks-key-already-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "XksKeyAlreadyInUseException")
                                (:error-name "XksKeyAlreadyInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure xks-key-configuration-type common-lisp:nil
                                    ((id :target-type xks-key-id-type
                                      :member-name "Id"))
                                    (:shape-name "XksKeyConfigurationType"))

(smithy/sdk/shapes:define-type xks-key-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error xks-key-invalid-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "XksKeyInvalidConfigurationException")
                                (:error-name "XksKeyInvalidConfiguration")
                                (:error-code 400))

(smithy/sdk/shapes:define-error xks-key-not-found-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "XksKeyNotFoundException")
                                (:error-name "XksKeyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type xks-proxy-authentication-access-key-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure xks-proxy-authentication-credential-type
                                    common-lisp:nil
                                    ((access-key-id :target-type
                                      xks-proxy-authentication-access-key-id-type
                                      :required common-lisp:t :member-name
                                      "AccessKeyId")
                                     (raw-secret-access-key :target-type
                                      xks-proxy-authentication-raw-secret-access-key-type
                                      :required common-lisp:t :member-name
                                      "RawSecretAccessKey"))
                                    (:shape-name
                                     "XksProxyAuthenticationCredentialType"))

(smithy/sdk/shapes:define-type
 xks-proxy-authentication-raw-secret-access-key-type
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure xks-proxy-configuration-type
                                    common-lisp:nil
                                    ((connectivity :target-type
                                      xks-proxy-connectivity-type :member-name
                                      "Connectivity")
                                     (access-key-id :target-type
                                      xks-proxy-authentication-access-key-id-type
                                      :member-name "AccessKeyId")
                                     (uri-endpoint :target-type
                                      xks-proxy-uri-endpoint-type :member-name
                                      "UriEndpoint")
                                     (uri-path :target-type
                                      xks-proxy-uri-path-type :member-name
                                      "UriPath")
                                     (vpc-endpoint-service-name :target-type
                                      xks-proxy-vpc-endpoint-service-name-type
                                      :member-name "VpcEndpointServiceName"))
                                    (:shape-name "XksProxyConfigurationType"))

(smithy/sdk/shapes:define-enum xks-proxy-connectivity-type
    common-lisp:nil
  (:public-endpoint "PUBLIC_ENDPOINT")
  (:vpc-endpoint-service "VPC_ENDPOINT_SERVICE"))

(smithy/sdk/shapes:define-error
 xks-proxy-incorrect-authentication-credential-exception common-lisp:nil
 ((message :target-type error-message-type :member-name "message"))
 (:shape-name "XksProxyIncorrectAuthenticationCredentialException")
 (:error-name "XksProxyIncorrectAuthenticationCredentialException")
 (:error-code 400))

(smithy/sdk/shapes:define-error xks-proxy-invalid-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "XksProxyInvalidConfigurationException")
                                (:error-name
                                 "XksProxyInvalidConfigurationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error xks-proxy-invalid-response-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "XksProxyInvalidResponseException")
                                (:error-name
                                 "XksProxyInvalidResponseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error xks-proxy-uri-endpoint-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "XksProxyUriEndpointInUseException")
                                (:error-name
                                 "XksProxyUriEndpointInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type xks-proxy-uri-endpoint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error xks-proxy-uri-in-use-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "XksProxyUriInUseException")
                                (:error-name "XksProxyUriInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type xks-proxy-uri-path-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error xks-proxy-uri-unreachable-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name "XksProxyUriUnreachableException")
                                (:error-name "XksProxyUriUnreachableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error xks-proxy-vpc-endpoint-service-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "message"))
                                (:shape-name
                                 "XksProxyVpcEndpointServiceInUseException")
                                (:error-name
                                 "XksProxyVpcEndpointServiceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 xks-proxy-vpc-endpoint-service-invalid-configuration-exception common-lisp:nil
 ((message :target-type error-message-type :member-name "message"))
 (:shape-name "XksProxyVpcEndpointServiceInvalidConfigurationException")
 (:error-name "XksProxyVpcEndpointServiceInvalidConfigurationException")
 (:error-code 400))

(smithy/sdk/shapes:define-type xks-proxy-vpc-endpoint-service-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 xks-proxy-vpc-endpoint-service-not-found-exception common-lisp:nil
 ((message :target-type error-message-type :member-name "message"))
 (:shape-name "XksProxyVpcEndpointServiceNotFoundException")
 (:error-name "XksProxyVpcEndpointServiceNotFoundException") (:error-code 400))

(smithy/sdk/operation:define-operation cancel-key-deletion :shape-name
                                       "CancelKeyDeletion" :input
                                       cancel-key-deletion-request :output
                                       cancel-key-deletion-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation connect-custom-key-store :shape-name
                                       "ConnectCustomKeyStore" :input
                                       connect-custom-key-store-request :output
                                       connect-custom-key-store-response
                                       :errors
                                       (cloud-hsm-cluster-invalid-configuration-exception
                                        cloud-hsm-cluster-not-active-exception
                                        custom-key-store-invalid-state-exception
                                        custom-key-store-not-found-exception
                                        kmsinternal-exception))

(smithy/sdk/operation:define-operation create-alias :shape-name "CreateAlias"
                                       :input create-alias-request :output
                                       common-lisp:null :errors
                                       (already-exists-exception
                                        dependency-timeout-exception
                                        invalid-alias-name-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation create-custom-key-store :shape-name
                                       "CreateCustomKeyStore" :input
                                       create-custom-key-store-request :output
                                       create-custom-key-store-response :errors
                                       (cloud-hsm-cluster-in-use-exception
                                        cloud-hsm-cluster-invalid-configuration-exception
                                        cloud-hsm-cluster-not-active-exception
                                        cloud-hsm-cluster-not-found-exception
                                        custom-key-store-name-in-use-exception
                                        incorrect-trust-anchor-exception
                                        kmsinternal-exception
                                        limit-exceeded-exception
                                        xks-proxy-incorrect-authentication-credential-exception
                                        xks-proxy-invalid-configuration-exception
                                        xks-proxy-invalid-response-exception
                                        xks-proxy-uri-endpoint-in-use-exception
                                        xks-proxy-uri-in-use-exception
                                        xks-proxy-uri-unreachable-exception
                                        xks-proxy-vpc-endpoint-service-in-use-exception
                                        xks-proxy-vpc-endpoint-service-invalid-configuration-exception
                                        xks-proxy-vpc-endpoint-service-not-found-exception))

(smithy/sdk/operation:define-operation create-grant :shape-name "CreateGrant"
                                       :input create-grant-request :output
                                       create-grant-response :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-arn-exception
                                        invalid-grant-token-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation create-key :shape-name "CreateKey"
                                       :input create-key-request :output
                                       create-key-response :errors
                                       (cloud-hsm-cluster-invalid-configuration-exception
                                        custom-key-store-invalid-state-exception
                                        custom-key-store-not-found-exception
                                        dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        tag-exception
                                        unsupported-operation-exception
                                        xks-key-already-in-use-exception
                                        xks-key-invalid-configuration-exception
                                        xks-key-not-found-exception))

(smithy/sdk/operation:define-operation decrypt :shape-name "Decrypt" :input
                                       decrypt-request :output decrypt-response
                                       :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        incorrect-key-exception
                                        invalid-ciphertext-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation delete-alias :shape-name "DeleteAlias"
                                       :input delete-alias-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation delete-custom-key-store :shape-name
                                       "DeleteCustomKeyStore" :input
                                       delete-custom-key-store-request :output
                                       delete-custom-key-store-response :errors
                                       (custom-key-store-has-cmks-exception
                                        custom-key-store-invalid-state-exception
                                        custom-key-store-not-found-exception
                                        kmsinternal-exception))

(smithy/sdk/operation:define-operation delete-imported-key-material :shape-name
                                       "DeleteImportedKeyMaterial" :input
                                       delete-imported-key-material-request
                                       :output
                                       delete-imported-key-material-response
                                       :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation derive-shared-secret :shape-name
                                       "DeriveSharedSecret" :input
                                       derive-shared-secret-request :output
                                       derive-shared-secret-response :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation describe-custom-key-stores :shape-name
                                       "DescribeCustomKeyStores" :input
                                       describe-custom-key-stores-request
                                       :output
                                       describe-custom-key-stores-response
                                       :errors
                                       (custom-key-store-not-found-exception
                                        invalid-marker-exception
                                        kmsinternal-exception))

(smithy/sdk/operation:define-operation describe-key :shape-name "DescribeKey"
                                       :input describe-key-request :output
                                       describe-key-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation disable-key :shape-name "DisableKey"
                                       :input disable-key-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation disable-key-rotation :shape-name
                                       "DisableKeyRotation" :input
                                       disable-key-rotation-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation disconnect-custom-key-store :shape-name
                                       "DisconnectCustomKeyStore" :input
                                       disconnect-custom-key-store-request
                                       :output
                                       disconnect-custom-key-store-response
                                       :errors
                                       (custom-key-store-invalid-state-exception
                                        custom-key-store-not-found-exception
                                        kmsinternal-exception))

(smithy/sdk/operation:define-operation enable-key :shape-name "EnableKey"
                                       :input enable-key-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation enable-key-rotation :shape-name
                                       "EnableKeyRotation" :input
                                       enable-key-rotation-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation encrypt :shape-name "Encrypt" :input
                                       encrypt-request :output encrypt-response
                                       :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation generate-data-key :shape-name
                                       "GenerateDataKey" :input
                                       generate-data-key-request :output
                                       generate-data-key-response :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation generate-data-key-pair :shape-name
                                       "GenerateDataKeyPair" :input
                                       generate-data-key-pair-request :output
                                       generate-data-key-pair-response :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation generate-data-key-pair-without-plaintext
                                       :shape-name
                                       "GenerateDataKeyPairWithoutPlaintext"
                                       :input
                                       generate-data-key-pair-without-plaintext-request
                                       :output
                                       generate-data-key-pair-without-plaintext-response
                                       :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation generate-data-key-without-plaintext
                                       :shape-name
                                       "GenerateDataKeyWithoutPlaintext" :input
                                       generate-data-key-without-plaintext-request
                                       :output
                                       generate-data-key-without-plaintext-response
                                       :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation generate-mac :shape-name "GenerateMac"
                                       :input generate-mac-request :output
                                       generate-mac-response :errors
                                       (disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation generate-random :shape-name
                                       "GenerateRandom" :input
                                       generate-random-request :output
                                       generate-random-response :errors
                                       (custom-key-store-invalid-state-exception
                                        custom-key-store-not-found-exception
                                        dependency-timeout-exception
                                        kmsinternal-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-key-policy :shape-name
                                       "GetKeyPolicy" :input
                                       get-key-policy-request :output
                                       get-key-policy-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-key-rotation-status :shape-name
                                       "GetKeyRotationStatus" :input
                                       get-key-rotation-status-request :output
                                       get-key-rotation-status-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-parameters-for-import :shape-name
                                       "GetParametersForImport" :input
                                       get-parameters-for-import-request
                                       :output
                                       get-parameters-for-import-response
                                       :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-public-key :shape-name
                                       "GetPublicKey" :input
                                       get-public-key-request :output
                                       get-public-key-response :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        invalid-arn-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation import-key-material :shape-name
                                       "ImportKeyMaterial" :input
                                       import-key-material-request :output
                                       import-key-material-response :errors
                                       (dependency-timeout-exception
                                        expired-import-token-exception
                                        incorrect-key-material-exception
                                        invalid-arn-exception
                                        invalid-ciphertext-exception
                                        invalid-import-token-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-aliases :shape-name "ListAliases"
                                       :input list-aliases-request :output
                                       list-aliases-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        invalid-marker-exception
                                        kmsinternal-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-grants :shape-name "ListGrants"
                                       :input list-grants-request :output
                                       list-grants-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        invalid-grant-id-exception
                                        invalid-marker-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-key-policies :shape-name
                                       "ListKeyPolicies" :input
                                       list-key-policies-request :output
                                       list-key-policies-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-key-rotations :shape-name
                                       "ListKeyRotations" :input
                                       list-key-rotations-request :output
                                       list-key-rotations-response :errors
                                       (invalid-arn-exception
                                        invalid-marker-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-keys :shape-name "ListKeys" :input
                                       list-keys-request :output
                                       list-keys-response :errors
                                       (dependency-timeout-exception
                                        invalid-marker-exception
                                        kmsinternal-exception))

(smithy/sdk/operation:define-operation list-resource-tags :shape-name
                                       "ListResourceTags" :input
                                       list-resource-tags-request :output
                                       list-resource-tags-response :errors
                                       (invalid-arn-exception
                                        invalid-marker-exception
                                        kmsinternal-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-retirable-grants :shape-name
                                       "ListRetirableGrants" :input
                                       list-retirable-grants-request :output
                                       list-grants-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        invalid-marker-exception
                                        kmsinternal-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation put-key-policy :shape-name
                                       "PutKeyPolicy" :input
                                       put-key-policy-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation re-encrypt :shape-name "ReEncrypt"
                                       :input re-encrypt-request :output
                                       re-encrypt-response :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        incorrect-key-exception
                                        invalid-ciphertext-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation replicate-key :shape-name "ReplicateKey"
                                       :input replicate-key-request :output
                                       replicate-key-response :errors
                                       (already-exists-exception
                                        disabled-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        not-found-exception tag-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation retire-grant :shape-name "RetireGrant"
                                       :input retire-grant-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        dry-run-operation-exception
                                        invalid-arn-exception
                                        invalid-grant-id-exception
                                        invalid-grant-token-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation revoke-grant :shape-name "RevokeGrant"
                                       :input revoke-grant-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        dry-run-operation-exception
                                        invalid-arn-exception
                                        invalid-grant-id-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation rotate-key-on-demand :shape-name
                                       "RotateKeyOnDemand" :input
                                       rotate-key-on-demand-request :output
                                       rotate-key-on-demand-response :errors
                                       (conflict-exception
                                        dependency-timeout-exception
                                        disabled-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation schedule-key-deletion :shape-name
                                       "ScheduleKeyDeletion" :input
                                       schedule-key-deletion-request :output
                                       schedule-key-deletion-response :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation sign :shape-name "Sign" :input
                                       sign-request :output sign-response
                                       :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        not-found-exception tag-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception tag-exception))

(smithy/sdk/operation:define-operation update-alias :shape-name "UpdateAlias"
                                       :input update-alias-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        limit-exceeded-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation update-custom-key-store :shape-name
                                       "UpdateCustomKeyStore" :input
                                       update-custom-key-store-request :output
                                       update-custom-key-store-response :errors
                                       (cloud-hsm-cluster-invalid-configuration-exception
                                        cloud-hsm-cluster-not-active-exception
                                        cloud-hsm-cluster-not-found-exception
                                        cloud-hsm-cluster-not-related-exception
                                        custom-key-store-invalid-state-exception
                                        custom-key-store-name-in-use-exception
                                        custom-key-store-not-found-exception
                                        kmsinternal-exception
                                        xks-proxy-incorrect-authentication-credential-exception
                                        xks-proxy-invalid-configuration-exception
                                        xks-proxy-invalid-response-exception
                                        xks-proxy-uri-endpoint-in-use-exception
                                        xks-proxy-uri-in-use-exception
                                        xks-proxy-uri-unreachable-exception
                                        xks-proxy-vpc-endpoint-service-in-use-exception
                                        xks-proxy-vpc-endpoint-service-invalid-configuration-exception
                                        xks-proxy-vpc-endpoint-service-not-found-exception))

(smithy/sdk/operation:define-operation update-key-description :shape-name
                                       "UpdateKeyDescription" :input
                                       update-key-description-request :output
                                       common-lisp:null :errors
                                       (dependency-timeout-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation update-primary-region :shape-name
                                       "UpdatePrimaryRegion" :input
                                       update-primary-region-request :output
                                       common-lisp:null :errors
                                       (disabled-exception
                                        invalid-arn-exception
                                        kmsinternal-exception
                                        kmsinvalid-state-exception
                                        not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation verify :shape-name "Verify" :input
                                       verify-request :output verify-response
                                       :errors
                                       (dependency-timeout-exception
                                        disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-signature-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation verify-mac :shape-name "VerifyMac"
                                       :input verify-mac-request :output
                                       verify-mac-response :errors
                                       (disabled-exception
                                        dry-run-operation-exception
                                        invalid-grant-token-exception
                                        invalid-key-usage-exception
                                        key-unavailable-exception
                                        kmsinternal-exception
                                        kmsinvalid-mac-exception
                                        kmsinvalid-state-exception
                                        not-found-exception))
