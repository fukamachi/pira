(uiop/package:define-package #:pira/payment-cryptography-data (:use)
                             (:export #:access-denied-exception
                              #:amex-attributes
                              #:amex-card-security-code-version1
                              #:amex-card-security-code-version2
                              #:application-cryptogram-type
                              #:asymmetric-encryption-attributes
                              #:auth-request-cryptogram-type
                              #:auth-response-value-type
                              #:card-expiry-date-type
                              #:card-generation-attributes
                              #:card-holder-verification-value
                              #:card-verification-attributes
                              #:card-verification-value1
                              #:card-verification-value2 #:certificate-type
                              #:cipher-text-type #:command-message-data-type
                              #:cryptogram-auth-response
                              #:cryptogram-verification-arpc-method1
                              #:cryptogram-verification-arpc-method2
                              #:current-pin-attributes
                              #:decimalization-table-type #:decrypt-data
                              #:derivation-method-attributes
                              #:discover-dynamic-card-verification-code
                              #:dukpt-attributes #:dukpt-derivation-attributes
                              #:dukpt-derivation-type
                              #:dukpt-encryption-attributes
                              #:dukpt-encryption-mode #:dukpt-key-variant
                              #:dynamic-card-verification-code
                              #:dynamic-card-verification-value
                              #:ecdh-derivation-attributes #:emv2000attributes
                              #:emv-common-attributes
                              #:emv-encryption-attributes #:emv-encryption-mode
                              #:emv-major-key-derivation-mode #:encrypt-data
                              #:encrypted-pin-block-type
                              #:encryption-decryption-attributes
                              #:encryption-mode #:generate-card-validation-data
                              #:generate-mac #:generate-mac-emv-pin-change
                              #:generate-pin-data
                              #:hex-even-length-between16and32
                              #:hex-length16or20or24 #:hex-length-between2and4
                              #:hex-length-between2and8 #:hex-length-equals1
                              #:hex-length-equals4 #:hex-length-equals8
                              #:ibm3624natural-pin #:ibm3624pin-from-offset
                              #:ibm3624pin-offset #:ibm3624pin-verification
                              #:ibm3624random-pin #:initialization-vector-type
                              #:integer-range-between0and6
                              #:integer-range-between3and5type
                              #:integer-range-between4and12
                              #:integer-range-between4and16
                              #:internal-server-exception #:key-arn
                              #:key-arn-or-key-alias-type #:key-check-value
                              #:key-check-value-algorithm
                              #:key-derivation-function
                              #:key-derivation-hash-algorithm #:mac-algorithm
                              #:mac-algorithm-dukpt #:mac-algorithm-emv
                              #:mac-attributes #:mac-output-type #:mac-type
                              #:major-key-derivation-mode
                              #:master-card-attributes #:message-data-type
                              #:number-length-equals2 #:padding-type
                              #:payment-cryptography-data-plane
                              #:pin-block-format-for-emv-pin-change
                              #:pin-block-format-for-pin-data
                              #:pin-block-length-equals16
                              #:pin-block-length-position
                              #:pin-block-padding-type
                              #:pin-change-mac-output-type #:pin-data
                              #:pin-generation-attributes #:pin-offset-type
                              #:pin-validation-data-type
                              #:pin-verification-attributes
                              #:plain-text-output-type #:plain-text-type
                              #:primary-account-number-type
                              #:proprietary-authentication-data-type
                              #:re-encrypt-data #:re-encryption-attributes
                              #:resource-not-found-exception
                              #:service-code-type
                              #:session-derivation-data-type #:session-key-amex
                              #:session-key-derivation
                              #:session-key-derivation-mode
                              #:session-key-derivation-value
                              #:session-key-emv2000 #:session-key-emv-common
                              #:session-key-mastercard #:session-key-visa
                              #:shared-information
                              #:symmetric-encryption-attributes
                              #:symmetric-key-algorithm #:throttling-exception
                              #:tr31wrapped-key-block #:track-data-type
                              #:transaction-data-type #:translate-pin-data
                              #:translation-iso-formats
                              #:translation-pin-data-iso-format034
                              #:translation-pin-data-iso-format1
                              #:validation-data-type #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:verification-failed-exception
                              #:verification-failed-reason
                              #:verification-value-type
                              #:verify-auth-request-cryptogram
                              #:verify-card-validation-data #:verify-mac
                              #:verify-pin-data #:visa-amex-derivation-outputs
                              #:visa-attributes #:visa-pin
                              #:visa-pin-verification
                              #:visa-pin-verification-value #:wrapped-key
                              #:wrapped-key-material
                              #:payment-cryptography-data-error))
(common-lisp:in-package #:pira/payment-cryptography-data)

(common-lisp:define-condition payment-cryptography-data-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service payment-cryptography-data-plane :shape-name
                                   "PaymentCryptographyDataPlane" :version
                                   "2022-02-03" :title
                                   "Payment Cryptography Data Plane"
                                   :operations
                                   '(decrypt-data encrypt-data
                                     generate-card-validation-data generate-mac
                                     generate-mac-emv-pin-change
                                     generate-pin-data re-encrypt-data
                                     translate-pin-data
                                     verify-auth-request-cryptogram
                                     verify-card-validation-data verify-mac
                                     verify-pin-data)
                                   :traits
                                   '(("aws.api#dataPlane")
                                     ("aws.api#service"
                                      ("sdkId" . "Payment Cryptography Data")
                                      ("endpointPrefix"
                                       . "dataplane.payment-cryptography"))
                                     ("aws.auth#sigv4"
                                      ("name" . "payment-cryptography"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class payment-cryptography-data-error))

(smithy/sdk/shapes:define-structure amex-attributes common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "ApplicationTransactionCounter")
                                     (authorization-request-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "AuthorizationRequestKeyIdentifier")
                                     (current-pin-attributes :target-type
                                      current-pin-attributes :member-name
                                      "CurrentPinAttributes"))
                                    (:shape-name "AmexAttributes"))

(smithy/sdk/shapes:define-structure amex-card-security-code-version1
                                    common-lisp:nil
                                    ((card-expiry-date :target-type
                                      card-expiry-date-type :required
                                      common-lisp:t :member-name
                                      "CardExpiryDate"))
                                    (:shape-name
                                     "AmexCardSecurityCodeVersion1"))

(smithy/sdk/shapes:define-structure amex-card-security-code-version2
                                    common-lisp:nil
                                    ((card-expiry-date :target-type
                                      card-expiry-date-type :required
                                      common-lisp:t :member-name
                                      "CardExpiryDate")
                                     (service-code :target-type
                                      service-code-type :required common-lisp:t
                                      :member-name "ServiceCode"))
                                    (:shape-name
                                     "AmexCardSecurityCodeVersion2"))

(smithy/sdk/shapes:define-type application-cryptogram-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asymmetric-encryption-attributes
                                    common-lisp:nil
                                    ((padding-type :target-type padding-type
                                      :member-name "PaddingType"))
                                    (:shape-name
                                     "AsymmetricEncryptionAttributes"))

(smithy/sdk/shapes:define-type auth-request-cryptogram-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-response-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type card-expiry-date-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union card-generation-attributes common-lisp:nil
                                ((amex-card-security-code-version1 :target-type
                                  amex-card-security-code-version1 :member-name
                                  "AmexCardSecurityCodeVersion1")
                                 (amex-card-security-code-version2 :target-type
                                  amex-card-security-code-version2 :member-name
                                  "AmexCardSecurityCodeVersion2")
                                 (card-verification-value1 :target-type
                                  card-verification-value1 :member-name
                                  "CardVerificationValue1")
                                 (card-verification-value2 :target-type
                                  card-verification-value2 :member-name
                                  "CardVerificationValue2")
                                 (card-holder-verification-value :target-type
                                  card-holder-verification-value :member-name
                                  "CardHolderVerificationValue")
                                 (dynamic-card-verification-code :target-type
                                  dynamic-card-verification-code :member-name
                                  "DynamicCardVerificationCode")
                                 (dynamic-card-verification-value :target-type
                                  dynamic-card-verification-value :member-name
                                  "DynamicCardVerificationValue"))
                                (:shape-name "CardGenerationAttributes"))

(smithy/sdk/shapes:define-structure card-holder-verification-value
                                    common-lisp:nil
                                    ((unpredictable-number :target-type
                                      hex-length-between2and8 :required
                                      common-lisp:t :member-name
                                      "UnpredictableNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-between2and4
                                      :required common-lisp:t :member-name
                                      "ApplicationTransactionCounter"))
                                    (:shape-name "CardHolderVerificationValue"))

(smithy/sdk/shapes:define-union card-verification-attributes common-lisp:nil
                                ((amex-card-security-code-version1 :target-type
                                  amex-card-security-code-version1 :member-name
                                  "AmexCardSecurityCodeVersion1")
                                 (amex-card-security-code-version2 :target-type
                                  amex-card-security-code-version2 :member-name
                                  "AmexCardSecurityCodeVersion2")
                                 (card-verification-value1 :target-type
                                  card-verification-value1 :member-name
                                  "CardVerificationValue1")
                                 (card-verification-value2 :target-type
                                  card-verification-value2 :member-name
                                  "CardVerificationValue2")
                                 (card-holder-verification-value :target-type
                                  card-holder-verification-value :member-name
                                  "CardHolderVerificationValue")
                                 (dynamic-card-verification-code :target-type
                                  dynamic-card-verification-code :member-name
                                  "DynamicCardVerificationCode")
                                 (dynamic-card-verification-value :target-type
                                  dynamic-card-verification-value :member-name
                                  "DynamicCardVerificationValue")
                                 (discover-dynamic-card-verification-code
                                  :target-type
                                  discover-dynamic-card-verification-code
                                  :member-name
                                  "DiscoverDynamicCardVerificationCode"))
                                (:shape-name "CardVerificationAttributes"))

(smithy/sdk/shapes:define-structure card-verification-value1 common-lisp:nil
                                    ((card-expiry-date :target-type
                                      card-expiry-date-type :required
                                      common-lisp:t :member-name
                                      "CardExpiryDate")
                                     (service-code :target-type
                                      service-code-type :required common-lisp:t
                                      :member-name "ServiceCode"))
                                    (:shape-name "CardVerificationValue1"))

(smithy/sdk/shapes:define-structure card-verification-value2 common-lisp:nil
                                    ((card-expiry-date :target-type
                                      card-expiry-date-type :required
                                      common-lisp:t :member-name
                                      "CardExpiryDate"))
                                    (:shape-name "CardVerificationValue2"))

(smithy/sdk/shapes:define-type certificate-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cipher-text-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type command-message-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union cryptogram-auth-response common-lisp:nil
                                ((arpc-method1 :target-type
                                  cryptogram-verification-arpc-method1
                                  :member-name "ArpcMethod1")
                                 (arpc-method2 :target-type
                                  cryptogram-verification-arpc-method2
                                  :member-name "ArpcMethod2"))
                                (:shape-name "CryptogramAuthResponse"))

(smithy/sdk/shapes:define-structure cryptogram-verification-arpc-method1
                                    common-lisp:nil
                                    ((auth-response-code :target-type
                                      hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "AuthResponseCode"))
                                    (:shape-name
                                     "CryptogramVerificationArpcMethod1"))

(smithy/sdk/shapes:define-structure cryptogram-verification-arpc-method2
                                    common-lisp:nil
                                    ((card-status-update :target-type
                                      hex-length-equals8 :required
                                      common-lisp:t :member-name
                                      "CardStatusUpdate")
                                     (proprietary-authentication-data
                                      :target-type
                                      proprietary-authentication-data-type
                                      :member-name
                                      "ProprietaryAuthenticationData"))
                                    (:shape-name
                                     "CryptogramVerificationArpcMethod2"))

(smithy/sdk/shapes:define-structure current-pin-attributes common-lisp:nil
                                    ((current-pin-pek-identifier :target-type
                                      key-arn-or-key-alias-type :required
                                      common-lisp:t :member-name
                                      "CurrentPinPekIdentifier")
                                     (current-encrypted-pin-block :target-type
                                      pin-block-length-equals16 :required
                                      common-lisp:t :member-name
                                      "CurrentEncryptedPinBlock"))
                                    (:shape-name "CurrentPinAttributes"))

(smithy/sdk/shapes:define-type decimalization-table-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input decrypt-data-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"
                                  :http-label common-lisp:t)
                                 (cipher-text :target-type cipher-text-type
                                  :required common-lisp:t :member-name
                                  "CipherText")
                                 (decryption-attributes :target-type
                                  encryption-decryption-attributes :required
                                  common-lisp:t :member-name
                                  "DecryptionAttributes")
                                 (wrapped-key :target-type wrapped-key
                                  :member-name "WrappedKey"))
                                (:shape-name "DecryptDataInput"))

