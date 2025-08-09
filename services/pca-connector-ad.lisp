(uiop/package:define-package #:pira/pca-connector-ad (:use)
                             (:export #:access-control-entry
                              #:access-control-entry-list
                              #:access-control-entry-summary
                              #:access-denied-exception #:access-right
                              #:access-rights #:application-policies
                              #:application-policy #:application-policy-list
                              #:application-policy-type
                              #:certificate-authority-arn
                              #:certificate-validity #:client-compatibility-v2
                              #:client-compatibility-v3
                              #:client-compatibility-v4 #:client-token
                              #:conflict-exception #:connector #:connector-arn
                              #:connector-list #:connector-resource
                              #:connector-status #:connector-status-reason
                              #:connector-summary #:create-connector
                              #:create-connector-request
                              #:create-connector-response
                              #:create-directory-registration
                              #:create-directory-registration-request
                              #:create-directory-registration-response
                              #:create-service-principal-name
                              #:create-service-principal-name-request
                              #:create-template
                              #:create-template-group-access-control-entry
                              #:create-template-group-access-control-entry-request
                              #:create-template-request
                              #:create-template-response
                              #:crypto-providers-list
                              #:custom-object-identifier #:delete-connector
                              #:delete-connector-request
                              #:delete-directory-registration
                              #:delete-directory-registration-request
                              #:delete-service-principal-name
                              #:delete-service-principal-name-request
                              #:delete-template
                              #:delete-template-group-access-control-entry
                              #:delete-template-group-access-control-entry-request
                              #:delete-template-request #:directory-id
                              #:directory-registration
                              #:directory-registration-arn
                              #:directory-registration-list
                              #:directory-registration-resource
                              #:directory-registration-status
                              #:directory-registration-status-reason
                              #:directory-registration-summary #:display-name
                              #:enrollment-flags-v2 #:enrollment-flags-v3
                              #:enrollment-flags-v4 #:extensions-v2
                              #:extensions-v3 #:extensions-v4
                              #:general-flags-v2 #:general-flags-v3
                              #:general-flags-v4 #:get-connector
                              #:get-connector-request #:get-connector-response
                              #:get-directory-registration
                              #:get-directory-registration-request
                              #:get-directory-registration-response
                              #:get-service-principal-name
                              #:get-service-principal-name-request
                              #:get-service-principal-name-response
                              #:get-template
                              #:get-template-group-access-control-entry
                              #:get-template-group-access-control-entry-request
                              #:get-template-group-access-control-entry-response
                              #:get-template-request #:get-template-response
                              #:group-security-identifier #:hash-algorithm
                              #:internal-server-exception #:ip-address-type
                              #:key-spec #:key-usage #:key-usage-flags
                              #:key-usage-property #:key-usage-property-flags
                              #:key-usage-property-type #:list-connectors
                              #:list-connectors-request
                              #:list-connectors-response
                              #:list-directory-registrations
                              #:list-directory-registrations-request
                              #:list-directory-registrations-response
                              #:list-service-principal-names
                              #:list-service-principal-names-request
                              #:list-service-principal-names-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-template-group-access-control-entries
                              #:list-template-group-access-control-entries-request
                              #:list-template-group-access-control-entries-response
                              #:list-templates #:list-templates-request
                              #:list-templates-response #:max-results
                              #:next-token #:pca-connector-ad
                              #:private-key-algorithm
                              #:private-key-attributes-v2
                              #:private-key-attributes-v3
                              #:private-key-attributes-v4
                              #:private-key-flags-v2 #:private-key-flags-v3
                              #:private-key-flags-v4
                              #:resource-not-found-exception
                              #:security-group-id #:security-group-id-list
                              #:service-principal-name
                              #:service-principal-name-list
                              #:service-principal-name-resource
                              #:service-principal-name-status
                              #:service-principal-name-status-reason
                              #:service-principal-name-summary
                              #:service-quota-exceeded-exception
                              #:subject-name-flags-v2 #:subject-name-flags-v3
                              #:subject-name-flags-v4 #:tag-key-list
                              #:tag-resource #:tag-resource-request #:tags
                              #:template #:template-arn #:template-definition
                              #:template-group-access-control-entry-resource
                              #:template-list #:template-name
                              #:template-name-list #:template-resource
                              #:template-revision #:template-status
                              #:template-summary #:template-v2 #:template-v3
                              #:template-v4 #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:update-template
                              #:update-template-group-access-control-entry
                              #:update-template-group-access-control-entry-request
                              #:update-template-request #:validation-exception
                              #:validation-exception-reason #:validity-period
                              #:validity-period-type #:vpc-information))
(common-lisp:in-package #:pira/pca-connector-ad)

(smithy/sdk/service:define-service pca-connector-ad :shape-name
                                   "PcaConnectorAd" :version "2018-05-10"
                                   :title "PcaConnectorAd" :traits
                                   '(("aws.api#service"
                                      ("arnNamespace" . "pca-connector-ad")
                                      ("cloudFormationName" . "PCAConnectorAD")
                                      ("sdkId" . "Pca Connector Ad")
                                      ("serviceName" . "pca-connector-ad")
                                      ("cloudTrailEventSource"
                                       . "pca-connector-ad.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "pca-connector-ad"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure access-control-entry common-lisp:nil
                                    ((group-display-name :target-type
                                      display-name :member-name
                                      "GroupDisplayName")
                                     (group-security-identifier :target-type
                                      group-security-identifier :member-name
                                      "GroupSecurityIdentifier")
                                     (access-rights :target-type access-rights
                                      :member-name "AccessRights")
                                     (template-arn :target-type template-arn
                                      :member-name "TemplateArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "AccessControlEntry"))

(smithy/sdk/shapes:define-list access-control-entry-list :member
                               access-control-entry-summary)

(smithy/sdk/shapes:define-structure access-control-entry-summary
                                    common-lisp:nil
                                    ((group-display-name :target-type
                                      display-name :member-name
                                      "GroupDisplayName")
                                     (group-security-identifier :target-type
                                      group-security-identifier :member-name
                                      "GroupSecurityIdentifier")
                                     (access-rights :target-type access-rights
                                      :member-name "AccessRights")
                                     (template-arn :target-type template-arn
                                      :member-name "TemplateArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "AccessControlEntrySummary"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum access-right
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-structure access-rights common-lisp:nil
                                    ((enroll :target-type access-right
                                      :member-name "Enroll")
                                     (auto-enroll :target-type access-right
                                      :member-name "AutoEnroll"))
                                    (:shape-name "AccessRights"))

(smithy/sdk/shapes:define-structure application-policies common-lisp:nil
                                    ((critical :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Critical")
                                     (policies :target-type
                                      application-policy-list :required
                                      common-lisp:t :member-name "Policies"))
                                    (:shape-name "ApplicationPolicies"))

(smithy/sdk/shapes:define-union application-policy common-lisp:nil
                                ((policy-type :target-type
                                  application-policy-type :member-name
                                  "PolicyType")
                                 (policy-object-identifier :target-type
                                  custom-object-identifier :member-name
                                  "PolicyObjectIdentifier"))
                                (:shape-name "ApplicationPolicy"))

(smithy/sdk/shapes:define-list application-policy-list :member
                               application-policy)

(smithy/sdk/shapes:define-enum application-policy-type
    common-lisp:nil
  (:all-application-policies "ALL_APPLICATION_POLICIES")
  (:any-purpose "ANY_PURPOSE")
  (:attestation-identity-key-certificate "ATTESTATION_IDENTITY_KEY_CERTIFICATE")
  (:certificate-request-agent "CERTIFICATE_REQUEST_AGENT")
  (:client-authentication "CLIENT_AUTHENTICATION")
  (:code-signing "CODE_SIGNING")
  (:ctl-usage "CTL_USAGE")
  (:digital-rights "DIGITAL_RIGHTS")
  (:directory-service-email-replication "DIRECTORY_SERVICE_EMAIL_REPLICATION")
  (:disallowed-list "DISALLOWED_LIST")
  (:dns-server-trust "DNS_SERVER_TRUST")
  (:document-encryption "DOCUMENT_ENCRYPTION")
  (:document-signing "DOCUMENT_SIGNING")
  (:dynamic-code-generator "DYNAMIC_CODE_GENERATOR")
  (:early-launch-antimalware-driver "EARLY_LAUNCH_ANTIMALWARE_DRIVER")
  (:embedded-windows-system-component-verification
   "EMBEDDED_WINDOWS_SYSTEM_COMPONENT_VERIFICATION")
  (:enclave "ENCLAVE")
  (:encrypting-file-system "ENCRYPTING_FILE_SYSTEM")
  (:endorsement-key-certificate "ENDORSEMENT_KEY_CERTIFICATE")
  (:file-recovery "FILE_RECOVERY")
  (:hal-extension "HAL_EXTENSION")
  (:ip-security-end-system "IP_SECURITY_END_SYSTEM")
  (:ip-security-ike-intermediate "IP_SECURITY_IKE_INTERMEDIATE")
  (:ip-security-tunnel-termination "IP_SECURITY_TUNNEL_TERMINATION")
  (:ip-security-user "IP_SECURITY_USER")
  (:isolated-user-mode "ISOLATED_USER_MODE")
  (:kdc-authentication "KDC_AUTHENTICATION")
  (:kernel-mode-code-signing "KERNEL_MODE_CODE_SIGNING")
  (:key-pack-licenses "KEY_PACK_LICENSES")
  (:key-recovery "KEY_RECOVERY")
  (:key-recovery-agent "KEY_RECOVERY_AGENT")
  (:license-server-verification "LICENSE_SERVER_VERIFICATION")
  (:lifetime-signing "LIFETIME_SIGNING")
  (:microsoft-publisher "MICROSOFT_PUBLISHER")
  (:microsoft-time-stamping "MICROSOFT_TIME_STAMPING")
  (:microsoft-trust-list-signing "MICROSOFT_TRUST_LIST_SIGNING")
  (:ocsp-signing "OCSP_SIGNING")
  (:oem-windows-system-component-verification
   "OEM_WINDOWS_SYSTEM_COMPONENT_VERIFICATION")
  (:platform-certificate "PLATFORM_CERTIFICATE")
  (:preview-build-signing "PREVIEW_BUILD_SIGNING")
  (:private-key-archival "PRIVATE_KEY_ARCHIVAL")
  (:protected-process-light-verification "PROTECTED_PROCESS_LIGHT_VERIFICATION")
  (:protected-process-verification "PROTECTED_PROCESS_VERIFICATION")
  (:qualified-subordination "QUALIFIED_SUBORDINATION")
  (:revoked-list-signer "REVOKED_LIST_SIGNER")
  (:root-program-auto-update-ca-revocation
   "ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION")
  (:root-program-auto-update-end-revocation
   "ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION")
  (:root-program-no-oscp-failover-to-crl "ROOT_PROGRAM_NO_OSCP_FAILOVER_TO_CRL")
  (:root-list-signer "ROOT_LIST_SIGNER")
  (:secure-email "SECURE_EMAIL")
  (:server-authentication "SERVER_AUTHENTICATION")
  (:smart-card-login "SMART_CARD_LOGIN")
  (:spc-encrypted-digest-retry-count "SPC_ENCRYPTED_DIGEST_RETRY_COUNT")
  (:spc-relaxed-pe-marker-check "SPC_RELAXED_PE_MARKER_CHECK")
  (:time-stamping "TIME_STAMPING")
  (:windows-hardware-driver-attested-verification
   "WINDOWS_HARDWARE_DRIVER_ATTESTED_VERIFICATION")
  (:windows-hardware-driver-extended-verification
   "WINDOWS_HARDWARE_DRIVER_EXTENDED_VERIFICATION")
  (:windows-hardware-driver-verification "WINDOWS_HARDWARE_DRIVER_VERIFICATION")
  (:windows-hello-recovery-key-encryption
   "WINDOWS_HELLO_RECOVERY_KEY_ENCRYPTION")
  (:windows-kits-component "WINDOWS_KITS_COMPONENT")
  (:windows-rt-verification "WINDOWS_RT_VERIFICATION")
  (:windows-software-extension-verification
   "WINDOWS_SOFTWARE_EXTENSION_VERIFICATION")
  (:windows-store "WINDOWS_STORE")
  (:windows-system-component-verification
   "WINDOWS_SYSTEM_COMPONENT_VERIFICATION")
  (:windows-tcb-component "WINDOWS_TCB_COMPONENT")
  (:windows-third-party-application-component
   "WINDOWS_THIRD_PARTY_APPLICATION_COMPONENT")
  (:windows-update "WINDOWS_UPDATE"))

(smithy/sdk/shapes:define-type certificate-authority-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificate-validity common-lisp:nil
                                    ((validity-period :target-type
                                      validity-period :required common-lisp:t
                                      :member-name "ValidityPeriod")
                                     (renewal-period :target-type
                                      validity-period :required common-lisp:t
                                      :member-name "RenewalPeriod"))
                                    (:shape-name "CertificateValidity"))

(smithy/sdk/shapes:define-enum client-compatibility-v2
    common-lisp:nil
  (:windows-server-2003 "WINDOWS_SERVER_2003")
  (:windows-server-2008 "WINDOWS_SERVER_2008")
  (:windows-server-2008-r2 "WINDOWS_SERVER_2008_R2")
  (:windows-server-2012 "WINDOWS_SERVER_2012")
  (:windows-server-2012-r2 "WINDOWS_SERVER_2012_R2")
  (:windows-server-2016 "WINDOWS_SERVER_2016"))

(smithy/sdk/shapes:define-enum client-compatibility-v3
    common-lisp:nil
  (:windows-server-2008 "WINDOWS_SERVER_2008")
  (:windows-server-2008-r2 "WINDOWS_SERVER_2008_R2")
  (:windows-server-2012 "WINDOWS_SERVER_2012")
  (:windows-server-2012-r2 "WINDOWS_SERVER_2012_R2")
  (:windows-server-2016 "WINDOWS_SERVER_2016"))

(smithy/sdk/shapes:define-enum client-compatibility-v4
    common-lisp:nil
  (:windows-server-2012 "WINDOWS_SERVER_2012")
  (:windows-server-2012-r2 "WINDOWS_SERVER_2012_R2")
  (:windows-server-2016 "WINDOWS_SERVER_2016"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connector common-lisp:nil
                                    ((arn :target-type connector-arn
                                      :member-name "Arn")
                                     (certificate-authority-arn :target-type
                                      certificate-authority-arn :member-name
                                      "CertificateAuthorityArn")
                                     (certificate-enrollment-policy-server-endpoint
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "CertificateEnrollmentPolicyServerEndpoint")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (vpc-information :target-type
                                      vpc-information :member-name
                                      "VpcInformation")
                                     (status :target-type connector-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      connector-status-reason :member-name
                                      "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "Connector"))

(smithy/sdk/shapes:define-type connector-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-list :member connector-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum connector-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum connector-status-reason
    common-lisp:nil
  (:ca-certificate-registration-failed "CA_CERTIFICATE_REGISTRATION_FAILED")
  (:directory-access-denied "DIRECTORY_ACCESS_DENIED")
  (:internal-failure "INTERNAL_FAILURE")
  (:insufficient-free-addresses "INSUFFICIENT_FREE_ADDRESSES")
  (:invalid-subnet-ip-protocol "INVALID_SUBNET_IP_PROTOCOL")
  (:privateca-access-denied "PRIVATECA_ACCESS_DENIED")
  (:privateca-resource-not-found "PRIVATECA_RESOURCE_NOT_FOUND")
  (:security-group-not-in-vpc "SECURITY_GROUP_NOT_IN_VPC")
  (:vpc-access-denied "VPC_ACCESS_DENIED")
  (:vpc-endpoint-limit-exceeded "VPC_ENDPOINT_LIMIT_EXCEEDED")
  (:vpc-resource-not-found "VPC_RESOURCE_NOT_FOUND"))

(smithy/sdk/shapes:define-structure connector-summary common-lisp:nil
                                    ((arn :target-type connector-arn
                                      :member-name "Arn")
                                     (certificate-authority-arn :target-type
                                      certificate-authority-arn :member-name
                                      "CertificateAuthorityArn")
                                     (certificate-enrollment-policy-server-endpoint
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "CertificateEnrollmentPolicyServerEndpoint")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (vpc-information :target-type
                                      vpc-information :member-name
                                      "VpcInformation")
                                     (status :target-type connector-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      connector-status-reason :member-name
                                      "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ConnectorSummary"))

(smithy/sdk/shapes:define-input create-connector-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (certificate-authority-arn :target-type
                                  certificate-authority-arn :required
                                  common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (vpc-information :target-type vpc-information
                                  :required common-lisp:t :member-name
                                  "VpcInformation")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateConnectorRequest"))

(smithy/sdk/shapes:define-output create-connector-response common-lisp:nil
                                 ((connector-arn :target-type connector-arn
                                   :member-name "ConnectorArn"))
                                 (:shape-name "CreateConnectorResponse"))

(smithy/sdk/shapes:define-input create-directory-registration-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateDirectoryRegistrationRequest"))

(smithy/sdk/shapes:define-output create-directory-registration-response
                                 common-lisp:nil
                                 ((directory-registration-arn :target-type
                                   directory-registration-arn :member-name
                                   "DirectoryRegistrationArn"))
                                 (:shape-name
                                  "CreateDirectoryRegistrationResponse"))

(smithy/sdk/shapes:define-input create-service-principal-name-request
                                common-lisp:nil
                                ((directory-registration-arn :target-type
                                  directory-registration-arn :required
                                  common-lisp:t :member-name
                                  "DirectoryRegistrationArn" :http-label
                                  common-lisp:t)
                                 (connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateServicePrincipalNameRequest"))

(smithy/sdk/shapes:define-input
 create-template-group-access-control-entry-request common-lisp:nil
 ((template-arn :target-type template-arn :required common-lisp:t :member-name
   "TemplateArn" :http-label common-lisp:t)
  (group-security-identifier :target-type group-security-identifier :required
   common-lisp:t :member-name "GroupSecurityIdentifier")
  (group-display-name :target-type display-name :required common-lisp:t
   :member-name "GroupDisplayName")
  (access-rights :target-type access-rights :required common-lisp:t
   :member-name "AccessRights")
  (client-token :target-type client-token :member-name "ClientToken"))
 (:shape-name "CreateTemplateGroupAccessControlEntryRequest"))

(smithy/sdk/shapes:define-input create-template-request common-lisp:nil
                                ((connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn")
                                 (name :target-type template-name :required
                                  common-lisp:t :member-name "Name")
                                 (definition :target-type template-definition
                                  :required common-lisp:t :member-name
                                  "Definition")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateTemplateRequest"))

(smithy/sdk/shapes:define-output create-template-response common-lisp:nil
                                 ((template-arn :target-type template-arn
                                   :member-name "TemplateArn"))
                                 (:shape-name "CreateTemplateResponse"))

(smithy/sdk/shapes:define-list crypto-providers-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-object-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-connector-request common-lisp:nil
                                ((connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t))
                                (:shape-name "DeleteConnectorRequest"))

(smithy/sdk/shapes:define-input delete-directory-registration-request
                                common-lisp:nil
                                ((directory-registration-arn :target-type
                                  directory-registration-arn :required
                                  common-lisp:t :member-name
                                  "DirectoryRegistrationArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteDirectoryRegistrationRequest"))

(smithy/sdk/shapes:define-input delete-service-principal-name-request
                                common-lisp:nil
                                ((directory-registration-arn :target-type
                                  directory-registration-arn :required
                                  common-lisp:t :member-name
                                  "DirectoryRegistrationArn" :http-label
                                  common-lisp:t)
                                 (connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteServicePrincipalNameRequest"))

(smithy/sdk/shapes:define-input
 delete-template-group-access-control-entry-request common-lisp:nil
 ((template-arn :target-type template-arn :required common-lisp:t :member-name
   "TemplateArn" :http-label common-lisp:t)
  (group-security-identifier :target-type group-security-identifier :required
   common-lisp:t :member-name "GroupSecurityIdentifier" :http-label
   common-lisp:t))
 (:shape-name "DeleteTemplateGroupAccessControlEntryRequest"))

(smithy/sdk/shapes:define-input delete-template-request common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t))
                                (:shape-name "DeleteTemplateRequest"))

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure directory-registration common-lisp:nil
                                    ((arn :target-type
                                      directory-registration-arn :member-name
                                      "Arn")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (status :target-type
                                      directory-registration-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      directory-registration-status-reason
                                      :member-name "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "DirectoryRegistration"))

(smithy/sdk/shapes:define-type directory-registration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list directory-registration-list :member
                               directory-registration-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum directory-registration-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum directory-registration-status-reason
    common-lisp:nil
  (:directory-access-denied "DIRECTORY_ACCESS_DENIED")
  (:directory-resource-not-found "DIRECTORY_RESOURCE_NOT_FOUND")
  (:directory-not-active "DIRECTORY_NOT_ACTIVE")
  (:directory-not-reachable "DIRECTORY_NOT_REACHABLE")
  (:directory-type-not-supported "DIRECTORY_TYPE_NOT_SUPPORTED")
  (:internal-failure "INTERNAL_FAILURE"))

(smithy/sdk/shapes:define-structure directory-registration-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      directory-registration-arn :member-name
                                      "Arn")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (status :target-type
                                      directory-registration-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      directory-registration-status-reason
                                      :member-name "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name
                                     "DirectoryRegistrationSummary"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure enrollment-flags-v2 common-lisp:nil
                                    ((include-symmetric-algorithms :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "IncludeSymmetricAlgorithms")
                                     (user-interaction-required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UserInteractionRequired")
                                     (remove-invalid-certificate-from-personal-store
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "RemoveInvalidCertificateFromPersonalStore")
                                     (no-security-extension :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NoSecurityExtension")
                                     (enable-key-reuse-on-nt-token-keyset-storage-full
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "EnableKeyReuseOnNtTokenKeysetStorageFull"))
                                    (:shape-name "EnrollmentFlagsV2"))

(smithy/sdk/shapes:define-structure enrollment-flags-v3 common-lisp:nil
                                    ((include-symmetric-algorithms :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "IncludeSymmetricAlgorithms")
                                     (user-interaction-required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UserInteractionRequired")
                                     (remove-invalid-certificate-from-personal-store
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "RemoveInvalidCertificateFromPersonalStore")
                                     (no-security-extension :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NoSecurityExtension")
                                     (enable-key-reuse-on-nt-token-keyset-storage-full
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "EnableKeyReuseOnNtTokenKeysetStorageFull"))
                                    (:shape-name "EnrollmentFlagsV3"))

(smithy/sdk/shapes:define-structure enrollment-flags-v4 common-lisp:nil
                                    ((include-symmetric-algorithms :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "IncludeSymmetricAlgorithms")
                                     (user-interaction-required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UserInteractionRequired")
                                     (remove-invalid-certificate-from-personal-store
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "RemoveInvalidCertificateFromPersonalStore")
                                     (no-security-extension :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NoSecurityExtension")
                                     (enable-key-reuse-on-nt-token-keyset-storage-full
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "EnableKeyReuseOnNtTokenKeysetStorageFull"))
                                    (:shape-name "EnrollmentFlagsV4"))

(smithy/sdk/shapes:define-structure extensions-v2 common-lisp:nil
                                    ((key-usage :target-type key-usage
                                      :required common-lisp:t :member-name
                                      "KeyUsage")
                                     (application-policies :target-type
                                      application-policies :member-name
                                      "ApplicationPolicies"))
                                    (:shape-name "ExtensionsV2"))

(smithy/sdk/shapes:define-structure extensions-v3 common-lisp:nil
                                    ((key-usage :target-type key-usage
                                      :required common-lisp:t :member-name
                                      "KeyUsage")
                                     (application-policies :target-type
                                      application-policies :member-name
                                      "ApplicationPolicies"))
                                    (:shape-name "ExtensionsV3"))

(smithy/sdk/shapes:define-structure extensions-v4 common-lisp:nil
                                    ((key-usage :target-type key-usage
                                      :required common-lisp:t :member-name
                                      "KeyUsage")
                                     (application-policies :target-type
                                      application-policies :member-name
                                      "ApplicationPolicies"))
                                    (:shape-name "ExtensionsV4"))

(smithy/sdk/shapes:define-structure general-flags-v2 common-lisp:nil
                                    ((auto-enrollment :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoEnrollment")
                                     (machine-type :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "MachineType"))
                                    (:shape-name "GeneralFlagsV2"))

(smithy/sdk/shapes:define-structure general-flags-v3 common-lisp:nil
                                    ((auto-enrollment :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoEnrollment")
                                     (machine-type :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "MachineType"))
                                    (:shape-name "GeneralFlagsV3"))

(smithy/sdk/shapes:define-structure general-flags-v4 common-lisp:nil
                                    ((auto-enrollment :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoEnrollment")
                                     (machine-type :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "MachineType"))
                                    (:shape-name "GeneralFlagsV4"))

(smithy/sdk/shapes:define-input get-connector-request common-lisp:nil
                                ((connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t))
                                (:shape-name "GetConnectorRequest"))

(smithy/sdk/shapes:define-output get-connector-response common-lisp:nil
                                 ((connector :target-type connector
                                   :member-name "Connector"))
                                 (:shape-name "GetConnectorResponse"))

(smithy/sdk/shapes:define-input get-directory-registration-request
                                common-lisp:nil
                                ((directory-registration-arn :target-type
                                  directory-registration-arn :required
                                  common-lisp:t :member-name
                                  "DirectoryRegistrationArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDirectoryRegistrationRequest"))

(smithy/sdk/shapes:define-output get-directory-registration-response
                                 common-lisp:nil
                                 ((directory-registration :target-type
                                   directory-registration :member-name
                                   "DirectoryRegistration"))
                                 (:shape-name
                                  "GetDirectoryRegistrationResponse"))

(smithy/sdk/shapes:define-input get-service-principal-name-request
                                common-lisp:nil
                                ((directory-registration-arn :target-type
                                  directory-registration-arn :required
                                  common-lisp:t :member-name
                                  "DirectoryRegistrationArn" :http-label
                                  common-lisp:t)
                                 (connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t))
                                (:shape-name "GetServicePrincipalNameRequest"))

(smithy/sdk/shapes:define-output get-service-principal-name-response
                                 common-lisp:nil
                                 ((service-principal-name :target-type
                                   service-principal-name :member-name
                                   "ServicePrincipalName"))
                                 (:shape-name
                                  "GetServicePrincipalNameResponse"))

(smithy/sdk/shapes:define-input get-template-group-access-control-entry-request
                                common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (group-security-identifier :target-type
                                  group-security-identifier :required
                                  common-lisp:t :member-name
                                  "GroupSecurityIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetTemplateGroupAccessControlEntryRequest"))

(smithy/sdk/shapes:define-output
 get-template-group-access-control-entry-response common-lisp:nil
 ((access-control-entry :target-type access-control-entry :member-name
   "AccessControlEntry"))
 (:shape-name "GetTemplateGroupAccessControlEntryResponse"))

(smithy/sdk/shapes:define-input get-template-request common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t))
                                (:shape-name "GetTemplateRequest"))

(smithy/sdk/shapes:define-output get-template-response common-lisp:nil
                                 ((template :target-type template :member-name
                                   "Template"))
                                 (:shape-name "GetTemplateResponse"))

(smithy/sdk/shapes:define-type group-security-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum hash-algorithm
    common-lisp:nil
  (:sha256 "SHA256")
  (:sha384 "SHA384")
  (:sha512 "SHA512"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dualstack "DUALSTACK"))

(smithy/sdk/shapes:define-enum key-spec
    common-lisp:nil
  (:key-exchange "KEY_EXCHANGE")
  (:signature "SIGNATURE"))

(smithy/sdk/shapes:define-structure key-usage common-lisp:nil
                                    ((critical :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Critical")
                                     (usage-flags :target-type key-usage-flags
                                      :required common-lisp:t :member-name
                                      "UsageFlags"))
                                    (:shape-name "KeyUsage"))

(smithy/sdk/shapes:define-structure key-usage-flags common-lisp:nil
                                    ((digital-signature :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DigitalSignature")
                                     (non-repudiation :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "NonRepudiation")
                                     (key-encipherment :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "KeyEncipherment")
                                     (data-encipherment :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DataEncipherment")
                                     (key-agreement :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "KeyAgreement"))
                                    (:shape-name "KeyUsageFlags"))

(smithy/sdk/shapes:define-union key-usage-property common-lisp:nil
                                ((property-type :target-type
                                  key-usage-property-type :member-name
                                  "PropertyType")
                                 (property-flags :target-type
                                  key-usage-property-flags :member-name
                                  "PropertyFlags"))
                                (:shape-name "KeyUsageProperty"))

(smithy/sdk/shapes:define-structure key-usage-property-flags common-lisp:nil
                                    ((decrypt :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Decrypt")
                                     (key-agreement :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "KeyAgreement")
                                     (sign :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Sign"))
                                    (:shape-name "KeyUsagePropertyFlags"))

(smithy/sdk/shapes:define-enum key-usage-property-type
    common-lisp:nil
  (:all "ALL"))

(smithy/sdk/shapes:define-input list-connectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListConnectorsRequest"))

(smithy/sdk/shapes:define-output list-connectors-response common-lisp:nil
                                 ((connectors :target-type connector-list
                                   :member-name "Connectors")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConnectorsResponse"))

(smithy/sdk/shapes:define-input list-directory-registrations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name
                                 "ListDirectoryRegistrationsRequest"))

(smithy/sdk/shapes:define-output list-directory-registrations-response
                                 common-lisp:nil
                                 ((directory-registrations :target-type
                                   directory-registration-list :member-name
                                   "DirectoryRegistrations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDirectoryRegistrationsResponse"))

(smithy/sdk/shapes:define-input list-service-principal-names-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (directory-registration-arn :target-type
                                  directory-registration-arn :required
                                  common-lisp:t :member-name
                                  "DirectoryRegistrationArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListServicePrincipalNamesRequest"))

(smithy/sdk/shapes:define-output list-service-principal-names-response
                                 common-lisp:nil
                                 ((service-principal-names :target-type
                                   service-principal-name-list :member-name
                                   "ServicePrincipalNames")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListServicePrincipalNamesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input
 list-template-group-access-control-entries-request common-lisp:nil
 ((max-results :target-type max-results :member-name "MaxResults" :http-query
   "MaxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "NextToken")
  (template-arn :target-type template-arn :required common-lisp:t :member-name
   "TemplateArn" :http-label common-lisp:t))
 (:shape-name "ListTemplateGroupAccessControlEntriesRequest"))

(smithy/sdk/shapes:define-output
 list-template-group-access-control-entries-response common-lisp:nil
 ((access-control-entries :target-type access-control-entry-list :member-name
   "AccessControlEntries")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListTemplateGroupAccessControlEntriesResponse"))

(smithy/sdk/shapes:define-input list-templates-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-query "ConnectorArn"))
                                (:shape-name "ListTemplatesRequest"))

(smithy/sdk/shapes:define-output list-templates-response common-lisp:nil
                                 ((templates :target-type template-list
                                   :member-name "Templates")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTemplatesResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum private-key-algorithm
    common-lisp:nil
  (:rsa "RSA")
  (:ecdh-p256 "ECDH_P256")
  (:ecdh-p384 "ECDH_P384")
  (:ecdh-p521 "ECDH_P521"))

(smithy/sdk/shapes:define-structure private-key-attributes-v2 common-lisp:nil
                                    ((minimal-key-length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MinimalKeyLength")
                                     (key-spec :target-type key-spec :required
                                      common-lisp:t :member-name "KeySpec")
                                     (crypto-providers :target-type
                                      crypto-providers-list :member-name
                                      "CryptoProviders"))
                                    (:shape-name "PrivateKeyAttributesV2"))

(smithy/sdk/shapes:define-structure private-key-attributes-v3 common-lisp:nil
                                    ((minimal-key-length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MinimalKeyLength")
                                     (key-spec :target-type key-spec :required
                                      common-lisp:t :member-name "KeySpec")
                                     (crypto-providers :target-type
                                      crypto-providers-list :member-name
                                      "CryptoProviders")
                                     (key-usage-property :target-type
                                      key-usage-property :required
                                      common-lisp:t :member-name
                                      "KeyUsageProperty")
                                     (algorithm :target-type
                                      private-key-algorithm :required
                                      common-lisp:t :member-name "Algorithm"))
                                    (:shape-name "PrivateKeyAttributesV3"))

(smithy/sdk/shapes:define-structure private-key-attributes-v4 common-lisp:nil
                                    ((minimal-key-length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MinimalKeyLength")
                                     (key-spec :target-type key-spec :required
                                      common-lisp:t :member-name "KeySpec")
                                     (crypto-providers :target-type
                                      crypto-providers-list :member-name
                                      "CryptoProviders")
                                     (key-usage-property :target-type
                                      key-usage-property :member-name
                                      "KeyUsageProperty")
                                     (algorithm :target-type
                                      private-key-algorithm :member-name
                                      "Algorithm"))
                                    (:shape-name "PrivateKeyAttributesV4"))

(smithy/sdk/shapes:define-structure private-key-flags-v2 common-lisp:nil
                                    ((exportable-key :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ExportableKey")
                                     (strong-key-protection-required
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "StrongKeyProtectionRequired")
                                     (client-version :target-type
                                      client-compatibility-v2 :required
                                      common-lisp:t :member-name
                                      "ClientVersion"))
                                    (:shape-name "PrivateKeyFlagsV2"))

(smithy/sdk/shapes:define-structure private-key-flags-v3 common-lisp:nil
                                    ((exportable-key :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ExportableKey")
                                     (strong-key-protection-required
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "StrongKeyProtectionRequired")
                                     (require-alternate-signature-algorithm
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "RequireAlternateSignatureAlgorithm")
                                     (client-version :target-type
                                      client-compatibility-v3 :required
                                      common-lisp:t :member-name
                                      "ClientVersion"))
                                    (:shape-name "PrivateKeyFlagsV3"))

(smithy/sdk/shapes:define-structure private-key-flags-v4 common-lisp:nil
                                    ((exportable-key :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ExportableKey")
                                     (strong-key-protection-required
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "StrongKeyProtectionRequired")
                                     (require-alternate-signature-algorithm
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "RequireAlternateSignatureAlgorithm")
                                     (require-same-key-renewal :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireSameKeyRenewal")
                                     (use-legacy-provider :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "UseLegacyProvider")
                                     (client-version :target-type
                                      client-compatibility-v4 :required
                                      common-lisp:t :member-name
                                      "ClientVersion"))
                                    (:shape-name "PrivateKeyFlagsV4"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-structure service-principal-name common-lisp:nil
                                    ((directory-registration-arn :target-type
                                      directory-registration-arn :member-name
                                      "DirectoryRegistrationArn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (status :target-type
                                      service-principal-name-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      service-principal-name-status-reason
                                      :member-name "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ServicePrincipalName"))

(smithy/sdk/shapes:define-list service-principal-name-list :member
                               service-principal-name-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum service-principal-name-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum service-principal-name-status-reason
    common-lisp:nil
  (:directory-access-denied "DIRECTORY_ACCESS_DENIED")
  (:directory-not-reachable "DIRECTORY_NOT_REACHABLE")
  (:directory-resource-not-found "DIRECTORY_RESOURCE_NOT_FOUND")
  (:spn-exists-on-different-ad-object "SPN_EXISTS_ON_DIFFERENT_AD_OBJECT")
  (:spn-limit-exceeded "SPN_LIMIT_EXCEEDED")
  (:internal-failure "INTERNAL_FAILURE"))

(smithy/sdk/shapes:define-structure service-principal-name-summary
                                    common-lisp:nil
                                    ((directory-registration-arn :target-type
                                      directory-registration-arn :member-name
                                      "DirectoryRegistrationArn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (status :target-type
                                      service-principal-name-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      service-principal-name-status-reason
                                      :member-name "StatusReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ServicePrincipalNameSummary"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ServiceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "QuotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure subject-name-flags-v2 common-lisp:nil
                                    ((san-require-domain-dns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDomainDns")
                                     (san-require-spn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireSpn")
                                     (san-require-directory-guid :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDirectoryGuid")
                                     (san-require-upn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireUpn")
                                     (san-require-email :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireEmail")
                                     (san-require-dns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDns")
                                     (require-dns-as-cn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireDnsAsCn")
                                     (require-email :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireEmail")
                                     (require-common-name :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireCommonName")
                                     (require-directory-path :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireDirectoryPath"))
                                    (:shape-name "SubjectNameFlagsV2"))

(smithy/sdk/shapes:define-structure subject-name-flags-v3 common-lisp:nil
                                    ((san-require-domain-dns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDomainDns")
                                     (san-require-spn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireSpn")
                                     (san-require-directory-guid :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDirectoryGuid")
                                     (san-require-upn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireUpn")
                                     (san-require-email :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireEmail")
                                     (san-require-dns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDns")
                                     (require-dns-as-cn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireDnsAsCn")
                                     (require-email :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireEmail")
                                     (require-common-name :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireCommonName")
                                     (require-directory-path :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireDirectoryPath"))
                                    (:shape-name "SubjectNameFlagsV3"))

(smithy/sdk/shapes:define-structure subject-name-flags-v4 common-lisp:nil
                                    ((san-require-domain-dns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDomainDns")
                                     (san-require-spn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireSpn")
                                     (san-require-directory-guid :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDirectoryGuid")
                                     (san-require-upn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireUpn")
                                     (san-require-email :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireEmail")
                                     (san-require-dns :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "SanRequireDns")
                                     (require-dns-as-cn :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireDnsAsCn")
                                     (require-email :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireEmail")
                                     (require-common-name :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireCommonName")
                                     (require-directory-path :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "RequireDirectoryPath"))
                                    (:shape-name "SubjectNameFlagsV4"))

(smithy/sdk/shapes:define-list tag-key-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-map tags :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template common-lisp:nil
                                    ((arn :target-type template-arn
                                      :member-name "Arn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (definition :target-type
                                      template-definition :member-name
                                      "Definition")
                                     (name :target-type template-name
                                      :member-name "Name")
                                     (object-identifier :target-type
                                      custom-object-identifier :member-name
                                      "ObjectIdentifier")
                                     (policy-schema :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "PolicySchema")
                                     (status :target-type template-status
                                      :member-name "Status")
                                     (revision :target-type template-revision
                                      :member-name "Revision")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "Template"))

(smithy/sdk/shapes:define-type template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union template-definition common-lisp:nil
                                ((template-v2 :target-type template-v2
                                  :member-name "TemplateV2")
                                 (template-v3 :target-type template-v3
                                  :member-name "TemplateV3")
                                 (template-v4 :target-type template-v4
                                  :member-name "TemplateV4"))
                                (:shape-name "TemplateDefinition"))

common-lisp:nil

(smithy/sdk/shapes:define-list template-list :member template-summary)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list template-name-list :member template-name)

common-lisp:nil

(smithy/sdk/shapes:define-structure template-revision common-lisp:nil
                                    ((major-revision :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MajorRevision")
                                     (minor-revision :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MinorRevision"))
                                    (:shape-name "TemplateRevision"))

(smithy/sdk/shapes:define-enum template-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure template-summary common-lisp:nil
                                    ((arn :target-type template-arn
                                      :member-name "Arn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (definition :target-type
                                      template-definition :member-name
                                      "Definition")
                                     (name :target-type template-name
                                      :member-name "Name")
                                     (object-identifier :target-type
                                      custom-object-identifier :member-name
                                      "ObjectIdentifier")
                                     (policy-schema :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "PolicySchema")
                                     (status :target-type template-status
                                      :member-name "Status")
                                     (revision :target-type template-revision
                                      :member-name "Revision")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "TemplateSummary"))

(smithy/sdk/shapes:define-structure template-v2 common-lisp:nil
                                    ((certificate-validity :target-type
                                      certificate-validity :required
                                      common-lisp:t :member-name
                                      "CertificateValidity")
                                     (superseded-templates :target-type
                                      template-name-list :member-name
                                      "SupersededTemplates")
                                     (private-key-attributes :target-type
                                      private-key-attributes-v2 :required
                                      common-lisp:t :member-name
                                      "PrivateKeyAttributes")
                                     (private-key-flags :target-type
                                      private-key-flags-v2 :required
                                      common-lisp:t :member-name
                                      "PrivateKeyFlags")
                                     (enrollment-flags :target-type
                                      enrollment-flags-v2 :required
                                      common-lisp:t :member-name
                                      "EnrollmentFlags")
                                     (subject-name-flags :target-type
                                      subject-name-flags-v2 :required
                                      common-lisp:t :member-name
                                      "SubjectNameFlags")
                                     (general-flags :target-type
                                      general-flags-v2 :required common-lisp:t
                                      :member-name "GeneralFlags")
                                     (extensions :target-type extensions-v2
                                      :required common-lisp:t :member-name
                                      "Extensions"))
                                    (:shape-name "TemplateV2"))

(smithy/sdk/shapes:define-structure template-v3 common-lisp:nil
                                    ((certificate-validity :target-type
                                      certificate-validity :required
                                      common-lisp:t :member-name
                                      "CertificateValidity")
                                     (superseded-templates :target-type
                                      template-name-list :member-name
                                      "SupersededTemplates")
                                     (private-key-attributes :target-type
                                      private-key-attributes-v3 :required
                                      common-lisp:t :member-name
                                      "PrivateKeyAttributes")
                                     (private-key-flags :target-type
                                      private-key-flags-v3 :required
                                      common-lisp:t :member-name
                                      "PrivateKeyFlags")
                                     (enrollment-flags :target-type
                                      enrollment-flags-v3 :required
                                      common-lisp:t :member-name
                                      "EnrollmentFlags")
                                     (subject-name-flags :target-type
                                      subject-name-flags-v3 :required
                                      common-lisp:t :member-name
                                      "SubjectNameFlags")
                                     (general-flags :target-type
                                      general-flags-v3 :required common-lisp:t
                                      :member-name "GeneralFlags")
                                     (hash-algorithm :target-type
                                      hash-algorithm :required common-lisp:t
                                      :member-name "HashAlgorithm")
                                     (extensions :target-type extensions-v3
                                      :required common-lisp:t :member-name
                                      "Extensions"))
                                    (:shape-name "TemplateV3"))

(smithy/sdk/shapes:define-structure template-v4 common-lisp:nil
                                    ((certificate-validity :target-type
                                      certificate-validity :required
                                      common-lisp:t :member-name
                                      "CertificateValidity")
                                     (superseded-templates :target-type
                                      template-name-list :member-name
                                      "SupersededTemplates")
                                     (private-key-attributes :target-type
                                      private-key-attributes-v4 :required
                                      common-lisp:t :member-name
                                      "PrivateKeyAttributes")
                                     (private-key-flags :target-type
                                      private-key-flags-v4 :required
                                      common-lisp:t :member-name
                                      "PrivateKeyFlags")
                                     (enrollment-flags :target-type
                                      enrollment-flags-v4 :required
                                      common-lisp:t :member-name
                                      "EnrollmentFlags")
                                     (subject-name-flags :target-type
                                      subject-name-flags-v4 :required
                                      common-lisp:t :member-name
                                      "SubjectNameFlags")
                                     (general-flags :target-type
                                      general-flags-v4 :required common-lisp:t
                                      :member-name "GeneralFlags")
                                     (hash-algorithm :target-type
                                      hash-algorithm :member-name
                                      "HashAlgorithm")
                                     (extensions :target-type extensions-v4
                                      :required common-lisp:t :member-name
                                      "Extensions"))
                                    (:shape-name "TemplateV4"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ServiceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "QuotaCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input
 update-template-group-access-control-entry-request common-lisp:nil
 ((template-arn :target-type template-arn :required common-lisp:t :member-name
   "TemplateArn" :http-label common-lisp:t)
  (group-security-identifier :target-type group-security-identifier :required
   common-lisp:t :member-name "GroupSecurityIdentifier" :http-label
   common-lisp:t)
  (group-display-name :target-type display-name :member-name
   "GroupDisplayName")
  (access-rights :target-type access-rights :member-name "AccessRights"))
 (:shape-name "UpdateTemplateGroupAccessControlEntryRequest"))

(smithy/sdk/shapes:define-input update-template-request common-lisp:nil
                                ((template-arn :target-type template-arn
                                  :required common-lisp:t :member-name
                                  "TemplateArn" :http-label common-lisp:t)
                                 (definition :target-type template-definition
                                  :member-name "Definition")
                                 (reenroll-all-certificate-holders :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "ReenrollAllCertificateHolders"))
                                (:shape-name "UpdateTemplateRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:invalid-ca-subject "INVALID_CA_SUBJECT")
  (:invalid-permission "INVALID_PERMISSION")
  (:invalid-state "INVALID_STATE")
  (:mismatched-connector "MISMATCHED_CONNECTOR")
  (:mismatched-vpc "MISMATCHED_VPC")
  (:no-client-token "NO_CLIENT_TOKEN")
  (:unknown-operation "UNKNOWN_OPERATION")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure validity-period common-lisp:nil
                                    ((period-type :target-type
                                      validity-period-type :required
                                      common-lisp:t :member-name "PeriodType")
                                     (period :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "Period"))
                                    (:shape-name "ValidityPeriod"))

(smithy/sdk/shapes:define-enum validity-period-type
    common-lisp:nil
  (:hours "HOURS")
  (:days "DAYS")
  (:weeks "WEEKS")
  (:months "MONTHS")
  (:years "YEARS"))

(smithy/sdk/shapes:define-structure vpc-information common-lisp:nil
                                    ((ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType")
                                     (security-group-ids :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VpcInformation"))

(smithy/sdk/operation:define-operation create-connector :shape-name
                                       "CreateConnector" :input
                                       create-connector-request :output
                                       create-connector-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/connectors" :code
                                       202)

(smithy/sdk/operation:define-operation create-directory-registration
                                       :shape-name
                                       "CreateDirectoryRegistration" :input
                                       create-directory-registration-request
                                       :output
                                       create-directory-registration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/directoryRegistrations" :code 202)

(smithy/sdk/operation:define-operation create-service-principal-name
                                       :shape-name "CreateServicePrincipalName"
                                       :input
                                       create-service-principal-name-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation create-template :shape-name
                                       "CreateTemplate" :input
                                       create-template-request :output
                                       create-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/templates" :code
                                       200)

(smithy/sdk/operation:define-operation
 create-template-group-access-control-entry :shape-name
 "CreateTemplateGroupAccessControlEntry" :input
 create-template-group-access-control-entry-request :output common-lisp:null
 :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/templates/{TemplateArn}/accessControlEntries" :code 200)

(smithy/sdk/operation:define-operation delete-connector :shape-name
                                       "DeleteConnector" :input
                                       delete-connector-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/connectors/{ConnectorArn}" :code 202)

(smithy/sdk/operation:define-operation delete-directory-registration
                                       :shape-name
                                       "DeleteDirectoryRegistration" :input
                                       delete-directory-registration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/directoryRegistrations/{DirectoryRegistrationArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-service-principal-name
                                       :shape-name "DeleteServicePrincipalName"
                                       :input
                                       delete-service-principal-name-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-template :shape-name
                                       "DeleteTemplate" :input
                                       delete-template-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/templates/{TemplateArn}" :code 202)

(smithy/sdk/operation:define-operation
 delete-template-group-access-control-entry :shape-name
 "DeleteTemplateGroupAccessControlEntry" :input
 delete-template-group-access-control-entry-request :output common-lisp:null
 :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation get-connector :shape-name "GetConnector"
                                       :input get-connector-request :output
                                       get-connector-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connectors/{ConnectorArn}" :code 200)

(smithy/sdk/operation:define-operation get-directory-registration :shape-name
                                       "GetDirectoryRegistration" :input
                                       get-directory-registration-request
                                       :output
                                       get-directory-registration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/directoryRegistrations/{DirectoryRegistrationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-principal-name :shape-name
                                       "GetServicePrincipalName" :input
                                       get-service-principal-name-request
                                       :output
                                       get-service-principal-name-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-template :shape-name "GetTemplate"
                                       :input get-template-request :output
                                       get-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/templates/{TemplateArn}" :code 200)

(smithy/sdk/operation:define-operation get-template-group-access-control-entry
                                       :shape-name
                                       "GetTemplateGroupAccessControlEntry"
                                       :input
                                       get-template-group-access-control-entry-request
                                       :output
                                       get-template-group-access-control-entry-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connectors :shape-name
                                       "ListConnectors" :input
                                       list-connectors-request :output
                                       list-connectors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/connectors" :code
                                       200)

(smithy/sdk/operation:define-operation list-directory-registrations :shape-name
                                       "ListDirectoryRegistrations" :input
                                       list-directory-registrations-request
                                       :output
                                       list-directory-registrations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/directoryRegistrations" :code 200)

(smithy/sdk/operation:define-operation list-service-principal-names :shape-name
                                       "ListServicePrincipalNames" :input
                                       list-service-principal-names-request
                                       :output
                                       list-service-principal-names-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-template-group-access-control-entries :shape-name
 "ListTemplateGroupAccessControlEntries" :input
 list-template-group-access-control-entries-request :output
 list-template-group-access-control-entries-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/templates/{TemplateArn}/accessControlEntries" :code 200)

(smithy/sdk/operation:define-operation list-templates :shape-name
                                       "ListTemplates" :input
                                       list-templates-request :output
                                       list-templates-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/templates" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-template :shape-name
                                       "UpdateTemplate" :input
                                       update-template-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/templates/{TemplateArn}" :code 200)

(smithy/sdk/operation:define-operation
 update-template-group-access-control-entry :shape-name
 "UpdateTemplateGroupAccessControlEntry" :input
 update-template-group-access-control-entry-request :output common-lisp:null
 :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PATCH" :uri
 "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}"
 :code 200)
