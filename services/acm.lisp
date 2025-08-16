(uiop/package:define-package #:pira/acm (:use)
                             (:export #:add-tags-to-certificate #:arn
                              #:availability-error-message #:certificate-body
                              #:certificate-body-blob #:certificate-chain
                              #:certificate-chain-blob #:certificate-detail
                              #:certificate-export #:certificate-managed-by
                              #:certificate-manager #:certificate-options
                              #:certificate-status #:certificate-statuses
                              #:certificate-summary #:certificate-summary-list
                              #:certificate-transparency-logging-preference
                              #:certificate-type #:delete-certificate
                              #:describe-certificate #:domain-list
                              #:domain-name-string #:domain-status
                              #:domain-validation #:domain-validation-list
                              #:domain-validation-option
                              #:domain-validation-option-list
                              #:expiry-events-configuration
                              #:export-certificate #:extended-key-usage
                              #:extended-key-usage-filter-list
                              #:extended-key-usage-list
                              #:extended-key-usage-name
                              #:extended-key-usage-names #:failure-reason
                              #:filters #:get-account-configuration
                              #:get-certificate #:http-redirect
                              #:idempotency-token #:import-certificate
                              #:in-use-list #:key-algorithm
                              #:key-algorithm-list #:key-usage
                              #:key-usage-filter-list #:key-usage-list
                              #:key-usage-name #:key-usage-names
                              #:list-certificates #:list-tags-for-certificate
                              #:max-items #:next-token #:nullable-boolean
                              #:passphrase-blob #:pca-arn #:positive-integer
                              #:private-key #:private-key-blob
                              #:put-account-configuration #:record-type
                              #:remove-tags-from-certificate
                              #:renew-certificate #:renewal-eligibility
                              #:renewal-status #:renewal-summary
                              #:request-certificate #:resend-validation-email
                              #:resource-record #:revocation-reason
                              #:revoke-certificate #:service-error-message
                              #:sort-by #:sort-order #:string #:tstamp #:tag
                              #:tag-key #:tag-list #:tag-value
                              #:update-certificate-options
                              #:validation-email-list
                              #:validation-exception-message
                              #:validation-method))
(common-lisp:in-package #:pira/acm)

(smithy/sdk/service:define-service certificate-manager :shape-name
                                   "CertificateManager" :version "2015-12-08"
                                   :title "AWS Certificate Manager" :traits
                                   '(("aws.api#service" ("sdkId" . "ACM")
                                      ("endpointPrefix" . "acm")
                                      ("arnNamespace" . "acm")
                                      ("cloudTrailEventSource"
                                       . "acm.amazonaws.com")
                                      ("cloudFormationName"
                                       . "CertificateManager"))
                                     ("aws.auth#sigv4" ("name" . "acm"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type service-error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "AccessDenied") (:error-code 403))

(smithy/sdk/shapes:define-input add-tags-to-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToCertificateRequest"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-body-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type certificate-chain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-chain-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure certificate-detail common-lisp:nil
                                    ((certificate-arn :target-type arn
                                      :member-name "CertificateArn")
                                     (domain-name :target-type
                                      domain-name-string :member-name
                                      "DomainName")
                                     (subject-alternative-names :target-type
                                      domain-list :member-name
                                      "SubjectAlternativeNames")
                                     (managed-by :target-type
                                      certificate-managed-by :member-name
                                      "ManagedBy")
                                     (domain-validation-options :target-type
                                      domain-validation-list :member-name
                                      "DomainValidationOptions")
                                     (serial :target-type string :member-name
                                      "Serial")
                                     (subject :target-type string :member-name
                                      "Subject")
                                     (issuer :target-type string :member-name
                                      "Issuer")
                                     (created-at :target-type tstamp
                                      :member-name "CreatedAt")
                                     (issued-at :target-type tstamp
                                      :member-name "IssuedAt")
                                     (imported-at :target-type tstamp
                                      :member-name "ImportedAt")
                                     (status :target-type certificate-status
                                      :member-name "Status")
                                     (revoked-at :target-type tstamp
                                      :member-name "RevokedAt")
                                     (revocation-reason :target-type
                                      revocation-reason :member-name
                                      "RevocationReason")
                                     (not-before :target-type tstamp
                                      :member-name "NotBefore")
                                     (not-after :target-type tstamp
                                      :member-name "NotAfter")
                                     (key-algorithm :target-type key-algorithm
                                      :member-name "KeyAlgorithm")
                                     (signature-algorithm :target-type string
                                      :member-name "SignatureAlgorithm")
                                     (in-use-by :target-type in-use-list
                                      :member-name "InUseBy")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (type :target-type certificate-type
                                      :member-name "Type")
                                     (renewal-summary :target-type
                                      renewal-summary :member-name
                                      "RenewalSummary")
                                     (key-usages :target-type key-usage-list
                                      :member-name "KeyUsages")
                                     (extended-key-usages :target-type
                                      extended-key-usage-list :member-name
                                      "ExtendedKeyUsages")
                                     (certificate-authority-arn :target-type
                                      arn :member-name
                                      "CertificateAuthorityArn")
                                     (renewal-eligibility :target-type
                                      renewal-eligibility :member-name
                                      "RenewalEligibility")
                                     (options :target-type certificate-options
                                      :member-name "Options"))
                                    (:shape-name "CertificateDetail"))

(smithy/sdk/shapes:define-enum certificate-export
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum certificate-managed-by
    common-lisp:nil
  (:cloudfront "CLOUDFRONT"))

(smithy/sdk/shapes:define-structure certificate-options common-lisp:nil
                                    ((certificate-transparency-logging-preference
                                      :target-type
                                      certificate-transparency-logging-preference
                                      :member-name
                                      "CertificateTransparencyLoggingPreference")
                                     (export :target-type certificate-export
                                      :member-name "Export"))
                                    (:shape-name "CertificateOptions"))

(smithy/sdk/shapes:define-enum certificate-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:issued "ISSUED")
  (:inactive "INACTIVE")
  (:expired "EXPIRED")
  (:validation-timed-out "VALIDATION_TIMED_OUT")
  (:revoked "REVOKED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list certificate-statuses :member certificate-status)

(smithy/sdk/shapes:define-structure certificate-summary common-lisp:nil
                                    ((certificate-arn :target-type arn
                                      :member-name "CertificateArn")
                                     (domain-name :target-type
                                      domain-name-string :member-name
                                      "DomainName")
                                     (subject-alternative-name-summaries
                                      :target-type domain-list :member-name
                                      "SubjectAlternativeNameSummaries")
                                     (has-additional-subject-alternative-names
                                      :target-type nullable-boolean
                                      :member-name
                                      "HasAdditionalSubjectAlternativeNames")
                                     (status :target-type certificate-status
                                      :member-name "Status")
                                     (type :target-type certificate-type
                                      :member-name "Type")
                                     (key-algorithm :target-type key-algorithm
                                      :member-name "KeyAlgorithm")
                                     (key-usages :target-type key-usage-names
                                      :member-name "KeyUsages")
                                     (extended-key-usages :target-type
                                      extended-key-usage-names :member-name
                                      "ExtendedKeyUsages")
                                     (export-option :target-type
                                      certificate-export :member-name
                                      "ExportOption")
                                     (in-use :target-type nullable-boolean
                                      :member-name "InUse")
                                     (exported :target-type nullable-boolean
                                      :member-name "Exported")
                                     (renewal-eligibility :target-type
                                      renewal-eligibility :member-name
                                      "RenewalEligibility")
                                     (not-before :target-type tstamp
                                      :member-name "NotBefore")
                                     (not-after :target-type tstamp
                                      :member-name "NotAfter")
                                     (created-at :target-type tstamp
                                      :member-name "CreatedAt")
                                     (issued-at :target-type tstamp
                                      :member-name "IssuedAt")
                                     (imported-at :target-type tstamp
                                      :member-name "ImportedAt")
                                     (revoked-at :target-type tstamp
                                      :member-name "RevokedAt")
                                     (managed-by :target-type
                                      certificate-managed-by :member-name
                                      "ManagedBy"))
                                    (:shape-name "CertificateSummary"))

(smithy/sdk/shapes:define-list certificate-summary-list :member
                               certificate-summary)

(smithy/sdk/shapes:define-enum certificate-transparency-logging-preference
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum certificate-type
    common-lisp:nil
  (:imported "IMPORTED")
  (:amazon-issued "AMAZON_ISSUED")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "DeleteCertificateRequest"))

(smithy/sdk/shapes:define-input describe-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "DescribeCertificateRequest"))

(smithy/sdk/shapes:define-output describe-certificate-response common-lisp:nil
                                 ((certificate :target-type certificate-detail
                                   :member-name "Certificate"))
                                 (:shape-name "DescribeCertificateResponse"))

(smithy/sdk/shapes:define-list domain-list :member domain-name-string)

(smithy/sdk/shapes:define-type domain-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure domain-validation common-lisp:nil
                                    ((domain-name :target-type
                                      domain-name-string :required
                                      common-lisp:t :member-name "DomainName")
                                     (validation-emails :target-type
                                      validation-email-list :member-name
                                      "ValidationEmails")
                                     (validation-domain :target-type
                                      domain-name-string :member-name
                                      "ValidationDomain")
                                     (validation-status :target-type
                                      domain-status :member-name
                                      "ValidationStatus")
                                     (resource-record :target-type
                                      resource-record :member-name
                                      "ResourceRecord")
                                     (http-redirect :target-type http-redirect
                                      :member-name "HttpRedirect")
                                     (validation-method :target-type
                                      validation-method :member-name
                                      "ValidationMethod"))
                                    (:shape-name "DomainValidation"))

(smithy/sdk/shapes:define-list domain-validation-list :member domain-validation)

(smithy/sdk/shapes:define-structure domain-validation-option common-lisp:nil
                                    ((domain-name :target-type
                                      domain-name-string :required
                                      common-lisp:t :member-name "DomainName")
                                     (validation-domain :target-type
                                      domain-name-string :required
                                      common-lisp:t :member-name
                                      "ValidationDomain"))
                                    (:shape-name "DomainValidationOption"))

(smithy/sdk/shapes:define-list domain-validation-option-list :member
                               domain-validation-option)

(smithy/sdk/shapes:define-structure expiry-events-configuration common-lisp:nil
                                    ((days-before-expiry :target-type
                                      positive-integer :member-name
                                      "DaysBeforeExpiry"))
                                    (:shape-name "ExpiryEventsConfiguration"))

(smithy/sdk/shapes:define-input export-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn")
                                 (passphrase :target-type passphrase-blob
                                  :required common-lisp:t :member-name
                                  "Passphrase"))
                                (:shape-name "ExportCertificateRequest"))

(smithy/sdk/shapes:define-output export-certificate-response common-lisp:nil
                                 ((certificate :target-type certificate-body
                                   :member-name "Certificate")
                                  (certificate-chain :target-type
                                   certificate-chain :member-name
                                   "CertificateChain")
                                  (private-key :target-type private-key
                                   :member-name "PrivateKey"))
                                 (:shape-name "ExportCertificateResponse"))

(smithy/sdk/shapes:define-structure extended-key-usage common-lisp:nil
                                    ((name :target-type extended-key-usage-name
                                      :member-name "Name")
                                     (oid :target-type string :member-name
                                      "OID"))
                                    (:shape-name "ExtendedKeyUsage"))

(smithy/sdk/shapes:define-list extended-key-usage-filter-list :member
                               extended-key-usage-name)

(smithy/sdk/shapes:define-list extended-key-usage-list :member
                               extended-key-usage)

(smithy/sdk/shapes:define-enum extended-key-usage-name
    common-lisp:nil
  (:tls-web-server-authentication "TLS_WEB_SERVER_AUTHENTICATION")
  (:tls-web-client-authentication "TLS_WEB_CLIENT_AUTHENTICATION")
  (:code-signing "CODE_SIGNING")
  (:email-protection "EMAIL_PROTECTION")
  (:time-stamping "TIME_STAMPING")
  (:ocsp-signing "OCSP_SIGNING")
  (:ipsec-end-system "IPSEC_END_SYSTEM")
  (:ipsec-tunnel "IPSEC_TUNNEL")
  (:ipsec-user "IPSEC_USER")
  (:any "ANY")
  (:none "NONE")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list extended-key-usage-names :member
                               extended-key-usage-name)

(smithy/sdk/shapes:define-enum failure-reason
    common-lisp:nil
  (:no-available-contacts "NO_AVAILABLE_CONTACTS")
  (:additional-verification-required "ADDITIONAL_VERIFICATION_REQUIRED")
  (:domain-not-allowed "DOMAIN_NOT_ALLOWED")
  (:invalid-public-domain "INVALID_PUBLIC_DOMAIN")
  (:domain-validation-denied "DOMAIN_VALIDATION_DENIED")
  (:caa-error "CAA_ERROR")
  (:pca-limit-exceeded "PCA_LIMIT_EXCEEDED")
  (:pca-invalid-arn "PCA_INVALID_ARN")
  (:pca-invalid-state "PCA_INVALID_STATE")
  (:pca-request-failed "PCA_REQUEST_FAILED")
  (:pca-name-constraints-validation "PCA_NAME_CONSTRAINTS_VALIDATION")
  (:pca-resource-not-found "PCA_RESOURCE_NOT_FOUND")
  (:pca-invalid-args "PCA_INVALID_ARGS")
  (:pca-invalid-duration "PCA_INVALID_DURATION")
  (:pca-access-denied "PCA_ACCESS_DENIED")
  (:slr-not-found "SLR_NOT_FOUND")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure filters common-lisp:nil
                                    ((extended-key-usage :target-type
                                      extended-key-usage-filter-list
                                      :member-name "extendedKeyUsage")
                                     (key-usage :target-type
                                      key-usage-filter-list :member-name
                                      "keyUsage")
                                     (key-types :target-type key-algorithm-list
                                      :member-name "keyTypes")
                                     (export-option :target-type
                                      certificate-export :member-name
                                      "exportOption")
                                     (managed-by :target-type
                                      certificate-managed-by :member-name
                                      "managedBy"))
                                    (:shape-name "Filters"))

(smithy/sdk/shapes:define-output get-account-configuration-response
                                 common-lisp:nil
                                 ((expiry-events :target-type
                                   expiry-events-configuration :member-name
                                   "ExpiryEvents"))
                                 (:shape-name
                                  "GetAccountConfigurationResponse"))

(smithy/sdk/shapes:define-input get-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "GetCertificateRequest"))