(smithy/sdk/shapes:define-output decrypt-data-output common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue")
                                  (plain-text :target-type
                                   plain-text-output-type :required
                                   common-lisp:t :member-name "PlainText"))
                                 (:shape-name "DecryptDataOutput"))

(smithy/sdk/shapes:define-union derivation-method-attributes common-lisp:nil
                                ((emv-common :target-type emv-common-attributes
                                  :member-name "EmvCommon")
                                 (amex :target-type amex-attributes
                                  :member-name "Amex")
                                 (visa :target-type visa-attributes
                                  :member-name "Visa")
                                 (emv2000 :target-type emv2000attributes
                                  :member-name "Emv2000")
                                 (mastercard :target-type
                                  master-card-attributes :member-name
                                  "Mastercard"))
                                (:shape-name "DerivationMethodAttributes"))

(smithy/sdk/shapes:define-structure discover-dynamic-card-verification-code
                                    common-lisp:nil
                                    ((card-expiry-date :target-type
                                      card-expiry-date-type :required
                                      common-lisp:t :member-name
                                      "CardExpiryDate")
                                     (unpredictable-number :target-type
                                      hex-length-between2and8 :required
                                      common-lisp:t :member-name
                                      "UnpredictableNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-between2and4
                                      :required common-lisp:t :member-name
                                      "ApplicationTransactionCounter"))
                                    (:shape-name
                                     "DiscoverDynamicCardVerificationCode"))

(smithy/sdk/shapes:define-structure dukpt-attributes common-lisp:nil
                                    ((key-serial-number :target-type
                                      hex-length16or20or24 :required
                                      common-lisp:t :member-name
                                      "KeySerialNumber")
                                     (dukpt-derivation-type :target-type
                                      dukpt-derivation-type :required
                                      common-lisp:t :member-name
                                      "DukptDerivationType"))
                                    (:shape-name "DukptAttributes"))

