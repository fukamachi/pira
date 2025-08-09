(uiop/package:define-package #:pira/transfer (:use)
                             (:export #:cfn-ssh-public-keys
                              #:cfn-user-properties #:address-allocation-id
                              #:address-allocation-ids #:agreement-id
                              #:agreement-resource #:agreement-status-type
                              #:arn #:as2connector-config
                              #:as2connector-secret-id #:as2id #:as2transport
                              #:as2transports #:callback-token #:cert-date
                              #:cert-serial #:certificate
                              #:certificate-body-type #:certificate-chain-type
                              #:certificate-id #:certificate-ids
                              #:certificate-resource #:certificate-status-type
                              #:certificate-type #:certificate-usage-type
                              #:compression-enum
                              #:connector-file-transfer-result
                              #:connector-file-transfer-results #:connector-id
                              #:connector-resource
                              #:connector-security-policy-name
                              #:copy-step-details #:create-access
                              #:create-agreement #:create-connector
                              #:create-profile #:create-server #:create-user
                              #:create-web-app #:create-workflow
                              #:custom-directories-type #:custom-step-details
                              #:custom-step-status #:custom-step-target
                              #:custom-step-timeout-seconds #:date-imported
                              #:decrypt-step-details #:delete-access
                              #:delete-agreement #:delete-certificate
                              #:delete-connector #:delete-host-key #:delete-id
                              #:delete-profile #:delete-server
                              #:delete-ssh-public-key #:delete-step-details
                              #:delete-user #:delete-web-app
                              #:delete-web-app-customization #:delete-workflow
                              #:describe-access #:describe-agreement
                              #:describe-certificate #:describe-connector
                              #:describe-execution #:describe-host-key
                              #:describe-profile #:describe-security-policy
                              #:describe-server #:describe-user
                              #:describe-web-app
                              #:describe-web-app-customization
                              #:describe-workflow #:described-access
                              #:described-agreement #:described-certificate
                              #:described-connector #:described-execution
                              #:described-host-key
                              #:described-identity-center-config
                              #:described-profile #:described-security-policy
                              #:described-server #:described-user
                              #:described-web-app
                              #:described-web-app-customization
                              #:described-web-app-identity-provider-details
                              #:described-workflow #:description #:directory-id
                              #:directory-listing-optimization #:domain
                              #:efs-file-location #:efs-file-system-id
                              #:efs-path #:encryption-alg #:encryption-type
                              #:endpoint-details #:endpoint-type
                              #:enforce-message-signing-type #:execution-error
                              #:execution-error-message #:execution-error-type
                              #:execution-id #:execution-results
                              #:execution-status #:execution-step-result
                              #:execution-step-results #:external-id
                              #:failure-code #:file-location #:file-path
                              #:file-paths #:fips #:function #:home-directory
                              #:home-directory-map-entry
                              #:home-directory-mappings #:home-directory-type
                              #:host-key #:host-key-description
                              #:host-key-fingerprint #:host-key-id
                              #:host-key-type #:identity-center-application-arn
                              #:identity-center-config
                              #:identity-center-instance-arn
                              #:identity-provider-details
                              #:identity-provider-type #:import-certificate
                              #:import-host-key #:import-ssh-public-key
                              #:input-file-location #:ip-address-type
                              #:list-accesses #:list-agreements
                              #:list-certificates #:list-connectors
                              #:list-executions #:list-file-transfer-results
                              #:list-host-keys #:list-profiles
                              #:list-security-policies #:list-servers
                              #:list-tags-for-resource #:list-users
                              #:list-web-apps #:list-workflows #:listed-access
                              #:listed-accesses #:listed-agreement
                              #:listed-agreements #:listed-certificate
                              #:listed-certificates #:listed-connector
                              #:listed-connectors #:listed-execution
                              #:listed-executions #:listed-host-key
                              #:listed-host-keys #:listed-profile
                              #:listed-profiles #:listed-server
                              #:listed-servers #:listed-user #:listed-users
                              #:listed-web-app #:listed-web-apps
                              #:listed-workflow #:listed-workflows #:listing-id
                              #:log-group-name #:logging-configuration
                              #:map-entry #:map-target #:map-type
                              #:max-concurrent-connections #:max-items
                              #:max-results #:mdn-response #:mdn-signing-alg
                              #:message #:message-subject #:move-id
                              #:next-token #:nullable-role
                              #:on-partial-upload-workflow-details
                              #:on-upload-workflow-details #:output-file-name
                              #:overwrite-existing #:passive-ip #:policy
                              #:posix-id #:posix-profile
                              #:post-authentication-login-banner
                              #:pre-authentication-login-banner
                              #:preserve-content-type #:preserve-filename-type
                              #:private-key-type #:profile-id
                              #:profile-resource #:profile-type #:protocol
                              #:protocol-details #:protocols #:resource
                              #:resource-type #:response #:retry-after-seconds
                              #:role #:s3bucket #:s3etag #:s3file-location
                              #:s3input-file-location #:s3key
                              #:s3storage-options #:s3tag #:s3tag-key
                              #:s3tag-value #:s3tags #:s3version-id
                              #:secondary-gids #:secret-id #:security-group-id
                              #:security-group-ids #:security-policy-name
                              #:security-policy-names #:security-policy-option
                              #:security-policy-options
                              #:security-policy-protocol
                              #:security-policy-protocols
                              #:security-policy-resource-type
                              #:send-workflow-step-state #:server-id
                              #:server-resource #:service-error-message
                              #:service-managed-egress-ip-address
                              #:service-managed-egress-ip-addresses
                              #:service-metadata #:session-id #:set-stat-option
                              #:sftp-authentication-methods
                              #:sftp-connector-config
                              #:sftp-connector-connection-details
                              #:sftp-connector-host-key
                              #:sftp-connector-trusted-host-key
                              #:sftp-connector-trusted-host-key-list
                              #:signing-alg #:source-file-location #:source-ip
                              #:ssh-public-key #:ssh-public-key-body
                              #:ssh-public-key-count #:ssh-public-key-id
                              #:ssh-public-keys #:start-directory-listing
                              #:start-file-transfer #:start-remote-delete
                              #:start-remote-move #:start-server #:state
                              #:status #:status-code #:step-result-outputs-json
                              #:stop-server #:structured-log-destinations
                              #:subnet-id #:subnet-ids #:tag #:tag-key
                              #:tag-keys #:tag-resource #:tag-step-details
                              #:tag-value #:tags #:test-connection
                              #:test-identity-provider
                              #:tls-session-resumption-mode #:transfer-id
                              #:transfer-service #:transfer-table-status
                              #:untag-resource #:update-access
                              #:update-agreement #:update-certificate
                              #:update-connector #:update-host-key
                              #:update-profile #:update-server #:update-user
                              #:update-web-app #:update-web-app-customization
                              #:update-web-app-identity-center-config
                              #:update-web-app-identity-provider-details #:url
                              #:user-count #:user-details #:user-name
                              #:user-password #:user-resource #:vpc-endpoint-id
                              #:vpc-id #:web-app-access-endpoint
                              #:web-app-customization-resource
                              #:web-app-endpoint #:web-app-endpoint-policy
                              #:web-app-favicon-file #:web-app-id
                              #:web-app-identity-provider-details
                              #:web-app-logo-file #:web-app-resource
                              #:web-app-title #:web-app-unit-count
                              #:web-app-units #:workflow-description
                              #:workflow-detail #:workflow-details
                              #:workflow-id #:workflow-resource #:workflow-step
                              #:workflow-step-name #:workflow-step-type
                              #:workflow-steps))
(common-lisp:in-package #:pira/transfer)

(smithy/sdk/service:define-service transfer-service :shape-name
                                   "TransferService" :version "2018-11-05"
                                   :title "AWS Transfer Family" :traits
                                   '(("aws.api#service" ("sdkId" . "Transfer")
                                      ("arnNamespace" . "transfer")
                                      ("cloudFormationName" . "Transfer")
                                      ("cloudTrailEventSource"
                                       . "transfer.amazonaws.com")
                                      ("endpointPrefix" . "transfer"))
                                     ("aws.api#tagEnabled")
                                     ("aws.auth#sigv4" ("name" . "transfer"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-list cfn-ssh-public-keys :member ssh-public-key-body)

(smithy/sdk/shapes:define-structure cfn-user-properties common-lisp:nil
                                    ((ssh-public-keys :target-type
                                      cfn-ssh-public-keys :member-name
                                      "SshPublicKeys"))
                                    (:shape-name "CfnUserProperties"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type service-error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type address-allocation-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list address-allocation-ids :member
                               address-allocation-id)

(smithy/sdk/shapes:define-type agreement-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum agreement-status-type
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure as2connector-config common-lisp:nil
                                    ((local-profile-id :target-type profile-id
                                      :member-name "LocalProfileId")
                                     (partner-profile-id :target-type
                                      profile-id :member-name
                                      "PartnerProfileId")
                                     (message-subject :target-type
                                      message-subject :member-name
                                      "MessageSubject")
                                     (compression :target-type compression-enum
                                      :member-name "Compression")
                                     (encryption-algorithm :target-type
                                      encryption-alg :member-name
                                      "EncryptionAlgorithm")
                                     (signing-algorithm :target-type
                                      signing-alg :member-name
                                      "SigningAlgorithm")
                                     (mdn-signing-algorithm :target-type
                                      mdn-signing-alg :member-name
                                      "MdnSigningAlgorithm")
                                     (mdn-response :target-type mdn-response
                                      :member-name "MdnResponse")
                                     (basic-auth-secret-id :target-type
                                      as2connector-secret-id :member-name
                                      "BasicAuthSecretId")
                                     (preserve-content-type :target-type
                                      preserve-content-type :member-name
                                      "PreserveContentType"))
                                    (:shape-name "As2ConnectorConfig"))

(smithy/sdk/shapes:define-type as2connector-secret-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type as2id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum as2transport
    common-lisp:nil
  (:http "HTTP"))

(smithy/sdk/shapes:define-list as2transports :member as2transport)

(smithy/sdk/shapes:define-type callback-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cert-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type cert-serial smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-body-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-chain-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list certificate-ids :member certificate-id)

common-lisp:nil

(smithy/sdk/shapes:define-enum certificate-status-type
    common-lisp:nil
  (:active "ACTIVE")
  (:pending-rotation "PENDING_ROTATION")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-enum certificate-type
    common-lisp:nil
  (:certificate "CERTIFICATE")
  (:certificate-with-private-key "CERTIFICATE_WITH_PRIVATE_KEY"))

(smithy/sdk/shapes:define-enum certificate-usage-type
    common-lisp:nil
  (:signing "SIGNING")
  (:encryption "ENCRYPTION")
  (:tls "TLS"))

(smithy/sdk/shapes:define-enum compression-enum
    common-lisp:nil
  (:zlib "ZLIB")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connector-file-transfer-result
                                    common-lisp:nil
                                    ((file-path :target-type file-path
                                      :required common-lisp:t :member-name
                                      "FilePath")
                                     (status-code :target-type
                                      transfer-table-status :required
                                      common-lisp:t :member-name "StatusCode")
                                     (failure-code :target-type failure-code
                                      :member-name "FailureCode")
                                     (failure-message :target-type message
                                      :member-name "FailureMessage"))
                                    (:shape-name "ConnectorFileTransferResult"))

(smithy/sdk/shapes:define-list connector-file-transfer-results :member
                               connector-file-transfer-result)

(smithy/sdk/shapes:define-type connector-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type connector-security-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure copy-step-details common-lisp:nil
                                    ((name :target-type workflow-step-name
                                      :member-name "Name")
                                     (destination-file-location :target-type
                                      input-file-location :member-name
                                      "DestinationFileLocation")
                                     (overwrite-existing :target-type
                                      overwrite-existing :member-name
                                      "OverwriteExisting")
                                     (source-file-location :target-type
                                      source-file-location :member-name
                                      "SourceFileLocation"))
                                    (:shape-name "CopyStepDetails"))

(smithy/sdk/shapes:define-input create-access-request common-lisp:nil
                                ((home-directory :target-type home-directory
                                  :member-name "HomeDirectory")
                                 (home-directory-type :target-type
                                  home-directory-type :member-name
                                  "HomeDirectoryType")
                                 (home-directory-mappings :target-type
                                  home-directory-mappings :member-name
                                  "HomeDirectoryMappings")
                                 (policy :target-type policy :member-name
                                  "Policy")
                                 (posix-profile :target-type posix-profile
                                  :member-name "PosixProfile")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (external-id :target-type external-id
                                  :required common-lisp:t :member-name
                                  "ExternalId"))
                                (:shape-name "CreateAccessRequest"))

(smithy/sdk/shapes:define-output create-access-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (external-id :target-type external-id
                                   :required common-lisp:t :member-name
                                   "ExternalId"))
                                 (:shape-name "CreateAccessResponse"))

(smithy/sdk/shapes:define-input create-agreement-request common-lisp:nil
                                ((description :target-type description
                                  :member-name "Description")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (local-profile-id :target-type profile-id
                                  :required common-lisp:t :member-name
                                  "LocalProfileId")
                                 (partner-profile-id :target-type profile-id
                                  :required common-lisp:t :member-name
                                  "PartnerProfileId")
                                 (base-directory :target-type home-directory
                                  :member-name "BaseDirectory")
                                 (access-role :target-type role :required
                                  common-lisp:t :member-name "AccessRole")
                                 (status :target-type agreement-status-type
                                  :member-name "Status")
                                 (tags :target-type tags :member-name "Tags")
                                 (preserve-filename :target-type
                                  preserve-filename-type :member-name
                                  "PreserveFilename")
                                 (enforce-message-signing :target-type
                                  enforce-message-signing-type :member-name
                                  "EnforceMessageSigning")
                                 (custom-directories :target-type
                                  custom-directories-type :member-name
                                  "CustomDirectories"))
                                (:shape-name "CreateAgreementRequest"))

(smithy/sdk/shapes:define-output create-agreement-response common-lisp:nil
                                 ((agreement-id :target-type agreement-id
                                   :required common-lisp:t :member-name
                                   "AgreementId"))
                                 (:shape-name "CreateAgreementResponse"))

(smithy/sdk/shapes:define-input create-connector-request common-lisp:nil
                                ((url :target-type url :required common-lisp:t
                                  :member-name "Url")
                                 (as2config :target-type as2connector-config
                                  :member-name "As2Config")
                                 (access-role :target-type role :required
                                  common-lisp:t :member-name "AccessRole")
                                 (logging-role :target-type role :member-name
                                  "LoggingRole")
                                 (tags :target-type tags :member-name "Tags")
                                 (sftp-config :target-type
                                  sftp-connector-config :member-name
                                  "SftpConfig")
                                 (security-policy-name :target-type
                                  connector-security-policy-name :member-name
                                  "SecurityPolicyName"))
                                (:shape-name "CreateConnectorRequest"))

(smithy/sdk/shapes:define-output create-connector-response common-lisp:nil
                                 ((connector-id :target-type connector-id
                                   :required common-lisp:t :member-name
                                   "ConnectorId"))
                                 (:shape-name "CreateConnectorResponse"))

(smithy/sdk/shapes:define-input create-profile-request common-lisp:nil
                                ((as2id :target-type as2id :required
                                  common-lisp:t :member-name "As2Id")
                                 (profile-type :target-type profile-type
                                  :required common-lisp:t :member-name
                                  "ProfileType")
                                 (certificate-ids :target-type certificate-ids
                                  :member-name "CertificateIds")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateProfileRequest"))

(smithy/sdk/shapes:define-output create-profile-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "ProfileId"))
                                 (:shape-name "CreateProfileResponse"))

(smithy/sdk/shapes:define-input create-server-request common-lisp:nil
                                ((certificate :target-type certificate
                                  :member-name "Certificate")
                                 (domain :target-type domain :member-name
                                  "Domain")
                                 (endpoint-details :target-type
                                  endpoint-details :member-name
                                  "EndpointDetails")
                                 (endpoint-type :target-type endpoint-type
                                  :member-name "EndpointType")
                                 (host-key :target-type host-key :member-name
                                  "HostKey")
                                 (identity-provider-details :target-type
                                  identity-provider-details :member-name
                                  "IdentityProviderDetails")
                                 (identity-provider-type :target-type
                                  identity-provider-type :member-name
                                  "IdentityProviderType")
                                 (logging-role :target-type nullable-role
                                  :member-name "LoggingRole")
                                 (post-authentication-login-banner :target-type
                                  post-authentication-login-banner :member-name
                                  "PostAuthenticationLoginBanner")
                                 (pre-authentication-login-banner :target-type
                                  pre-authentication-login-banner :member-name
                                  "PreAuthenticationLoginBanner")
                                 (protocols :target-type protocols :member-name
                                  "Protocols")
                                 (protocol-details :target-type
                                  protocol-details :member-name
                                  "ProtocolDetails")
                                 (security-policy-name :target-type
                                  security-policy-name :member-name
                                  "SecurityPolicyName")
                                 (tags :target-type tags :member-name "Tags")
                                 (workflow-details :target-type
                                  workflow-details :member-name
                                  "WorkflowDetails")
                                 (structured-log-destinations :target-type
                                  structured-log-destinations :member-name
                                  "StructuredLogDestinations")
                                 (s3storage-options :target-type
                                  s3storage-options :member-name
                                  "S3StorageOptions")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType"))
                                (:shape-name "CreateServerRequest"))

(smithy/sdk/shapes:define-output create-server-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId"))
                                 (:shape-name "CreateServerResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((home-directory :target-type home-directory
                                  :member-name "HomeDirectory")
                                 (home-directory-type :target-type
                                  home-directory-type :member-name
                                  "HomeDirectoryType")
                                 (home-directory-mappings :target-type
                                  home-directory-mappings :member-name
                                  "HomeDirectoryMappings")
                                 (policy :target-type policy :member-name
                                  "Policy")
                                 (posix-profile :target-type posix-profile
                                  :member-name "PosixProfile")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (ssh-public-key-body :target-type
                                  ssh-public-key-body :member-name
                                  "SshPublicKeyBody")
                                 (tags :target-type tags :member-name "Tags")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (user-name :target-type user-name :required
                                   common-lisp:t :member-name "UserName"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-input create-web-app-request common-lisp:nil
                                ((identity-provider-details :target-type
                                  web-app-identity-provider-details :required
                                  common-lisp:t :member-name
                                  "IdentityProviderDetails")
                                 (access-endpoint :target-type
                                  web-app-access-endpoint :member-name
                                  "AccessEndpoint")
                                 (web-app-units :target-type web-app-units
                                  :member-name "WebAppUnits")
                                 (tags :target-type tags :member-name "Tags")
                                 (web-app-endpoint-policy :target-type
                                  web-app-endpoint-policy :member-name
                                  "WebAppEndpointPolicy"))
                                (:shape-name "CreateWebAppRequest"))

(smithy/sdk/shapes:define-output create-web-app-response common-lisp:nil
                                 ((web-app-id :target-type web-app-id :required
                                   common-lisp:t :member-name "WebAppId"))
                                 (:shape-name "CreateWebAppResponse"))

(smithy/sdk/shapes:define-input create-workflow-request common-lisp:nil
                                ((description :target-type workflow-description
                                  :member-name "Description")
                                 (steps :target-type workflow-steps :required
                                  common-lisp:t :member-name "Steps")
                                 (on-exception-steps :target-type
                                  workflow-steps :member-name
                                  "OnExceptionSteps")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateWorkflowRequest"))

(smithy/sdk/shapes:define-output create-workflow-response common-lisp:nil
                                 ((workflow-id :target-type workflow-id
                                   :required common-lisp:t :member-name
                                   "WorkflowId"))
                                 (:shape-name "CreateWorkflowResponse"))

(smithy/sdk/shapes:define-structure custom-directories-type common-lisp:nil
                                    ((failed-files-directory :target-type
                                      home-directory :required common-lisp:t
                                      :member-name "FailedFilesDirectory")
                                     (mdn-files-directory :target-type
                                      home-directory :required common-lisp:t
                                      :member-name "MdnFilesDirectory")
                                     (payload-files-directory :target-type
                                      home-directory :required common-lisp:t
                                      :member-name "PayloadFilesDirectory")
                                     (status-files-directory :target-type
                                      home-directory :required common-lisp:t
                                      :member-name "StatusFilesDirectory")
                                     (temporary-files-directory :target-type
                                      home-directory :required common-lisp:t
                                      :member-name "TemporaryFilesDirectory"))
                                    (:shape-name "CustomDirectoriesType"))

(smithy/sdk/shapes:define-structure custom-step-details common-lisp:nil
                                    ((name :target-type workflow-step-name
                                      :member-name "Name")
                                     (target :target-type custom-step-target
                                      :member-name "Target")
                                     (timeout-seconds :target-type
                                      custom-step-timeout-seconds :member-name
                                      "TimeoutSeconds")
                                     (source-file-location :target-type
                                      source-file-location :member-name
                                      "SourceFileLocation"))
                                    (:shape-name "CustomStepDetails"))

(smithy/sdk/shapes:define-enum custom-step-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failure "FAILURE"))

(smithy/sdk/shapes:define-type custom-step-target
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-step-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type date-imported smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure decrypt-step-details common-lisp:nil
                                    ((name :target-type workflow-step-name
                                      :member-name "Name")
                                     (type :target-type encryption-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (source-file-location :target-type
                                      source-file-location :member-name
                                      "SourceFileLocation")
                                     (overwrite-existing :target-type
                                      overwrite-existing :member-name
                                      "OverwriteExisting")
                                     (destination-file-location :target-type
                                      input-file-location :required
                                      common-lisp:t :member-name
                                      "DestinationFileLocation"))
                                    (:shape-name "DecryptStepDetails"))

(smithy/sdk/shapes:define-input delete-access-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (external-id :target-type external-id
                                  :required common-lisp:t :member-name
                                  "ExternalId"))
                                (:shape-name "DeleteAccessRequest"))

(smithy/sdk/shapes:define-input delete-agreement-request common-lisp:nil
                                ((agreement-id :target-type agreement-id
                                  :required common-lisp:t :member-name
                                  "AgreementId")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "DeleteAgreementRequest"))

(smithy/sdk/shapes:define-input delete-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "CertificateId"))
                                (:shape-name "DeleteCertificateRequest"))

(smithy/sdk/shapes:define-input delete-connector-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId"))
                                (:shape-name "DeleteConnectorRequest"))

(smithy/sdk/shapes:define-input delete-host-key-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (host-key-id :target-type host-key-id
                                  :required common-lisp:t :member-name
                                  "HostKeyId"))
                                (:shape-name "DeleteHostKeyRequest"))

(smithy/sdk/shapes:define-type delete-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-profile-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "ProfileId"))
                                (:shape-name "DeleteProfileRequest"))

(smithy/sdk/shapes:define-input delete-server-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "DeleteServerRequest"))

(smithy/sdk/shapes:define-input delete-ssh-public-key-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (ssh-public-key-id :target-type
                                  ssh-public-key-id :required common-lisp:t
                                  :member-name "SshPublicKeyId")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "DeleteSshPublicKeyRequest"))