(smithy/sdk/shapes:define-output get-certificate-response common-lisp:nil
                                 ((certificate :target-type certificate-body
                                   :member-name "Certificate")
                                  (certificate-chain :target-type
                                   certificate-chain :member-name
                                   "CertificateChain"))
                                 (:shape-name "GetCertificateResponse"))

(smithy/sdk/shapes:define-structure http-redirect common-lisp:nil
                                    ((redirect-from :target-type string
                                      :member-name "RedirectFrom")
                                     (redirect-to :target-type string
                                      :member-name "RedirectTo"))
                                    (:shape-name "HttpRedirect"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input import-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :member-name
                                  "CertificateArn")
                                 (certificate :target-type
                                  certificate-body-blob :required common-lisp:t
                                  :member-name "Certificate")
                                 (private-key :target-type private-key-blob
                                  :required common-lisp:t :member-name
                                  "PrivateKey")
                                 (certificate-chain :target-type
                                  certificate-chain-blob :member-name
                                  "CertificateChain")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "ImportCertificateRequest"))

(smithy/sdk/shapes:define-output import-certificate-response common-lisp:nil
                                 ((certificate-arn :target-type arn
                                   :member-name "CertificateArn"))
                                 (:shape-name "ImportCertificateResponse"))

(smithy/sdk/shapes:define-list in-use-list :member string)