(smithy/sdk/shapes:define-structure dukpt-derivation-attributes common-lisp:nil
                                    ((key-serial-number :target-type
                                      hex-length16or20or24 :required
                                      common-lisp:t :member-name
                                      "KeySerialNumber")
                                     (dukpt-key-derivation-type :target-type
                                      dukpt-derivation-type :member-name
                                      "DukptKeyDerivationType")
                                     (dukpt-key-variant :target-type
                                      dukpt-key-variant :member-name
                                      "DukptKeyVariant"))
                                    (:shape-name "DukptDerivationAttributes"))

(smithy/sdk/shapes:define-enum dukpt-derivation-type
    common-lisp:nil
  (:tdes-2key "TDES_2KEY")
  (:tdes-3key "TDES_3KEY")
  (:aes-128 "AES_128")
  (:aes-192 "AES_192")
  (:aes-256 "AES_256"))

(smithy/sdk/shapes:define-structure dukpt-encryption-attributes common-lisp:nil
                                    ((key-serial-number :target-type
                                      hex-length16or20or24 :required
                                      common-lisp:t :member-name
                                      "KeySerialNumber")
                                     (mode :target-type dukpt-encryption-mode
                                      :member-name "Mode")
                                     (dukpt-key-derivation-type :target-type
                                      dukpt-derivation-type :member-name
                                      "DukptKeyDerivationType")
                                     (dukpt-key-variant :target-type
                                      dukpt-key-variant :member-name
                                      "DukptKeyVariant")
                                     (initialization-vector :target-type
                                      initialization-vector-type :member-name
                                      "InitializationVector"))
                                    (:shape-name "DukptEncryptionAttributes"))

(smithy/sdk/shapes:define-enum dukpt-encryption-mode
    common-lisp:nil
  (:ecb "ECB")
  (:cbc "CBC"))

(smithy/sdk/shapes:define-enum dukpt-key-variant
    common-lisp:nil
  (:bidirectional "BIDIRECTIONAL")
  (:request "REQUEST")
  (:response "RESPONSE"))

(smithy/sdk/shapes:define-structure dynamic-card-verification-code
                                    common-lisp:nil
                                    ((unpredictable-number :target-type
                                      hex-length-between2and8 :required
                                      common-lisp:t :member-name
                                      "UnpredictableNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-between2and4
                                      :required common-lisp:t :member-name
                                      "ApplicationTransactionCounter")
                                     (track-data :target-type track-data-type
                                      :required common-lisp:t :member-name
                                      "TrackData"))
                                    (:shape-name "DynamicCardVerificationCode"))

(smithy/sdk/shapes:define-structure dynamic-card-verification-value
                                    common-lisp:nil
                                    ((pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (card-expiry-date :target-type
                                      card-expiry-date-type :required
                                      common-lisp:t :member-name
                                      "CardExpiryDate")
                                     (service-code :target-type
                                      service-code-type :required common-lisp:t
                                      :member-name "ServiceCode")
                                     (application-transaction-counter
                                      :target-type hex-length-between2and4
                                      :required common-lisp:t :member-name
                                      "ApplicationTransactionCounter"))
                                    (:shape-name
                                     "DynamicCardVerificationValue"))

(smithy/sdk/shapes:define-structure ecdh-derivation-attributes common-lisp:nil
                                    ((certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier")
                                     (public-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "PublicKeyCertificate")
                                     (key-algorithm :target-type
                                      symmetric-key-algorithm :required
                                      common-lisp:t :member-name
                                      "KeyAlgorithm")
                                     (key-derivation-function :target-type
                                      key-derivation-function :required
                                      common-lisp:t :member-name
                                      "KeyDerivationFunction")
                                     (key-derivation-hash-algorithm
                                      :target-type
                                      key-derivation-hash-algorithm :required
                                      common-lisp:t :member-name
                                      "KeyDerivationHashAlgorithm")
                                     (shared-information :target-type
                                      shared-information :required
                                      common-lisp:t :member-name
                                      "SharedInformation"))
                                    (:shape-name "EcdhDerivationAttributes"))

(smithy/sdk/shapes:define-structure emv2000attributes common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "ApplicationTransactionCounter"))
                                    (:shape-name "Emv2000Attributes"))

(smithy/sdk/shapes:define-structure emv-common-attributes common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-cryptogram :target-type
                                      application-cryptogram-type :required
                                      common-lisp:t :member-name
                                      "ApplicationCryptogram")
                                     (mode :target-type emv-encryption-mode
                                      :required common-lisp:t :member-name
                                      "Mode")
                                     (pin-block-padding-type :target-type
                                      pin-block-padding-type :required
                                      common-lisp:t :member-name
                                      "PinBlockPaddingType")
                                     (pin-block-length-position :target-type
                                      pin-block-length-position :required
                                      common-lisp:t :member-name
                                      "PinBlockLengthPosition"))
                                    (:shape-name "EmvCommonAttributes"))

(smithy/sdk/shapes:define-structure emv-encryption-attributes common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      emv-major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (session-derivation-data :target-type
                                      session-derivation-data-type :required
                                      common-lisp:t :member-name
                                      "SessionDerivationData")
                                     (mode :target-type emv-encryption-mode
                                      :member-name "Mode")
                                     (initialization-vector :target-type
                                      initialization-vector-type :member-name
                                      "InitializationVector"))
                                    (:shape-name "EmvEncryptionAttributes"))

(smithy/sdk/shapes:define-enum emv-encryption-mode
    common-lisp:nil
  (:ecb "ECB")
  (:cbc "CBC"))

(smithy/sdk/shapes:define-enum emv-major-key-derivation-mode
    common-lisp:nil
  (:emv-option-a "EMV_OPTION_A")
  (:emv-option-b "EMV_OPTION_B"))

(smithy/sdk/shapes:define-input encrypt-data-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"
                                  :http-label common-lisp:t)
                                 (plain-text :target-type plain-text-type
                                  :required common-lisp:t :member-name
                                  "PlainText")
                                 (encryption-attributes :target-type
                                  encryption-decryption-attributes :required
                                  common-lisp:t :member-name
                                  "EncryptionAttributes")
                                 (wrapped-key :target-type wrapped-key
                                  :member-name "WrappedKey"))
                                (:shape-name "EncryptDataInput"))

(smithy/sdk/shapes:define-output encrypt-data-output common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :member-name "KeyCheckValue")
                                  (cipher-text :target-type cipher-text-type
                                   :required common-lisp:t :member-name
                                   "CipherText"))
                                 (:shape-name "EncryptDataOutput"))

(smithy/sdk/shapes:define-type encrypted-pin-block-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union encryption-decryption-attributes
                                common-lisp:nil
                                ((symmetric :target-type
                                  symmetric-encryption-attributes :member-name
                                  "Symmetric")
                                 (asymmetric :target-type
                                  asymmetric-encryption-attributes :member-name
                                  "Asymmetric")
                                 (dukpt :target-type
                                  dukpt-encryption-attributes :member-name
                                  "Dukpt")
                                 (emv :target-type emv-encryption-attributes
                                  :member-name "Emv"))
                                (:shape-name "EncryptionDecryptionAttributes"))

