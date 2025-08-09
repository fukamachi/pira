(uiop/package:define-package #:pira/apprunner (:use)
                             (:export #:asconfig-max-concurrency
                              #:asconfig-max-size #:asconfig-min-size
                              #:app-runner #:app-runner-resource-arn
                              #:associate-custom-domain
                              #:authentication-configuration
                              #:auto-scaling-configuration
                              #:auto-scaling-configuration-name
                              #:auto-scaling-configuration-revision
                              #:auto-scaling-configuration-status
                              #:auto-scaling-configuration-summary
                              #:auto-scaling-configuration-summary-list
                              #:boolean #:build-command
                              #:certificate-validation-record
                              #:certificate-validation-record-list
                              #:certificate-validation-record-status
                              #:code-configuration #:code-configuration-values
                              #:code-repository #:configuration-source
                              #:connection #:connection-name
                              #:connection-status #:connection-summary
                              #:connection-summary-list #:cpu
                              #:create-auto-scaling-configuration
                              #:create-connection
                              #:create-observability-configuration
                              #:create-service #:create-vpc-connector
                              #:create-vpc-ingress-connection #:custom-domain
                              #:custom-domain-association-status
                              #:custom-domain-list #:customer-account-id
                              #:delete-auto-scaling-configuration
                              #:delete-connection
                              #:delete-observability-configuration
                              #:delete-service #:delete-vpc-connector
                              #:delete-vpc-ingress-connection
                              #:describe-auto-scaling-configuration
                              #:describe-custom-domains
                              #:describe-custom-domains-max-results
                              #:describe-observability-configuration
                              #:describe-service #:describe-vpc-connector
                              #:describe-vpc-ingress-connection
                              #:disassociate-custom-domain #:domain-name
                              #:egress-configuration #:egress-type
                              #:encryption-configuration #:error-message
                              #:has-associated-service
                              #:health-check-configuration
                              #:health-check-healthy-threshold
                              #:health-check-interval #:health-check-path
                              #:health-check-protocol #:health-check-timeout
                              #:health-check-unhealthy-threshold
                              #:image-configuration #:image-identifier
                              #:image-repository #:image-repository-type
                              #:ingress-configuration
                              #:ingress-vpc-configuration
                              #:instance-configuration #:integer
                              #:ip-address-type #:is-default #:kms-key-arn
                              #:latest #:list-auto-scaling-configurations
                              #:list-connections
                              #:list-observability-configurations
                              #:list-operations #:list-operations-max-results
                              #:list-services
                              #:list-services-for-auto-scaling-configuration
                              #:list-tags-for-resource #:list-vpc-connectors
                              #:list-vpc-ingress-connections
                              #:list-vpc-ingress-connections-filter
                              #:max-concurrency #:max-results #:max-size
                              #:memory #:min-size #:network-configuration
                              #:next-token #:nullable-boolean
                              #:observability-configuration
                              #:observability-configuration-name
                              #:observability-configuration-status
                              #:observability-configuration-summary
                              #:observability-configuration-summary-list
                              #:operation-status #:operation-summary
                              #:operation-summary-list #:operation-type
                              #:pause-service #:provider-type #:resume-service
                              #:role-arn #:runtime
                              #:runtime-environment-secrets
                              #:runtime-environment-secrets-name
                              #:runtime-environment-secrets-value
                              #:runtime-environment-variables
                              #:runtime-environment-variables-key
                              #:runtime-environment-variables-value #:service
                              #:service-arn-list #:service-id
                              #:service-max-results #:service-name
                              #:service-observability-configuration
                              #:service-status #:service-summary
                              #:service-summary-list #:source-code-version
                              #:source-code-version-type #:source-configuration
                              #:source-directory #:start-command
                              #:start-deployment #:string #:string-list #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:timestamp
                              #:trace-configuration #:tracing-vendor #:uuid
                              #:untag-resource
                              #:update-default-auto-scaling-configuration
                              #:update-service #:update-vpc-ingress-connection
                              #:vpc-connector #:vpc-connector-name
                              #:vpc-connector-status #:vpc-connectors
                              #:vpc-dnstarget #:vpc-dnstarget-list
                              #:vpc-ingress-connection
                              #:vpc-ingress-connection-name
                              #:vpc-ingress-connection-status
                              #:vpc-ingress-connection-summary
                              #:vpc-ingress-connection-summary-list))
(common-lisp:in-package #:pira/apprunner)

(smithy/sdk/service:define-service app-runner :shape-name "AppRunner" :version
                                   "2020-05-15" :title "AWS App Runner"
                                   :xml-namespace
                                   '(:uri
                                     "http://apprunner.amazonaws.com/doc/2020-05-15/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AppRunner")
                                      ("arnNamespace" . "apprunner")
                                      ("cloudFormationName" . "AppRunner")
                                      ("cloudTrailEventSource"
                                       . "apprunner.amazonaws.com")
                                      ("endpointPrefix" . "apprunner"))
                                     ("aws.auth#sigv4" ("name" . "apprunner"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type asconfig-max-concurrency
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type asconfig-max-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type asconfig-min-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type app-runner-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-custom-domain-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName")
                                 (enable-wwwsubdomain :target-type
                                  nullable-boolean :member-name
                                  "EnableWWWSubdomain"))
                                (:shape-name "AssociateCustomDomainRequest"))

(smithy/sdk/shapes:define-output associate-custom-domain-response
                                 common-lisp:nil
                                 ((dnstarget :target-type string :required
                                   common-lisp:t :member-name "DNSTarget")
                                  (service-arn :target-type
                                   app-runner-resource-arn :required
                                   common-lisp:t :member-name "ServiceArn")
                                  (custom-domain :target-type custom-domain
                                   :required common-lisp:t :member-name
                                   "CustomDomain")
                                  (vpc-dnstargets :target-type
                                   vpc-dnstarget-list :required common-lisp:t
                                   :member-name "VpcDNSTargets"))
                                 (:shape-name "AssociateCustomDomainResponse"))

(smithy/sdk/shapes:define-structure authentication-configuration
                                    common-lisp:nil
                                    ((connection-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ConnectionArn")
                                     (access-role-arn :target-type role-arn
                                      :member-name "AccessRoleArn"))
                                    (:shape-name "AuthenticationConfiguration"))

(smithy/sdk/shapes:define-structure auto-scaling-configuration common-lisp:nil
                                    ((auto-scaling-configuration-arn
                                      :target-type app-runner-resource-arn
                                      :member-name
                                      "AutoScalingConfigurationArn")
                                     (auto-scaling-configuration-name
                                      :target-type
                                      auto-scaling-configuration-name
                                      :member-name
                                      "AutoScalingConfigurationName")
                                     (auto-scaling-configuration-revision
                                      :target-type
                                      auto-scaling-configuration-revision
                                      :member-name
                                      "AutoScalingConfigurationRevision")
                                     (latest :target-type latest :member-name
                                      "Latest")
                                     (status :target-type
                                      auto-scaling-configuration-status
                                      :member-name "Status")
                                     (max-concurrency :target-type
                                      max-concurrency :member-name
                                      "MaxConcurrency")
                                     (min-size :target-type min-size
                                      :member-name "MinSize")
                                     (max-size :target-type max-size
                                      :member-name "MaxSize")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (deleted-at :target-type timestamp
                                      :member-name "DeletedAt")
                                     (has-associated-service :target-type
                                      has-associated-service :member-name
                                      "HasAssociatedService")
                                     (is-default :target-type is-default
                                      :member-name "IsDefault"))
                                    (:shape-name "AutoScalingConfiguration"))

(smithy/sdk/shapes:define-type auto-scaling-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auto-scaling-configuration-revision
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum auto-scaling-configuration-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure auto-scaling-configuration-summary
                                    common-lisp:nil
                                    ((auto-scaling-configuration-arn
                                      :target-type app-runner-resource-arn
                                      :member-name
                                      "AutoScalingConfigurationArn")
                                     (auto-scaling-configuration-name
                                      :target-type
                                      auto-scaling-configuration-name
                                      :member-name
                                      "AutoScalingConfigurationName")
                                     (auto-scaling-configuration-revision
                                      :target-type integer :member-name
                                      "AutoScalingConfigurationRevision")
                                     (status :target-type
                                      auto-scaling-configuration-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (has-associated-service :target-type
                                      has-associated-service :member-name
                                      "HasAssociatedService")
                                     (is-default :target-type is-default
                                      :member-name "IsDefault"))
                                    (:shape-name
                                     "AutoScalingConfigurationSummary"))

(smithy/sdk/shapes:define-list auto-scaling-configuration-summary-list :member
                               auto-scaling-configuration-summary)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type build-command smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificate-validation-record
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (type :target-type string :member-name
                                      "Type")
                                     (value :target-type string :member-name
                                      "Value")
                                     (status :target-type
                                      certificate-validation-record-status
                                      :member-name "Status"))
                                    (:shape-name "CertificateValidationRecord"))

(smithy/sdk/shapes:define-list certificate-validation-record-list :member
                               certificate-validation-record)

(smithy/sdk/shapes:define-enum certificate-validation-record-status
    common-lisp:nil
  (:pending-validation "PENDING_VALIDATION")
  (:success "SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure code-configuration common-lisp:nil
                                    ((configuration-source :target-type
                                      configuration-source :required
                                      common-lisp:t :member-name
                                      "ConfigurationSource")
                                     (code-configuration-values :target-type
                                      code-configuration-values :member-name
                                      "CodeConfigurationValues"))
                                    (:shape-name "CodeConfiguration"))

(smithy/sdk/shapes:define-structure code-configuration-values common-lisp:nil
                                    ((runtime :target-type runtime :required
                                      common-lisp:t :member-name "Runtime")
                                     (build-command :target-type build-command
                                      :member-name "BuildCommand")
                                     (start-command :target-type start-command
                                      :member-name "StartCommand")
                                     (port :target-type string :member-name
                                      "Port")
                                     (runtime-environment-variables
                                      :target-type
                                      runtime-environment-variables
                                      :member-name
                                      "RuntimeEnvironmentVariables")
                                     (runtime-environment-secrets :target-type
                                      runtime-environment-secrets :member-name
                                      "RuntimeEnvironmentSecrets"))
                                    (:shape-name "CodeConfigurationValues"))

(smithy/sdk/shapes:define-structure code-repository common-lisp:nil
                                    ((repository-url :target-type string
                                      :required common-lisp:t :member-name
                                      "RepositoryUrl")
                                     (source-code-version :target-type
                                      source-code-version :required
                                      common-lisp:t :member-name
                                      "SourceCodeVersion")
                                     (code-configuration :target-type
                                      code-configuration :member-name
                                      "CodeConfiguration")
                                     (source-directory :target-type
                                      source-directory :member-name
                                      "SourceDirectory"))
                                    (:shape-name "CodeRepository"))

(smithy/sdk/shapes:define-enum configuration-source
    common-lisp:nil
  (:repository "REPOSITORY")
  (:api "API"))

(smithy/sdk/shapes:define-structure connection common-lisp:nil
                                    ((connection-name :target-type
                                      connection-name :member-name
                                      "ConnectionName")
                                     (connection-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ConnectionArn")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (status :target-type connection-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt"))
                                    (:shape-name "Connection"))

(smithy/sdk/shapes:define-type connection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:pending-handshake "PENDING_HANDSHAKE")
  (:available "AVAILABLE")
  (:error "ERROR")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure connection-summary common-lisp:nil
                                    ((connection-name :target-type
                                      connection-name :member-name
                                      "ConnectionName")
                                     (connection-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ConnectionArn")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (status :target-type connection-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt"))
                                    (:shape-name "ConnectionSummary"))

(smithy/sdk/shapes:define-list connection-summary-list :member
                               connection-summary)

(smithy/sdk/shapes:define-type cpu smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-auto-scaling-configuration-request
                                common-lisp:nil
                                ((auto-scaling-configuration-name :target-type
                                  auto-scaling-configuration-name :required
                                  common-lisp:t :member-name
                                  "AutoScalingConfigurationName")
                                 (max-concurrency :target-type
                                  asconfig-max-concurrency :member-name
                                  "MaxConcurrency")
                                 (min-size :target-type asconfig-min-size
                                  :member-name "MinSize")
                                 (max-size :target-type asconfig-max-size
                                  :member-name "MaxSize")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateAutoScalingConfigurationRequest"))

(smithy/sdk/shapes:define-output create-auto-scaling-configuration-response
                                 common-lisp:nil
                                 ((auto-scaling-configuration :target-type
                                   auto-scaling-configuration :required
                                   common-lisp:t :member-name
                                   "AutoScalingConfiguration"))
                                 (:shape-name
                                  "CreateAutoScalingConfigurationResponse"))

(smithy/sdk/shapes:define-input create-connection-request common-lisp:nil
                                ((connection-name :target-type connection-name
                                  :required common-lisp:t :member-name
                                  "ConnectionName")
                                 (provider-type :target-type provider-type
                                  :required common-lisp:t :member-name
                                  "ProviderType")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateConnectionRequest"))

(smithy/sdk/shapes:define-output create-connection-response common-lisp:nil
                                 ((connection :target-type connection :required
                                   common-lisp:t :member-name "Connection"))
                                 (:shape-name "CreateConnectionResponse"))

(smithy/sdk/shapes:define-input create-observability-configuration-request
                                common-lisp:nil
                                ((observability-configuration-name :target-type
                                  observability-configuration-name :required
                                  common-lisp:t :member-name
                                  "ObservabilityConfigurationName")
                                 (trace-configuration :target-type
                                  trace-configuration :member-name
                                  "TraceConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateObservabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output create-observability-configuration-response
                                 common-lisp:nil
                                 ((observability-configuration :target-type
                                   observability-configuration :required
                                   common-lisp:t :member-name
                                   "ObservabilityConfiguration"))
                                 (:shape-name
                                  "CreateObservabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input create-service-request common-lisp:nil
                                ((service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName")
                                 (source-configuration :target-type
                                  source-configuration :required common-lisp:t
                                  :member-name "SourceConfiguration")
                                 (instance-configuration :target-type
                                  instance-configuration :member-name
                                  "InstanceConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration")
                                 (health-check-configuration :target-type
                                  health-check-configuration :member-name
                                  "HealthCheckConfiguration")
                                 (auto-scaling-configuration-arn :target-type
                                  app-runner-resource-arn :member-name
                                  "AutoScalingConfigurationArn")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "NetworkConfiguration")
                                 (observability-configuration :target-type
                                  service-observability-configuration
                                  :member-name "ObservabilityConfiguration"))
                                (:shape-name "CreateServiceRequest"))

(smithy/sdk/shapes:define-output create-service-response common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service")
                                  (operation-id :target-type uuid :required
                                   common-lisp:t :member-name "OperationId"))
                                 (:shape-name "CreateServiceResponse"))

(smithy/sdk/shapes:define-input create-vpc-connector-request common-lisp:nil
                                ((vpc-connector-name :target-type
                                  vpc-connector-name :required common-lisp:t
                                  :member-name "VpcConnectorName")
                                 (subnets :target-type string-list :required
                                  common-lisp:t :member-name "Subnets")
                                 (security-groups :target-type string-list
                                  :member-name "SecurityGroups")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateVpcConnectorRequest"))

(smithy/sdk/shapes:define-output create-vpc-connector-response common-lisp:nil
                                 ((vpc-connector :target-type vpc-connector
                                   :required common-lisp:t :member-name
                                   "VpcConnector"))
                                 (:shape-name "CreateVpcConnectorResponse"))

(smithy/sdk/shapes:define-input create-vpc-ingress-connection-request
                                common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn")
                                 (vpc-ingress-connection-name :target-type
                                  vpc-ingress-connection-name :required
                                  common-lisp:t :member-name
                                  "VpcIngressConnectionName")
                                 (ingress-vpc-configuration :target-type
                                  ingress-vpc-configuration :required
                                  common-lisp:t :member-name
                                  "IngressVpcConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateVpcIngressConnectionRequest"))

(smithy/sdk/shapes:define-output create-vpc-ingress-connection-response
                                 common-lisp:nil
                                 ((vpc-ingress-connection :target-type
                                   vpc-ingress-connection :required
                                   common-lisp:t :member-name
                                   "VpcIngressConnection"))
                                 (:shape-name
                                  "CreateVpcIngressConnectionResponse"))

(smithy/sdk/shapes:define-structure custom-domain common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "DomainName")
                                     (enable-wwwsubdomain :target-type
                                      nullable-boolean :required common-lisp:t
                                      :member-name "EnableWWWSubdomain")
                                     (certificate-validation-records
                                      :target-type
                                      certificate-validation-record-list
                                      :member-name
                                      "CertificateValidationRecords")
                                     (status :target-type
                                      custom-domain-association-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "CustomDomain"))

(smithy/sdk/shapes:define-enum custom-domain-association-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:pending-certificate-dns-validation "PENDING_CERTIFICATE_DNS_VALIDATION")
  (:binding-certificate "BINDING_CERTIFICATE"))

(smithy/sdk/shapes:define-list custom-domain-list :member custom-domain)

(smithy/sdk/shapes:define-type customer-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-auto-scaling-configuration-request
                                common-lisp:nil
                                ((auto-scaling-configuration-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "AutoScalingConfigurationArn")
                                 (delete-all-revisions :target-type boolean
                                  :member-name "DeleteAllRevisions"))
                                (:shape-name
                                 "DeleteAutoScalingConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-auto-scaling-configuration-response
                                 common-lisp:nil
                                 ((auto-scaling-configuration :target-type
                                   auto-scaling-configuration :required
                                   common-lisp:t :member-name
                                   "AutoScalingConfiguration"))
                                 (:shape-name
                                  "DeleteAutoScalingConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-connection-request common-lisp:nil
                                ((connection-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ConnectionArn"))
                                (:shape-name "DeleteConnectionRequest"))

(smithy/sdk/shapes:define-output delete-connection-response common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "DeleteConnectionResponse"))

(smithy/sdk/shapes:define-input delete-observability-configuration-request
                                common-lisp:nil
                                ((observability-configuration-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "ObservabilityConfigurationArn"))
                                (:shape-name
                                 "DeleteObservabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-observability-configuration-response
                                 common-lisp:nil
                                 ((observability-configuration :target-type
                                   observability-configuration :required
                                   common-lisp:t :member-name
                                   "ObservabilityConfiguration"))
                                 (:shape-name
                                  "DeleteObservabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-service-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn"))
                                (:shape-name "DeleteServiceRequest"))

(smithy/sdk/shapes:define-output delete-service-response common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service")
                                  (operation-id :target-type uuid :required
                                   common-lisp:t :member-name "OperationId"))
                                 (:shape-name "DeleteServiceResponse"))

(smithy/sdk/shapes:define-input delete-vpc-connector-request common-lisp:nil
                                ((vpc-connector-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "VpcConnectorArn"))
                                (:shape-name "DeleteVpcConnectorRequest"))

(smithy/sdk/shapes:define-output delete-vpc-connector-response common-lisp:nil
                                 ((vpc-connector :target-type vpc-connector
                                   :required common-lisp:t :member-name
                                   "VpcConnector"))
                                 (:shape-name "DeleteVpcConnectorResponse"))

(smithy/sdk/shapes:define-input delete-vpc-ingress-connection-request
                                common-lisp:nil
                                ((vpc-ingress-connection-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "VpcIngressConnectionArn"))
                                (:shape-name
                                 "DeleteVpcIngressConnectionRequest"))

(smithy/sdk/shapes:define-output delete-vpc-ingress-connection-response
                                 common-lisp:nil
                                 ((vpc-ingress-connection :target-type
                                   vpc-ingress-connection :required
                                   common-lisp:t :member-name
                                   "VpcIngressConnection"))
                                 (:shape-name
                                  "DeleteVpcIngressConnectionResponse"))

(smithy/sdk/shapes:define-input describe-auto-scaling-configuration-request
                                common-lisp:nil
                                ((auto-scaling-configuration-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "AutoScalingConfigurationArn"))
                                (:shape-name
                                 "DescribeAutoScalingConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-auto-scaling-configuration-response
                                 common-lisp:nil
                                 ((auto-scaling-configuration :target-type
                                   auto-scaling-configuration :required
                                   common-lisp:t :member-name
                                   "AutoScalingConfiguration"))
                                 (:shape-name
                                  "DescribeAutoScalingConfigurationResponse"))

(smithy/sdk/shapes:define-type describe-custom-domains-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-custom-domains-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  describe-custom-domains-max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeCustomDomainsRequest"))

(smithy/sdk/shapes:define-output describe-custom-domains-response
                                 common-lisp:nil
                                 ((dnstarget :target-type string :required
                                   common-lisp:t :member-name "DNSTarget")
                                  (service-arn :target-type
                                   app-runner-resource-arn :required
                                   common-lisp:t :member-name "ServiceArn")
                                  (custom-domains :target-type
                                   custom-domain-list :required common-lisp:t
                                   :member-name "CustomDomains")
                                  (vpc-dnstargets :target-type
                                   vpc-dnstarget-list :required common-lisp:t
                                   :member-name "VpcDNSTargets")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeCustomDomainsResponse"))

(smithy/sdk/shapes:define-input describe-observability-configuration-request
                                common-lisp:nil
                                ((observability-configuration-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "ObservabilityConfigurationArn"))
                                (:shape-name
                                 "DescribeObservabilityConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-observability-configuration-response
                                 common-lisp:nil
                                 ((observability-configuration :target-type
                                   observability-configuration :required
                                   common-lisp:t :member-name
                                   "ObservabilityConfiguration"))
                                 (:shape-name
                                  "DescribeObservabilityConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-service-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn"))
                                (:shape-name "DescribeServiceRequest"))

(smithy/sdk/shapes:define-output describe-service-response common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service"))
                                 (:shape-name "DescribeServiceResponse"))

(smithy/sdk/shapes:define-input describe-vpc-connector-request common-lisp:nil
                                ((vpc-connector-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "VpcConnectorArn"))
                                (:shape-name "DescribeVpcConnectorRequest"))

(smithy/sdk/shapes:define-output describe-vpc-connector-response
                                 common-lisp:nil
                                 ((vpc-connector :target-type vpc-connector
                                   :required common-lisp:t :member-name
                                   "VpcConnector"))
                                 (:shape-name "DescribeVpcConnectorResponse"))

(smithy/sdk/shapes:define-input describe-vpc-ingress-connection-request
                                common-lisp:nil
                                ((vpc-ingress-connection-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "VpcIngressConnectionArn"))
                                (:shape-name
                                 "DescribeVpcIngressConnectionRequest"))

(smithy/sdk/shapes:define-output describe-vpc-ingress-connection-response
                                 common-lisp:nil
                                 ((vpc-ingress-connection :target-type
                                   vpc-ingress-connection :required
                                   common-lisp:t :member-name
                                   "VpcIngressConnection"))
                                 (:shape-name
                                  "DescribeVpcIngressConnectionResponse"))

(smithy/sdk/shapes:define-input disassociate-custom-domain-request
                                common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "DomainName"))
                                (:shape-name "DisassociateCustomDomainRequest"))

(smithy/sdk/shapes:define-output disassociate-custom-domain-response
                                 common-lisp:nil
                                 ((dnstarget :target-type string :required
                                   common-lisp:t :member-name "DNSTarget")
                                  (service-arn :target-type
                                   app-runner-resource-arn :required
                                   common-lisp:t :member-name "ServiceArn")
                                  (custom-domain :target-type custom-domain
                                   :required common-lisp:t :member-name
                                   "CustomDomain")
                                  (vpc-dnstargets :target-type
                                   vpc-dnstarget-list :required common-lisp:t
                                   :member-name "VpcDNSTargets"))
                                 (:shape-name
                                  "DisassociateCustomDomainResponse"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure egress-configuration common-lisp:nil
                                    ((egress-type :target-type egress-type
                                      :member-name "EgressType")
                                     (vpc-connector-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "VpcConnectorArn"))
                                    (:shape-name "EgressConfiguration"))

(smithy/sdk/shapes:define-enum egress-type
    common-lisp:nil
  (:default "DEFAULT")
  (:vpc "VPC"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((kms-key :target-type kms-key-arn
                                      :required common-lisp:t :member-name
                                      "KmsKey"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type has-associated-service
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure health-check-configuration common-lisp:nil
                                    ((protocol :target-type
                                      health-check-protocol :member-name
                                      "Protocol")
                                     (path :target-type health-check-path
                                      :member-name "Path")
                                     (interval :target-type
                                      health-check-interval :member-name
                                      "Interval")
                                     (timeout :target-type health-check-timeout
                                      :member-name "Timeout")
                                     (healthy-threshold :target-type
                                      health-check-healthy-threshold
                                      :member-name "HealthyThreshold")
                                     (unhealthy-threshold :target-type
                                      health-check-unhealthy-threshold
                                      :member-name "UnhealthyThreshold"))
                                    (:shape-name "HealthCheckConfiguration"))

(smithy/sdk/shapes:define-type health-check-healthy-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum health-check-protocol
    common-lisp:nil
  (:tcp "TCP")
  (:http "HTTP"))

(smithy/sdk/shapes:define-type health-check-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-unhealthy-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure image-configuration common-lisp:nil
                                    ((runtime-environment-variables
                                      :target-type
                                      runtime-environment-variables
                                      :member-name
                                      "RuntimeEnvironmentVariables")
                                     (start-command :target-type start-command
                                      :member-name "StartCommand")
                                     (port :target-type string :member-name
                                      "Port")
                                     (runtime-environment-secrets :target-type
                                      runtime-environment-secrets :member-name
                                      "RuntimeEnvironmentSecrets"))
                                    (:shape-name "ImageConfiguration"))

(smithy/sdk/shapes:define-type image-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-repository common-lisp:nil
                                    ((image-identifier :target-type
                                      image-identifier :required common-lisp:t
                                      :member-name "ImageIdentifier")
                                     (image-configuration :target-type
                                      image-configuration :member-name
                                      "ImageConfiguration")
                                     (image-repository-type :target-type
                                      image-repository-type :required
                                      common-lisp:t :member-name
                                      "ImageRepositoryType"))
                                    (:shape-name "ImageRepository"))

(smithy/sdk/shapes:define-enum image-repository-type
    common-lisp:nil
  (:ecr "ECR")
  (:ecr-public "ECR_PUBLIC"))

(smithy/sdk/shapes:define-structure ingress-configuration common-lisp:nil
                                    ((is-publicly-accessible :target-type
                                      boolean :member-name
                                      "IsPubliclyAccessible"))
                                    (:shape-name "IngressConfiguration"))

(smithy/sdk/shapes:define-structure ingress-vpc-configuration common-lisp:nil
                                    ((vpc-id :target-type string :member-name
                                      "VpcId")
                                     (vpc-endpoint-id :target-type string
                                      :member-name "VpcEndpointId"))
                                    (:shape-name "IngressVpcConfiguration"))

(smithy/sdk/shapes:define-structure instance-configuration common-lisp:nil
                                    ((cpu :target-type cpu :member-name "Cpu")
                                     (memory :target-type memory :member-name
                                      "Memory")
                                     (instance-role-arn :target-type role-arn
                                      :member-name "InstanceRoleArn"))
                                    (:shape-name "InstanceConfiguration"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dual-stack "DUAL_STACK"))

(smithy/sdk/shapes:define-type is-default smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type latest smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input list-auto-scaling-configurations-request
                                common-lisp:nil
                                ((auto-scaling-configuration-name :target-type
                                  auto-scaling-configuration-name :member-name
                                  "AutoScalingConfigurationName")
                                 (latest-only :target-type boolean :member-name
                                  "LatestOnly")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListAutoScalingConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-auto-scaling-configurations-response
                                 common-lisp:nil
                                 ((auto-scaling-configuration-summary-list
                                   :target-type
                                   auto-scaling-configuration-summary-list
                                   :required common-lisp:t :member-name
                                   "AutoScalingConfigurationSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAutoScalingConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-connections-request common-lisp:nil
                                ((connection-name :target-type connection-name
                                  :member-name "ConnectionName")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListConnectionsRequest"))

(smithy/sdk/shapes:define-output list-connections-response common-lisp:nil
                                 ((connection-summary-list :target-type
                                   connection-summary-list :required
                                   common-lisp:t :member-name
                                   "ConnectionSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConnectionsResponse"))

(smithy/sdk/shapes:define-input list-observability-configurations-request
                                common-lisp:nil
                                ((observability-configuration-name :target-type
                                  observability-configuration-name :member-name
                                  "ObservabilityConfigurationName")
                                 (latest-only :target-type boolean :member-name
                                  "LatestOnly")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListObservabilityConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-observability-configurations-response
                                 common-lisp:nil
                                 ((observability-configuration-summary-list
                                   :target-type
                                   observability-configuration-summary-list
                                   :required common-lisp:t :member-name
                                   "ObservabilityConfigurationSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListObservabilityConfigurationsResponse"))

(smithy/sdk/shapes:define-type list-operations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-operations-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  list-operations-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListOperationsRequest"))

(smithy/sdk/shapes:define-output list-operations-response common-lisp:nil
                                 ((operation-summary-list :target-type
                                   operation-summary-list :member-name
                                   "OperationSummaryList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListOperationsResponse"))

(smithy/sdk/shapes:define-input
 list-services-for-auto-scaling-configuration-request common-lisp:nil
 ((auto-scaling-configuration-arn :target-type app-runner-resource-arn
   :required common-lisp:t :member-name "AutoScalingConfigurationArn")
  (max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListServicesForAutoScalingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 list-services-for-auto-scaling-configuration-response common-lisp:nil
 ((service-arn-list :target-type service-arn-list :required common-lisp:t
   :member-name "ServiceArnList")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListServicesForAutoScalingConfigurationResponse"))

(smithy/sdk/shapes:define-input list-services-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type service-max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListServicesRequest"))

(smithy/sdk/shapes:define-output list-services-response common-lisp:nil
                                 ((service-summary-list :target-type
                                   service-summary-list :required common-lisp:t
                                   :member-name "ServiceSummaryList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListServicesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-vpc-connectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListVpcConnectorsRequest"))

(smithy/sdk/shapes:define-output list-vpc-connectors-response common-lisp:nil
                                 ((vpc-connectors :target-type vpc-connectors
                                   :required common-lisp:t :member-name
                                   "VpcConnectors")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListVpcConnectorsResponse"))

(smithy/sdk/shapes:define-structure list-vpc-ingress-connections-filter
                                    common-lisp:nil
                                    ((service-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ServiceArn")
                                     (vpc-endpoint-id :target-type string
                                      :member-name "VpcEndpointId"))
                                    (:shape-name
                                     "ListVpcIngressConnectionsFilter"))

(smithy/sdk/shapes:define-input list-vpc-ingress-connections-request
                                common-lisp:nil
                                ((filter :target-type
                                  list-vpc-ingress-connections-filter
                                  :member-name "Filter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListVpcIngressConnectionsRequest"))

(smithy/sdk/shapes:define-output list-vpc-ingress-connections-response
                                 common-lisp:nil
                                 ((vpc-ingress-connection-summary-list
                                   :target-type
                                   vpc-ingress-connection-summary-list
                                   :required common-lisp:t :member-name
                                   "VpcIngressConnectionSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListVpcIngressConnectionsResponse"))

(smithy/sdk/shapes:define-type max-concurrency smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type memory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type min-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((egress-configuration :target-type
                                      egress-configuration :member-name
                                      "EgressConfiguration")
                                     (ingress-configuration :target-type
                                      ingress-configuration :member-name
                                      "IngressConfiguration")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure observability-configuration common-lisp:nil
                                    ((observability-configuration-arn
                                      :target-type app-runner-resource-arn
                                      :member-name
                                      "ObservabilityConfigurationArn")
                                     (observability-configuration-name
                                      :target-type
                                      observability-configuration-name
                                      :member-name
                                      "ObservabilityConfigurationName")
                                     (trace-configuration :target-type
                                      trace-configuration :member-name
                                      "TraceConfiguration")
                                     (observability-configuration-revision
                                      :target-type integer :member-name
                                      "ObservabilityConfigurationRevision")
                                     (latest :target-type boolean :member-name
                                      "Latest")
                                     (status :target-type
                                      observability-configuration-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (deleted-at :target-type timestamp
                                      :member-name "DeletedAt"))
                                    (:shape-name "ObservabilityConfiguration"))

(smithy/sdk/shapes:define-type observability-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum observability-configuration-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure observability-configuration-summary
                                    common-lisp:nil
                                    ((observability-configuration-arn
                                      :target-type app-runner-resource-arn
                                      :member-name
                                      "ObservabilityConfigurationArn")
                                     (observability-configuration-name
                                      :target-type
                                      observability-configuration-name
                                      :member-name
                                      "ObservabilityConfigurationName")
                                     (observability-configuration-revision
                                      :target-type integer :member-name
                                      "ObservabilityConfigurationRevision"))
                                    (:shape-name
                                     "ObservabilityConfigurationSummary"))

(smithy/sdk/shapes:define-list observability-configuration-summary-list :member
                               observability-configuration-summary)

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:succeeded "SUCCEEDED")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-failed "ROLLBACK_FAILED")
  (:rollback-succeeded "ROLLBACK_SUCCEEDED"))

(smithy/sdk/shapes:define-structure operation-summary common-lisp:nil
                                    ((id :target-type uuid :member-name "Id")
                                     (type :target-type operation-type
                                      :member-name "Type")
                                     (status :target-type operation-status
                                      :member-name "Status")
                                     (target-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "TargetArn")
                                     (started-at :target-type timestamp
                                      :member-name "StartedAt")
                                     (ended-at :target-type timestamp
                                      :member-name "EndedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "OperationSummary"))

(smithy/sdk/shapes:define-list operation-summary-list :member operation-summary)

(smithy/sdk/shapes:define-enum operation-type
    common-lisp:nil
  (:start-deployment "START_DEPLOYMENT")
  (:create-service "CREATE_SERVICE")
  (:pause-service "PAUSE_SERVICE")
  (:resume-service "RESUME_SERVICE")
  (:delete-service "DELETE_SERVICE")
  (:update-service "UPDATE_SERVICE"))

(smithy/sdk/shapes:define-input pause-service-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn"))
                                (:shape-name "PauseServiceRequest"))

(smithy/sdk/shapes:define-output pause-service-response common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service")
                                  (operation-id :target-type uuid :member-name
                                   "OperationId"))
                                 (:shape-name "PauseServiceResponse"))

(smithy/sdk/shapes:define-enum provider-type
    common-lisp:nil
  (:github "GITHUB")
  (:bitbucket "BITBUCKET"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input resume-service-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn"))
                                (:shape-name "ResumeServiceRequest"))

(smithy/sdk/shapes:define-output resume-service-response common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service")
                                  (operation-id :target-type uuid :member-name
                                   "OperationId"))
                                 (:shape-name "ResumeServiceResponse"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum runtime
    common-lisp:nil
  (:python-3 "PYTHON_3")
  (:nodejs-12 "NODEJS_12")
  (:nodejs-14 "NODEJS_14")
  (:corretto-8 "CORRETTO_8")
  (:corretto-11 "CORRETTO_11")
  (:nodejs-16 "NODEJS_16")
  (:go-1 "GO_1")
  (:dotnet-6 "DOTNET_6")
  (:php-81 "PHP_81")
  (:ruby-31 "RUBY_31")
  (:python-311 "PYTHON_311")
  (:nodejs-18 "NODEJS_18")
  (:nodejs-22 "NODEJS_22"))

(smithy/sdk/shapes:define-map runtime-environment-secrets :key
                              runtime-environment-secrets-name :value
                              runtime-environment-secrets-value)

(smithy/sdk/shapes:define-type runtime-environment-secrets-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type runtime-environment-secrets-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map runtime-environment-variables :key
                              runtime-environment-variables-key :value
                              runtime-environment-variables-value)

(smithy/sdk/shapes:define-type runtime-environment-variables-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type runtime-environment-variables-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((service-name :target-type service-name
                                      :required common-lisp:t :member-name
                                      "ServiceName")
                                     (service-id :target-type service-id
                                      :required common-lisp:t :member-name
                                      "ServiceId")
                                     (service-arn :target-type
                                      app-runner-resource-arn :required
                                      common-lisp:t :member-name "ServiceArn")
                                     (service-url :target-type string
                                      :member-name "ServiceUrl")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "UpdatedAt")
                                     (deleted-at :target-type timestamp
                                      :member-name "DeletedAt")
                                     (status :target-type service-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (source-configuration :target-type
                                      source-configuration :required
                                      common-lisp:t :member-name
                                      "SourceConfiguration")
                                     (instance-configuration :target-type
                                      instance-configuration :required
                                      common-lisp:t :member-name
                                      "InstanceConfiguration")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (health-check-configuration :target-type
                                      health-check-configuration :member-name
                                      "HealthCheckConfiguration")
                                     (auto-scaling-configuration-summary
                                      :target-type
                                      auto-scaling-configuration-summary
                                      :required common-lisp:t :member-name
                                      "AutoScalingConfigurationSummary")
                                     (network-configuration :target-type
                                      network-configuration :required
                                      common-lisp:t :member-name
                                      "NetworkConfiguration")
                                     (observability-configuration :target-type
                                      service-observability-configuration
                                      :member-name
                                      "ObservabilityConfiguration"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-list service-arn-list :member app-runner-resource-arn)

(smithy/sdk/shapes:define-type service-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-observability-configuration
                                    common-lisp:nil
                                    ((observability-enabled :target-type
                                      boolean :required common-lisp:t
                                      :member-name "ObservabilityEnabled")
                                     (observability-configuration-arn
                                      :target-type app-runner-resource-arn
                                      :member-name
                                      "ObservabilityConfigurationArn"))
                                    (:shape-name
                                     "ServiceObservabilityConfiguration"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum service-status
    common-lisp:nil
  (:create-failed "CREATE_FAILED")
  (:running "RUNNING")
  (:deleted "DELETED")
  (:delete-failed "DELETE_FAILED")
  (:paused "PAUSED")
  (:operation-in-progress "OPERATION_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure service-summary common-lisp:nil
                                    ((service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (service-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ServiceArn")
                                     (service-url :target-type string
                                      :member-name "ServiceUrl")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (status :target-type service-status
                                      :member-name "Status"))
                                    (:shape-name "ServiceSummary"))

(smithy/sdk/shapes:define-list service-summary-list :member service-summary)

(smithy/sdk/shapes:define-structure source-code-version common-lisp:nil
                                    ((type :target-type
                                      source-code-version-type :required
                                      common-lisp:t :member-name "Type")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "SourceCodeVersion"))

(smithy/sdk/shapes:define-enum source-code-version-type
    common-lisp:nil
  (:branch "BRANCH"))

(smithy/sdk/shapes:define-structure source-configuration common-lisp:nil
                                    ((code-repository :target-type
                                      code-repository :member-name
                                      "CodeRepository")
                                     (image-repository :target-type
                                      image-repository :member-name
                                      "ImageRepository")
                                     (auto-deployments-enabled :target-type
                                      nullable-boolean :member-name
                                      "AutoDeploymentsEnabled")
                                     (authentication-configuration :target-type
                                      authentication-configuration :member-name
                                      "AuthenticationConfiguration"))
                                    (:shape-name "SourceConfiguration"))

(smithy/sdk/shapes:define-type source-directory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type start-command smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-deployment-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn"))
                                (:shape-name "StartDeploymentRequest"))

(smithy/sdk/shapes:define-output start-deployment-response common-lisp:nil
                                 ((operation-id :target-type uuid :required
                                   common-lisp:t :member-name "OperationId"))
                                 (:shape-name "StartDeploymentResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure trace-configuration common-lisp:nil
                                    ((vendor :target-type tracing-vendor
                                      :required common-lisp:t :member-name
                                      "Vendor"))
                                    (:shape-name "TraceConfiguration"))

(smithy/sdk/shapes:define-enum tracing-vendor
    common-lisp:nil
  (:awsxray "AWSXRAY"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-default-auto-scaling-configuration-request common-lisp:nil
 ((auto-scaling-configuration-arn :target-type app-runner-resource-arn
   :required common-lisp:t :member-name "AutoScalingConfigurationArn"))
 (:shape-name "UpdateDefaultAutoScalingConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-default-auto-scaling-configuration-response common-lisp:nil
 ((auto-scaling-configuration :target-type auto-scaling-configuration :required
   common-lisp:t :member-name "AutoScalingConfiguration"))
 (:shape-name "UpdateDefaultAutoScalingConfigurationResponse"))

(smithy/sdk/shapes:define-input update-service-request common-lisp:nil
                                ((service-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name "ServiceArn")
                                 (source-configuration :target-type
                                  source-configuration :member-name
                                  "SourceConfiguration")
                                 (instance-configuration :target-type
                                  instance-configuration :member-name
                                  "InstanceConfiguration")
                                 (auto-scaling-configuration-arn :target-type
                                  app-runner-resource-arn :member-name
                                  "AutoScalingConfigurationArn")
                                 (health-check-configuration :target-type
                                  health-check-configuration :member-name
                                  "HealthCheckConfiguration")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "NetworkConfiguration")
                                 (observability-configuration :target-type
                                  service-observability-configuration
                                  :member-name "ObservabilityConfiguration"))
                                (:shape-name "UpdateServiceRequest"))

(smithy/sdk/shapes:define-output update-service-response common-lisp:nil
                                 ((service :target-type service :required
                                   common-lisp:t :member-name "Service")
                                  (operation-id :target-type uuid :required
                                   common-lisp:t :member-name "OperationId"))
                                 (:shape-name "UpdateServiceResponse"))

(smithy/sdk/shapes:define-input update-vpc-ingress-connection-request
                                common-lisp:nil
                                ((vpc-ingress-connection-arn :target-type
                                  app-runner-resource-arn :required
                                  common-lisp:t :member-name
                                  "VpcIngressConnectionArn")
                                 (ingress-vpc-configuration :target-type
                                  ingress-vpc-configuration :required
                                  common-lisp:t :member-name
                                  "IngressVpcConfiguration"))
                                (:shape-name
                                 "UpdateVpcIngressConnectionRequest"))

(smithy/sdk/shapes:define-output update-vpc-ingress-connection-response
                                 common-lisp:nil
                                 ((vpc-ingress-connection :target-type
                                   vpc-ingress-connection :required
                                   common-lisp:t :member-name
                                   "VpcIngressConnection"))
                                 (:shape-name
                                  "UpdateVpcIngressConnectionResponse"))

(smithy/sdk/shapes:define-structure vpc-connector common-lisp:nil
                                    ((vpc-connector-name :target-type
                                      vpc-connector-name :member-name
                                      "VpcConnectorName")
                                     (vpc-connector-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "VpcConnectorArn")
                                     (vpc-connector-revision :target-type
                                      integer :member-name
                                      "VpcConnectorRevision")
                                     (subnets :target-type string-list
                                      :member-name "Subnets")
                                     (security-groups :target-type string-list
                                      :member-name "SecurityGroups")
                                     (status :target-type vpc-connector-status
                                      :member-name "Status")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (deleted-at :target-type timestamp
                                      :member-name "DeletedAt"))
                                    (:shape-name "VpcConnector"))

(smithy/sdk/shapes:define-type vpc-connector-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vpc-connector-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-list vpc-connectors :member vpc-connector)

(smithy/sdk/shapes:define-structure vpc-dnstarget common-lisp:nil
                                    ((vpc-ingress-connection-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "VpcIngressConnectionArn")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (domain-name :target-type domain-name
                                      :member-name "DomainName"))
                                    (:shape-name "VpcDNSTarget"))

(smithy/sdk/shapes:define-list vpc-dnstarget-list :member vpc-dnstarget)

(smithy/sdk/shapes:define-structure vpc-ingress-connection common-lisp:nil
                                    ((vpc-ingress-connection-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "VpcIngressConnectionArn")
                                     (vpc-ingress-connection-name :target-type
                                      vpc-ingress-connection-name :member-name
                                      "VpcIngressConnectionName")
                                     (service-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ServiceArn")
                                     (status :target-type
                                      vpc-ingress-connection-status
                                      :member-name "Status")
                                     (account-id :target-type
                                      customer-account-id :member-name
                                      "AccountId")
                                     (domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (ingress-vpc-configuration :target-type
                                      ingress-vpc-configuration :member-name
                                      "IngressVpcConfiguration")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (deleted-at :target-type timestamp
                                      :member-name "DeletedAt"))
                                    (:shape-name "VpcIngressConnection"))

(smithy/sdk/shapes:define-type vpc-ingress-connection-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vpc-ingress-connection-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending-creation "PENDING_CREATION")
  (:pending-update "PENDING_UPDATE")
  (:pending-deletion "PENDING_DELETION")
  (:failed-creation "FAILED_CREATION")
  (:failed-update "FAILED_UPDATE")
  (:failed-deletion "FAILED_DELETION")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure vpc-ingress-connection-summary
                                    common-lisp:nil
                                    ((vpc-ingress-connection-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "VpcIngressConnectionArn")
                                     (service-arn :target-type
                                      app-runner-resource-arn :member-name
                                      "ServiceArn"))
                                    (:shape-name "VpcIngressConnectionSummary"))

(smithy/sdk/shapes:define-list vpc-ingress-connection-summary-list :member
                               vpc-ingress-connection-summary)

(smithy/sdk/operation:define-operation associate-custom-domain :shape-name
                                       "AssociateCustomDomain" :input
                                       associate-custom-domain-request :output
                                       associate-custom-domain-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception))

(smithy/sdk/operation:define-operation create-auto-scaling-configuration
                                       :shape-name
                                       "CreateAutoScalingConfiguration" :input
                                       create-auto-scaling-configuration-request
                                       :output
                                       create-auto-scaling-configuration-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-connection :shape-name
                                       "CreateConnection" :input
                                       create-connection-request :output
                                       create-connection-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-observability-configuration
                                       :shape-name
                                       "CreateObservabilityConfiguration"
                                       :input
                                       create-observability-configuration-request
                                       :output
                                       create-observability-configuration-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-service :shape-name
                                       "CreateService" :input
                                       create-service-request :output
                                       create-service-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-vpc-connector :shape-name
                                       "CreateVpcConnector" :input
                                       create-vpc-connector-request :output
                                       create-vpc-connector-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-vpc-ingress-connection
                                       :shape-name "CreateVpcIngressConnection"
                                       :input
                                       create-vpc-ingress-connection-request
                                       :output
                                       create-vpc-ingress-connection-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation delete-auto-scaling-configuration
                                       :shape-name
                                       "DeleteAutoScalingConfiguration" :input
                                       delete-auto-scaling-configuration-request
                                       :output
                                       delete-auto-scaling-configuration-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-request :output
                                       delete-connection-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-observability-configuration
                                       :shape-name
                                       "DeleteObservabilityConfiguration"
                                       :input
                                       delete-observability-configuration-request
                                       :output
                                       delete-observability-configuration-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-service :shape-name
                                       "DeleteService" :input
                                       delete-service-request :output
                                       delete-service-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-vpc-connector :shape-name
                                       "DeleteVpcConnector" :input
                                       delete-vpc-connector-request :output
                                       delete-vpc-connector-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-vpc-ingress-connection
                                       :shape-name "DeleteVpcIngressConnection"
                                       :input
                                       delete-vpc-ingress-connection-request
                                       :output
                                       delete-vpc-ingress-connection-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-auto-scaling-configuration
                                       :shape-name
                                       "DescribeAutoScalingConfiguration"
                                       :input
                                       describe-auto-scaling-configuration-request
                                       :output
                                       describe-auto-scaling-configuration-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-custom-domains :shape-name
                                       "DescribeCustomDomains" :input
                                       describe-custom-domains-request :output
                                       describe-custom-domains-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-observability-configuration
                                       :shape-name
                                       "DescribeObservabilityConfiguration"
                                       :input
                                       describe-observability-configuration-request
                                       :output
                                       describe-observability-configuration-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-service :shape-name
                                       "DescribeService" :input
                                       describe-service-request :output
                                       describe-service-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-vpc-connector :shape-name
                                       "DescribeVpcConnector" :input
                                       describe-vpc-connector-request :output
                                       describe-vpc-connector-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-vpc-ingress-connection
                                       :shape-name
                                       "DescribeVpcIngressConnection" :input
                                       describe-vpc-ingress-connection-request
                                       :output
                                       describe-vpc-ingress-connection-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-custom-domain :shape-name
                                       "DisassociateCustomDomain" :input
                                       disassociate-custom-domain-request
                                       :output
                                       disassociate-custom-domain-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-auto-scaling-configurations
                                       :shape-name
                                       "ListAutoScalingConfigurations" :input
                                       list-auto-scaling-configurations-request
                                       :output
                                       list-auto-scaling-configurations-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-connections :shape-name
                                       "ListConnections" :input
                                       list-connections-request :output
                                       list-connections-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-observability-configurations
                                       :shape-name
                                       "ListObservabilityConfigurations" :input
                                       list-observability-configurations-request
                                       :output
                                       list-observability-configurations-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-operations :shape-name
                                       "ListOperations" :input
                                       list-operations-request :output
                                       list-operations-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-request :output
                                       list-services-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation
 list-services-for-auto-scaling-configuration :shape-name
 "ListServicesForAutoScalingConfiguration" :input
 list-services-for-auto-scaling-configuration-request :output
 list-services-for-auto-scaling-configuration-response :errors
 (internal-service-error-exception invalid-request-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-vpc-connectors :shape-name
                                       "ListVpcConnectors" :input
                                       list-vpc-connectors-request :output
                                       list-vpc-connectors-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-vpc-ingress-connections :shape-name
                                       "ListVpcIngressConnections" :input
                                       list-vpc-ingress-connections-request
                                       :output
                                       list-vpc-ingress-connections-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation pause-service :shape-name "PauseService"
                                       :input pause-service-request :output
                                       pause-service-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation resume-service :shape-name
                                       "ResumeService" :input
                                       resume-service-request :output
                                       resume-service-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-deployment :shape-name
                                       "StartDeployment" :input
                                       start-deployment-request :output
                                       start-deployment-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 update-default-auto-scaling-configuration :shape-name
 "UpdateDefaultAutoScalingConfiguration" :input
 update-default-auto-scaling-configuration-request :output
 update-default-auto-scaling-configuration-response :errors
 (internal-service-error-exception invalid-request-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation update-service :shape-name
                                       "UpdateService" :input
                                       update-service-request :output
                                       update-service-response :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-vpc-ingress-connection
                                       :shape-name "UpdateVpcIngressConnection"
                                       :input
                                       update-vpc-ingress-connection-request
                                       :output
                                       update-vpc-ingress-connection-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-not-found-exception))
