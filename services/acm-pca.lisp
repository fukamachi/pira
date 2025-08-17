(uiop/package:define-package #:pira/acm-pca (:use)
                             (:export #:acmprivate-ca #:asn1printable-string64
                              #:asn1subject #:awspolicy #:access-description
                              #:access-description-list #:access-method
                              #:access-method-type #:account-id #:action-list
                              #:action-type #:api-passthrough #:arn
                              #:audit-report-id #:audit-report-response-format
                              #:audit-report-status #:base64string1to4096
                              #:boolean #:certificate-authorities
                              #:certificate-authority
                              #:certificate-authority-configuration
                              #:certificate-authority-status
                              #:certificate-authority-type
                              #:certificate-authority-usage-mode
                              #:certificate-body #:certificate-body-blob
                              #:certificate-chain #:certificate-chain-blob
                              #:certificate-policy-list #:cname-string
                              #:country-code-string
                              #:create-certificate-authority
                              #:create-certificate-authority-audit-report
                              #:create-permission #:crl-configuration
                              #:crl-distribution-point-extension-configuration
                              #:crl-path-string #:crl-type #:csr-blob
                              #:csr-body #:csr-extensions #:custom-attribute
                              #:custom-attribute-list #:custom-extension
                              #:custom-extension-list
                              #:custom-object-identifier
                              #:delete-certificate-authority
                              #:delete-permission #:delete-policy
                              #:describe-certificate-authority
                              #:describe-certificate-authority-audit-report
                              #:edi-party-name #:extended-key-usage
                              #:extended-key-usage-list
                              #:extended-key-usage-type #:extensions
                              #:failure-reason #:general-name
                              #:general-name-list #:get-certificate
                              #:get-certificate-authority-certificate
                              #:get-certificate-authority-csr #:get-policy
                              #:idempotency-token
                              #:import-certificate-authority-certificate
                              #:integer1to5000 #:issue-certificate
                              #:key-algorithm #:key-storage-security-standard
                              #:key-usage #:list-certificate-authorities
                              #:list-permissions #:list-tags #:max-results
                              #:next-token #:ocsp-configuration #:other-name
                              #:permanent-deletion-time-in-days #:permission
                              #:permission-list #:policy-information
                              #:policy-qualifier-id #:policy-qualifier-info
                              #:policy-qualifier-info-list #:positive-long
                              #:principal #:put-policy #:qualifier
                              #:resource-owner #:restore-certificate-authority
                              #:revocation-configuration #:revocation-reason
                              #:revoke-certificate #:s3bucket-name
                              #:s3bucket-name3to255 #:s3key #:s3object-acl
                              #:signing-algorithm #:string #:string128
                              #:string16 #:string1to256 #:string253 #:string256
                              #:string3 #:string39 #:string40 #:string5
                              #:string64 #:tstamp #:tag
                              #:tag-certificate-authority #:tag-key #:tag-list
                              #:tag-value #:untag-certificate-authority
                              #:update-certificate-authority #:validity
                              #:validity-period-type))
(common-lisp:in-package #:pira/acm-pca)

(smithy/sdk/service:define-service acmprivate-ca :shape-name "ACMPrivateCA"
                                   :version "2017-08-22" :title
                                   "AWS Certificate Manager Private Certificate Authority"
                                   :operations
                                   '(create-certificate-authority
                                     create-certificate-authority-audit-report
                                     create-permission
                                     delete-certificate-authority
                                     delete-permission delete-policy
                                     describe-certificate-authority
                                     describe-certificate-authority-audit-report
                                     get-certificate
                                     get-certificate-authority-certificate
                                     get-certificate-authority-csr get-policy
                                     import-certificate-authority-certificate
                                     issue-certificate
                                     list-certificate-authorities
                                     list-permissions list-tags put-policy
                                     restore-certificate-authority
                                     revoke-certificate
                                     tag-certificate-authority
                                     untag-certificate-authority
                                     update-certificate-authority)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "ACM PCA")
                                      ("arnNamespace" . "acm-pca")
                                      ("cloudFormationName" . "ACMPCA")
                                      ("cloudTrailEventSource"
                                       . "acm-pca.amazonaws.com")
                                      ("docId" . "acm-pca-2017-08-22")
                                      ("endpointPrefix" . "acm-pca"))
                                     ("aws.auth#sigv4" ("name" . "acm-pca"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type asn1printable-string64
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asn1subject common-lisp:nil
                                    ((country :target-type country-code-string
                                      :member-name "Country")
                                     (organization :target-type string64
                                      :member-name "Organization")
                                     (organizational-unit :target-type string64
                                      :member-name "OrganizationalUnit")
                                     (distinguished-name-qualifier :target-type
                                      asn1printable-string64 :member-name
                                      "DistinguishedNameQualifier")
                                     (state :target-type string128 :member-name
                                      "State")
                                     (common-name :target-type string64
                                      :member-name "CommonName")
                                     (serial-number :target-type
                                      asn1printable-string64 :member-name
                                      "SerialNumber")
                                     (locality :target-type string128
                                      :member-name "Locality")
                                     (title :target-type string64 :member-name
                                      "Title")
                                     (surname :target-type string40
                                      :member-name "Surname")
                                     (given-name :target-type string16
                                      :member-name "GivenName")
                                     (initials :target-type string5
                                      :member-name "Initials")
                                     (pseudonym :target-type string128
                                      :member-name "Pseudonym")
                                     (generation-qualifier :target-type string3
                                      :member-name "GenerationQualifier")
                                     (custom-attributes :target-type
                                      custom-attribute-list :member-name
                                      "CustomAttributes"))
                                    (:shape-name "ASN1Subject"))

(smithy/sdk/shapes:define-type awspolicy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure access-description common-lisp:nil
                                    ((access-method :target-type access-method
                                      :required common-lisp:t :member-name
                                      "AccessMethod")
                                     (access-location :target-type general-name
                                      :required common-lisp:t :member-name
                                      "AccessLocation"))
                                    (:shape-name "AccessDescription"))

(smithy/sdk/shapes:define-list access-description-list :member
                               access-description)

(smithy/sdk/shapes:define-structure access-method common-lisp:nil
                                    ((custom-object-identifier :target-type
                                      custom-object-identifier :member-name
                                      "CustomObjectIdentifier")
                                     (access-method-type :target-type
                                      access-method-type :member-name
                                      "AccessMethodType"))
                                    (:shape-name "AccessMethod"))

(smithy/sdk/shapes:define-enum access-method-type
    common-lisp:nil
  (:ca-repository "CA_REPOSITORY")
  (:resource-pki-manifest "RESOURCE_PKI_MANIFEST")
  (:resource-pki-notify "RESOURCE_PKI_NOTIFY"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list action-list :member action-type)

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:issue-certificate "IssueCertificate")
  (:get-certificate "GetCertificate")
  (:list-permissions "ListPermissions"))

(smithy/sdk/shapes:define-structure api-passthrough common-lisp:nil
                                    ((extensions :target-type extensions
                                      :member-name "Extensions")
                                     (subject :target-type asn1subject
                                      :member-name "Subject"))
                                    (:shape-name "ApiPassthrough"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type audit-report-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum audit-report-response-format
    common-lisp:nil
  (:json "JSON")
  (:csv "CSV"))

(smithy/sdk/shapes:define-enum audit-report-status
    common-lisp:nil
  (:creating "CREATING")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type base64string1to4096
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list certificate-authorities :member
                               certificate-authority)

(smithy/sdk/shapes:define-structure certificate-authority common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (owner-account :target-type account-id
                                      :member-name "OwnerAccount")
                                     (created-at :target-type tstamp
                                      :member-name "CreatedAt")
                                     (last-state-change-at :target-type tstamp
                                      :member-name "LastStateChangeAt")
                                     (type :target-type
                                      certificate-authority-type :member-name
                                      "Type")
                                     (serial :target-type string :member-name
                                      "Serial")
                                     (status :target-type
                                      certificate-authority-status :member-name
                                      "Status")
                                     (not-before :target-type tstamp
                                      :member-name "NotBefore")
                                     (not-after :target-type tstamp
                                      :member-name "NotAfter")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason")
                                     (certificate-authority-configuration
                                      :target-type
                                      certificate-authority-configuration
                                      :member-name
                                      "CertificateAuthorityConfiguration")
                                     (revocation-configuration :target-type
                                      revocation-configuration :member-name
                                      "RevocationConfiguration")
                                     (restorable-until :target-type tstamp
                                      :member-name "RestorableUntil")
                                     (key-storage-security-standard
                                      :target-type
                                      key-storage-security-standard
                                      :member-name
                                      "KeyStorageSecurityStandard")
                                     (usage-mode :target-type
                                      certificate-authority-usage-mode
                                      :member-name "UsageMode"))
                                    (:shape-name "CertificateAuthority"))

(smithy/sdk/shapes:define-structure certificate-authority-configuration
                                    common-lisp:nil
                                    ((key-algorithm :target-type key-algorithm
                                      :required common-lisp:t :member-name
                                      "KeyAlgorithm")
                                     (signing-algorithm :target-type
                                      signing-algorithm :required common-lisp:t
                                      :member-name "SigningAlgorithm")
                                     (subject :target-type asn1subject
                                      :required common-lisp:t :member-name
                                      "Subject")
                                     (csr-extensions :target-type
                                      csr-extensions :member-name
                                      "CsrExtensions"))
                                    (:shape-name
                                     "CertificateAuthorityConfiguration"))

(smithy/sdk/shapes:define-enum certificate-authority-status
    common-lisp:nil
  (:creating "CREATING")
  (:pending-certificate "PENDING_CERTIFICATE")
  (:active "ACTIVE")
  (:deleted "DELETED")
  (:disabled "DISABLED")
  (:expired "EXPIRED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum certificate-authority-type
    common-lisp:nil
  (:root "ROOT")
  (:subordinate "SUBORDINATE"))

(smithy/sdk/shapes:define-enum certificate-authority-usage-mode
    common-lisp:nil
  (:general-purpose "GENERAL_PURPOSE")
  (:short-lived-certificate "SHORT_LIVED_CERTIFICATE"))

(smithy/sdk/shapes:define-type certificate-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-body-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type certificate-chain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-chain-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error certificate-mismatch-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "CertificateMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list certificate-policy-list :member
                               policy-information)

(smithy/sdk/shapes:define-type cname-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type country-code-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 create-certificate-authority-audit-report-request common-lisp:nil
 ((certificate-authority-arn :target-type arn :required common-lisp:t
   :member-name "CertificateAuthorityArn")
  (s3bucket-name :target-type s3bucket-name :required common-lisp:t
   :member-name "S3BucketName")
  (audit-report-response-format :target-type audit-report-response-format
   :required common-lisp:t :member-name "AuditReportResponseFormat"))
 (:shape-name "CreateCertificateAuthorityAuditReportRequest"))

(smithy/sdk/shapes:define-output
 create-certificate-authority-audit-report-response common-lisp:nil
 ((audit-report-id :target-type audit-report-id :member-name "AuditReportId")
  (s3key :target-type s3key :member-name "S3Key"))
 (:shape-name "CreateCertificateAuthorityAuditReportResponse"))

(smithy/sdk/shapes:define-input create-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-configuration
                                  :target-type
                                  certificate-authority-configuration :required
                                  common-lisp:t :member-name
                                  "CertificateAuthorityConfiguration")
                                 (revocation-configuration :target-type
                                  revocation-configuration :member-name
                                  "RevocationConfiguration")
                                 (certificate-authority-type :target-type
                                  certificate-authority-type :required
                                  common-lisp:t :member-name
                                  "CertificateAuthorityType")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken")
                                 (key-storage-security-standard :target-type
                                  key-storage-security-standard :member-name
                                  "KeyStorageSecurityStandard")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (usage-mode :target-type
                                  certificate-authority-usage-mode :member-name
                                  "UsageMode"))
                                (:shape-name
                                 "CreateCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-output create-certificate-authority-response
                                 common-lisp:nil
                                 ((certificate-authority-arn :target-type arn
                                   :member-name "CertificateAuthorityArn"))
                                 (:shape-name
                                  "CreateCertificateAuthorityResponse"))

(smithy/sdk/shapes:define-input create-permission-request common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "Principal")
                                 (source-account :target-type account-id
                                  :member-name "SourceAccount")
                                 (actions :target-type action-list :required
                                  common-lisp:t :member-name "Actions"))
                                (:shape-name "CreatePermissionRequest"))