(smithy/sdk/shapes:define-error invalid-args-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidArgsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-arn-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-domain-validation-options-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "InvalidDomainValidationOptionsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidTagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum key-algorithm
    common-lisp:nil
  (:rsa-1024 "RSA_1024")
  (:rsa-2048 "RSA_2048")
  (:rsa-3072 "RSA_3072")
  (:rsa-4096 "RSA_4096")
  (:ec-prime256v1 "EC_prime256v1")
  (:ec-secp384r1 "EC_secp384r1")
  (:ec-secp521r1 "EC_secp521r1"))

(smithy/sdk/shapes:define-list key-algorithm-list :member key-algorithm)

(smithy/sdk/shapes:define-structure key-usage common-lisp:nil
                                    ((name :target-type key-usage-name
                                      :member-name "Name"))
                                    (:shape-name "KeyUsage"))

(smithy/sdk/shapes:define-list key-usage-filter-list :member key-usage-name)

(smithy/sdk/shapes:define-list key-usage-list :member key-usage)

(smithy/sdk/shapes:define-enum key-usage-name
    common-lisp:nil
  (:digital-signature "DIGITAL_SIGNATURE")
  (:non-repudation "NON_REPUDIATION")
  (:key-encipherment "KEY_ENCIPHERMENT")
  (:data-encipherment "DATA_ENCIPHERMENT")
  (:key-agreement "KEY_AGREEMENT")
  (:certificate-signing "CERTIFICATE_SIGNING")
  (:crl-signing "CRL_SIGNING")
  (:enchiper-only "ENCIPHER_ONLY")
  (:decipher-only "DECIPHER_ONLY")
  (:any "ANY")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list key-usage-names :member key-usage-name)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-certificates-request common-lisp:nil
                                ((certificate-statuses :target-type
                                  certificate-statuses :member-name
                                  "CertificateStatuses")
                                 (includes :target-type filters :member-name
                                  "Includes")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-items :target-type max-items :member-name
                                  "MaxItems")
                                 (sort-by :target-type sort-by :member-name
                                  "SortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder"))
                                (:shape-name "ListCertificatesRequest"))