(smithy/sdk/shapes:define-structure delete-step-details common-lisp:nil
                                    ((name :target-type workflow-step-name
                                      :member-name "Name")
                                     (source-file-location :target-type
                                      source-file-location :member-name
                                      "SourceFileLocation"))
                                    (:shape-name "DeleteStepDetails"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-input delete-web-app-customization-request
                                common-lisp:nil
                                ((web-app-id :target-type web-app-id :required
                                  common-lisp:t :member-name "WebAppId"))
                                (:shape-name
                                 "DeleteWebAppCustomizationRequest"))

(smithy/sdk/shapes:define-input delete-web-app-request common-lisp:nil
                                ((web-app-id :target-type web-app-id :required
                                  common-lisp:t :member-name "WebAppId"))
                                (:shape-name "DeleteWebAppRequest"))

(smithy/sdk/shapes:define-input delete-workflow-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "WorkflowId"))
                                (:shape-name "DeleteWorkflowRequest"))

(smithy/sdk/shapes:define-input describe-access-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (external-id :target-type external-id
                                  :required common-lisp:t :member-name
                                  "ExternalId"))
                                (:shape-name "DescribeAccessRequest"))

(smithy/sdk/shapes:define-output describe-access-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (access :target-type described-access
                                   :required common-lisp:t :member-name
                                   "Access"))
                                 (:shape-name "DescribeAccessResponse"))