(smithy/sdk/shapes:define-structure crl-configuration common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (expiration-in-days :target-type
                                      integer1to5000 :member-name
                                      "ExpirationInDays")
                                     (custom-cname :target-type cname-string
                                      :member-name "CustomCname")
                                     (s3bucket-name :target-type
                                      s3bucket-name3to255 :member-name
                                      "S3BucketName")
                                     (s3object-acl :target-type s3object-acl
                                      :member-name "S3ObjectAcl")
                                     (crl-distribution-point-extension-configuration
                                      :target-type
                                      crl-distribution-point-extension-configuration
                                      :member-name
                                      "CrlDistributionPointExtensionConfiguration")
                                     (crl-type :target-type crl-type
                                      :member-name "CrlType")
                                     (custom-path :target-type crl-path-string
                                      :member-name "CustomPath"))
                                    (:shape-name "CrlConfiguration"))

(smithy/sdk/shapes:define-structure
 crl-distribution-point-extension-configuration common-lisp:nil
 ((omit-extension :target-type boolean :required common-lisp:t :member-name
   "OmitExtension"))
 (:shape-name "CrlDistributionPointExtensionConfiguration"))

(smithy/sdk/shapes:define-type crl-path-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum crl-type
    common-lisp:nil
  (:complete "COMPLETE")
  (:partitioned "PARTITIONED"))