(smithy/sdk/shapes:define-output list-certificates-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (certificate-summary-list :target-type
                                   certificate-summary-list :member-name
                                   "CertificateSummaryList"))
                                 (:shape-name "ListCertificatesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-certificate-request
                                common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "ListTagsForCertificateRequest"))

(smithy/sdk/shapes:define-output list-tags-for-certificate-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForCertificateResponse"))

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type passphrase-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type pca-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type private-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type private-key-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input put-account-configuration-request
                                common-lisp:nil
                                ((expiry-events :target-type
                                  expiry-events-configuration :member-name
                                  "ExpiryEvents")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "PutAccountConfigurationRequest"))

(smithy/sdk/shapes:define-enum record-type
    common-lisp:nil
  (:cname "CNAME"))

(smithy/sdk/shapes:define-input remove-tags-from-certificate-request
                                common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name
                                 "RemoveTagsFromCertificateRequest"))

(smithy/sdk/shapes:define-input renew-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "RenewCertificateRequest"))

(smithy/sdk/shapes:define-enum renewal-eligibility
    common-lisp:nil
  (:eligible "ELIGIBLE")
  (:ineligible "INELIGIBLE"))

(smithy/sdk/shapes:define-enum renewal-status
    common-lisp:nil
  (:pending-auto-renewal "PENDING_AUTO_RENEWAL")
  (:pending-validation "PENDING_VALIDATION")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure renewal-summary common-lisp:nil
                                    ((renewal-status :target-type
                                      renewal-status :required common-lisp:t
                                      :member-name "RenewalStatus")
                                     (domain-validation-options :target-type
                                      domain-validation-list :required
                                      common-lisp:t :member-name
                                      "DomainValidationOptions")
                                     (renewal-status-reason :target-type
                                      failure-reason :member-name
                                      "RenewalStatusReason")
                                     (updated-at :target-type tstamp :required
                                      common-lisp:t :member-name "UpdatedAt"))
                                    (:shape-name "RenewalSummary"))