(smithy/sdk/shapes:define-enum encryption-mode
    common-lisp:nil
  (:ecb "ECB")
  (:cbc "CBC")
  (:cfb "CFB")
  (:cfb1 "CFB1")
  (:cfb8 "CFB8")
  (:cfb64 "CFB64")
  (:cfb128 "CFB128")
  (:ofb "OFB"))

(smithy/sdk/shapes:define-input generate-card-validation-data-input
                                common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier")
                                 (primary-account-number :target-type
                                  primary-account-number-type :required
                                  common-lisp:t :member-name
                                  "PrimaryAccountNumber")
                                 (generation-attributes :target-type
                                  card-generation-attributes :required
                                  common-lisp:t :member-name
                                  "GenerationAttributes")
                                 (validation-data-length :target-type
                                  integer-range-between3and5type :member-name
                                  "ValidationDataLength"))
                                (:shape-name "GenerateCardValidationDataInput"))

(smithy/sdk/shapes:define-output generate-card-validation-data-output
                                 common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue")
                                  (validation-data :target-type
                                   validation-data-type :required common-lisp:t
                                   :member-name "ValidationData"))
                                 (:shape-name
                                  "GenerateCardValidationDataOutput"))

(smithy/sdk/shapes:define-input generate-mac-emv-pin-change-input
                                common-lisp:nil
                                ((new-pin-pek-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "NewPinPekIdentifier")
                                 (new-encrypted-pin-block :target-type
                                  pin-block-length-equals16 :required
                                  common-lisp:t :member-name
                                  "NewEncryptedPinBlock")
                                 (pin-block-format :target-type
                                  pin-block-format-for-emv-pin-change :required
                                  common-lisp:t :member-name "PinBlockFormat")
                                 (secure-messaging-integrity-key-identifier
                                  :target-type key-arn-or-key-alias-type
                                  :required common-lisp:t :member-name
                                  "SecureMessagingIntegrityKeyIdentifier")
                                 (secure-messaging-confidentiality-key-identifier
                                  :target-type key-arn-or-key-alias-type
                                  :required common-lisp:t :member-name
                                  "SecureMessagingConfidentialityKeyIdentifier")
                                 (message-data :target-type
                                  command-message-data-type :required
                                  common-lisp:t :member-name "MessageData")
                                 (derivation-method-attributes :target-type
                                  derivation-method-attributes :required
                                  common-lisp:t :member-name
                                  "DerivationMethodAttributes"))
                                (:shape-name "GenerateMacEmvPinChangeInput"))

(smithy/sdk/shapes:define-output generate-mac-emv-pin-change-output
                                 common-lisp:nil
                                 ((new-pin-pek-arn :target-type key-arn
                                   :required common-lisp:t :member-name
                                   "NewPinPekArn")
                                  (secure-messaging-integrity-key-arn
                                   :target-type key-arn :required common-lisp:t
                                   :member-name
                                   "SecureMessagingIntegrityKeyArn")
                                  (secure-messaging-confidentiality-key-arn
                                   :target-type key-arn :required common-lisp:t
                                   :member-name
                                   "SecureMessagingConfidentialityKeyArn")
                                  (mac :target-type pin-change-mac-output-type
                                   :required common-lisp:t :member-name "Mac")
                                  (encrypted-pin-block :target-type
                                   encrypted-pin-block-type :required
                                   common-lisp:t :member-name
                                   "EncryptedPinBlock")
                                  (new-pin-pek-key-check-value :target-type
                                   key-check-value :required common-lisp:t
                                   :member-name "NewPinPekKeyCheckValue")
                                  (secure-messaging-integrity-key-check-value
                                   :target-type key-check-value :required
                                   common-lisp:t :member-name
                                   "SecureMessagingIntegrityKeyCheckValue")
                                  (secure-messaging-confidentiality-key-check-value
                                   :target-type key-check-value :required
                                   common-lisp:t :member-name
                                   "SecureMessagingConfidentialityKeyCheckValue")
                                  (visa-amex-derivation-outputs :target-type
                                   visa-amex-derivation-outputs :member-name
                                   "VisaAmexDerivationOutputs"))
                                 (:shape-name "GenerateMacEmvPinChangeOutput"))

(smithy/sdk/shapes:define-input generate-mac-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier")
                                 (message-data :target-type message-data-type
                                  :required common-lisp:t :member-name
                                  "MessageData")
                                 (generation-attributes :target-type
                                  mac-attributes :required common-lisp:t
                                  :member-name "GenerationAttributes")
                                 (mac-length :target-type
                                  integer-range-between4and16 :member-name
                                  "MacLength"))
                                (:shape-name "GenerateMacInput"))

(smithy/sdk/shapes:define-output generate-mac-output common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue")
                                  (mac :target-type mac-output-type :required
                                   common-lisp:t :member-name "Mac"))
                                 (:shape-name "GenerateMacOutput"))

(smithy/sdk/shapes:define-input generate-pin-data-input common-lisp:nil
                                ((generation-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "GenerationKeyIdentifier")
                                 (encryption-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "EncryptionKeyIdentifier")
                                 (generation-attributes :target-type
                                  pin-generation-attributes :required
                                  common-lisp:t :member-name
                                  "GenerationAttributes")
                                 (pin-data-length :target-type
                                  integer-range-between4and12 :member-name
                                  "PinDataLength")
                                 (primary-account-number :target-type
                                  primary-account-number-type :required
                                  common-lisp:t :member-name
                                  "PrimaryAccountNumber")
                                 (pin-block-format :target-type
                                  pin-block-format-for-pin-data :required
                                  common-lisp:t :member-name "PinBlockFormat")
                                 (encryption-wrapped-key :target-type
                                  wrapped-key :member-name
                                  "EncryptionWrappedKey"))
                                (:shape-name "GeneratePinDataInput"))

(smithy/sdk/shapes:define-output generate-pin-data-output common-lisp:nil
                                 ((generation-key-arn :target-type key-arn
                                   :required common-lisp:t :member-name
                                   "GenerationKeyArn")
                                  (generation-key-check-value :target-type
                                   key-check-value :required common-lisp:t
                                   :member-name "GenerationKeyCheckValue")
                                  (encryption-key-arn :target-type key-arn
                                   :required common-lisp:t :member-name
                                   "EncryptionKeyArn")
                                  (encryption-key-check-value :target-type
                                   key-check-value :required common-lisp:t
                                   :member-name "EncryptionKeyCheckValue")
                                  (encrypted-pin-block :target-type
                                   encrypted-pin-block-type :required
                                   common-lisp:t :member-name
                                   "EncryptedPinBlock")
                                  (pin-data :target-type pin-data :required
                                   common-lisp:t :member-name "PinData"))
                                 (:shape-name "GeneratePinDataOutput"))

(smithy/sdk/shapes:define-type hex-even-length-between16and32
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hex-length16or20or24
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hex-length-between2and4
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hex-length-between2and8
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hex-length-equals1
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hex-length-equals4
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hex-length-equals8
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ibm3624natural-pin common-lisp:nil
                                    ((decimalization-table :target-type
                                      decimalization-table-type :required
                                      common-lisp:t :member-name
                                      "DecimalizationTable")
                                     (pin-validation-data-pad-character
                                      :target-type hex-length-equals1 :required
                                      common-lisp:t :member-name
                                      "PinValidationDataPadCharacter")
                                     (pin-validation-data :target-type
                                      pin-validation-data-type :required
                                      common-lisp:t :member-name
                                      "PinValidationData"))
                                    (:shape-name "Ibm3624NaturalPin"))