(smithy/sdk/shapes:define-type csr-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type csr-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure csr-extensions common-lisp:nil
                                    ((key-usage :target-type key-usage
                                      :member-name "KeyUsage")
                                     (subject-information-access :target-type
                                      access-description-list :member-name
                                      "SubjectInformationAccess"))
                                    (:shape-name "CsrExtensions"))

(smithy/sdk/shapes:define-structure custom-attribute common-lisp:nil
                                    ((object-identifier :target-type
                                      custom-object-identifier :required
                                      common-lisp:t :member-name
                                      "ObjectIdentifier")
                                     (value :target-type string1to256 :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "CustomAttribute"))

(smithy/sdk/shapes:define-list custom-attribute-list :member custom-attribute)

(smithy/sdk/shapes:define-structure custom-extension common-lisp:nil
                                    ((object-identifier :target-type
                                      custom-object-identifier :required
                                      common-lisp:t :member-name
                                      "ObjectIdentifier")
                                     (value :target-type base64string1to4096
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (critical :target-type boolean
                                      :member-name "Critical"))
                                    (:shape-name "CustomExtension"))

(smithy/sdk/shapes:define-list custom-extension-list :member custom-extension)

(smithy/sdk/shapes:define-type custom-object-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (permanent-deletion-time-in-days :target-type
                                  permanent-deletion-time-in-days :member-name
                                  "PermanentDeletionTimeInDays"))
                                (:shape-name
                                 "DeleteCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-input delete-permission-request common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "Principal")
                                 (source-account :target-type account-id
                                  :member-name "SourceAccount"))
                                (:shape-name "DeletePermissionRequest"))

(smithy/sdk/shapes:define-input delete-policy-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "DeletePolicyRequest"))