(smithy/sdk/shapes:define-input request-certificate-request common-lisp:nil
                                ((domain-name :target-type domain-name-string
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (validation-method :target-type
                                  validation-method :member-name
                                  "ValidationMethod")
                                 (subject-alternative-names :target-type
                                  domain-list :member-name
                                  "SubjectAlternativeNames")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken")
                                 (domain-validation-options :target-type
                                  domain-validation-option-list :member-name
                                  "DomainValidationOptions")
                                 (options :target-type certificate-options
                                  :member-name "Options")
                                 (certificate-authority-arn :target-type
                                  pca-arn :member-name
                                  "CertificateAuthorityArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (key-algorithm :target-type key-algorithm
                                  :member-name "KeyAlgorithm")
                                 (managed-by :target-type
                                  certificate-managed-by :member-name
                                  "ManagedBy"))
                                (:shape-name "RequestCertificateRequest"))

(smithy/sdk/shapes:define-output request-certificate-response common-lisp:nil
                                 ((certificate-arn :target-type arn
                                   :member-name "CertificateArn"))
                                 (:shape-name "RequestCertificateResponse"))

(smithy/sdk/shapes:define-error request-in-progress-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input resend-validation-email-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn")
                                 (domain :target-type domain-name-string
                                  :required common-lisp:t :member-name
                                  "Domain")
                                 (validation-domain :target-type
                                  domain-name-string :required common-lisp:t
                                  :member-name "ValidationDomain"))
                                (:shape-name "ResendValidationEmailRequest"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-record common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type record-type :required
                                      common-lisp:t :member-name "Type")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ResourceRecord"))

(smithy/sdk/shapes:define-enum revocation-reason
    common-lisp:nil
  (:unspecified "UNSPECIFIED")
  (:key-compromise "KEY_COMPROMISE")
  (:ca-compromise "CA_COMPROMISE")
  (:affiliation-changed "AFFILIATION_CHANGED")
  (:superceded "SUPERCEDED")
  (:superseded "SUPERSEDED")
  (:cessation-of-operation "CESSATION_OF_OPERATION")
  (:certificate-hold "CERTIFICATE_HOLD")
  (:remove-from-crl "REMOVE_FROM_CRL")
  (:privilege-withdrawn "PRIVILEGE_WITHDRAWN")
  (:a-a-compromise "A_A_COMPROMISE"))

(smithy/sdk/shapes:define-input revoke-certificate-request common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn")
                                 (revocation-reason :target-type
                                  revocation-reason :required common-lisp:t
                                  :member-name "RevocationReason"))
                                (:shape-name "RevokeCertificateRequest"))