(smithy/sdk/shapes:define-structure ibm3624pin-from-offset common-lisp:nil
                                    ((decimalization-table :target-type
                                      decimalization-table-type :required
                                      common-lisp:t :member-name
                                      "DecimalizationTable")
                                     (pin-validation-data-pad-character
                                      :target-type hex-length-equals1 :required
                                      common-lisp:t :member-name
                                      "PinValidationDataPadCharacter")
                                     (pin-validation-data :target-type
                                      pin-validation-data-type :required
                                      common-lisp:t :member-name
                                      "PinValidationData")
                                     (pin-offset :target-type pin-offset-type
                                      :required common-lisp:t :member-name
                                      "PinOffset"))
                                    (:shape-name "Ibm3624PinFromOffset"))

(smithy/sdk/shapes:define-structure ibm3624pin-offset common-lisp:nil
                                    ((encrypted-pin-block :target-type
                                      encrypted-pin-block-type :required
                                      common-lisp:t :member-name
                                      "EncryptedPinBlock")
                                     (decimalization-table :target-type
                                      decimalization-table-type :required
                                      common-lisp:t :member-name
                                      "DecimalizationTable")
                                     (pin-validation-data-pad-character
                                      :target-type hex-length-equals1 :required
                                      common-lisp:t :member-name
                                      "PinValidationDataPadCharacter")
                                     (pin-validation-data :target-type
                                      pin-validation-data-type :required
                                      common-lisp:t :member-name
                                      "PinValidationData"))
                                    (:shape-name "Ibm3624PinOffset"))

(smithy/sdk/shapes:define-structure ibm3624pin-verification common-lisp:nil
                                    ((decimalization-table :target-type
                                      decimalization-table-type :required
                                      common-lisp:t :member-name
                                      "DecimalizationTable")
                                     (pin-validation-data-pad-character
                                      :target-type hex-length-equals1 :required
                                      common-lisp:t :member-name
                                      "PinValidationDataPadCharacter")
                                     (pin-validation-data :target-type
                                      pin-validation-data-type :required
                                      common-lisp:t :member-name
                                      "PinValidationData")
                                     (pin-offset :target-type pin-offset-type
                                      :required common-lisp:t :member-name
                                      "PinOffset"))
                                    (:shape-name "Ibm3624PinVerification"))

(smithy/sdk/shapes:define-structure ibm3624random-pin common-lisp:nil
                                    ((decimalization-table :target-type
                                      decimalization-table-type :required
                                      common-lisp:t :member-name
                                      "DecimalizationTable")
                                     (pin-validation-data-pad-character
                                      :target-type hex-length-equals1 :required
                                      common-lisp:t :member-name
                                      "PinValidationDataPadCharacter")
                                     (pin-validation-data :target-type
                                      pin-validation-data-type :required
                                      common-lisp:t :member-name
                                      "PinValidationData"))
                                    (:shape-name "Ibm3624RandomPin"))

(smithy/sdk/shapes:define-type initialization-vector-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer-range-between0and6
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-range-between3and5type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-range-between4and12
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-range-between4and16
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class payment-cryptography-data-error))

(smithy/sdk/shapes:define-type key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-arn-or-key-alias-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-check-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-check-value-algorithm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum key-derivation-function
    common-lisp:nil
  (:nist-sp800 "NIST_SP800")
  (:ansi-x963 "ANSI_X963"))

(smithy/sdk/shapes:define-enum key-derivation-hash-algorithm
    common-lisp:nil
  (:sha-256 "SHA_256")
  (:sha-384 "SHA_384")
  (:sha-512 "SHA_512"))

(smithy/sdk/shapes:define-enum mac-algorithm
    common-lisp:nil
  (:iso9797-algorithm1 "ISO9797_ALGORITHM1")
  (:iso9797-algorithm3 "ISO9797_ALGORITHM3")
  (:cmac "CMAC")
  (:hmac "HMAC")
  (:hmac-sha224 "HMAC_SHA224")
  (:hmac-sha256 "HMAC_SHA256")
  (:hmac-sha384 "HMAC_SHA384")
  (:hmac-sha512 "HMAC_SHA512"))

(smithy/sdk/shapes:define-structure mac-algorithm-dukpt common-lisp:nil
                                    ((key-serial-number :target-type
                                      hex-length16or20or24 :required
                                      common-lisp:t :member-name
                                      "KeySerialNumber")
                                     (dukpt-key-variant :target-type
                                      dukpt-key-variant :required common-lisp:t
                                      :member-name "DukptKeyVariant")
                                     (dukpt-derivation-type :target-type
                                      dukpt-derivation-type :member-name
                                      "DukptDerivationType"))
                                    (:shape-name "MacAlgorithmDukpt"))

(smithy/sdk/shapes:define-structure mac-algorithm-emv common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (session-key-derivation-mode :target-type
                                      session-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "SessionKeyDerivationMode")
                                     (session-key-derivation-value :target-type
                                      session-key-derivation-value :required
                                      common-lisp:t :member-name
                                      "SessionKeyDerivationValue"))
                                    (:shape-name "MacAlgorithmEmv"))

(smithy/sdk/shapes:define-union mac-attributes common-lisp:nil
                                ((algorithm :target-type mac-algorithm
                                  :member-name "Algorithm")
                                 (emv-mac :target-type mac-algorithm-emv
                                  :member-name "EmvMac")
                                 (dukpt-iso9797algorithm1 :target-type
                                  mac-algorithm-dukpt :member-name
                                  "DukptIso9797Algorithm1")
                                 (dukpt-iso9797algorithm3 :target-type
                                  mac-algorithm-dukpt :member-name
                                  "DukptIso9797Algorithm3")
                                 (dukpt-cmac :target-type mac-algorithm-dukpt
                                  :member-name "DukptCmac"))
                                (:shape-name "MacAttributes"))

(smithy/sdk/shapes:define-type mac-output-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mac-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum major-key-derivation-mode
    common-lisp:nil
  (:emv-option-a "EMV_OPTION_A")
  (:emv-option-b "EMV_OPTION_B"))

(smithy/sdk/shapes:define-structure master-card-attributes common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-cryptogram :target-type
                                      application-cryptogram-type :required
                                      common-lisp:t :member-name
                                      "ApplicationCryptogram"))
                                    (:shape-name "MasterCardAttributes"))

(smithy/sdk/shapes:define-type message-data-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-length-equals2
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum padding-type
    common-lisp:nil
  (:pkcs1 "PKCS1")
  (:oaep-sha1 "OAEP_SHA1")
  (:oaep-sha256 "OAEP_SHA256")
  (:oaep-sha512 "OAEP_SHA512"))

(smithy/sdk/shapes:define-enum pin-block-format-for-emv-pin-change
    common-lisp:nil
  (:iso-format-0 "ISO_FORMAT_0")
  (:iso-format-1 "ISO_FORMAT_1")
  (:iso-format-3 "ISO_FORMAT_3"))

(smithy/sdk/shapes:define-enum pin-block-format-for-pin-data
    common-lisp:nil
  (:iso-format-0 "ISO_FORMAT_0")
  (:iso-format-3 "ISO_FORMAT_3")
  (:iso-format-4 "ISO_FORMAT_4"))