(smithy/sdk/shapes:define-input describe-agreement-request common-lisp:nil
                                ((agreement-id :target-type agreement-id
                                  :required common-lisp:t :member-name
                                  "AgreementId")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "DescribeAgreementRequest"))

(smithy/sdk/shapes:define-output describe-agreement-response common-lisp:nil
                                 ((agreement :target-type described-agreement
                                   :required common-lisp:t :member-name
                                   "Agreement"))
                                 (:shape-name "DescribeAgreementResponse"))

(smithy/sdk/shapes:define-input describe-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "CertificateId"))
                                (:shape-name "DescribeCertificateRequest"))

(smithy/sdk/shapes:define-output describe-certificate-response common-lisp:nil
                                 ((certificate :target-type
                                   described-certificate :required
                                   common-lisp:t :member-name "Certificate"))
                                 (:shape-name "DescribeCertificateResponse"))

(smithy/sdk/shapes:define-input describe-connector-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId"))
                                (:shape-name "DescribeConnectorRequest"))

(smithy/sdk/shapes:define-output describe-connector-response common-lisp:nil
                                 ((connector :target-type described-connector
                                   :required common-lisp:t :member-name
                                   "Connector"))
                                 (:shape-name "DescribeConnectorResponse"))

(smithy/sdk/shapes:define-input describe-execution-request common-lisp:nil
                                ((execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "ExecutionId")
                                 (workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "WorkflowId"))
                                (:shape-name "DescribeExecutionRequest"))

(smithy/sdk/shapes:define-output describe-execution-response common-lisp:nil
                                 ((workflow-id :target-type workflow-id
                                   :required common-lisp:t :member-name
                                   "WorkflowId")
                                  (execution :target-type described-execution
                                   :required common-lisp:t :member-name
                                   "Execution"))
                                 (:shape-name "DescribeExecutionResponse"))

(smithy/sdk/shapes:define-input describe-host-key-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (host-key-id :target-type host-key-id
                                  :required common-lisp:t :member-name
                                  "HostKeyId"))
                                (:shape-name "DescribeHostKeyRequest"))

(smithy/sdk/shapes:define-output describe-host-key-response common-lisp:nil
                                 ((host-key :target-type described-host-key
                                   :required common-lisp:t :member-name
                                   "HostKey"))
                                 (:shape-name "DescribeHostKeyResponse"))

(smithy/sdk/shapes:define-input describe-profile-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "ProfileId"))
                                (:shape-name "DescribeProfileRequest"))

(smithy/sdk/shapes:define-output describe-profile-response common-lisp:nil
                                 ((profile :target-type described-profile
                                   :required common-lisp:t :member-name
                                   "Profile"))
                                 (:shape-name "DescribeProfileResponse"))

(smithy/sdk/shapes:define-input describe-security-policy-request
                                common-lisp:nil
                                ((security-policy-name :target-type
                                  security-policy-name :required common-lisp:t
                                  :member-name "SecurityPolicyName"))
                                (:shape-name "DescribeSecurityPolicyRequest"))

(smithy/sdk/shapes:define-output describe-security-policy-response
                                 common-lisp:nil
                                 ((security-policy :target-type
                                   described-security-policy :required
                                   common-lisp:t :member-name
                                   "SecurityPolicy"))
                                 (:shape-name "DescribeSecurityPolicyResponse"))

(smithy/sdk/shapes:define-input describe-server-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "DescribeServerRequest"))

(smithy/sdk/shapes:define-output describe-server-response common-lisp:nil
                                 ((server :target-type described-server
                                   :required common-lisp:t :member-name
                                   "Server"))
                                 (:shape-name "DescribeServerResponse"))

(smithy/sdk/shapes:define-input describe-user-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "DescribeUserRequest"))

(smithy/sdk/shapes:define-output describe-user-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (user :target-type described-user :required
                                   common-lisp:t :member-name "User"))
                                 (:shape-name "DescribeUserResponse"))

(smithy/sdk/shapes:define-input describe-web-app-customization-request
                                common-lisp:nil
                                ((web-app-id :target-type web-app-id :required
                                  common-lisp:t :member-name "WebAppId"))
                                (:shape-name
                                 "DescribeWebAppCustomizationRequest"))

(smithy/sdk/shapes:define-output describe-web-app-customization-response
                                 common-lisp:nil
                                 ((web-app-customization :target-type
                                   described-web-app-customization :required
                                   common-lisp:t :member-name
                                   "WebAppCustomization"))
                                 (:shape-name
                                  "DescribeWebAppCustomizationResponse"))

(smithy/sdk/shapes:define-input describe-web-app-request common-lisp:nil
                                ((web-app-id :target-type web-app-id :required
                                  common-lisp:t :member-name "WebAppId"))
                                (:shape-name "DescribeWebAppRequest"))

(smithy/sdk/shapes:define-output describe-web-app-response common-lisp:nil
                                 ((web-app :target-type described-web-app
                                   :required common-lisp:t :member-name
                                   "WebApp"))
                                 (:shape-name "DescribeWebAppResponse"))

(smithy/sdk/shapes:define-input describe-workflow-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "WorkflowId"))
                                (:shape-name "DescribeWorkflowRequest"))

(smithy/sdk/shapes:define-output describe-workflow-response common-lisp:nil
                                 ((workflow :target-type described-workflow
                                   :required common-lisp:t :member-name
                                   "Workflow"))
                                 (:shape-name "DescribeWorkflowResponse"))

(smithy/sdk/shapes:define-structure described-access common-lisp:nil
                                    ((home-directory :target-type
                                      home-directory :member-name
                                      "HomeDirectory")
                                     (home-directory-mappings :target-type
                                      home-directory-mappings :member-name
                                      "HomeDirectoryMappings")
                                     (home-directory-type :target-type
                                      home-directory-type :member-name
                                      "HomeDirectoryType")
                                     (policy :target-type policy :member-name
                                      "Policy")
                                     (posix-profile :target-type posix-profile
                                      :member-name "PosixProfile")
                                     (role :target-type role :member-name
                                      "Role")
                                     (external-id :target-type external-id
                                      :member-name "ExternalId"))
                                    (:shape-name "DescribedAccess"))

(smithy/sdk/shapes:define-structure described-agreement common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (agreement-id :target-type agreement-id
                                      :member-name "AgreementId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type agreement-status-type
                                      :member-name "Status")
                                     (server-id :target-type server-id
                                      :member-name "ServerId")
                                     (local-profile-id :target-type profile-id
                                      :member-name "LocalProfileId")
                                     (partner-profile-id :target-type
                                      profile-id :member-name
                                      "PartnerProfileId")
                                     (base-directory :target-type
                                      home-directory :member-name
                                      "BaseDirectory")
                                     (access-role :target-type role
                                      :member-name "AccessRole")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (preserve-filename :target-type
                                      preserve-filename-type :member-name
                                      "PreserveFilename")
                                     (enforce-message-signing :target-type
                                      enforce-message-signing-type :member-name
                                      "EnforceMessageSigning")
                                     (custom-directories :target-type
                                      custom-directories-type :member-name
                                      "CustomDirectories"))
                                    (:shape-name "DescribedAgreement"))

(smithy/sdk/shapes:define-structure described-certificate common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "CertificateId")
                                     (usage :target-type certificate-usage-type
                                      :member-name "Usage")
                                     (status :target-type
                                      certificate-status-type :member-name
                                      "Status")
                                     (certificate :target-type
                                      certificate-body-type :member-name
                                      "Certificate")
                                     (certificate-chain :target-type
                                      certificate-chain-type :member-name
                                      "CertificateChain")
                                     (active-date :target-type cert-date
                                      :member-name "ActiveDate")
                                     (inactive-date :target-type cert-date
                                      :member-name "InactiveDate")
                                     (serial :target-type cert-serial
                                      :member-name "Serial")
                                     (not-before-date :target-type cert-date
                                      :member-name "NotBeforeDate")
                                     (not-after-date :target-type cert-date
                                      :member-name "NotAfterDate")
                                     (type :target-type certificate-type
                                      :member-name "Type")
                                     (description :target-type description
                                      :member-name "Description")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "DescribedCertificate"))

(smithy/sdk/shapes:define-structure described-connector common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (connector-id :target-type connector-id
                                      :member-name "ConnectorId")
                                     (url :target-type url :member-name "Url")
                                     (as2config :target-type
                                      as2connector-config :member-name
                                      "As2Config")
                                     (access-role :target-type role
                                      :member-name "AccessRole")
                                     (logging-role :target-type role
                                      :member-name "LoggingRole")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (sftp-config :target-type
                                      sftp-connector-config :member-name
                                      "SftpConfig")
                                     (service-managed-egress-ip-addresses
                                      :target-type
                                      service-managed-egress-ip-addresses
                                      :member-name
                                      "ServiceManagedEgressIpAddresses")
                                     (security-policy-name :target-type
                                      connector-security-policy-name
                                      :member-name "SecurityPolicyName"))
                                    (:shape-name "DescribedConnector"))

(smithy/sdk/shapes:define-structure described-execution common-lisp:nil
                                    ((execution-id :target-type execution-id
                                      :member-name "ExecutionId")
                                     (initial-file-location :target-type
                                      file-location :member-name
                                      "InitialFileLocation")
                                     (service-metadata :target-type
                                      service-metadata :member-name
                                      "ServiceMetadata")
                                     (execution-role :target-type role
                                      :member-name "ExecutionRole")
                                     (logging-configuration :target-type
                                      logging-configuration :member-name
                                      "LoggingConfiguration")
                                     (posix-profile :target-type posix-profile
                                      :member-name "PosixProfile")
                                     (status :target-type execution-status
                                      :member-name "Status")
                                     (results :target-type execution-results
                                      :member-name "Results"))
                                    (:shape-name "DescribedExecution"))

(smithy/sdk/shapes:define-structure described-host-key common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (host-key-id :target-type host-key-id
                                      :member-name "HostKeyId")
                                     (host-key-fingerprint :target-type
                                      host-key-fingerprint :member-name
                                      "HostKeyFingerprint")
                                     (description :target-type
                                      host-key-description :member-name
                                      "Description")
                                     (type :target-type host-key-type
                                      :member-name "Type")
                                     (date-imported :target-type date-imported
                                      :member-name "DateImported")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "DescribedHostKey"))