(smithy/sdk/shapes:define-input
 describe-certificate-authority-audit-report-request common-lisp:nil
 ((certificate-authority-arn :target-type arn :required common-lisp:t
   :member-name "CertificateAuthorityArn")
  (audit-report-id :target-type audit-report-id :required common-lisp:t
   :member-name "AuditReportId"))
 (:shape-name "DescribeCertificateAuthorityAuditReportRequest"))

(smithy/sdk/shapes:define-output
 describe-certificate-authority-audit-report-response common-lisp:nil
 ((audit-report-status :target-type audit-report-status :member-name
   "AuditReportStatus")
  (s3bucket-name :target-type s3bucket-name :member-name "S3BucketName")
  (s3key :target-type s3key :member-name "S3Key")
  (created-at :target-type tstamp :member-name "CreatedAt"))
 (:shape-name "DescribeCertificateAuthorityAuditReportResponse"))

(smithy/sdk/shapes:define-input describe-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn"))
                                (:shape-name
                                 "DescribeCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-output describe-certificate-authority-response
                                 common-lisp:nil
                                 ((certificate-authority :target-type
                                   certificate-authority :member-name
                                   "CertificateAuthority"))
                                 (:shape-name
                                  "DescribeCertificateAuthorityResponse"))

(smithy/sdk/shapes:define-structure edi-party-name common-lisp:nil
                                    ((party-name :target-type string256
                                      :required common-lisp:t :member-name
                                      "PartyName")
                                     (name-assigner :target-type string256
                                      :member-name "NameAssigner"))
                                    (:shape-name "EdiPartyName"))

(smithy/sdk/shapes:define-structure extended-key-usage common-lisp:nil
                                    ((extended-key-usage-type :target-type
                                      extended-key-usage-type :member-name
                                      "ExtendedKeyUsageType")
                                     (extended-key-usage-object-identifier
                                      :target-type custom-object-identifier
                                      :member-name
                                      "ExtendedKeyUsageObjectIdentifier"))
                                    (:shape-name "ExtendedKeyUsage"))

(smithy/sdk/shapes:define-list extended-key-usage-list :member
                               extended-key-usage)

(smithy/sdk/shapes:define-enum extended-key-usage-type
    common-lisp:nil
  (:server-auth "SERVER_AUTH")
  (:client-auth "CLIENT_AUTH")
  (:code-signing "CODE_SIGNING")
  (:email-protection "EMAIL_PROTECTION")
  (:time-stamping "TIME_STAMPING")
  (:ocsp-signing "OCSP_SIGNING")
  (:smart-card-login "SMART_CARD_LOGIN")
  (:document-signing "DOCUMENT_SIGNING")
  (:certificate-transparency "CERTIFICATE_TRANSPARENCY"))

(smithy/sdk/shapes:define-structure extensions common-lisp:nil
                                    ((certificate-policies :target-type
                                      certificate-policy-list :member-name
                                      "CertificatePolicies")
                                     (extended-key-usage :target-type
                                      extended-key-usage-list :member-name
                                      "ExtendedKeyUsage")
                                     (key-usage :target-type key-usage
                                      :member-name "KeyUsage")
                                     (subject-alternative-names :target-type
                                      general-name-list :member-name
                                      "SubjectAlternativeNames")
                                     (custom-extensions :target-type
                                      custom-extension-list :member-name
                                      "CustomExtensions"))
                                    (:shape-name "Extensions"))

(smithy/sdk/shapes:define-enum failure-reason
    common-lisp:nil
  (:request-timed-out "REQUEST_TIMED_OUT")
  (:unsupported-algorithm "UNSUPPORTED_ALGORITHM")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure general-name common-lisp:nil
                                    ((other-name :target-type other-name
                                      :member-name "OtherName")
                                     (rfc822name :target-type string256
                                      :member-name "Rfc822Name")
                                     (dns-name :target-type string253
                                      :member-name "DnsName")
                                     (directory-name :target-type asn1subject
                                      :member-name "DirectoryName")
                                     (edi-party-name :target-type
                                      edi-party-name :member-name
                                      "EdiPartyName")
                                     (uniform-resource-identifier :target-type
                                      string253 :member-name
                                      "UniformResourceIdentifier")
                                     (ip-address :target-type string39
                                      :member-name "IpAddress")
                                     (registered-id :target-type
                                      custom-object-identifier :member-name
                                      "RegisteredId"))
                                    (:shape-name "GeneralName"))

(smithy/sdk/shapes:define-list general-name-list :member general-name)

(smithy/sdk/shapes:define-input get-certificate-authority-certificate-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn"))
                                (:shape-name
                                 "GetCertificateAuthorityCertificateRequest"))

(smithy/sdk/shapes:define-output get-certificate-authority-certificate-response
                                 common-lisp:nil
                                 ((certificate :target-type certificate-body
                                   :member-name "Certificate")
                                  (certificate-chain :target-type
                                   certificate-chain :member-name
                                   "CertificateChain"))
                                 (:shape-name
                                  "GetCertificateAuthorityCertificateResponse"))

(smithy/sdk/shapes:define-input get-certificate-authority-csr-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn"))
                                (:shape-name
                                 "GetCertificateAuthorityCsrRequest"))

(smithy/sdk/shapes:define-output get-certificate-authority-csr-response
                                 common-lisp:nil
                                 ((csr :target-type csr-body :member-name
                                   "Csr"))
                                 (:shape-name
                                  "GetCertificateAuthorityCsrResponse"))

(smithy/sdk/shapes:define-input get-certificate-request common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (certificate-arn :target-type arn :required
                                  common-lisp:t :member-name "CertificateArn"))
                                (:shape-name "GetCertificateRequest"))