(smithy/sdk/shapes:define-type pin-block-length-equals16
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum pin-block-length-position
    common-lisp:nil
  (:none "NONE")
  (:front-of-pin-block "FRONT_OF_PIN_BLOCK"))

(smithy/sdk/shapes:define-enum pin-block-padding-type
    common-lisp:nil
  (:no-padding "NO_PADDING")
  (:iso-iec-7816-4 "ISO_IEC_7816_4"))

(smithy/sdk/shapes:define-type pin-change-mac-output-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union pin-data common-lisp:nil
                                ((pin-offset :target-type pin-offset-type
                                  :member-name "PinOffset")
                                 (verification-value :target-type
                                  verification-value-type :member-name
                                  "VerificationValue"))
                                (:shape-name "PinData"))

(smithy/sdk/shapes:define-union pin-generation-attributes common-lisp:nil
                                ((visa-pin :target-type visa-pin :member-name
                                  "VisaPin")
                                 (visa-pin-verification-value :target-type
                                  visa-pin-verification-value :member-name
                                  "VisaPinVerificationValue")
                                 (ibm3624pin-offset :target-type
                                  ibm3624pin-offset :member-name
                                  "Ibm3624PinOffset")
                                 (ibm3624natural-pin :target-type
                                  ibm3624natural-pin :member-name
                                  "Ibm3624NaturalPin")
                                 (ibm3624random-pin :target-type
                                  ibm3624random-pin :member-name
                                  "Ibm3624RandomPin")
                                 (ibm3624pin-from-offset :target-type
                                  ibm3624pin-from-offset :member-name
                                  "Ibm3624PinFromOffset"))
                                (:shape-name "PinGenerationAttributes"))

(smithy/sdk/shapes:define-type pin-offset-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pin-validation-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union pin-verification-attributes common-lisp:nil
                                ((visa-pin :target-type visa-pin-verification
                                  :member-name "VisaPin")
                                 (ibm3624pin :target-type
                                  ibm3624pin-verification :member-name
                                  "Ibm3624Pin"))
                                (:shape-name "PinVerificationAttributes"))

(smithy/sdk/shapes:define-type plain-text-output-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plain-text-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type primary-account-number-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type proprietary-authentication-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input re-encrypt-data-input common-lisp:nil
                                ((incoming-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "IncomingKeyIdentifier" :http-label
                                  common-lisp:t)
                                 (outgoing-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "OutgoingKeyIdentifier")
                                 (cipher-text :target-type cipher-text-type
                                  :required common-lisp:t :member-name
                                  "CipherText")
                                 (incoming-encryption-attributes :target-type
                                  re-encryption-attributes :required
                                  common-lisp:t :member-name
                                  "IncomingEncryptionAttributes")
                                 (outgoing-encryption-attributes :target-type
                                  re-encryption-attributes :required
                                  common-lisp:t :member-name
                                  "OutgoingEncryptionAttributes")
                                 (incoming-wrapped-key :target-type wrapped-key
                                  :member-name "IncomingWrappedKey")
                                 (outgoing-wrapped-key :target-type wrapped-key
                                  :member-name "OutgoingWrappedKey"))
                                (:shape-name "ReEncryptDataInput"))

(smithy/sdk/shapes:define-output re-encrypt-data-output common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue")
                                  (cipher-text :target-type cipher-text-type
                                   :required common-lisp:t :member-name
                                   "CipherText"))
                                 (:shape-name "ReEncryptDataOutput"))

(smithy/sdk/shapes:define-union re-encryption-attributes common-lisp:nil
                                ((symmetric :target-type
                                  symmetric-encryption-attributes :member-name
                                  "Symmetric")
                                 (dukpt :target-type
                                  dukpt-encryption-attributes :member-name
                                  "Dukpt"))
                                (:shape-name "ReEncryptionAttributes"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class payment-cryptography-data-error))