(smithy/sdk/shapes:define-structure described-identity-center-config
                                    common-lisp:nil
                                    ((application-arn :target-type
                                      identity-center-application-arn
                                      :member-name "ApplicationArn")
                                     (instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "InstanceArn")
                                     (role :target-type role :member-name
                                      "Role"))
                                    (:shape-name
                                     "DescribedIdentityCenterConfig"))

(smithy/sdk/shapes:define-structure described-profile common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (profile-id :target-type profile-id
                                      :member-name "ProfileId")
                                     (profile-type :target-type profile-type
                                      :member-name "ProfileType")
                                     (as2id :target-type as2id :member-name
                                      "As2Id")
                                     (certificate-ids :target-type
                                      certificate-ids :member-name
                                      "CertificateIds")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "DescribedProfile"))

(smithy/sdk/shapes:define-structure described-security-policy common-lisp:nil
                                    ((fips :target-type fips :member-name
                                      "Fips")
                                     (security-policy-name :target-type
                                      security-policy-name :required
                                      common-lisp:t :member-name
                                      "SecurityPolicyName")
                                     (ssh-ciphers :target-type
                                      security-policy-options :member-name
                                      "SshCiphers")
                                     (ssh-kexs :target-type
                                      security-policy-options :member-name
                                      "SshKexs")
                                     (ssh-macs :target-type
                                      security-policy-options :member-name
                                      "SshMacs")
                                     (tls-ciphers :target-type
                                      security-policy-options :member-name
                                      "TlsCiphers")
                                     (ssh-host-key-algorithms :target-type
                                      security-policy-options :member-name
                                      "SshHostKeyAlgorithms")
                                     (type :target-type
                                      security-policy-resource-type
                                      :member-name "Type")
                                     (protocols :target-type
                                      security-policy-protocols :member-name
                                      "Protocols"))
                                    (:shape-name "DescribedSecurityPolicy"))

(smithy/sdk/shapes:define-structure described-server common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (certificate :target-type certificate
                                      :member-name "Certificate")
                                     (protocol-details :target-type
                                      protocol-details :member-name
                                      "ProtocolDetails")
                                     (domain :target-type domain :member-name
                                      "Domain")
                                     (endpoint-details :target-type
                                      endpoint-details :member-name
                                      "EndpointDetails")
                                     (endpoint-type :target-type endpoint-type
                                      :member-name "EndpointType")
                                     (host-key-fingerprint :target-type
                                      host-key-fingerprint :member-name
                                      "HostKeyFingerprint")
                                     (identity-provider-details :target-type
                                      identity-provider-details :member-name
                                      "IdentityProviderDetails")
                                     (identity-provider-type :target-type
                                      identity-provider-type :member-name
                                      "IdentityProviderType")
                                     (logging-role :target-type nullable-role
                                      :member-name "LoggingRole")
                                     (post-authentication-login-banner
                                      :target-type
                                      post-authentication-login-banner
                                      :member-name
                                      "PostAuthenticationLoginBanner")
                                     (pre-authentication-login-banner
                                      :target-type
                                      pre-authentication-login-banner
                                      :member-name
                                      "PreAuthenticationLoginBanner")
                                     (protocols :target-type protocols
                                      :member-name "Protocols")
                                     (security-policy-name :target-type
                                      security-policy-name :member-name
                                      "SecurityPolicyName")
                                     (server-id :target-type server-id
                                      :member-name "ServerId")
                                     (state :target-type state :member-name
                                      "State")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (user-count :target-type user-count
                                      :member-name "UserCount")
                                     (workflow-details :target-type
                                      workflow-details :member-name
                                      "WorkflowDetails")
                                     (structured-log-destinations :target-type
                                      structured-log-destinations :member-name
                                      "StructuredLogDestinations")
                                     (s3storage-options :target-type
                                      s3storage-options :member-name
                                      "S3StorageOptions")
                                     (as2service-managed-egress-ip-addresses
                                      :target-type
                                      service-managed-egress-ip-addresses
                                      :member-name
                                      "As2ServiceManagedEgressIpAddresses")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType"))
                                    (:shape-name "DescribedServer"))

(smithy/sdk/shapes:define-structure described-user common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (home-directory :target-type
                                      home-directory :member-name
                                      "HomeDirectory")
                                     (home-directory-mappings :target-type
                                      home-directory-mappings :member-name
                                      "HomeDirectoryMappings")
                                     (home-directory-type :target-type
                                      home-directory-type :member-name
                                      "HomeDirectoryType")
                                     (policy :target-type policy :member-name
                                      "Policy")
                                     (posix-profile :target-type posix-profile
                                      :member-name "PosixProfile")
                                     (role :target-type role :member-name
                                      "Role")
                                     (ssh-public-keys :target-type
                                      ssh-public-keys :member-name
                                      "SshPublicKeys")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (user-name :target-type user-name
                                      :member-name "UserName"))
                                    (:shape-name "DescribedUser"))

(smithy/sdk/shapes:define-structure described-web-app common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (web-app-id :target-type web-app-id
                                      :required common-lisp:t :member-name
                                      "WebAppId")
                                     (described-identity-provider-details
                                      :target-type
                                      described-web-app-identity-provider-details
                                      :member-name
                                      "DescribedIdentityProviderDetails")
                                     (access-endpoint :target-type
                                      web-app-access-endpoint :member-name
                                      "AccessEndpoint")
                                     (web-app-endpoint :target-type
                                      web-app-endpoint :member-name
                                      "WebAppEndpoint")
                                     (web-app-units :target-type web-app-units
                                      :member-name "WebAppUnits")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (web-app-endpoint-policy :target-type
                                      web-app-endpoint-policy :member-name
                                      "WebAppEndpointPolicy"))
                                    (:shape-name "DescribedWebApp"))

(smithy/sdk/shapes:define-structure described-web-app-customization
                                    common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (web-app-id :target-type web-app-id
                                      :required common-lisp:t :member-name
                                      "WebAppId")
                                     (title :target-type web-app-title
                                      :member-name "Title")
                                     (logo-file :target-type web-app-logo-file
                                      :member-name "LogoFile")
                                     (favicon-file :target-type
                                      web-app-favicon-file :member-name
                                      "FaviconFile"))
                                    (:shape-name
                                     "DescribedWebAppCustomization"))

(smithy/sdk/shapes:define-union described-web-app-identity-provider-details
                                common-lisp:nil
                                ((identity-center-config :target-type
                                  described-identity-center-config :member-name
                                  "IdentityCenterConfig"))
                                (:shape-name
                                 "DescribedWebAppIdentityProviderDetails"))

(smithy/sdk/shapes:define-structure described-workflow common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (description :target-type
                                      workflow-description :member-name
                                      "Description")
                                     (steps :target-type workflow-steps
                                      :member-name "Steps")
                                     (on-exception-steps :target-type
                                      workflow-steps :member-name
                                      "OnExceptionSteps")
                                     (workflow-id :target-type workflow-id
                                      :member-name "WorkflowId")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "DescribedWorkflow"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum directory-listing-optimization
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum domain
    common-lisp:nil
  (:s3 "S3")
  (:efs "EFS"))

(smithy/sdk/shapes:define-structure efs-file-location common-lisp:nil
                                    ((file-system-id :target-type
                                      efs-file-system-id :member-name
                                      "FileSystemId")
                                     (path :target-type efs-path :member-name
                                      "Path"))
                                    (:shape-name "EfsFileLocation"))

(smithy/sdk/shapes:define-type efs-file-system-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type efs-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-alg
    common-lisp:nil
  (:aes128-cbc "AES128_CBC")
  (:aes192-cbc "AES192_CBC")
  (:aes256-cbc "AES256_CBC")
  (:des-ede3-cbc "DES_EDE3_CBC")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:pgp "PGP"))

(smithy/sdk/shapes:define-structure endpoint-details common-lisp:nil
                                    ((address-allocation-ids :target-type
                                      address-allocation-ids :member-name
                                      "AddressAllocationIds")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "VpcEndpointId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "EndpointDetails"))

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:public "PUBLIC")
  (:vpc "VPC")
  (:vpc-endpoint "VPC_ENDPOINT"))

(smithy/sdk/shapes:define-enum enforce-message-signing-type
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure execution-error common-lisp:nil
                                    ((type :target-type execution-error-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (message :target-type
                                      execution-error-message :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ExecutionError"))

(smithy/sdk/shapes:define-type execution-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum execution-error-type
    common-lisp:nil
  (:permission-denied "PERMISSION_DENIED")
  (:custom-step-failed "CUSTOM_STEP_FAILED")
  (:throttled "THROTTLED")
  (:already-exists "ALREADY_EXISTS")
  (:not-found "NOT_FOUND")
  (:bad-request "BAD_REQUEST")
  (:timeout "TIMEOUT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-type execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-results common-lisp:nil
                                    ((steps :target-type execution-step-results
                                      :member-name "Steps")
                                     (on-exception-steps :target-type
                                      execution-step-results :member-name
                                      "OnExceptionSteps"))
                                    (:shape-name "ExecutionResults"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:exception "EXCEPTION")
  (:handling-exception "HANDLING_EXCEPTION"))

(smithy/sdk/shapes:define-structure execution-step-result common-lisp:nil
                                    ((step-type :target-type workflow-step-type
                                      :member-name "StepType")
                                     (outputs :target-type
                                      step-result-outputs-json :member-name
                                      "Outputs")
                                     (error :target-type execution-error
                                      :member-name "Error"))
                                    (:shape-name "ExecutionStepResult"))

(smithy/sdk/shapes:define-list execution-step-results :member
                               execution-step-result)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-location common-lisp:nil
                                    ((s3file-location :target-type
                                      s3file-location :member-name
                                      "S3FileLocation")
                                     (efs-file-location :target-type
                                      efs-file-location :member-name
                                      "EfsFileLocation"))
                                    (:shape-name "FileLocation"))

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list file-paths :member file-path)

(smithy/sdk/shapes:define-type fips smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type function smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type home-directory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure home-directory-map-entry common-lisp:nil
                                    ((entry :target-type map-entry :required
                                      common-lisp:t :member-name "Entry")
                                     (target :target-type map-target :required
                                      common-lisp:t :member-name "Target")
                                     (type :target-type map-type :member-name
                                      "Type"))
                                    (:shape-name "HomeDirectoryMapEntry"))

(smithy/sdk/shapes:define-list home-directory-mappings :member
                               home-directory-map-entry)

(smithy/sdk/shapes:define-enum home-directory-type
    common-lisp:nil
  (:path "PATH")
  (:logical "LOGICAL"))

(smithy/sdk/shapes:define-type host-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-key-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-key-fingerprint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-center-config common-lisp:nil
                                    ((instance-arn :target-type
                                      identity-center-instance-arn :member-name
                                      "InstanceArn")
                                     (role :target-type role :member-name
                                      "Role"))
                                    (:shape-name "IdentityCenterConfig"))

(smithy/sdk/shapes:define-type identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-provider-details common-lisp:nil
                                    ((url :target-type url :member-name "Url")
                                     (invocation-role :target-type role
                                      :member-name "InvocationRole")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (function :target-type function
                                      :member-name "Function")
                                     (sftp-authentication-methods :target-type
                                      sftp-authentication-methods :member-name
                                      "SftpAuthenticationMethods"))
                                    (:shape-name "IdentityProviderDetails"))

(smithy/sdk/shapes:define-enum identity-provider-type
    common-lisp:nil
  (:service-managed "SERVICE_MANAGED")
  (:api-gateway "API_GATEWAY")
  (:aws-directory-service "AWS_DIRECTORY_SERVICE")
  (:aws-lambda "AWS_LAMBDA"))

(smithy/sdk/shapes:define-input import-certificate-request common-lisp:nil
                                ((usage :target-type certificate-usage-type
                                  :required common-lisp:t :member-name "Usage")
                                 (certificate :target-type
                                  certificate-body-type :required common-lisp:t
                                  :member-name "Certificate")
                                 (certificate-chain :target-type
                                  certificate-chain-type :member-name
                                  "CertificateChain")
                                 (private-key :target-type private-key-type
                                  :member-name "PrivateKey")
                                 (active-date :target-type cert-date
                                  :member-name "ActiveDate")
                                 (inactive-date :target-type cert-date
                                  :member-name "InactiveDate")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "ImportCertificateRequest"))

(smithy/sdk/shapes:define-output import-certificate-response common-lisp:nil
                                 ((certificate-id :target-type certificate-id
                                   :required common-lisp:t :member-name
                                   "CertificateId"))
                                 (:shape-name "ImportCertificateResponse"))

(smithy/sdk/shapes:define-input import-host-key-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (host-key-body :target-type host-key :required
                                  common-lisp:t :member-name "HostKeyBody")
                                 (description :target-type host-key-description
                                  :member-name "Description")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "ImportHostKeyRequest"))

(smithy/sdk/shapes:define-output import-host-key-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (host-key-id :target-type host-key-id
                                   :required common-lisp:t :member-name
                                   "HostKeyId"))
                                 (:shape-name "ImportHostKeyResponse"))

(smithy/sdk/shapes:define-input import-ssh-public-key-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (ssh-public-key-body :target-type
                                  ssh-public-key-body :required common-lisp:t
                                  :member-name "SshPublicKeyBody")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "ImportSshPublicKeyRequest"))