(smithy/sdk/shapes:define-output get-certificate-response common-lisp:nil
                                 ((certificate :target-type certificate-body
                                   :member-name "Certificate")
                                  (certificate-chain :target-type
                                   certificate-chain :member-name
                                   "CertificateChain"))
                                 (:shape-name "GetCertificateResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy :target-type awspolicy :member-name
                                   "Policy"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 import-certificate-authority-certificate-request common-lisp:nil
 ((certificate-authority-arn :target-type arn :required common-lisp:t
   :member-name "CertificateAuthorityArn")
  (certificate :target-type certificate-body-blob :required common-lisp:t
   :member-name "Certificate")
  (certificate-chain :target-type certificate-chain-blob :member-name
   "CertificateChain"))
 (:shape-name "ImportCertificateAuthorityCertificateRequest"))

(smithy/sdk/shapes:define-type integer1to5000 smithy/sdk/smithy-types:integer)

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

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidRequestException")
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

(smithy/sdk/shapes:define-input issue-certificate-request common-lisp:nil
                                ((api-passthrough :target-type api-passthrough
                                  :member-name "ApiPassthrough")
                                 (certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (csr :target-type csr-blob :required
                                  common-lisp:t :member-name "Csr")
                                 (signing-algorithm :target-type
                                  signing-algorithm :required common-lisp:t
                                  :member-name "SigningAlgorithm")
                                 (template-arn :target-type arn :member-name
                                  "TemplateArn")
                                 (validity :target-type validity :required
                                  common-lisp:t :member-name "Validity")
                                 (validity-not-before :target-type validity
                                  :member-name "ValidityNotBefore")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "IssueCertificateRequest"))

(smithy/sdk/shapes:define-output issue-certificate-response common-lisp:nil
                                 ((certificate-arn :target-type arn
                                   :member-name "CertificateArn"))
                                 (:shape-name "IssueCertificateResponse"))

(smithy/sdk/shapes:define-enum key-algorithm
    common-lisp:nil
  (:rsa-2048 "RSA_2048")
  (:rsa-3072 "RSA_3072")
  (:rsa-4096 "RSA_4096")
  (:ec-prime256v1 "EC_prime256v1")
  (:ec-secp384r1 "EC_secp384r1")
  (:ec-secp521r1 "EC_secp521r1")
  (:sm2 "SM2"))

(smithy/sdk/shapes:define-enum key-storage-security-standard
    common-lisp:nil
  (:fips-140-2-level-2-or-higher "FIPS_140_2_LEVEL_2_OR_HIGHER")
  (:fips-140-2-level-3-or-higher "FIPS_140_2_LEVEL_3_OR_HIGHER")
  (:ccpc-level-1-or-higher "CCPC_LEVEL_1_OR_HIGHER"))

(smithy/sdk/shapes:define-structure key-usage common-lisp:nil
                                    ((digital-signature :target-type boolean
                                      :member-name "DigitalSignature")
                                     (non-repudiation :target-type boolean
                                      :member-name "NonRepudiation")
                                     (key-encipherment :target-type boolean
                                      :member-name "KeyEncipherment")
                                     (data-encipherment :target-type boolean
                                      :member-name "DataEncipherment")
                                     (key-agreement :target-type boolean
                                      :member-name "KeyAgreement")
                                     (key-cert-sign :target-type boolean
                                      :member-name "KeyCertSign")
                                     (crlsign :target-type boolean :member-name
                                      "CRLSign")
                                     (encipher-only :target-type boolean
                                      :member-name "EncipherOnly")
                                     (decipher-only :target-type boolean
                                      :member-name "DecipherOnly"))
                                    (:shape-name "KeyUsage"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-certificate-authorities-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (resource-owner :target-type resource-owner
                                  :member-name "ResourceOwner"))
                                (:shape-name
                                 "ListCertificateAuthoritiesRequest"))

(smithy/sdk/shapes:define-output list-certificate-authorities-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (certificate-authorities :target-type
                                   certificate-authorities :member-name
                                   "CertificateAuthorities"))
                                 (:shape-name
                                  "ListCertificateAuthoritiesResponse"))

(smithy/sdk/shapes:define-input list-permissions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn"))
                                (:shape-name "ListPermissionsRequest"))

(smithy/sdk/shapes:define-output list-permissions-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (permissions :target-type permission-list
                                   :member-name "Permissions"))
                                 (:shape-name "ListPermissionsResponse"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-error lockout-prevented-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "LockoutPreventedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error malformed-csrexception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "MalformedCSRException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error malformed-certificate-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "MalformedCertificateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ocsp-configuration common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (ocsp-custom-cname :target-type
                                      cname-string :member-name
                                      "OcspCustomCname"))
                                    (:shape-name "OcspConfiguration"))