(smithy/sdk/shapes:define-type service-code-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-derivation-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-key-amex common-lisp:nil
                                    ((primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber"))
                                    (:shape-name "SessionKeyAmex"))

(smithy/sdk/shapes:define-union session-key-derivation common-lisp:nil
                                ((emv-common :target-type
                                  session-key-emv-common :member-name
                                  "EmvCommon")
                                 (mastercard :target-type
                                  session-key-mastercard :member-name
                                  "Mastercard")
                                 (emv2000 :target-type session-key-emv2000
                                  :member-name "Emv2000")
                                 (amex :target-type session-key-amex
                                  :member-name "Amex")
                                 (visa :target-type session-key-visa
                                  :member-name "Visa"))
                                (:shape-name "SessionKeyDerivation"))

(smithy/sdk/shapes:define-enum session-key-derivation-mode
    common-lisp:nil
  (:emv-common-session-key "EMV_COMMON_SESSION_KEY")
  (:emv2000 "EMV2000")
  (:amex "AMEX")
  (:mastercard-session-key "MASTERCARD_SESSION_KEY")
  (:visa "VISA"))

(smithy/sdk/shapes:define-union session-key-derivation-value common-lisp:nil
                                ((application-cryptogram :target-type
                                  application-cryptogram-type :member-name
                                  "ApplicationCryptogram")
                                 (application-transaction-counter :target-type
                                  hex-length-equals4 :member-name
                                  "ApplicationTransactionCounter"))
                                (:shape-name "SessionKeyDerivationValue"))

(smithy/sdk/shapes:define-structure session-key-emv2000 common-lisp:nil
                                    ((primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "ApplicationTransactionCounter"))
                                    (:shape-name "SessionKeyEmv2000"))

(smithy/sdk/shapes:define-structure session-key-emv-common common-lisp:nil
                                    ((primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "ApplicationTransactionCounter"))
                                    (:shape-name "SessionKeyEmvCommon"))

(smithy/sdk/shapes:define-structure session-key-mastercard common-lisp:nil
                                    ((primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "ApplicationTransactionCounter")
                                     (unpredictable-number :target-type
                                      hex-length-between2and8 :required
                                      common-lisp:t :member-name
                                      "UnpredictableNumber"))
                                    (:shape-name "SessionKeyMastercard"))

(smithy/sdk/shapes:define-structure session-key-visa common-lisp:nil
                                    ((primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber"))
                                    (:shape-name "SessionKeyVisa"))

(smithy/sdk/shapes:define-type shared-information
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure symmetric-encryption-attributes
                                    common-lisp:nil
                                    ((mode :target-type encryption-mode
                                      :required common-lisp:t :member-name
                                      "Mode")
                                     (initialization-vector :target-type
                                      initialization-vector-type :member-name
                                      "InitializationVector")
                                     (padding-type :target-type padding-type
                                      :member-name "PaddingType"))
                                    (:shape-name
                                     "SymmetricEncryptionAttributes"))

(smithy/sdk/shapes:define-enum symmetric-key-algorithm
    common-lisp:nil
  (:tdes-2key "TDES_2KEY")
  (:tdes-3key "TDES_3KEY")
  (:aes-128 "AES_128")
  (:aes-192 "AES_192")
  (:aes-256 "AES_256")
  (:hmac-sha256 "HMAC_SHA256")
  (:hmac-sha384 "HMAC_SHA384")
  (:hmac-sha512 "HMAC_SHA512")
  (:hmac-sha224 "HMAC_SHA224"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class payment-cryptography-data-error))

(smithy/sdk/shapes:define-type tr31wrapped-key-block
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type track-data-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transaction-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input translate-pin-data-input common-lisp:nil
                                ((incoming-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "IncomingKeyIdentifier")
                                 (outgoing-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "OutgoingKeyIdentifier")
                                 (incoming-translation-attributes :target-type
                                  translation-iso-formats :required
                                  common-lisp:t :member-name
                                  "IncomingTranslationAttributes")
                                 (outgoing-translation-attributes :target-type
                                  translation-iso-formats :required
                                  common-lisp:t :member-name
                                  "OutgoingTranslationAttributes")
                                 (encrypted-pin-block :target-type
                                  hex-even-length-between16and32 :required
                                  common-lisp:t :member-name
                                  "EncryptedPinBlock")
                                 (incoming-dukpt-attributes :target-type
                                  dukpt-derivation-attributes :member-name
                                  "IncomingDukptAttributes")
                                 (outgoing-dukpt-attributes :target-type
                                  dukpt-derivation-attributes :member-name
                                  "OutgoingDukptAttributes")
                                 (incoming-wrapped-key :target-type wrapped-key
                                  :member-name "IncomingWrappedKey")
                                 (outgoing-wrapped-key :target-type wrapped-key
                                  :member-name "OutgoingWrappedKey"))
                                (:shape-name "TranslatePinDataInput"))

(smithy/sdk/shapes:define-output translate-pin-data-output common-lisp:nil
                                 ((pin-block :target-type
                                   encrypted-pin-block-type :required
                                   common-lisp:t :member-name "PinBlock")
                                  (key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue"))
                                 (:shape-name "TranslatePinDataOutput"))

(smithy/sdk/shapes:define-union translation-iso-formats common-lisp:nil
                                ((iso-format0 :target-type
                                  translation-pin-data-iso-format034
                                  :member-name "IsoFormat0")
                                 (iso-format1 :target-type
                                  translation-pin-data-iso-format1 :member-name
                                  "IsoFormat1")
                                 (iso-format3 :target-type
                                  translation-pin-data-iso-format034
                                  :member-name "IsoFormat3")
                                 (iso-format4 :target-type
                                  translation-pin-data-iso-format034
                                  :member-name "IsoFormat4"))
                                (:shape-name "TranslationIsoFormats"))

(smithy/sdk/shapes:define-structure translation-pin-data-iso-format034
                                    common-lisp:nil
                                    ((primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber"))
                                    (:shape-name
                                     "TranslationPinDataIsoFormat034"))

(smithy/sdk/shapes:define-structure translation-pin-data-iso-format1
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "TranslationPinDataIsoFormat1"))

(smithy/sdk/shapes:define-type validation-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class payment-cryptography-data-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "path")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-error verification-failed-exception common-lisp:nil
                                ((reason :target-type
                                  verification-failed-reason :required
                                  common-lisp:t :member-name "Reason")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "VerificationFailedException")
                                (:error-code 400)
                                (:base-class payment-cryptography-data-error))

(smithy/sdk/shapes:define-type verification-failed-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verification-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input verify-auth-request-cryptogram-input
                                common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier")
                                 (transaction-data :target-type
                                  transaction-data-type :required common-lisp:t
                                  :member-name "TransactionData")
                                 (auth-request-cryptogram :target-type
                                  auth-request-cryptogram-type :required
                                  common-lisp:t :member-name
                                  "AuthRequestCryptogram")
                                 (major-key-derivation-mode :target-type
                                  major-key-derivation-mode :required
                                  common-lisp:t :member-name
                                  "MajorKeyDerivationMode")
                                 (session-key-derivation-attributes
                                  :target-type session-key-derivation :required
                                  common-lisp:t :member-name
                                  "SessionKeyDerivationAttributes")
                                 (auth-response-attributes :target-type
                                  cryptogram-auth-response :member-name
                                  "AuthResponseAttributes"))
                                (:shape-name
                                 "VerifyAuthRequestCryptogramInput"))

(smithy/sdk/shapes:define-output verify-auth-request-cryptogram-output
                                 common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue")
                                  (auth-response-value :target-type
                                   auth-response-value-type :member-name
                                   "AuthResponseValue"))
                                 (:shape-name
                                  "VerifyAuthRequestCryptogramOutput"))

(smithy/sdk/shapes:define-input verify-card-validation-data-input
                                common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier")
                                 (primary-account-number :target-type
                                  primary-account-number-type :required
                                  common-lisp:t :member-name
                                  "PrimaryAccountNumber")
                                 (verification-attributes :target-type
                                  card-verification-attributes :required
                                  common-lisp:t :member-name
                                  "VerificationAttributes")
                                 (validation-data :target-type
                                  validation-data-type :required common-lisp:t
                                  :member-name "ValidationData"))
                                (:shape-name "VerifyCardValidationDataInput"))

(smithy/sdk/shapes:define-output verify-card-validation-data-output
                                 common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue"))
                                 (:shape-name "VerifyCardValidationDataOutput"))

(smithy/sdk/shapes:define-input verify-mac-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier")
                                 (message-data :target-type message-data-type
                                  :required common-lisp:t :member-name
                                  "MessageData")
                                 (mac :target-type mac-type :required
                                  common-lisp:t :member-name "Mac")
                                 (verification-attributes :target-type
                                  mac-attributes :required common-lisp:t
                                  :member-name "VerificationAttributes")
                                 (mac-length :target-type
                                  integer-range-between4and16 :member-name
                                  "MacLength"))
                                (:shape-name "VerifyMacInput"))

(smithy/sdk/shapes:define-output verify-mac-output common-lisp:nil
                                 ((key-arn :target-type key-arn :required
                                   common-lisp:t :member-name "KeyArn")
                                  (key-check-value :target-type key-check-value
                                   :required common-lisp:t :member-name
                                   "KeyCheckValue"))
                                 (:shape-name "VerifyMacOutput"))

(smithy/sdk/shapes:define-input verify-pin-data-input common-lisp:nil
                                ((verification-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "VerificationKeyIdentifier")
                                 (encryption-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "EncryptionKeyIdentifier")
                                 (verification-attributes :target-type
                                  pin-verification-attributes :required
                                  common-lisp:t :member-name
                                  "VerificationAttributes")
                                 (encrypted-pin-block :target-type
                                  encrypted-pin-block-type :required
                                  common-lisp:t :member-name
                                  "EncryptedPinBlock")
                                 (primary-account-number :target-type
                                  primary-account-number-type :required
                                  common-lisp:t :member-name
                                  "PrimaryAccountNumber")
                                 (pin-block-format :target-type
                                  pin-block-format-for-pin-data :required
                                  common-lisp:t :member-name "PinBlockFormat")
                                 (pin-data-length :target-type
                                  integer-range-between4and12 :member-name
                                  "PinDataLength")
                                 (dukpt-attributes :target-type
                                  dukpt-attributes :member-name
                                  "DukptAttributes")
                                 (encryption-wrapped-key :target-type
                                  wrapped-key :member-name
                                  "EncryptionWrappedKey"))
                                (:shape-name "VerifyPinDataInput"))

(smithy/sdk/shapes:define-output verify-pin-data-output common-lisp:nil
                                 ((verification-key-arn :target-type key-arn
                                   :required common-lisp:t :member-name
                                   "VerificationKeyArn")
                                  (verification-key-check-value :target-type
                                   key-check-value :required common-lisp:t
                                   :member-name "VerificationKeyCheckValue")
                                  (encryption-key-arn :target-type key-arn
                                   :required common-lisp:t :member-name
                                   "EncryptionKeyArn")
                                  (encryption-key-check-value :target-type
                                   key-check-value :required common-lisp:t
                                   :member-name "EncryptionKeyCheckValue"))
                                 (:shape-name "VerifyPinDataOutput"))

(smithy/sdk/shapes:define-structure visa-amex-derivation-outputs
                                    common-lisp:nil
                                    ((authorization-request-key-arn
                                      :target-type key-arn :required
                                      common-lisp:t :member-name
                                      "AuthorizationRequestKeyArn")
                                     (authorization-request-key-check-value
                                      :target-type key-check-value :required
                                      common-lisp:t :member-name
                                      "AuthorizationRequestKeyCheckValue")
                                     (current-pin-pek-arn :target-type key-arn
                                      :member-name "CurrentPinPekArn")
                                     (current-pin-pek-key-check-value
                                      :target-type key-check-value :member-name
                                      "CurrentPinPekKeyCheckValue"))
                                    (:shape-name "VisaAmexDerivationOutputs"))

(smithy/sdk/shapes:define-structure visa-attributes common-lisp:nil
                                    ((major-key-derivation-mode :target-type
                                      major-key-derivation-mode :required
                                      common-lisp:t :member-name
                                      "MajorKeyDerivationMode")
                                     (primary-account-number :target-type
                                      primary-account-number-type :required
                                      common-lisp:t :member-name
                                      "PrimaryAccountNumber")
                                     (pan-sequence-number :target-type
                                      number-length-equals2 :required
                                      common-lisp:t :member-name
                                      "PanSequenceNumber")
                                     (application-transaction-counter
                                      :target-type hex-length-equals4 :required
                                      common-lisp:t :member-name
                                      "ApplicationTransactionCounter")
                                     (authorization-request-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "AuthorizationRequestKeyIdentifier")
                                     (current-pin-attributes :target-type
                                      current-pin-attributes :member-name
                                      "CurrentPinAttributes"))
                                    (:shape-name "VisaAttributes"))

(smithy/sdk/shapes:define-structure visa-pin common-lisp:nil
                                    ((pin-verification-key-index :target-type
                                      integer-range-between0and6 :required
                                      common-lisp:t :member-name
                                      "PinVerificationKeyIndex"))
                                    (:shape-name "VisaPin"))

(smithy/sdk/shapes:define-structure visa-pin-verification common-lisp:nil
                                    ((pin-verification-key-index :target-type
                                      integer-range-between0and6 :required
                                      common-lisp:t :member-name
                                      "PinVerificationKeyIndex")
                                     (verification-value :target-type
                                      verification-value-type :required
                                      common-lisp:t :member-name
                                      "VerificationValue"))
                                    (:shape-name "VisaPinVerification"))

(smithy/sdk/shapes:define-structure visa-pin-verification-value common-lisp:nil
                                    ((encrypted-pin-block :target-type
                                      encrypted-pin-block-type :required
                                      common-lisp:t :member-name
                                      "EncryptedPinBlock")
                                     (pin-verification-key-index :target-type
                                      integer-range-between0and6 :required
                                      common-lisp:t :member-name
                                      "PinVerificationKeyIndex"))
                                    (:shape-name "VisaPinVerificationValue"))

(smithy/sdk/shapes:define-structure wrapped-key common-lisp:nil
                                    ((wrapped-key-material :target-type
                                      wrapped-key-material :required
                                      common-lisp:t :member-name
                                      "WrappedKeyMaterial")
                                     (key-check-value-algorithm :target-type
                                      key-check-value-algorithm :member-name
                                      "KeyCheckValueAlgorithm"))
                                    (:shape-name "WrappedKey"))

(smithy/sdk/shapes:define-union wrapped-key-material common-lisp:nil
                                ((tr31key-block :target-type
                                  tr31wrapped-key-block :member-name
                                  "Tr31KeyBlock")
                                 (diffie-hellman-symmetric-key :target-type
                                  ecdh-derivation-attributes :member-name
                                  "DiffieHellmanSymmetricKey"))
                                (:shape-name "WrappedKeyMaterial"))

(smithy/sdk/operation:define-operation decrypt-data :shape-name "DecryptData"
                                       :input decrypt-data-input :output
                                       decrypt-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/keys/{KeyIdentifier}/decrypt" :code
                                       200)

(smithy/sdk/operation:define-operation encrypt-data :shape-name "EncryptData"
                                       :input encrypt-data-input :output
                                       encrypt-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/keys/{KeyIdentifier}/encrypt" :code
                                       200)

(smithy/sdk/operation:define-operation generate-card-validation-data
                                       :shape-name "GenerateCardValidationData"
                                       :input
                                       generate-card-validation-data-input
                                       :output
                                       generate-card-validation-data-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cardvalidationdata/generate" :code 200)

(smithy/sdk/operation:define-operation generate-mac :shape-name "GenerateMac"
                                       :input generate-mac-input :output
                                       generate-mac-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/mac/generate"
                                       :code 200)

(smithy/sdk/operation:define-operation generate-mac-emv-pin-change :shape-name
                                       "GenerateMacEmvPinChange" :input
                                       generate-mac-emv-pin-change-input
                                       :output
                                       generate-mac-emv-pin-change-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/macemvpinchange/generate" :code 200)

(smithy/sdk/operation:define-operation generate-pin-data :shape-name
                                       "GeneratePinData" :input
                                       generate-pin-data-input :output
                                       generate-pin-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/pindata/generate"
                                       :code 200)

(smithy/sdk/operation:define-operation re-encrypt-data :shape-name
                                       "ReEncryptData" :input
                                       re-encrypt-data-input :output
                                       re-encrypt-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/keys/{IncomingKeyIdentifier}/reencrypt"
                                       :code 200)

(smithy/sdk/operation:define-operation translate-pin-data :shape-name
                                       "TranslatePinData" :input
                                       translate-pin-data-input :output
                                       translate-pin-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/pindata/translate"
                                       :code 200)

(smithy/sdk/operation:define-operation verify-auth-request-cryptogram
                                       :shape-name
                                       "VerifyAuthRequestCryptogram" :input
                                       verify-auth-request-cryptogram-input
                                       :output
                                       verify-auth-request-cryptogram-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception
                                        verification-failed-exception)
                                       :method "POST" :uri "/cryptogram/verify"
                                       :code 200)

(smithy/sdk/operation:define-operation verify-card-validation-data :shape-name
                                       "VerifyCardValidationData" :input
                                       verify-card-validation-data-input
                                       :output
                                       verify-card-validation-data-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception
                                        verification-failed-exception)
                                       :method "POST" :uri
                                       "/cardvalidationdata/verify" :code 200)

(smithy/sdk/operation:define-operation verify-mac :shape-name "VerifyMac"
                                       :input verify-mac-input :output
                                       verify-mac-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception
                                        verification-failed-exception)
                                       :method "POST" :uri "/mac/verify" :code
                                       200)

(smithy/sdk/operation:define-operation verify-pin-data :shape-name
                                       "VerifyPinData" :input
                                       verify-pin-data-input :output
                                       verify-pin-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception
                                        verification-failed-exception)
                                       :method "POST" :uri "/pindata/verify"
                                       :code 200)