(smithy/sdk/shapes:define-output import-ssh-public-key-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (ssh-public-key-id :target-type
                                   ssh-public-key-id :required common-lisp:t
                                   :member-name "SshPublicKeyId")
                                  (user-name :target-type user-name :required
                                   common-lisp:t :member-name "UserName"))
                                 (:shape-name "ImportSshPublicKeyResponse"))

(smithy/sdk/shapes:define-structure input-file-location common-lisp:nil
                                    ((s3file-location :target-type
                                      s3input-file-location :member-name
                                      "S3FileLocation")
                                     (efs-file-location :target-type
                                      efs-file-location :member-name
                                      "EfsFileLocation"))
                                    (:shape-name "InputFileLocation"))

(smithy/sdk/shapes:define-error internal-service-error common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServiceError")
                                (:error-code 503))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dualstack "DUALSTACK"))

(smithy/sdk/shapes:define-input list-accesses-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "ListAccessesRequest"))

(smithy/sdk/shapes:define-output list-accesses-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (accesses :target-type listed-accesses
                                   :required common-lisp:t :member-name
                                   "Accesses"))
                                 (:shape-name "ListAccessesResponse"))

(smithy/sdk/shapes:define-input list-agreements-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "ListAgreementsRequest"))

(smithy/sdk/shapes:define-output list-agreements-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (agreements :target-type listed-agreements
                                   :required common-lisp:t :member-name
                                   "Agreements"))
                                 (:shape-name "ListAgreementsResponse"))

(smithy/sdk/shapes:define-input list-certificates-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListCertificatesRequest"))

(smithy/sdk/shapes:define-output list-certificates-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (certificates :target-type
                                   listed-certificates :required common-lisp:t
                                   :member-name "Certificates"))
                                 (:shape-name "ListCertificatesResponse"))

(smithy/sdk/shapes:define-input list-connectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListConnectorsRequest"))

(smithy/sdk/shapes:define-output list-connectors-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (connectors :target-type listed-connectors
                                   :required common-lisp:t :member-name
                                   "Connectors"))
                                 (:shape-name "ListConnectorsResponse"))

(smithy/sdk/shapes:define-input list-executions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "WorkflowId"))
                                (:shape-name "ListExecutionsRequest"))

(smithy/sdk/shapes:define-output list-executions-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (workflow-id :target-type workflow-id
                                   :required common-lisp:t :member-name
                                   "WorkflowId")
                                  (executions :target-type listed-executions
                                   :required common-lisp:t :member-name
                                   "Executions"))
                                 (:shape-name "ListExecutionsResponse"))

(smithy/sdk/shapes:define-input list-file-transfer-results-request
                                common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId")
                                 (transfer-id :target-type transfer-id
                                  :required common-lisp:t :member-name
                                  "TransferId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListFileTransferResultsRequest"))

(smithy/sdk/shapes:define-output list-file-transfer-results-response
                                 common-lisp:nil
                                 ((file-transfer-results :target-type
                                   connector-file-transfer-results :required
                                   common-lisp:t :member-name
                                   "FileTransferResults")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListFileTransferResultsResponse"))

(smithy/sdk/shapes:define-input list-host-keys-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "ListHostKeysRequest"))

(smithy/sdk/shapes:define-output list-host-keys-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (host-keys :target-type listed-host-keys
                                   :required common-lisp:t :member-name
                                   "HostKeys"))
                                 (:shape-name "ListHostKeysResponse"))

(smithy/sdk/shapes:define-input list-profiles-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (profile-type :target-type profile-type
                                  :member-name "ProfileType"))
                                (:shape-name "ListProfilesRequest"))

(smithy/sdk/shapes:define-output list-profiles-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (profiles :target-type listed-profiles
                                   :required common-lisp:t :member-name
                                   "Profiles"))
                                 (:shape-name "ListProfilesResponse"))

(smithy/sdk/shapes:define-input list-security-policies-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListSecurityPoliciesRequest"))

(smithy/sdk/shapes:define-output list-security-policies-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (security-policy-names :target-type
                                   security-policy-names :required
                                   common-lisp:t :member-name
                                   "SecurityPolicyNames"))
                                 (:shape-name "ListSecurityPoliciesResponse"))

(smithy/sdk/shapes:define-input list-servers-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListServersRequest"))

(smithy/sdk/shapes:define-output list-servers-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (servers :target-type listed-servers
                                   :required common-lisp:t :member-name
                                   "Servers"))
                                 (:shape-name "ListServersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (users :target-type listed-users :required
                                   common-lisp:t :member-name "Users"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-input list-web-apps-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListWebAppsRequest"))

(smithy/sdk/shapes:define-output list-web-apps-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (web-apps :target-type listed-web-apps
                                   :required common-lisp:t :member-name
                                   "WebApps"))
                                 (:shape-name "ListWebAppsResponse"))

(smithy/sdk/shapes:define-input list-workflows-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListWorkflowsRequest"))

(smithy/sdk/shapes:define-output list-workflows-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (workflows :target-type listed-workflows
                                   :required common-lisp:t :member-name
                                   "Workflows"))
                                 (:shape-name "ListWorkflowsResponse"))

(smithy/sdk/shapes:define-structure listed-access common-lisp:nil
                                    ((home-directory :target-type
                                      home-directory :member-name
                                      "HomeDirectory")
                                     (home-directory-type :target-type
                                      home-directory-type :member-name
                                      "HomeDirectoryType")
                                     (role :target-type role :member-name
                                      "Role")
                                     (external-id :target-type external-id
                                      :member-name "ExternalId"))
                                    (:shape-name "ListedAccess"))

(smithy/sdk/shapes:define-list listed-accesses :member listed-access)

(smithy/sdk/shapes:define-structure listed-agreement common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (agreement-id :target-type agreement-id
                                      :member-name "AgreementId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type agreement-status-type
                                      :member-name "Status")
                                     (server-id :target-type server-id
                                      :member-name "ServerId")
                                     (local-profile-id :target-type profile-id
                                      :member-name "LocalProfileId")
                                     (partner-profile-id :target-type
                                      profile-id :member-name
                                      "PartnerProfileId"))
                                    (:shape-name "ListedAgreement"))

(smithy/sdk/shapes:define-list listed-agreements :member listed-agreement)

(smithy/sdk/shapes:define-structure listed-certificate common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (certificate-id :target-type
                                      certificate-id :member-name
                                      "CertificateId")
                                     (usage :target-type certificate-usage-type
                                      :member-name "Usage")
                                     (status :target-type
                                      certificate-status-type :member-name
                                      "Status")
                                     (active-date :target-type cert-date
                                      :member-name "ActiveDate")
                                     (inactive-date :target-type cert-date
                                      :member-name "InactiveDate")
                                     (type :target-type certificate-type
                                      :member-name "Type")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "ListedCertificate"))

(smithy/sdk/shapes:define-list listed-certificates :member listed-certificate)

(smithy/sdk/shapes:define-structure listed-connector common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (connector-id :target-type connector-id
                                      :member-name "ConnectorId")
                                     (url :target-type url :member-name "Url"))
                                    (:shape-name "ListedConnector"))

(smithy/sdk/shapes:define-list listed-connectors :member listed-connector)

(smithy/sdk/shapes:define-structure listed-execution common-lisp:nil
                                    ((execution-id :target-type execution-id
                                      :member-name "ExecutionId")
                                     (initial-file-location :target-type
                                      file-location :member-name
                                      "InitialFileLocation")
                                     (service-metadata :target-type
                                      service-metadata :member-name
                                      "ServiceMetadata")
                                     (status :target-type execution-status
                                      :member-name "Status"))
                                    (:shape-name "ListedExecution"))

(smithy/sdk/shapes:define-list listed-executions :member listed-execution)

(smithy/sdk/shapes:define-structure listed-host-key common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (host-key-id :target-type host-key-id
                                      :member-name "HostKeyId")
                                     (fingerprint :target-type
                                      host-key-fingerprint :member-name
                                      "Fingerprint")
                                     (description :target-type
                                      host-key-description :member-name
                                      "Description")
                                     (type :target-type host-key-type
                                      :member-name "Type")
                                     (date-imported :target-type date-imported
                                      :member-name "DateImported"))
                                    (:shape-name "ListedHostKey"))

(smithy/sdk/shapes:define-list listed-host-keys :member listed-host-key)

(smithy/sdk/shapes:define-structure listed-profile common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (profile-id :target-type profile-id
                                      :member-name "ProfileId")
                                     (as2id :target-type as2id :member-name
                                      "As2Id")
                                     (profile-type :target-type profile-type
                                      :member-name "ProfileType"))
                                    (:shape-name "ListedProfile"))

(smithy/sdk/shapes:define-list listed-profiles :member listed-profile)

(smithy/sdk/shapes:define-structure listed-server common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (domain :target-type domain :member-name
                                      "Domain")
                                     (identity-provider-type :target-type
                                      identity-provider-type :member-name
                                      "IdentityProviderType")
                                     (endpoint-type :target-type endpoint-type
                                      :member-name "EndpointType")
                                     (logging-role :target-type role
                                      :member-name "LoggingRole")
                                     (server-id :target-type server-id
                                      :member-name "ServerId")
                                     (state :target-type state :member-name
                                      "State")
                                     (user-count :target-type user-count
                                      :member-name "UserCount"))
                                    (:shape-name "ListedServer"))

(smithy/sdk/shapes:define-list listed-servers :member listed-server)