(smithy/sdk/shapes:define-structure other-name common-lisp:nil
                                    ((type-id :target-type
                                      custom-object-identifier :required
                                      common-lisp:t :member-name "TypeId")
                                     (value :target-type string256 :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "OtherName"))

(smithy/sdk/shapes:define-type permanent-deletion-time-in-days
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure permission common-lisp:nil
                                    ((certificate-authority-arn :target-type
                                      arn :member-name
                                      "CertificateAuthorityArn")
                                     (created-at :target-type tstamp
                                      :member-name "CreatedAt")
                                     (principal :target-type principal
                                      :member-name "Principal")
                                     (source-account :target-type account-id
                                      :member-name "SourceAccount")
                                     (actions :target-type action-list
                                      :member-name "Actions")
                                     (policy :target-type awspolicy
                                      :member-name "Policy"))
                                    (:shape-name "Permission"))

(smithy/sdk/shapes:define-error permission-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "PermissionAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list permission-list :member permission)

(smithy/sdk/shapes:define-structure policy-information common-lisp:nil
                                    ((cert-policy-id :target-type
                                      custom-object-identifier :required
                                      common-lisp:t :member-name
                                      "CertPolicyId")
                                     (policy-qualifiers :target-type
                                      policy-qualifier-info-list :member-name
                                      "PolicyQualifiers"))
                                    (:shape-name "PolicyInformation"))

(smithy/sdk/shapes:define-enum policy-qualifier-id
    common-lisp:nil
  (:cps "CPS"))

(smithy/sdk/shapes:define-structure policy-qualifier-info common-lisp:nil
                                    ((policy-qualifier-id :target-type
                                      policy-qualifier-id :required
                                      common-lisp:t :member-name
                                      "PolicyQualifierId")
                                     (qualifier :target-type qualifier
                                      :required common-lisp:t :member-name
                                      "Qualifier"))
                                    (:shape-name "PolicyQualifierInfo"))

(smithy/sdk/shapes:define-list policy-qualifier-info-list :member
                               policy-qualifier-info)

(smithy/sdk/shapes:define-type positive-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-policy-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (policy :target-type awspolicy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutPolicyRequest"))

(smithy/sdk/shapes:define-structure qualifier common-lisp:nil
                                    ((cps-uri :target-type string256 :required
                                      common-lisp:t :member-name "CpsUri"))
                                    (:shape-name "Qualifier"))

(smithy/sdk/shapes:define-error request-already-processed-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "RequestAlreadyProcessedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error request-failed-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error request-in-progress-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum resource-owner
    common-lisp:nil
  (:self "SELF")
  (:other-accounts "OTHER_ACCOUNTS"))

(smithy/sdk/shapes:define-input restore-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn"))
                                (:shape-name
                                 "RestoreCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-structure revocation-configuration common-lisp:nil
                                    ((crl-configuration :target-type
                                      crl-configuration :member-name
                                      "CrlConfiguration")
                                     (ocsp-configuration :target-type
                                      ocsp-configuration :member-name
                                      "OcspConfiguration"))
                                    (:shape-name "RevocationConfiguration"))

(smithy/sdk/shapes:define-enum revocation-reason
    common-lisp:nil
  (:unspecified "UNSPECIFIED")
  (:key-compromise "KEY_COMPROMISE")
  (:certificate-authority-compromise "CERTIFICATE_AUTHORITY_COMPROMISE")
  (:affiliation-changed "AFFILIATION_CHANGED")
  (:superseded "SUPERSEDED")
  (:cessation-of-operation "CESSATION_OF_OPERATION")
  (:privilege-withdrawn "PRIVILEGE_WITHDRAWN")
  (:a-a-compromise "A_A_COMPROMISE"))

(smithy/sdk/shapes:define-input revoke-certificate-request common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (certificate-serial :target-type string128
                                  :required common-lisp:t :member-name
                                  "CertificateSerial")
                                 (revocation-reason :target-type
                                  revocation-reason :required common-lisp:t
                                  :member-name "RevocationReason"))
                                (:shape-name "RevokeCertificateRequest"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name3to255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3object-acl
    common-lisp:nil
  (:public-read "PUBLIC_READ")
  (:bucket-owner-full-control "BUCKET_OWNER_FULL_CONTROL"))

(smithy/sdk/shapes:define-enum signing-algorithm
    common-lisp:nil
  (:sha256withecdsa "SHA256WITHECDSA")
  (:sha384withecdsa "SHA384WITHECDSA")
  (:sha512withecdsa "SHA512WITHECDSA")
  (:sha256withrsa "SHA256WITHRSA")
  (:sha384withrsa "SHA384WITHRSA")
  (:sha512withrsa "SHA512WITHRSA")
  (:sm3withsm2 "SM3WITHSM2"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string16 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string1to256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string253 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string39 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string40 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string5 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tstamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-input tag-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name
                                 "UntagCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-input update-certificate-authority-request
                                common-lisp:nil
                                ((certificate-authority-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (revocation-configuration :target-type
                                  revocation-configuration :member-name
                                  "RevocationConfiguration")
                                 (status :target-type
                                  certificate-authority-status :member-name
                                  "Status"))
                                (:shape-name
                                 "UpdateCertificateAuthorityRequest"))

(smithy/sdk/shapes:define-structure validity common-lisp:nil
                                    ((value :target-type positive-long
                                      :required common-lisp:t :member-name
                                      "Value")
                                     (type :target-type validity-period-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "Validity"))

(smithy/sdk/shapes:define-enum validity-period-type
    common-lisp:nil
  (:end-date "END_DATE")
  (:absolute "ABSOLUTE")
  (:days "DAYS")
  (:months "MONTHS")
  (:years "YEARS"))

(smithy/sdk/operation:define-operation create-certificate-authority :shape-name
                                       "CreateCertificateAuthority" :input
                                       create-certificate-authority-request
                                       :output
                                       create-certificate-authority-response
                                       :errors
                                       (invalid-args-exception
                                        invalid-policy-exception
                                        invalid-tag-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 create-certificate-authority-audit-report :shape-name
 "CreateCertificateAuthorityAuditReport" :input
 create-certificate-authority-audit-report-request :output
 create-certificate-authority-audit-report-response :errors
 (invalid-args-exception invalid-arn-exception invalid-state-exception
  request-failed-exception request-in-progress-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation create-permission :shape-name
                                       "CreatePermission" :input
                                       create-permission-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        permission-already-exists-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-certificate-authority :shape-name
                                       "DeleteCertificateAuthority" :input
                                       delete-certificate-authority-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-permission :shape-name
                                       "DeletePermission" :input
                                       delete-permission-request :output
                                       common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-state-exception
                                        lockout-prevented-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-certificate-authority
                                       :shape-name
                                       "DescribeCertificateAuthority" :input
                                       describe-certificate-authority-request
                                       :output
                                       describe-certificate-authority-response
                                       :errors
                                       (invalid-arn-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 describe-certificate-authority-audit-report :shape-name
 "DescribeCertificateAuthorityAuditReport" :input
 describe-certificate-authority-audit-report-request :output
 describe-certificate-authority-audit-report-response :errors
 (invalid-args-exception invalid-arn-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation get-certificate :shape-name
                                       "GetCertificate" :input
                                       get-certificate-request :output
                                       get-certificate-response :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        request-failed-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-certificate-authority-certificate
                                       :shape-name
                                       "GetCertificateAuthorityCertificate"
                                       :input
                                       get-certificate-authority-certificate-request
                                       :output
                                       get-certificate-authority-certificate-response
                                       :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-certificate-authority-csr
                                       :shape-name "GetCertificateAuthorityCsr"
                                       :input
                                       get-certificate-authority-csr-request
                                       :output
                                       get-certificate-authority-csr-response
                                       :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        request-failed-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation import-certificate-authority-certificate
                                       :shape-name
                                       "ImportCertificateAuthorityCertificate"
                                       :input
                                       import-certificate-authority-certificate-request
                                       :output common-lisp:null :errors
                                       (certificate-mismatch-exception
                                        concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        malformed-certificate-exception
                                        request-failed-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation issue-certificate :shape-name
                                       "IssueCertificate" :input
                                       issue-certificate-request :output
                                       issue-certificate-response :errors
                                       (invalid-args-exception
                                        invalid-arn-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        malformed-csrexception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-certificate-authorities :shape-name
                                       "ListCertificateAuthorities" :input
                                       list-certificate-authorities-request
                                       :output
                                       list-certificate-authorities-response
                                       :errors (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-permissions :shape-name
                                       "ListPermissions" :input
                                       list-permissions-request :output
                                       list-permissions-response :errors
                                       (invalid-arn-exception
                                        invalid-next-token-exception
                                        invalid-state-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-policy :shape-name "PutPolicy"
                                       :input put-policy-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-policy-exception
                                        invalid-state-exception
                                        lockout-prevented-exception
                                        request-failed-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation restore-certificate-authority
                                       :shape-name
                                       "RestoreCertificateAuthority" :input
                                       restore-certificate-authority-request
                                       :output common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation revoke-certificate :shape-name
                                       "RevokeCertificate" :input
                                       revoke-certificate-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-arn-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        request-already-processed-exception
                                        request-failed-exception
                                        request-in-progress-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-certificate-authority :shape-name
                                       "TagCertificateAuthority" :input
                                       tag-certificate-authority-request
                                       :output common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        invalid-tag-exception
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-certificate-authority :shape-name
                                       "UntagCertificateAuthority" :input
                                       untag-certificate-authority-request
                                       :output common-lisp:null :errors
                                       (invalid-arn-exception
                                        invalid-state-exception
                                        invalid-tag-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-certificate-authority :shape-name
                                       "UpdateCertificateAuthority" :input
                                       update-certificate-authority-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        invalid-args-exception
                                        invalid-arn-exception
                                        invalid-policy-exception
                                        invalid-state-exception
                                        resource-not-found-exception))
