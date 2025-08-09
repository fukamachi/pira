(uiop/package:define-package #:pira/payment-cryptography (:use)
                             (:export #:alias #:alias-name #:alias-resource
                              #:aliases #:certificate-type #:create-alias
                              #:create-key #:delete-alias #:delete-key
                              #:derive-key-usage
                              #:diffie-hellman-derivation-data
                              #:even-hex-length-between16and32
                              #:export-attributes
                              #:export-diffie-hellman-tr31key-block
                              #:export-dukpt-initial-key #:export-key
                              #:export-key-cryptogram #:export-key-material
                              #:export-token-id #:export-tr31key-block
                              #:export-tr34key-block #:get-alias #:get-key
                              #:get-parameters-for-export
                              #:get-parameters-for-import
                              #:get-public-key-certificate #:hex-length20or24
                              #:import-diffie-hellman-tr31key-block
                              #:import-key #:import-key-cryptogram
                              #:import-key-material #:import-token-id
                              #:import-tr31key-block #:import-tr34key-block
                              #:key #:key-algorithm #:key-arn
                              #:key-arn-or-key-alias-type #:key-attributes
                              #:key-block-headers #:key-check-value
                              #:key-check-value-algorithm #:key-class
                              #:key-derivation-function
                              #:key-derivation-hash-algorithm
                              #:key-exportability #:key-material
                              #:key-material-type #:key-modes-of-use
                              #:key-origin #:key-resource #:key-state
                              #:key-summary #:key-summary-list #:key-usage
                              #:key-version #:list-aliases #:list-keys
                              #:list-tags-for-resource #:max-results
                              #:next-token #:optional-block-id
                              #:optional-block-value #:optional-blocks
                              #:payment-cryptography-control-plane
                              #:resource-arn #:restore-key
                              #:root-certificate-public-key
                              #:shared-information #:start-key-usage
                              #:stop-key-usage #:symmetric-key-algorithm #:tag
                              #:tag-key #:tag-keys #:tag-resource #:tag-value
                              #:tags #:timestamp #:tr31wrapped-key-block
                              #:tr34key-block-format #:tr34wrapped-key-block
                              #:trusted-certificate-public-key #:untag-resource
                              #:update-alias #:wrapped-key
                              #:wrapped-key-cryptogram
                              #:wrapped-key-material-format
                              #:wrapping-key-spec))
(common-lisp:in-package #:pira/payment-cryptography)

(smithy/sdk/service:define-service payment-cryptography-control-plane
                                   :shape-name
                                   "PaymentCryptographyControlPlane" :version
                                   "2021-09-14" :title
                                   "Payment Cryptography Control Plane" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Payment Cryptography")
                                      ("arnNamespace" . "payment-cryptography")
                                      ("endpointPrefix"
                                       . "controlplane.payment-cryptography")
                                      ("cloudFormationName"
                                       . "PaymentCryptography"))
                                     ("aws.auth#sigv4"
                                      ("name" . "payment-cryptography"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure alias common-lisp:nil
                                    ((alias-name :target-type alias-name
                                      :required common-lisp:t :member-name
                                      "AliasName")
                                     (key-arn :target-type key-arn :member-name
                                      "KeyArn"))
                                    (:shape-name "Alias"))

(smithy/sdk/shapes:define-type alias-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list aliases :member alias)

(smithy/sdk/shapes:define-type certificate-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-alias-input common-lisp:nil
                                ((alias-name :target-type alias-name :required
                                  common-lisp:t :member-name "AliasName")
                                 (key-arn :target-type key-arn :member-name
                                  "KeyArn"))
                                (:shape-name "CreateAliasInput"))

(smithy/sdk/shapes:define-output create-alias-output common-lisp:nil
                                 ((alias :target-type alias :required
                                   common-lisp:t :member-name "Alias"))
                                 (:shape-name "CreateAliasOutput"))

(smithy/sdk/shapes:define-input create-key-input common-lisp:nil
                                ((key-attributes :target-type key-attributes
                                  :required common-lisp:t :member-name
                                  "KeyAttributes")
                                 (key-check-value-algorithm :target-type
                                  key-check-value-algorithm :member-name
                                  "KeyCheckValueAlgorithm")
                                 (exportable :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "Exportable")
                                 (enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "Enabled")
                                 (tags :target-type tags :member-name "Tags")
                                 (derive-key-usage :target-type
                                  derive-key-usage :member-name
                                  "DeriveKeyUsage"))
                                (:shape-name "CreateKeyInput"))

(smithy/sdk/shapes:define-output create-key-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "CreateKeyOutput"))

(smithy/sdk/shapes:define-input delete-alias-input common-lisp:nil
                                ((alias-name :target-type alias-name :required
                                  common-lisp:t :member-name "AliasName"))
                                (:shape-name "DeleteAliasInput"))

(smithy/sdk/shapes:define-output delete-alias-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAliasOutput"))

(smithy/sdk/shapes:define-input delete-key-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier")
                                 (delete-key-in-days :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "DeleteKeyInDays"))
                                (:shape-name "DeleteKeyInput"))

(smithy/sdk/shapes:define-output delete-key-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "DeleteKeyOutput"))

(smithy/sdk/shapes:define-type derive-key-usage smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union diffie-hellman-derivation-data common-lisp:nil
                                ((shared-information :target-type
                                  shared-information :member-name
                                  "SharedInformation"))
                                (:shape-name "DiffieHellmanDerivationData"))

(smithy/sdk/shapes:define-type even-hex-length-between16and32
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-attributes common-lisp:nil
                                    ((export-dukpt-initial-key :target-type
                                      export-dukpt-initial-key :member-name
                                      "ExportDukptInitialKey")
                                     (key-check-value-algorithm :target-type
                                      key-check-value-algorithm :member-name
                                      "KeyCheckValueAlgorithm"))
                                    (:shape-name "ExportAttributes"))

(smithy/sdk/shapes:define-structure export-diffie-hellman-tr31key-block
                                    common-lisp:nil
                                    ((private-key-identifier :target-type
                                      key-arn-or-key-alias-type :required
                                      common-lisp:t :member-name
                                      "PrivateKeyIdentifier")
                                     (certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier")
                                     (public-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "PublicKeyCertificate")
                                     (derive-key-algorithm :target-type
                                      symmetric-key-algorithm :required
                                      common-lisp:t :member-name
                                      "DeriveKeyAlgorithm")
                                     (key-derivation-function :target-type
                                      key-derivation-function :required
                                      common-lisp:t :member-name
                                      "KeyDerivationFunction")
                                     (key-derivation-hash-algorithm
                                      :target-type
                                      key-derivation-hash-algorithm :required
                                      common-lisp:t :member-name
                                      "KeyDerivationHashAlgorithm")
                                     (derivation-data :target-type
                                      diffie-hellman-derivation-data :required
                                      common-lisp:t :member-name
                                      "DerivationData")
                                     (key-block-headers :target-type
                                      key-block-headers :member-name
                                      "KeyBlockHeaders"))
                                    (:shape-name
                                     "ExportDiffieHellmanTr31KeyBlock"))

(smithy/sdk/shapes:define-structure export-dukpt-initial-key common-lisp:nil
                                    ((key-serial-number :target-type
                                      hex-length20or24 :required common-lisp:t
                                      :member-name "KeySerialNumber"))
                                    (:shape-name "ExportDukptInitialKey"))

(smithy/sdk/shapes:define-structure export-key-cryptogram common-lisp:nil
                                    ((certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier")
                                     (wrapping-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "WrappingKeyCertificate")
                                     (wrapping-spec :target-type
                                      wrapping-key-spec :member-name
                                      "WrappingSpec"))
                                    (:shape-name "ExportKeyCryptogram"))

(smithy/sdk/shapes:define-input export-key-input common-lisp:nil
                                ((key-material :target-type export-key-material
                                  :required common-lisp:t :member-name
                                  "KeyMaterial")
                                 (export-key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name
                                  "ExportKeyIdentifier")
                                 (export-attributes :target-type
                                  export-attributes :member-name
                                  "ExportAttributes"))
                                (:shape-name "ExportKeyInput"))

(smithy/sdk/shapes:define-union export-key-material common-lisp:nil
                                ((tr31key-block :target-type
                                  export-tr31key-block :member-name
                                  "Tr31KeyBlock")
                                 (tr34key-block :target-type
                                  export-tr34key-block :member-name
                                  "Tr34KeyBlock")
                                 (key-cryptogram :target-type
                                  export-key-cryptogram :member-name
                                  "KeyCryptogram")
                                 (diffie-hellman-tr31key-block :target-type
                                  export-diffie-hellman-tr31key-block
                                  :member-name "DiffieHellmanTr31KeyBlock"))
                                (:shape-name "ExportKeyMaterial"))

(smithy/sdk/shapes:define-output export-key-output common-lisp:nil
                                 ((wrapped-key :target-type wrapped-key
                                   :member-name "WrappedKey"))
                                 (:shape-name "ExportKeyOutput"))

(smithy/sdk/shapes:define-type export-token-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-tr31key-block common-lisp:nil
                                    ((wrapping-key-identifier :target-type
                                      key-arn-or-key-alias-type :required
                                      common-lisp:t :member-name
                                      "WrappingKeyIdentifier")
                                     (key-block-headers :target-type
                                      key-block-headers :member-name
                                      "KeyBlockHeaders"))
                                    (:shape-name "ExportTr31KeyBlock"))

(smithy/sdk/shapes:define-structure export-tr34key-block common-lisp:nil
                                    ((certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier")
                                     (wrapping-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "WrappingKeyCertificate")
                                     (export-token :target-type export-token-id
                                      :required common-lisp:t :member-name
                                      "ExportToken")
                                     (key-block-format :target-type
                                      tr34key-block-format :required
                                      common-lisp:t :member-name
                                      "KeyBlockFormat")
                                     (random-nonce :target-type
                                      even-hex-length-between16and32
                                      :member-name "RandomNonce")
                                     (key-block-headers :target-type
                                      key-block-headers :member-name
                                      "KeyBlockHeaders"))
                                    (:shape-name "ExportTr34KeyBlock"))

(smithy/sdk/shapes:define-input get-alias-input common-lisp:nil
                                ((alias-name :target-type alias-name :required
                                  common-lisp:t :member-name "AliasName"))
                                (:shape-name "GetAliasInput"))

(smithy/sdk/shapes:define-output get-alias-output common-lisp:nil
                                 ((alias :target-type alias :required
                                   common-lisp:t :member-name "Alias"))
                                 (:shape-name "GetAliasOutput"))

(smithy/sdk/shapes:define-input get-key-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"))
                                (:shape-name "GetKeyInput"))

(smithy/sdk/shapes:define-output get-key-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "GetKeyOutput"))

(smithy/sdk/shapes:define-input get-parameters-for-export-input common-lisp:nil
                                ((key-material-type :target-type
                                  key-material-type :required common-lisp:t
                                  :member-name "KeyMaterialType")
                                 (signing-key-algorithm :target-type
                                  key-algorithm :required common-lisp:t
                                  :member-name "SigningKeyAlgorithm"))
                                (:shape-name "GetParametersForExportInput"))

(smithy/sdk/shapes:define-output get-parameters-for-export-output
                                 common-lisp:nil
                                 ((signing-key-certificate :target-type
                                   certificate-type :required common-lisp:t
                                   :member-name "SigningKeyCertificate")
                                  (signing-key-certificate-chain :target-type
                                   certificate-type :required common-lisp:t
                                   :member-name "SigningKeyCertificateChain")
                                  (signing-key-algorithm :target-type
                                   key-algorithm :required common-lisp:t
                                   :member-name "SigningKeyAlgorithm")
                                  (export-token :target-type export-token-id
                                   :required common-lisp:t :member-name
                                   "ExportToken")
                                  (parameters-valid-until-timestamp
                                   :target-type timestamp :required
                                   common-lisp:t :member-name
                                   "ParametersValidUntilTimestamp"))
                                 (:shape-name "GetParametersForExportOutput"))

(smithy/sdk/shapes:define-input get-parameters-for-import-input common-lisp:nil
                                ((key-material-type :target-type
                                  key-material-type :required common-lisp:t
                                  :member-name "KeyMaterialType")
                                 (wrapping-key-algorithm :target-type
                                  key-algorithm :required common-lisp:t
                                  :member-name "WrappingKeyAlgorithm"))
                                (:shape-name "GetParametersForImportInput"))

(smithy/sdk/shapes:define-output get-parameters-for-import-output
                                 common-lisp:nil
                                 ((wrapping-key-certificate :target-type
                                   certificate-type :required common-lisp:t
                                   :member-name "WrappingKeyCertificate")
                                  (wrapping-key-certificate-chain :target-type
                                   certificate-type :required common-lisp:t
                                   :member-name "WrappingKeyCertificateChain")
                                  (wrapping-key-algorithm :target-type
                                   key-algorithm :required common-lisp:t
                                   :member-name "WrappingKeyAlgorithm")
                                  (import-token :target-type import-token-id
                                   :required common-lisp:t :member-name
                                   "ImportToken")
                                  (parameters-valid-until-timestamp
                                   :target-type timestamp :required
                                   common-lisp:t :member-name
                                   "ParametersValidUntilTimestamp"))
                                 (:shape-name "GetParametersForImportOutput"))

(smithy/sdk/shapes:define-input get-public-key-certificate-input
                                common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"))
                                (:shape-name "GetPublicKeyCertificateInput"))

(smithy/sdk/shapes:define-output get-public-key-certificate-output
                                 common-lisp:nil
                                 ((key-certificate :target-type
                                   certificate-type :required common-lisp:t
                                   :member-name "KeyCertificate")
                                  (key-certificate-chain :target-type
                                   certificate-type :required common-lisp:t
                                   :member-name "KeyCertificateChain"))
                                 (:shape-name "GetPublicKeyCertificateOutput"))

(smithy/sdk/shapes:define-type hex-length20or24 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-diffie-hellman-tr31key-block
                                    common-lisp:nil
                                    ((private-key-identifier :target-type
                                      key-arn-or-key-alias-type :required
                                      common-lisp:t :member-name
                                      "PrivateKeyIdentifier")
                                     (certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier")
                                     (public-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "PublicKeyCertificate")
                                     (derive-key-algorithm :target-type
                                      symmetric-key-algorithm :required
                                      common-lisp:t :member-name
                                      "DeriveKeyAlgorithm")
                                     (key-derivation-function :target-type
                                      key-derivation-function :required
                                      common-lisp:t :member-name
                                      "KeyDerivationFunction")
                                     (key-derivation-hash-algorithm
                                      :target-type
                                      key-derivation-hash-algorithm :required
                                      common-lisp:t :member-name
                                      "KeyDerivationHashAlgorithm")
                                     (derivation-data :target-type
                                      diffie-hellman-derivation-data :required
                                      common-lisp:t :member-name
                                      "DerivationData")
                                     (wrapped-key-block :target-type
                                      tr31wrapped-key-block :required
                                      common-lisp:t :member-name
                                      "WrappedKeyBlock"))
                                    (:shape-name
                                     "ImportDiffieHellmanTr31KeyBlock"))

(smithy/sdk/shapes:define-structure import-key-cryptogram common-lisp:nil
                                    ((key-attributes :target-type
                                      key-attributes :required common-lisp:t
                                      :member-name "KeyAttributes")
                                     (exportable :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Exportable")
                                     (wrapped-key-cryptogram :target-type
                                      wrapped-key-cryptogram :required
                                      common-lisp:t :member-name
                                      "WrappedKeyCryptogram")
                                     (import-token :target-type import-token-id
                                      :required common-lisp:t :member-name
                                      "ImportToken")
                                     (wrapping-spec :target-type
                                      wrapping-key-spec :member-name
                                      "WrappingSpec"))
                                    (:shape-name "ImportKeyCryptogram"))

(smithy/sdk/shapes:define-input import-key-input common-lisp:nil
                                ((key-material :target-type import-key-material
                                  :required common-lisp:t :member-name
                                  "KeyMaterial")
                                 (key-check-value-algorithm :target-type
                                  key-check-value-algorithm :member-name
                                  "KeyCheckValueAlgorithm")
                                 (enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "Enabled")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "ImportKeyInput"))

(smithy/sdk/shapes:define-union import-key-material common-lisp:nil
                                ((root-certificate-public-key :target-type
                                  root-certificate-public-key :member-name
                                  "RootCertificatePublicKey")
                                 (trusted-certificate-public-key :target-type
                                  trusted-certificate-public-key :member-name
                                  "TrustedCertificatePublicKey")
                                 (tr31key-block :target-type
                                  import-tr31key-block :member-name
                                  "Tr31KeyBlock")
                                 (tr34key-block :target-type
                                  import-tr34key-block :member-name
                                  "Tr34KeyBlock")
                                 (key-cryptogram :target-type
                                  import-key-cryptogram :member-name
                                  "KeyCryptogram")
                                 (diffie-hellman-tr31key-block :target-type
                                  import-diffie-hellman-tr31key-block
                                  :member-name "DiffieHellmanTr31KeyBlock"))
                                (:shape-name "ImportKeyMaterial"))

(smithy/sdk/shapes:define-output import-key-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "ImportKeyOutput"))

(smithy/sdk/shapes:define-type import-token-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-tr31key-block common-lisp:nil
                                    ((wrapping-key-identifier :target-type
                                      key-arn-or-key-alias-type :required
                                      common-lisp:t :member-name
                                      "WrappingKeyIdentifier")
                                     (wrapped-key-block :target-type
                                      tr31wrapped-key-block :required
                                      common-lisp:t :member-name
                                      "WrappedKeyBlock"))
                                    (:shape-name "ImportTr31KeyBlock"))

(smithy/sdk/shapes:define-structure import-tr34key-block common-lisp:nil
                                    ((certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier")
                                     (signing-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "SigningKeyCertificate")
                                     (import-token :target-type import-token-id
                                      :required common-lisp:t :member-name
                                      "ImportToken")
                                     (wrapped-key-block :target-type
                                      tr34wrapped-key-block :required
                                      common-lisp:t :member-name
                                      "WrappedKeyBlock")
                                     (key-block-format :target-type
                                      tr34key-block-format :required
                                      common-lisp:t :member-name
                                      "KeyBlockFormat")
                                     (random-nonce :target-type
                                      even-hex-length-between16and32
                                      :member-name "RandomNonce"))
                                    (:shape-name "ImportTr34KeyBlock"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure key common-lisp:nil
                                    ((key-arn :target-type key-arn :required
                                      common-lisp:t :member-name "KeyArn")
                                     (key-attributes :target-type
                                      key-attributes :required common-lisp:t
                                      :member-name "KeyAttributes")
                                     (key-check-value :target-type
                                      key-check-value :required common-lisp:t
                                      :member-name "KeyCheckValue")
                                     (key-check-value-algorithm :target-type
                                      key-check-value-algorithm :required
                                      common-lisp:t :member-name
                                      "KeyCheckValueAlgorithm")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (exportable :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Exportable")
                                     (key-state :target-type key-state
                                      :required common-lisp:t :member-name
                                      "KeyState")
                                     (key-origin :target-type key-origin
                                      :required common-lisp:t :member-name
                                      "KeyOrigin")
                                     (create-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTimestamp")
                                     (usage-start-timestamp :target-type
                                      timestamp :member-name
                                      "UsageStartTimestamp")
                                     (usage-stop-timestamp :target-type
                                      timestamp :member-name
                                      "UsageStopTimestamp")
                                     (delete-pending-timestamp :target-type
                                      timestamp :member-name
                                      "DeletePendingTimestamp")
                                     (delete-timestamp :target-type timestamp
                                      :member-name "DeleteTimestamp")
                                     (derive-key-usage :target-type
                                      derive-key-usage :member-name
                                      "DeriveKeyUsage"))
                                    (:shape-name "Key"))

(smithy/sdk/shapes:define-type key-algorithm smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-arn-or-key-alias-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-attributes common-lisp:nil
                                    ((key-usage :target-type key-usage
                                      :required common-lisp:t :member-name
                                      "KeyUsage")
                                     (key-class :target-type key-class
                                      :required common-lisp:t :member-name
                                      "KeyClass")
                                     (key-algorithm :target-type key-algorithm
                                      :required common-lisp:t :member-name
                                      "KeyAlgorithm")
                                     (key-modes-of-use :target-type
                                      key-modes-of-use :required common-lisp:t
                                      :member-name "KeyModesOfUse"))
                                    (:shape-name "KeyAttributes"))

(smithy/sdk/shapes:define-structure key-block-headers common-lisp:nil
                                    ((key-modes-of-use :target-type
                                      key-modes-of-use :member-name
                                      "KeyModesOfUse")
                                     (key-exportability :target-type
                                      key-exportability :member-name
                                      "KeyExportability")
                                     (key-version :target-type key-version
                                      :member-name "KeyVersion")
                                     (optional-blocks :target-type
                                      optional-blocks :member-name
                                      "OptionalBlocks"))
                                    (:shape-name "KeyBlockHeaders"))

(smithy/sdk/shapes:define-type key-check-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-check-value-algorithm
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-class smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum key-derivation-function
    common-lisp:nil
  (:nist-sp800 "NIST_SP800")
  (:ansi-x963 "ANSI_X963"))

(smithy/sdk/shapes:define-enum key-derivation-hash-algorithm
    common-lisp:nil
  (:sha-256 "SHA_256")
  (:sha-384 "SHA_384")
  (:sha-512 "SHA_512"))

(smithy/sdk/shapes:define-type key-exportability smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-material smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-material-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-modes-of-use common-lisp:nil
                                    ((encrypt :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Encrypt")
                                     (decrypt :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Decrypt")
                                     (wrap :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Wrap")
                                     (unwrap :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Unwrap")
                                     (generate :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Generate")
                                     (sign :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Sign")
                                     (verify :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "Verify")
                                     (derive-key :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "DeriveKey")
                                     (no-restrictions :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :member-name "NoRestrictions"))
                                    (:shape-name "KeyModesOfUse"))

(smithy/sdk/shapes:define-type key-origin smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type key-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-summary common-lisp:nil
                                    ((key-arn :target-type key-arn :required
                                      common-lisp:t :member-name "KeyArn")
                                     (key-state :target-type key-state
                                      :required common-lisp:t :member-name
                                      "KeyState")
                                     (key-attributes :target-type
                                      key-attributes :required common-lisp:t
                                      :member-name "KeyAttributes")
                                     (key-check-value :target-type
                                      key-check-value :required common-lisp:t
                                      :member-name "KeyCheckValue")
                                     (exportable :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Exportable")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name "KeySummary"))

(smithy/sdk/shapes:define-list key-summary-list :member key-summary)

(smithy/sdk/shapes:define-type key-usage smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-aliases-input common-lisp:nil
                                ((key-arn :target-type key-arn :member-name
                                  "KeyArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAliasesInput"))

(smithy/sdk/shapes:define-output list-aliases-output common-lisp:nil
                                 ((aliases :target-type aliases :required
                                   common-lisp:t :member-name "Aliases")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAliasesOutput"))

(smithy/sdk/shapes:define-input list-keys-input common-lisp:nil
                                ((key-state :target-type key-state :member-name
                                  "KeyState")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListKeysInput"))

(smithy/sdk/shapes:define-output list-keys-output common-lisp:nil
                                 ((keys :target-type key-summary-list :required
                                   common-lisp:t :member-name "Keys")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListKeysOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tags :required
                                   common-lisp:t :member-name "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-block-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-block-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map optional-blocks :key optional-block-id :value
                              optional-block-value)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input restore-key-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"))
                                (:shape-name "RestoreKeyInput"))

(smithy/sdk/shapes:define-output restore-key-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "RestoreKeyOutput"))

(smithy/sdk/shapes:define-structure root-certificate-public-key common-lisp:nil
                                    ((key-attributes :target-type
                                      key-attributes :required common-lisp:t
                                      :member-name "KeyAttributes")
                                     (public-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "PublicKeyCertificate"))
                                    (:shape-name "RootCertificatePublicKey"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type shared-information
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-key-usage-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"))
                                (:shape-name "StartKeyUsageInput"))

(smithy/sdk/shapes:define-output start-key-usage-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "StartKeyUsageOutput"))

(smithy/sdk/shapes:define-input stop-key-usage-input common-lisp:nil
                                ((key-identifier :target-type
                                  key-arn-or-key-alias-type :required
                                  common-lisp:t :member-name "KeyIdentifier"))
                                (:shape-name "StopKeyUsageInput"))

(smithy/sdk/shapes:define-output stop-key-usage-output common-lisp:nil
                                 ((key :target-type key :required common-lisp:t
                                   :member-name "Key"))
                                 (:shape-name "StopKeyUsageOutput"))

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

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type tr31wrapped-key-block
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tr34key-block-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tr34wrapped-key-block
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trusted-certificate-public-key
                                    common-lisp:nil
                                    ((key-attributes :target-type
                                      key-attributes :required common-lisp:t
                                      :member-name "KeyAttributes")
                                     (public-key-certificate :target-type
                                      certificate-type :required common-lisp:t
                                      :member-name "PublicKeyCertificate")
                                     (certificate-authority-public-key-identifier
                                      :target-type key-arn-or-key-alias-type
                                      :required common-lisp:t :member-name
                                      "CertificateAuthorityPublicKeyIdentifier"))
                                    (:shape-name "TrustedCertificatePublicKey"))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-alias-input common-lisp:nil
                                ((alias-name :target-type alias-name :required
                                  common-lisp:t :member-name "AliasName")
                                 (key-arn :target-type key-arn :member-name
                                  "KeyArn"))
                                (:shape-name "UpdateAliasInput"))

(smithy/sdk/shapes:define-output update-alias-output common-lisp:nil
                                 ((alias :target-type alias :required
                                   common-lisp:t :member-name "Alias"))
                                 (:shape-name "UpdateAliasOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure wrapped-key common-lisp:nil
                                    ((wrapping-key-arn :target-type key-arn
                                      :required common-lisp:t :member-name
                                      "WrappingKeyArn")
                                     (wrapped-key-material-format :target-type
                                      wrapped-key-material-format :required
                                      common-lisp:t :member-name
                                      "WrappedKeyMaterialFormat")
                                     (key-material :target-type key-material
                                      :required common-lisp:t :member-name
                                      "KeyMaterial")
                                     (key-check-value :target-type
                                      key-check-value :member-name
                                      "KeyCheckValue")
                                     (key-check-value-algorithm :target-type
                                      key-check-value-algorithm :member-name
                                      "KeyCheckValueAlgorithm"))
                                    (:shape-name "WrappedKey"))

(smithy/sdk/shapes:define-type wrapped-key-cryptogram
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wrapped-key-material-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wrapping-key-spec smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-alias :shape-name "CreateAlias"
                                       :input create-alias-input :output
                                       create-alias-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-key :shape-name "CreateKey"
                                       :input create-key-input :output
                                       create-key-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-alias :shape-name "DeleteAlias"
                                       :input delete-alias-input :output
                                       delete-alias-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-key :shape-name "DeleteKey"
                                       :input delete-key-input :output
                                       delete-key-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation export-key :shape-name "ExportKey"
                                       :input export-key-input :output
                                       export-key-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-alias :shape-name "GetAlias" :input
                                       get-alias-input :output get-alias-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-key :shape-name "GetKey" :input
                                       get-key-input :output get-key-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-parameters-for-export :shape-name
                                       "GetParametersForExport" :input
                                       get-parameters-for-export-input :output
                                       get-parameters-for-export-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-parameters-for-import :shape-name
                                       "GetParametersForImport" :input
                                       get-parameters-for-import-input :output
                                       get-parameters-for-import-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-public-key-certificate :shape-name
                                       "GetPublicKeyCertificate" :input
                                       get-public-key-certificate-input :output
                                       get-public-key-certificate-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation import-key :shape-name "ImportKey"
                                       :input import-key-input :output
                                       import-key-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-aliases :shape-name "ListAliases"
                                       :input list-aliases-input :output
                                       list-aliases-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-keys :shape-name "ListKeys" :input
                                       list-keys-input :output list-keys-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation restore-key :shape-name "RestoreKey"
                                       :input restore-key-input :output
                                       restore-key-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-key-usage :shape-name
                                       "StartKeyUsage" :input
                                       start-key-usage-input :output
                                       start-key-usage-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-key-usage :shape-name
                                       "StopKeyUsage" :input
                                       stop-key-usage-input :output
                                       stop-key-usage-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-alias :shape-name "UpdateAlias"
                                       :input update-alias-input :output
                                       update-alias-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception))