(smithy/sdk/shapes:define-structure listed-user common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (home-directory :target-type
                                      home-directory :member-name
                                      "HomeDirectory")
                                     (home-directory-type :target-type
                                      home-directory-type :member-name
                                      "HomeDirectoryType")
                                     (role :target-type role :member-name
                                      "Role")
                                     (ssh-public-key-count :target-type
                                      ssh-public-key-count :member-name
                                      "SshPublicKeyCount")
                                     (user-name :target-type user-name
                                      :member-name "UserName"))
                                    (:shape-name "ListedUser"))

(smithy/sdk/shapes:define-list listed-users :member listed-user)

(smithy/sdk/shapes:define-structure listed-web-app common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (web-app-id :target-type web-app-id
                                      :required common-lisp:t :member-name
                                      "WebAppId")
                                     (access-endpoint :target-type
                                      web-app-access-endpoint :member-name
                                      "AccessEndpoint")
                                     (web-app-endpoint :target-type
                                      web-app-endpoint :member-name
                                      "WebAppEndpoint"))
                                    (:shape-name "ListedWebApp"))

(smithy/sdk/shapes:define-list listed-web-apps :member listed-web-app)

(smithy/sdk/shapes:define-structure listed-workflow common-lisp:nil
                                    ((workflow-id :target-type workflow-id
                                      :member-name "WorkflowId")
                                     (description :target-type
                                      workflow-description :member-name
                                      "Description")
                                     (arn :target-type arn :member-name "Arn"))
                                    (:shape-name "ListedWorkflow"))

(smithy/sdk/shapes:define-list listed-workflows :member listed-workflow)

(smithy/sdk/shapes:define-type listing-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((logging-role :target-type role
                                      :member-name "LoggingRole")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "LogGroupName"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-type map-entry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type map-target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum map-type
    common-lisp:nil
  (:file "FILE")
  (:directory "DIRECTORY"))

(smithy/sdk/shapes:define-type max-concurrent-connections
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum mdn-response
    common-lisp:nil
  (:sync "SYNC")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum mdn-signing-alg
    common-lisp:nil
  (:sha256 "SHA256")
  (:sha384 "SHA384")
  (:sha512 "SHA512")
  (:sha1 "SHA1")
  (:none "NONE")
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type move-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list on-partial-upload-workflow-details :member
                               workflow-detail)

(smithy/sdk/shapes:define-list on-upload-workflow-details :member
                               workflow-detail)

(smithy/sdk/shapes:define-type output-file-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum overwrite-existing
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE"))

(smithy/sdk/shapes:define-type passive-ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type posix-id smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure posix-profile common-lisp:nil
                                    ((uid :target-type posix-id :required
                                      common-lisp:t :member-name "Uid")
                                     (gid :target-type posix-id :required
                                      common-lisp:t :member-name "Gid")
                                     (secondary-gids :target-type
                                      secondary-gids :member-name
                                      "SecondaryGids"))
                                    (:shape-name "PosixProfile"))

(smithy/sdk/shapes:define-type post-authentication-login-banner
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pre-authentication-login-banner
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum preserve-content-type
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum preserve-filename-type
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type private-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum profile-type
    common-lisp:nil
  (:local "LOCAL")
  (:partner "PARTNER"))

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:sftp "SFTP")
  (:ftp "FTP")
  (:ftps "FTPS")
  (:as2 "AS2"))

(smithy/sdk/shapes:define-structure protocol-details common-lisp:nil
                                    ((passive-ip :target-type passive-ip
                                      :member-name "PassiveIp")
                                     (tls-session-resumption-mode :target-type
                                      tls-session-resumption-mode :member-name
                                      "TlsSessionResumptionMode")
                                     (set-stat-option :target-type
                                      set-stat-option :member-name
                                      "SetStatOption")
                                     (as2transports :target-type as2transports
                                      :member-name "As2Transports"))
                                    (:shape-name "ProtocolDetails"))

(smithy/sdk/shapes:define-list protocols :member protocol)

(smithy/sdk/shapes:define-type resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-exists-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ResourceExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (resource :target-type resource :required
                                  common-lisp:t :member-name "Resource")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3etag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3file-location common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "Bucket")
                                     (key :target-type s3key :member-name
                                      "Key")
                                     (version-id :target-type s3version-id
                                      :member-name "VersionId")
                                     (etag :target-type s3etag :member-name
                                      "Etag"))
                                    (:shape-name "S3FileLocation"))

(smithy/sdk/shapes:define-structure s3input-file-location common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "Bucket")
                                     (key :target-type s3key :member-name
                                      "Key"))
                                    (:shape-name "S3InputFileLocation"))

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3storage-options common-lisp:nil
                                    ((directory-listing-optimization
                                      :target-type
                                      directory-listing-optimization
                                      :member-name
                                      "DirectoryListingOptimization"))
                                    (:shape-name "S3StorageOptions"))

(smithy/sdk/shapes:define-structure s3tag common-lisp:nil
                                    ((key :target-type s3tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type s3tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "S3Tag"))

(smithy/sdk/shapes:define-type s3tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list s3tags :member s3tag)

(smithy/sdk/shapes:define-type s3version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list secondary-gids :member posix-id)

(smithy/sdk/shapes:define-type secret-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-type security-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-policy-names :member
                               security-policy-name)

(smithy/sdk/shapes:define-type security-policy-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-policy-options :member
                               security-policy-option)

(smithy/sdk/shapes:define-enum security-policy-protocol
    common-lisp:nil
  (:sftp "SFTP")
  (:ftps "FTPS"))

(smithy/sdk/shapes:define-list security-policy-protocols :member
                               security-policy-protocol)

(smithy/sdk/shapes:define-enum security-policy-resource-type
    common-lisp:nil
  (:server "SERVER")
  (:connector "CONNECTOR"))

(smithy/sdk/shapes:define-input send-workflow-step-state-request
                                common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "WorkflowId")
                                 (execution-id :target-type execution-id
                                  :required common-lisp:t :member-name
                                  "ExecutionId")
                                 (token :target-type callback-token :required
                                  common-lisp:t :member-name "Token")
                                 (status :target-type custom-step-status
                                  :required common-lisp:t :member-name
                                  "Status"))
                                (:shape-name "SendWorkflowStepStateRequest"))

(smithy/sdk/shapes:define-output send-workflow-step-state-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "SendWorkflowStepStateResponse"))

(smithy/sdk/shapes:define-type server-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type service-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-managed-egress-ip-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-managed-egress-ip-addresses :member
                               service-managed-egress-ip-address)

(smithy/sdk/shapes:define-structure service-metadata common-lisp:nil
                                    ((user-details :target-type user-details
                                      :required common-lisp:t :member-name
                                      "UserDetails"))
                                    (:shape-name "ServiceMetadata"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type service-error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum set-stat-option
    common-lisp:nil
  (:default "DEFAULT")
  (:enable-no-op "ENABLE_NO_OP"))

(smithy/sdk/shapes:define-enum sftp-authentication-methods
    common-lisp:nil
  (:password "PASSWORD")
  (:public-key "PUBLIC_KEY")
  (:public-key-or-password "PUBLIC_KEY_OR_PASSWORD")
  (:public-key-and-password "PUBLIC_KEY_AND_PASSWORD"))

(smithy/sdk/shapes:define-structure sftp-connector-config common-lisp:nil
                                    ((user-secret-id :target-type secret-id
                                      :member-name "UserSecretId")
                                     (trusted-host-keys :target-type
                                      sftp-connector-trusted-host-key-list
                                      :member-name "TrustedHostKeys")
                                     (max-concurrent-connections :target-type
                                      max-concurrent-connections :member-name
                                      "MaxConcurrentConnections"))
                                    (:shape-name "SftpConnectorConfig"))

(smithy/sdk/shapes:define-structure sftp-connector-connection-details
                                    common-lisp:nil
                                    ((host-key :target-type
                                      sftp-connector-host-key :member-name
                                      "HostKey"))
                                    (:shape-name
                                     "SftpConnectorConnectionDetails"))

(smithy/sdk/shapes:define-type sftp-connector-host-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sftp-connector-trusted-host-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sftp-connector-trusted-host-key-list :member
                               sftp-connector-trusted-host-key)

(smithy/sdk/shapes:define-enum signing-alg
    common-lisp:nil
  (:sha256 "SHA256")
  (:sha384 "SHA384")
  (:sha512 "SHA512")
  (:sha1 "SHA1")
  (:none "NONE"))

(smithy/sdk/shapes:define-type source-file-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssh-public-key common-lisp:nil
                                    ((date-imported :target-type date-imported
                                      :required common-lisp:t :member-name
                                      "DateImported")
                                     (ssh-public-key-body :target-type
                                      ssh-public-key-body :required
                                      common-lisp:t :member-name
                                      "SshPublicKeyBody")
                                     (ssh-public-key-id :target-type
                                      ssh-public-key-id :required common-lisp:t
                                      :member-name "SshPublicKeyId"))
                                    (:shape-name "SshPublicKey"))

(smithy/sdk/shapes:define-type ssh-public-key-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssh-public-key-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ssh-public-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssh-public-keys :member ssh-public-key)

(smithy/sdk/shapes:define-input start-directory-listing-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId")
                                 (remote-directory-path :target-type file-path
                                  :required common-lisp:t :member-name
                                  "RemoteDirectoryPath")
                                 (max-items :target-type max-items :member-name
                                  "MaxItems")
                                 (output-directory-path :target-type file-path
                                  :required common-lisp:t :member-name
                                  "OutputDirectoryPath"))
                                (:shape-name "StartDirectoryListingRequest"))

(smithy/sdk/shapes:define-output start-directory-listing-response
                                 common-lisp:nil
                                 ((listing-id :target-type listing-id :required
                                   common-lisp:t :member-name "ListingId")
                                  (output-file-name :target-type
                                   output-file-name :required common-lisp:t
                                   :member-name "OutputFileName"))
                                 (:shape-name "StartDirectoryListingResponse"))

(smithy/sdk/shapes:define-input start-file-transfer-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId")
                                 (send-file-paths :target-type file-paths
                                  :member-name "SendFilePaths")
                                 (retrieve-file-paths :target-type file-paths
                                  :member-name "RetrieveFilePaths")
                                 (local-directory-path :target-type file-path
                                  :member-name "LocalDirectoryPath")
                                 (remote-directory-path :target-type file-path
                                  :member-name "RemoteDirectoryPath"))
                                (:shape-name "StartFileTransferRequest"))

(smithy/sdk/shapes:define-output start-file-transfer-response common-lisp:nil
                                 ((transfer-id :target-type transfer-id
                                   :required common-lisp:t :member-name
                                   "TransferId"))
                                 (:shape-name "StartFileTransferResponse"))

(smithy/sdk/shapes:define-input start-remote-delete-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId")
                                 (delete-path :target-type file-path :required
                                  common-lisp:t :member-name "DeletePath"))
                                (:shape-name "StartRemoteDeleteRequest"))

(smithy/sdk/shapes:define-output start-remote-delete-response common-lisp:nil
                                 ((delete-id :target-type delete-id :required
                                   common-lisp:t :member-name "DeleteId"))
                                 (:shape-name "StartRemoteDeleteResponse"))

(smithy/sdk/shapes:define-input start-remote-move-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId")
                                 (source-path :target-type file-path :required
                                  common-lisp:t :member-name "SourcePath")
                                 (target-path :target-type file-path :required
                                  common-lisp:t :member-name "TargetPath"))
                                (:shape-name "StartRemoteMoveRequest"))

(smithy/sdk/shapes:define-output start-remote-move-response common-lisp:nil
                                 ((move-id :target-type move-id :required
                                   common-lisp:t :member-name "MoveId"))
                                 (:shape-name "StartRemoteMoveResponse"))