(smithy/sdk/shapes:define-output revoke-certificate-response common-lisp:nil
                                 ((certificate-arn :target-type arn
                                   :member-name "CertificateArn"))
                                 (:shape-name "RevokeCertificateResponse"))

(smithy/sdk/shapes:define-type service-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-by
    common-lisp:nil
  (:created-at "CREATED_AT"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-error tag-policy-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TagPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  availability-error-message :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "Throttling") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-certificate-options-request
                                common-lisp:nil
                                ((certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn")
                                 (options :target-type certificate-options
                                  :required common-lisp:t :member-name
                                  "Options"))
                                (:shape-name "UpdateCertificateOptionsRequest"))

(smithy/sdk/shapes:define-list validation-email-list :member string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  validation-exception-message :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-name "ValidationError")
                                (:error-code 400))

(smithy/sdk/shapes:define-type validation-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum validation-method
    common-lisp:nil
  (:email "EMAIL")
  (:dns "DNS")
  (:http "HTTP"))

(smithy/sdk/operation:define-operation add-tags-to-certificate :shape-name
                                       "AddTagsToCertificate" :input
                                       add-tags-to-certificate-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-parameter-exception
                                        invalid-tag-exception
                                        resource-not-found-exception
                                        tag-policy-exception
                                        throttling-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation delete-certificate :shape-name
                                       "DeleteCertificate" :input
                                       delete-certificate-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        invalid-arn-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-certificate :shape-name
                                       "DescribeCertificate" :input
                                       describe-certificate-request :output
                                       describe-certificate-response :errors
                                       (invalid-arn-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation export-certificate :shape-name
                                       "ExportCertificate" :input
                                       export-certificate-request :output
                                       export-certificate-response :errors
                                       (invalid-arn-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-account-configuration :shape-name
                                       "GetAccountConfiguration" :input
                                       common-lisp:null :output
                                       get-account-configuration-response
                                       :errors
                                       (access-denied-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-certificate :shape-name
                                       "GetCertificate" :input
                                       get-certificate-request :output
                                       get-certificate-response :errors
                                       (invalid-arn-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation import-certificate :shape-name
                                       "ImportCertificate" :input
                                       import-certificate-request :output
                                       import-certificate-response :errors
                                       (invalid-arn-exception
                                        invalid-parameter-exception
                                        invalid-tag-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        tag-policy-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation list-certificates :shape-name
                                       "ListCertificates" :input
                                       list-certificates-request :output
                                       list-certificates-response :errors
                                       (invalid-args-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-certificate :shape-name
                                       "ListTagsForCertificate" :input
                                       list-tags-for-certificate-request
                                       :output
                                       list-tags-for-certificate-response
                                       :errors
                                       (invalid-arn-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-account-configuration :shape-name
                                       "PutAccountConfiguration" :input
                                       put-account-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation remove-tags-from-certificate :shape-name
                                       "RemoveTagsFromCertificate" :input
                                       remove-tags-from-certificate-request
                                       :output common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-parameter-exception
                                        invalid-tag-exception
                                        resource-not-found-exception
                                        tag-policy-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation renew-certificate :shape-name
                                       "RenewCertificate" :input
                                       renew-certificate-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation request-certificate :shape-name
                                       "RequestCertificate" :input
                                       request-certificate-request :output
                                       request-certificate-response :errors
                                       (invalid-arn-exception
                                        invalid-domain-validation-options-exception
                                        invalid-parameter-exception
                                        invalid-tag-exception
                                        limit-exceeded-exception
                                        tag-policy-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation resend-validation-email :shape-name
                                       "ResendValidationEmail" :input
                                       resend-validation-email-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-domain-validation-options-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation revoke-certificate :shape-name
                                       "RevokeCertificate" :input
                                       revoke-certificate-request :output
                                       revoke-certificate-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        invalid-arn-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-certificate-options :shape-name
                                       "UpdateCertificateOptions" :input
                                       update-certificate-options-request
                                       :output common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))