(smithy/sdk/shapes:define-input start-server-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "StartServerRequest"))

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:offline "OFFLINE")
  (:online "ONLINE")
  (:starting "STARTING")
  (:stopping "STOPPING")
  (:start-failed "START_FAILED")
  (:stop-failed "STOP_FAILED"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type step-result-outputs-json
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-server-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId"))
                                (:shape-name "StopServerRequest"))

(smithy/sdk/shapes:define-list structured-log-destinations :member arn)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-step-details common-lisp:nil
                                    ((name :target-type workflow-step-name
                                      :member-name "Name")
                                     (tags :target-type s3tags :member-name
                                      "Tags")
                                     (source-file-location :target-type
                                      source-file-location :member-name
                                      "SourceFileLocation"))
                                    (:shape-name "TagStepDetails"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-input test-connection-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId"))
                                (:shape-name "TestConnectionRequest"))

(smithy/sdk/shapes:define-output test-connection-response common-lisp:nil
                                 ((connector-id :target-type connector-id
                                   :member-name "ConnectorId")
                                  (status :target-type status :member-name
                                   "Status")
                                  (status-message :target-type message
                                   :member-name "StatusMessage")
                                  (sftp-connection-details :target-type
                                   sftp-connector-connection-details
                                   :member-name "SftpConnectionDetails"))
                                 (:shape-name "TestConnectionResponse"))

(smithy/sdk/shapes:define-input test-identity-provider-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (server-protocol :target-type protocol
                                  :member-name "ServerProtocol")
                                 (source-ip :target-type source-ip :member-name
                                  "SourceIp")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName")
                                 (user-password :target-type user-password
                                  :member-name "UserPassword"))
                                (:shape-name "TestIdentityProviderRequest"))

(smithy/sdk/shapes:define-output test-identity-provider-response
                                 common-lisp:nil
                                 ((response :target-type response :member-name
                                   "Response")
                                  (status-code :target-type status-code
                                   :required common-lisp:t :member-name
                                   "StatusCode")
                                  (message :target-type message :member-name
                                   "Message")
                                  (url :target-type url :required common-lisp:t
                                   :member-name "Url"))
                                 (:shape-name "TestIdentityProviderResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum tls-session-resumption-mode
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:enforced "ENFORCED"))

(smithy/sdk/shapes:define-type transfer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transfer-table-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-access-request common-lisp:nil
                                ((home-directory :target-type home-directory
                                  :member-name "HomeDirectory")
                                 (home-directory-type :target-type
                                  home-directory-type :member-name
                                  "HomeDirectoryType")
                                 (home-directory-mappings :target-type
                                  home-directory-mappings :member-name
                                  "HomeDirectoryMappings")
                                 (policy :target-type policy :member-name
                                  "Policy")
                                 (posix-profile :target-type posix-profile
                                  :member-name "PosixProfile")
                                 (role :target-type role :member-name "Role")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (external-id :target-type external-id
                                  :required common-lisp:t :member-name
                                  "ExternalId"))
                                (:shape-name "UpdateAccessRequest"))

(smithy/sdk/shapes:define-output update-access-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (external-id :target-type external-id
                                   :required common-lisp:t :member-name
                                   "ExternalId"))
                                 (:shape-name "UpdateAccessResponse"))

(smithy/sdk/shapes:define-input update-agreement-request common-lisp:nil
                                ((agreement-id :target-type agreement-id
                                  :required common-lisp:t :member-name
                                  "AgreementId")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (description :target-type description
                                  :member-name "Description")
                                 (status :target-type agreement-status-type
                                  :member-name "Status")
                                 (local-profile-id :target-type profile-id
                                  :member-name "LocalProfileId")
                                 (partner-profile-id :target-type profile-id
                                  :member-name "PartnerProfileId")
                                 (base-directory :target-type home-directory
                                  :member-name "BaseDirectory")
                                 (access-role :target-type role :member-name
                                  "AccessRole")
                                 (preserve-filename :target-type
                                  preserve-filename-type :member-name
                                  "PreserveFilename")
                                 (enforce-message-signing :target-type
                                  enforce-message-signing-type :member-name
                                  "EnforceMessageSigning")
                                 (custom-directories :target-type
                                  custom-directories-type :member-name
                                  "CustomDirectories"))
                                (:shape-name "UpdateAgreementRequest"))

(smithy/sdk/shapes:define-output update-agreement-response common-lisp:nil
                                 ((agreement-id :target-type agreement-id
                                   :required common-lisp:t :member-name
                                   "AgreementId"))
                                 (:shape-name "UpdateAgreementResponse"))

(smithy/sdk/shapes:define-input update-certificate-request common-lisp:nil
                                ((certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "CertificateId")
                                 (active-date :target-type cert-date
                                  :member-name "ActiveDate")
                                 (inactive-date :target-type cert-date
                                  :member-name "InactiveDate")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateCertificateRequest"))

(smithy/sdk/shapes:define-output update-certificate-response common-lisp:nil
                                 ((certificate-id :target-type certificate-id
                                   :required common-lisp:t :member-name
                                   "CertificateId"))
                                 (:shape-name "UpdateCertificateResponse"))

(smithy/sdk/shapes:define-input update-connector-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId")
                                 (url :target-type url :member-name "Url")
                                 (as2config :target-type as2connector-config
                                  :member-name "As2Config")
                                 (access-role :target-type role :member-name
                                  "AccessRole")
                                 (logging-role :target-type role :member-name
                                  "LoggingRole")
                                 (sftp-config :target-type
                                  sftp-connector-config :member-name
                                  "SftpConfig")
                                 (security-policy-name :target-type
                                  connector-security-policy-name :member-name
                                  "SecurityPolicyName"))
                                (:shape-name "UpdateConnectorRequest"))

(smithy/sdk/shapes:define-output update-connector-response common-lisp:nil
                                 ((connector-id :target-type connector-id
                                   :required common-lisp:t :member-name
                                   "ConnectorId"))
                                 (:shape-name "UpdateConnectorResponse"))

(smithy/sdk/shapes:define-input update-host-key-request common-lisp:nil
                                ((server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (host-key-id :target-type host-key-id
                                  :required common-lisp:t :member-name
                                  "HostKeyId")
                                 (description :target-type host-key-description
                                  :required common-lisp:t :member-name
                                  "Description"))
                                (:shape-name "UpdateHostKeyRequest"))

(smithy/sdk/shapes:define-output update-host-key-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (host-key-id :target-type host-key-id
                                   :required common-lisp:t :member-name
                                   "HostKeyId"))
                                 (:shape-name "UpdateHostKeyResponse"))

(smithy/sdk/shapes:define-input update-profile-request common-lisp:nil
                                ((profile-id :target-type profile-id :required
                                  common-lisp:t :member-name "ProfileId")
                                 (certificate-ids :target-type certificate-ids
                                  :member-name "CertificateIds"))
                                (:shape-name "UpdateProfileRequest"))

(smithy/sdk/shapes:define-output update-profile-response common-lisp:nil
                                 ((profile-id :target-type profile-id :required
                                   common-lisp:t :member-name "ProfileId"))
                                 (:shape-name "UpdateProfileResponse"))

(smithy/sdk/shapes:define-input update-server-request common-lisp:nil
                                ((certificate :target-type certificate
                                  :member-name "Certificate")
                                 (protocol-details :target-type
                                  protocol-details :member-name
                                  "ProtocolDetails")
                                 (endpoint-details :target-type
                                  endpoint-details :member-name
                                  "EndpointDetails")
                                 (endpoint-type :target-type endpoint-type
                                  :member-name "EndpointType")
                                 (host-key :target-type host-key :member-name
                                  "HostKey")
                                 (identity-provider-details :target-type
                                  identity-provider-details :member-name
                                  "IdentityProviderDetails")
                                 (logging-role :target-type nullable-role
                                  :member-name "LoggingRole")
                                 (post-authentication-login-banner :target-type
                                  post-authentication-login-banner :member-name
                                  "PostAuthenticationLoginBanner")
                                 (pre-authentication-login-banner :target-type
                                  pre-authentication-login-banner :member-name
                                  "PreAuthenticationLoginBanner")
                                 (protocols :target-type protocols :member-name
                                  "Protocols")
                                 (security-policy-name :target-type
                                  security-policy-name :member-name
                                  "SecurityPolicyName")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (workflow-details :target-type
                                  workflow-details :member-name
                                  "WorkflowDetails")
                                 (structured-log-destinations :target-type
                                  structured-log-destinations :member-name
                                  "StructuredLogDestinations")
                                 (s3storage-options :target-type
                                  s3storage-options :member-name
                                  "S3StorageOptions")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType"))
                                (:shape-name "UpdateServerRequest"))

(smithy/sdk/shapes:define-output update-server-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId"))
                                 (:shape-name "UpdateServerResponse"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((home-directory :target-type home-directory
                                  :member-name "HomeDirectory")
                                 (home-directory-type :target-type
                                  home-directory-type :member-name
                                  "HomeDirectoryType")
                                 (home-directory-mappings :target-type
                                  home-directory-mappings :member-name
                                  "HomeDirectoryMappings")
                                 (policy :target-type policy :member-name
                                  "Policy")
                                 (posix-profile :target-type posix-profile
                                  :member-name "PosixProfile")
                                 (role :target-type role :member-name "Role")
                                 (server-id :target-type server-id :required
                                  common-lisp:t :member-name "ServerId")
                                 (user-name :target-type user-name :required
                                  common-lisp:t :member-name "UserName"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 ((server-id :target-type server-id :required
                                   common-lisp:t :member-name "ServerId")
                                  (user-name :target-type user-name :required
                                   common-lisp:t :member-name "UserName"))
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-input update-web-app-customization-request
                                common-lisp:nil
                                ((web-app-id :target-type web-app-id :required
                                  common-lisp:t :member-name "WebAppId")
                                 (title :target-type web-app-title :member-name
                                  "Title")
                                 (logo-file :target-type web-app-logo-file
                                  :member-name "LogoFile")
                                 (favicon-file :target-type
                                  web-app-favicon-file :member-name
                                  "FaviconFile"))
                                (:shape-name
                                 "UpdateWebAppCustomizationRequest"))

(smithy/sdk/shapes:define-output update-web-app-customization-response
                                 common-lisp:nil
                                 ((web-app-id :target-type web-app-id :required
                                   common-lisp:t :member-name "WebAppId"))
                                 (:shape-name
                                  "UpdateWebAppCustomizationResponse"))

(smithy/sdk/shapes:define-structure update-web-app-identity-center-config
                                    common-lisp:nil
                                    ((role :target-type role :member-name
                                      "Role"))
                                    (:shape-name
                                     "UpdateWebAppIdentityCenterConfig"))

(smithy/sdk/shapes:define-union update-web-app-identity-provider-details
                                common-lisp:nil
                                ((identity-center-config :target-type
                                  update-web-app-identity-center-config
                                  :member-name "IdentityCenterConfig"))
                                (:shape-name
                                 "UpdateWebAppIdentityProviderDetails"))

(smithy/sdk/shapes:define-input update-web-app-request common-lisp:nil
                                ((web-app-id :target-type web-app-id :required
                                  common-lisp:t :member-name "WebAppId")
                                 (identity-provider-details :target-type
                                  update-web-app-identity-provider-details
                                  :member-name "IdentityProviderDetails")
                                 (access-endpoint :target-type
                                  web-app-access-endpoint :member-name
                                  "AccessEndpoint")
                                 (web-app-units :target-type web-app-units
                                  :member-name "WebAppUnits"))
                                (:shape-name "UpdateWebAppRequest"))

(smithy/sdk/shapes:define-output update-web-app-response common-lisp:nil
                                 ((web-app-id :target-type web-app-id :required
                                   common-lisp:t :member-name "WebAppId"))
                                 (:shape-name "UpdateWebAppResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure user-details common-lisp:nil
                                    ((user-name :target-type user-name
                                      :required common-lisp:t :member-name
                                      "UserName")
                                     (server-id :target-type server-id
                                      :required common-lisp:t :member-name
                                      "ServerId")
                                     (session-id :target-type session-id
                                      :member-name "SessionId"))
                                    (:shape-name "UserDetails"))

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-password smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-app-access-endpoint
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type web-app-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum web-app-endpoint-policy
    common-lisp:nil
  (:fips "FIPS")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-type web-app-favicon-file
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type web-app-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union web-app-identity-provider-details
                                common-lisp:nil
                                ((identity-center-config :target-type
                                  identity-center-config :member-name
                                  "IdentityCenterConfig"))
                                (:shape-name "WebAppIdentityProviderDetails"))

(smithy/sdk/shapes:define-type web-app-logo-file smithy/sdk/smithy-types:blob)

common-lisp:nil

(smithy/sdk/shapes:define-type web-app-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type web-app-unit-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union web-app-units common-lisp:nil
                                ((provisioned :target-type web-app-unit-count
                                  :member-name "Provisioned"))
                                (:shape-name "WebAppUnits"))

(smithy/sdk/shapes:define-type workflow-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-detail common-lisp:nil
                                    ((workflow-id :target-type workflow-id
                                      :required common-lisp:t :member-name
                                      "WorkflowId")
                                     (execution-role :target-type role
                                      :required common-lisp:t :member-name
                                      "ExecutionRole"))
                                    (:shape-name "WorkflowDetail"))

(smithy/sdk/shapes:define-structure workflow-details common-lisp:nil
                                    ((on-upload :target-type
                                      on-upload-workflow-details :member-name
                                      "OnUpload")
                                     (on-partial-upload :target-type
                                      on-partial-upload-workflow-details
                                      :member-name "OnPartialUpload"))
                                    (:shape-name "WorkflowDetails"))

(smithy/sdk/shapes:define-type workflow-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure workflow-step common-lisp:nil
                                    ((type :target-type workflow-step-type
                                      :member-name "Type")
                                     (copy-step-details :target-type
                                      copy-step-details :member-name
                                      "CopyStepDetails")
                                     (custom-step-details :target-type
                                      custom-step-details :member-name
                                      "CustomStepDetails")
                                     (delete-step-details :target-type
                                      delete-step-details :member-name
                                      "DeleteStepDetails")
                                     (tag-step-details :target-type
                                      tag-step-details :member-name
                                      "TagStepDetails")
                                     (decrypt-step-details :target-type
                                      decrypt-step-details :member-name
                                      "DecryptStepDetails"))
                                    (:shape-name "WorkflowStep"))

(smithy/sdk/shapes:define-type workflow-step-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workflow-step-type
    common-lisp:nil
  (:copy "COPY")
  (:custom "CUSTOM")
  (:tag "TAG")
  (:delete "DELETE")
  (:decrypt "DECRYPT"))

(smithy/sdk/shapes:define-list workflow-steps :member workflow-step)

(smithy/sdk/operation:define-operation create-access :shape-name "CreateAccess"
                                       :input create-access-request :output
                                       create-access-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation create-agreement :shape-name
                                       "CreateAgreement" :input
                                       create-agreement-request :output
                                       create-agreement-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-connector :shape-name
                                       "CreateConnector" :input
                                       create-connector-request :output
                                       create-connector-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-profile :shape-name
                                       "CreateProfile" :input
                                       create-profile-request :output
                                       create-profile-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-server :shape-name "CreateServer"
                                       :input create-server-request :output
                                       create-server-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation create-web-app :shape-name
                                       "CreateWebApp" :input
                                       create-web-app-request :output
                                       create-web-app-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/createWebApp")

(smithy/sdk/operation:define-operation create-workflow :shape-name
                                       "CreateWorkflow" :input
                                       create-workflow-request :output
                                       create-workflow-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-access :shape-name "DeleteAccess"
                                       :input delete-access-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-agreement :shape-name
                                       "DeleteAgreement" :input
                                       delete-agreement-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-certificate :shape-name
                                       "DeleteCertificate" :input
                                       delete-certificate-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-connector :shape-name
                                       "DeleteConnector" :input
                                       delete-connector-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-host-key :shape-name
                                       "DeleteHostKey" :input
                                       delete-host-key-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-profile :shape-name
                                       "DeleteProfile" :input
                                       delete-profile-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-server :shape-name "DeleteServer"
                                       :input delete-server-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-ssh-public-key :shape-name
                                       "DeleteSshPublicKey" :input
                                       delete-ssh-public-key-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation delete-web-app :shape-name
                                       "DeleteWebApp" :input
                                       delete-web-app-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/deleteWebApp")

(smithy/sdk/operation:define-operation delete-web-app-customization :shape-name
                                       "DeleteWebAppCustomization" :input
                                       delete-web-app-customization-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/deleteWebAppCustomization")

(smithy/sdk/operation:define-operation delete-workflow :shape-name
                                       "DeleteWorkflow" :input
                                       delete-workflow-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-access :shape-name
                                       "DescribeAccess" :input
                                       describe-access-request :output
                                       describe-access-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-agreement :shape-name
                                       "DescribeAgreement" :input
                                       describe-agreement-request :output
                                       describe-agreement-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-certificate :shape-name
                                       "DescribeCertificate" :input
                                       describe-certificate-request :output
                                       describe-certificate-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-connector :shape-name
                                       "DescribeConnector" :input
                                       describe-connector-request :output
                                       describe-connector-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-execution :shape-name
                                       "DescribeExecution" :input
                                       describe-execution-request :output
                                       describe-execution-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-host-key :shape-name
                                       "DescribeHostKey" :input
                                       describe-host-key-request :output
                                       describe-host-key-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-profile :shape-name
                                       "DescribeProfile" :input
                                       describe-profile-request :output
                                       describe-profile-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-security-policy :shape-name
                                       "DescribeSecurityPolicy" :input
                                       describe-security-policy-request :output
                                       describe-security-policy-response
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-server :shape-name
                                       "DescribeServer" :input
                                       describe-server-request :output
                                       describe-server-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-user :shape-name "DescribeUser"
                                       :input describe-user-request :output
                                       describe-user-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation describe-web-app :shape-name
                                       "DescribeWebApp" :input
                                       describe-web-app-request :output
                                       describe-web-app-response :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/describeWebApp")

(smithy/sdk/operation:define-operation describe-web-app-customization
                                       :shape-name
                                       "DescribeWebAppCustomization" :input
                                       describe-web-app-customization-request
                                       :output
                                       describe-web-app-customization-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/describeWebAppCustomization")

(smithy/sdk/operation:define-operation describe-workflow :shape-name
                                       "DescribeWorkflow" :input
                                       describe-workflow-request :output
                                       describe-workflow-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation import-certificate :shape-name
                                       "ImportCertificate" :input
                                       import-certificate-request :output
                                       import-certificate-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation import-host-key :shape-name
                                       "ImportHostKey" :input
                                       import-host-key-request :output
                                       import-host-key-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation import-ssh-public-key :shape-name
                                       "ImportSshPublicKey" :input
                                       import-ssh-public-key-request :output
                                       import-ssh-public-key-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-accesses :shape-name "ListAccesses"
                                       :input list-accesses-request :output
                                       list-accesses-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-agreements :shape-name
                                       "ListAgreements" :input
                                       list-agreements-request :output
                                       list-agreements-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-certificates :shape-name
                                       "ListCertificates" :input
                                       list-certificates-request :output
                                       list-certificates-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-connectors :shape-name
                                       "ListConnectors" :input
                                       list-connectors-request :output
                                       list-connectors-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-executions :shape-name
                                       "ListExecutions" :input
                                       list-executions-request :output
                                       list-executions-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-file-transfer-results :shape-name
                                       "ListFileTransferResults" :input
                                       list-file-transfer-results-request
                                       :output
                                       list-file-transfer-results-response
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/listFileTransferResults")

(smithy/sdk/operation:define-operation list-host-keys :shape-name
                                       "ListHostKeys" :input
                                       list-host-keys-request :output
                                       list-host-keys-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-profiles :shape-name "ListProfiles"
                                       :input list-profiles-request :output
                                       list-profiles-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-security-policies :shape-name
                                       "ListSecurityPolicies" :input
                                       list-security-policies-request :output
                                       list-security-policies-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-servers :shape-name "ListServers"
                                       :input list-servers-request :output
                                       list-servers-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation list-web-apps :shape-name "ListWebApps"
                                       :input list-web-apps-request :output
                                       list-web-apps-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        throttling-exception)
                                       :method "POST" :uri "/listWebApps")

(smithy/sdk/operation:define-operation list-workflows :shape-name
                                       "ListWorkflows" :input
                                       list-workflows-request :output
                                       list-workflows-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-request-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation send-workflow-step-state :shape-name
                                       "SendWorkflowStepState" :input
                                       send-workflow-step-state-request :output
                                       send-workflow-step-state-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-directory-listing :shape-name
                                       "StartDirectoryListing" :input
                                       start-directory-listing-request :output
                                       start-directory-listing-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-file-transfer :shape-name
                                       "StartFileTransfer" :input
                                       start-file-transfer-request :output
                                       start-file-transfer-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-remote-delete :shape-name
                                       "StartRemoteDelete" :input
                                       start-remote-delete-request :output
                                       start-remote-delete-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/startRemoteDelete")

(smithy/sdk/operation:define-operation start-remote-move :shape-name
                                       "StartRemoteMove" :input
                                       start-remote-move-request :output
                                       start-remote-move-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception)
                                       :method "POST" :uri "/startRemoteMove")

(smithy/sdk/operation:define-operation start-server :shape-name "StartServer"
                                       :input start-server-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation stop-server :shape-name "StopServer"
                                       :input stop-server-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation test-connection :shape-name
                                       "TestConnection" :input
                                       test-connection-request :output
                                       test-connection-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation test-identity-provider :shape-name
                                       "TestIdentityProvider" :input
                                       test-identity-provider-request :output
                                       test-identity-provider-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception))

(smithy/sdk/operation:define-operation update-access :shape-name "UpdateAccess"
                                       :input update-access-request :output
                                       update-access-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-agreement :shape-name
                                       "UpdateAgreement" :input
                                       update-agreement-request :output
                                       update-agreement-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-certificate :shape-name
                                       "UpdateCertificate" :input
                                       update-certificate-request :output
                                       update-certificate-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-connector :shape-name
                                       "UpdateConnector" :input
                                       update-connector-request :output
                                       update-connector-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-host-key :shape-name
                                       "UpdateHostKey" :input
                                       update-host-key-request :output
                                       update-host-key-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-profile :shape-name
                                       "UpdateProfile" :input
                                       update-profile-request :output
                                       update-profile-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-server :shape-name "UpdateServer"
                                       :input update-server-request :output
                                       update-server-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-web-app :shape-name
                                       "UpdateWebApp" :input
                                       update-web-app-request :output
                                       update-web-app-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/updateWebApp")

(smithy/sdk/operation:define-operation update-web-app-customization :shape-name
                                       "UpdateWebAppCustomization" :input
                                       update-web-app-customization-request
                                       :output
                                       update-web-app-customization-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/updateWebAppCustomization")
