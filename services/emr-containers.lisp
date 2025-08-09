(uiop/package:define-package #:pira/emr-containers (:use)
                             (:export #:acmcert-arn #:allow-awsto-retain-logs
                              #:authorization-configuration
                              #:aws-chicago-web-service #:base64encoded
                              #:boolean #:cancel-job-run
                              #:cancel-job-run-request
                              #:cancel-job-run-response #:certificate
                              #:certificate-provider-type #:client-token
                              #:cloud-watch-monitoring-configuration
                              #:cluster-id #:configuration #:configuration-list
                              #:configuration-overrides #:container-info
                              #:container-log-rotation-configuration
                              #:container-provider #:container-provider-type
                              #:create-job-template
                              #:create-job-template-request
                              #:create-job-template-response
                              #:create-managed-endpoint
                              #:create-managed-endpoint-request
                              #:create-managed-endpoint-response
                              #:create-security-configuration
                              #:create-security-configuration-request
                              #:create-security-configuration-response
                              #:create-virtual-cluster
                              #:create-virtual-cluster-request
                              #:create-virtual-cluster-response
                              #:credential-type #:credentials #:date
                              #:delete-job-template
                              #:delete-job-template-request
                              #:delete-job-template-response
                              #:delete-managed-endpoint
                              #:delete-managed-endpoint-request
                              #:delete-managed-endpoint-response
                              #:delete-virtual-cluster
                              #:delete-virtual-cluster-request
                              #:delete-virtual-cluster-response
                              #:describe-job-run #:describe-job-run-request
                              #:describe-job-run-response
                              #:describe-job-template
                              #:describe-job-template-request
                              #:describe-job-template-response
                              #:describe-managed-endpoint
                              #:describe-managed-endpoint-request
                              #:describe-managed-endpoint-response
                              #:describe-security-configuration
                              #:describe-security-configuration-request
                              #:describe-security-configuration-response
                              #:describe-virtual-cluster
                              #:describe-virtual-cluster-request
                              #:describe-virtual-cluster-response
                              #:eksrequest-throttled-exception #:eks-info
                              #:encryption-configuration #:endpoint
                              #:endpoint-arn #:endpoint-state #:endpoint-states
                              #:endpoint-type #:endpoint-types #:endpoints
                              #:entry-point-argument #:entry-point-arguments
                              #:entry-point-path #:failure-reason
                              #:get-managed-endpoint-session-credentials
                              #:get-managed-endpoint-session-credentials-request
                              #:get-managed-endpoint-session-credentials-response
                              #:iamrole-arn
                              #:in-transit-encryption-configuration
                              #:internal-server-exception #:java-integer
                              #:job-arn #:job-driver #:job-run #:job-run-state
                              #:job-run-states #:job-runs #:job-template
                              #:job-template-arn #:job-template-data
                              #:job-templates #:kms-key-arn
                              #:kubernetes-namespace
                              #:lake-formation-configuration #:list-job-runs
                              #:list-job-runs-request #:list-job-runs-response
                              #:list-job-templates #:list-job-templates-request
                              #:list-job-templates-response
                              #:list-managed-endpoints
                              #:list-managed-endpoints-request
                              #:list-managed-endpoints-response
                              #:list-security-configurations
                              #:list-security-configurations-request
                              #:list-security-configurations-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-virtual-clusters
                              #:list-virtual-clusters-request
                              #:list-virtual-clusters-response #:log-context
                              #:log-group-name #:managed-logs
                              #:max-files-to-keep #:monitoring-configuration
                              #:next-token
                              #:parametric-cloud-watch-monitoring-configuration
                              #:parametric-configuration-overrides
                              #:parametric-iamrole-arn
                              #:parametric-monitoring-configuration
                              #:parametric-release-label
                              #:parametric-s3monitoring-configuration
                              #:persistent-app-ui #:release-label
                              #:request-identity-user-arn
                              #:request-throttled-exception
                              #:resource-id-string #:resource-name-string
                              #:resource-not-found-exception
                              #:retry-policy-configuration
                              #:retry-policy-execution #:rotation-size
                              #:rsi-arn #:s3monitoring-configuration
                              #:secrets-manager-arn #:secure-namespace-info
                              #:security-configuration
                              #:security-configuration-arn
                              #:security-configuration-data
                              #:security-configurations
                              #:sensitive-properties-map #:session-tag-value
                              #:spark-sql-job-driver #:spark-sql-parameters
                              #:spark-submit-job-driver
                              #:spark-submit-parameters #:start-job-run
                              #:start-job-run-request #:start-job-run-response
                              #:string1024 #:string128 #:string2048 #:string256
                              #:string-empty256 #:subnet-ids
                              #:tlscertificate-configuration #:tag-key-list
                              #:tag-map #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:template-parameter
                              #:template-parameter-configuration
                              #:template-parameter-configuration-map
                              #:template-parameter-data-type
                              #:template-parameter-input-map
                              #:template-parameter-name #:token
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:uri-string
                              #:validation-exception #:virtual-cluster
                              #:virtual-cluster-arn #:virtual-cluster-state
                              #:virtual-cluster-states #:virtual-clusters))
(common-lisp:in-package #:pira/emr-containers)

(smithy/sdk/service:define-service aws-chicago-web-service :shape-name
                                   "AwsChicagoWebService" :version "2020-10-01"
                                   :title "Amazon EMR Containers" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "EMR containers")
                                      ("arnNamespace" . "emr-containers")
                                      ("cloudFormationName" . "EMRcontainers")
                                      ("cloudTrailEventSource"
                                       . "emrcontainers.amazonaws.com")
                                      ("endpointPrefix" . "emr-containers"))
                                     ("aws.auth#sigv4"
                                      ("name" . "emr-containers"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type acmcert-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum allow-awsto-retain-logs
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure authorization-configuration common-lisp:nil
                                    ((lake-formation-configuration :target-type
                                      lake-formation-configuration :member-name
                                      "lakeFormationConfiguration")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "encryptionConfiguration"))
                                    (:shape-name "AuthorizationConfiguration"))

(smithy/sdk/shapes:define-type base64encoded smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-job-run-request common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "CancelJobRunRequest"))

(smithy/sdk/shapes:define-output cancel-job-run-response common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (virtual-cluster-id :target-type
                                   resource-id-string :member-name
                                   "virtualClusterId"))
                                 (:shape-name "CancelJobRunResponse"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((certificate-arn :target-type acmcert-arn
                                      :member-name "certificateArn")
                                     (certificate-data :target-type
                                      base64encoded :member-name
                                      "certificateData"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-enum certificate-provider-type
    common-lisp:nil
  (:pem "PEM"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-monitoring-configuration
                                    common-lisp:nil
                                    ((log-group-name :target-type
                                      log-group-name :required common-lisp:t
                                      :member-name "logGroupName")
                                     (log-stream-name-prefix :target-type
                                      string256 :member-name
                                      "logStreamNamePrefix"))
                                    (:shape-name
                                     "CloudWatchMonitoringConfiguration"))

(smithy/sdk/shapes:define-type cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((classification :target-type string1024
                                      :required common-lisp:t :member-name
                                      "classification")
                                     (properties :target-type
                                      sensitive-properties-map :member-name
                                      "properties")
                                     (configurations :target-type
                                      configuration-list :member-name
                                      "configurations"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-list configuration-list :member configuration)

(smithy/sdk/shapes:define-structure configuration-overrides common-lisp:nil
                                    ((application-configuration :target-type
                                      configuration-list :member-name
                                      "applicationConfiguration")
                                     (monitoring-configuration :target-type
                                      monitoring-configuration :member-name
                                      "monitoringConfiguration"))
                                    (:shape-name "ConfigurationOverrides"))

(smithy/sdk/shapes:define-union container-info common-lisp:nil
                                ((eks-info :target-type eks-info :member-name
                                  "eksInfo"))
                                (:shape-name "ContainerInfo"))

(smithy/sdk/shapes:define-structure container-log-rotation-configuration
                                    common-lisp:nil
                                    ((rotation-size :target-type rotation-size
                                      :required common-lisp:t :member-name
                                      "rotationSize")
                                     (max-files-to-keep :target-type
                                      max-files-to-keep :required common-lisp:t
                                      :member-name "maxFilesToKeep"))
                                    (:shape-name
                                     "ContainerLogRotationConfiguration"))

(smithy/sdk/shapes:define-structure container-provider common-lisp:nil
                                    ((type :target-type container-provider-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (id :target-type cluster-id :required
                                      common-lisp:t :member-name "id")
                                     (info :target-type container-info
                                      :member-name "info"))
                                    (:shape-name "ContainerProvider"))

(smithy/sdk/shapes:define-enum container-provider-type
    common-lisp:nil
  (:eks "EKS"))

(smithy/sdk/shapes:define-input create-job-template-request common-lisp:nil
                                ((name :target-type resource-name-string
                                  :required common-lisp:t :member-name "name")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (job-template-data :target-type
                                  job-template-data :required common-lisp:t
                                  :member-name "jobTemplateData")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn"))
                                (:shape-name "CreateJobTemplateRequest"))

(smithy/sdk/shapes:define-output create-job-template-response common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (name :target-type resource-name-string
                                   :member-name "name")
                                  (arn :target-type job-template-arn
                                   :member-name "arn")
                                  (created-at :target-type date :member-name
                                   "createdAt"))
                                 (:shape-name "CreateJobTemplateResponse"))

(smithy/sdk/shapes:define-input create-managed-endpoint-request common-lisp:nil
                                ((name :target-type resource-name-string
                                  :required common-lisp:t :member-name "name")
                                 (virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t)
                                 (type :target-type endpoint-type :required
                                  common-lisp:t :member-name "type")
                                 (release-label :target-type release-label
                                  :required common-lisp:t :member-name
                                  "releaseLabel")
                                 (execution-role-arn :target-type iamrole-arn
                                  :required common-lisp:t :member-name
                                  "executionRoleArn")
                                 (certificate-arn :target-type acmcert-arn
                                  :member-name "certificateArn")
                                 (configuration-overrides :target-type
                                  configuration-overrides :member-name
                                  "configurationOverrides")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateManagedEndpointRequest"))

(smithy/sdk/shapes:define-output create-managed-endpoint-response
                                 common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (name :target-type resource-name-string
                                   :member-name "name")
                                  (arn :target-type endpoint-arn :member-name
                                   "arn")
                                  (virtual-cluster-id :target-type
                                   resource-id-string :member-name
                                   "virtualClusterId"))
                                 (:shape-name "CreateManagedEndpointResponse"))

(smithy/sdk/shapes:define-input create-security-configuration-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (name :target-type resource-name-string
                                  :required common-lisp:t :member-name "name")
                                 (security-configuration-data :target-type
                                  security-configuration-data :required
                                  common-lisp:t :member-name
                                  "securityConfigurationData")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateSecurityConfigurationRequest"))

(smithy/sdk/shapes:define-output create-security-configuration-response
                                 common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (name :target-type resource-name-string
                                   :member-name "name")
                                  (arn :target-type security-configuration-arn
                                   :member-name "arn"))
                                 (:shape-name
                                  "CreateSecurityConfigurationResponse"))

(smithy/sdk/shapes:define-input create-virtual-cluster-request common-lisp:nil
                                ((name :target-type resource-name-string
                                  :required common-lisp:t :member-name "name")
                                 (container-provider :target-type
                                  container-provider :required common-lisp:t
                                  :member-name "containerProvider")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (security-configuration-id :target-type
                                  resource-id-string :member-name
                                  "securityConfigurationId"))
                                (:shape-name "CreateVirtualClusterRequest"))

(smithy/sdk/shapes:define-output create-virtual-cluster-response
                                 common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (name :target-type resource-name-string
                                   :member-name "name")
                                  (arn :target-type virtual-cluster-arn
                                   :member-name "arn"))
                                 (:shape-name "CreateVirtualClusterResponse"))

(smithy/sdk/shapes:define-type credential-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union credentials common-lisp:nil
                                ((token :target-type token :member-name
                                  "token"))
                                (:shape-name "Credentials"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-job-template-request common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteJobTemplateRequest"))

(smithy/sdk/shapes:define-output delete-job-template-response common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id"))
                                 (:shape-name "DeleteJobTemplateResponse"))

(smithy/sdk/shapes:define-input delete-managed-endpoint-request common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteManagedEndpointRequest"))

(smithy/sdk/shapes:define-output delete-managed-endpoint-response
                                 common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (virtual-cluster-id :target-type
                                   resource-id-string :member-name
                                   "virtualClusterId"))
                                 (:shape-name "DeleteManagedEndpointResponse"))

(smithy/sdk/shapes:define-input delete-virtual-cluster-request common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteVirtualClusterRequest"))

(smithy/sdk/shapes:define-output delete-virtual-cluster-response
                                 common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id"))
                                 (:shape-name "DeleteVirtualClusterResponse"))

(smithy/sdk/shapes:define-input describe-job-run-request common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeJobRunRequest"))

(smithy/sdk/shapes:define-output describe-job-run-response common-lisp:nil
                                 ((job-run :target-type job-run :member-name
                                   "jobRun"))
                                 (:shape-name "DescribeJobRunResponse"))

(smithy/sdk/shapes:define-input describe-job-template-request common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeJobTemplateRequest"))

(smithy/sdk/shapes:define-output describe-job-template-response common-lisp:nil
                                 ((job-template :target-type job-template
                                   :member-name "jobTemplate"))
                                 (:shape-name "DescribeJobTemplateResponse"))

(smithy/sdk/shapes:define-input describe-managed-endpoint-request
                                common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeManagedEndpointRequest"))

(smithy/sdk/shapes:define-output describe-managed-endpoint-response
                                 common-lisp:nil
                                 ((endpoint :target-type endpoint :member-name
                                   "endpoint"))
                                 (:shape-name
                                  "DescribeManagedEndpointResponse"))

(smithy/sdk/shapes:define-input describe-security-configuration-request
                                common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeSecurityConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-security-configuration-response
                                 common-lisp:nil
                                 ((security-configuration :target-type
                                   security-configuration :member-name
                                   "securityConfiguration"))
                                 (:shape-name
                                  "DescribeSecurityConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-virtual-cluster-request
                                common-lisp:nil
                                ((id :target-type resource-id-string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeVirtualClusterRequest"))

(smithy/sdk/shapes:define-output describe-virtual-cluster-response
                                 common-lisp:nil
                                 ((virtual-cluster :target-type virtual-cluster
                                   :member-name "virtualCluster"))
                                 (:shape-name "DescribeVirtualClusterResponse"))

(smithy/sdk/shapes:define-error eksrequest-throttled-exception common-lisp:nil
                                ((message :target-type string1024 :member-name
                                  "message"))
                                (:shape-name "EKSRequestThrottledException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure eks-info common-lisp:nil
                                    ((namespace :target-type
                                      kubernetes-namespace :member-name
                                      "namespace"))
                                    (:shape-name "EksInfo"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((in-transit-encryption-configuration
                                      :target-type
                                      in-transit-encryption-configuration
                                      :member-name
                                      "inTransitEncryptionConfiguration"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "id")
                                     (name :target-type resource-name-string
                                      :member-name "name")
                                     (arn :target-type endpoint-arn
                                      :member-name "arn")
                                     (virtual-cluster-id :target-type
                                      resource-id-string :member-name
                                      "virtualClusterId")
                                     (type :target-type endpoint-type
                                      :member-name "type")
                                     (state :target-type endpoint-state
                                      :member-name "state")
                                     (release-label :target-type release-label
                                      :member-name "releaseLabel")
                                     (execution-role-arn :target-type
                                      iamrole-arn :member-name
                                      "executionRoleArn")
                                     (certificate-arn :target-type acmcert-arn
                                      :member-name "certificateArn")
                                     (certificate-authority :target-type
                                      certificate :member-name
                                      "certificateAuthority")
                                     (configuration-overrides :target-type
                                      configuration-overrides :member-name
                                      "configurationOverrides")
                                     (server-url :target-type uri-string
                                      :member-name "serverUrl")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (security-group :target-type string256
                                      :member-name "securityGroup")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "subnetIds")
                                     (state-details :target-type string256
                                      :member-name "stateDetails")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-type endpoint-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:terminated-with-errors "TERMINATED_WITH_ERRORS"))

(smithy/sdk/shapes:define-list endpoint-states :member endpoint-state)

(smithy/sdk/shapes:define-type endpoint-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list endpoint-types :member endpoint-type)

(smithy/sdk/shapes:define-list endpoints :member endpoint)

(smithy/sdk/shapes:define-type entry-point-argument
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list entry-point-arguments :member
                               entry-point-argument)

(smithy/sdk/shapes:define-type entry-point-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum failure-reason
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:user-error "USER_ERROR")
  (:validation-error "VALIDATION_ERROR")
  (:cluster-unavailable "CLUSTER_UNAVAILABLE"))

(smithy/sdk/shapes:define-input
 get-managed-endpoint-session-credentials-request common-lisp:nil
 ((endpoint-identifier :target-type string2048 :required common-lisp:t
   :member-name "endpointIdentifier" :http-label common-lisp:t)
  (virtual-cluster-identifier :target-type string2048 :required common-lisp:t
   :member-name "virtualClusterIdentifier" :http-label common-lisp:t)
  (execution-role-arn :target-type iamrole-arn :required common-lisp:t
   :member-name "executionRoleArn")
  (credential-type :target-type credential-type :required common-lisp:t
   :member-name "credentialType")
  (duration-in-seconds :target-type java-integer :member-name
   "durationInSeconds")
  (log-context :target-type log-context :member-name "logContext")
  (client-token :target-type client-token :member-name "clientToken"))
 (:shape-name "GetManagedEndpointSessionCredentialsRequest"))

(smithy/sdk/shapes:define-output
 get-managed-endpoint-session-credentials-response common-lisp:nil
 ((id :target-type resource-id-string :member-name "id")
  (credentials :target-type credentials :member-name "credentials")
  (expires-at :target-type date :member-name "expiresAt"))
 (:shape-name "GetManagedEndpointSessionCredentialsResponse"))

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure in-transit-encryption-configuration
                                    common-lisp:nil
                                    ((tls-certificate-configuration
                                      :target-type tlscertificate-configuration
                                      :member-name
                                      "tlsCertificateConfiguration"))
                                    (:shape-name
                                     "InTransitEncryptionConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string1024 :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type java-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-driver common-lisp:nil
                                    ((spark-submit-job-driver :target-type
                                      spark-submit-job-driver :member-name
                                      "sparkSubmitJobDriver")
                                     (spark-sql-job-driver :target-type
                                      spark-sql-job-driver :member-name
                                      "sparkSqlJobDriver"))
                                    (:shape-name "JobDriver"))

(smithy/sdk/shapes:define-structure job-run common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "id")
                                     (name :target-type resource-name-string
                                      :member-name "name")
                                     (virtual-cluster-id :target-type
                                      resource-id-string :member-name
                                      "virtualClusterId")
                                     (arn :target-type job-arn :member-name
                                      "arn")
                                     (state :target-type job-run-state
                                      :member-name "state")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (execution-role-arn :target-type
                                      iamrole-arn :member-name
                                      "executionRoleArn")
                                     (release-label :target-type release-label
                                      :member-name "releaseLabel")
                                     (configuration-overrides :target-type
                                      configuration-overrides :member-name
                                      "configurationOverrides")
                                     (job-driver :target-type job-driver
                                      :member-name "jobDriver")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (created-by :target-type
                                      request-identity-user-arn :member-name
                                      "createdBy")
                                     (finished-at :target-type date
                                      :member-name "finishedAt")
                                     (state-details :target-type string256
                                      :member-name "stateDetails")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "failureReason")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (retry-policy-configuration :target-type
                                      retry-policy-configuration :member-name
                                      "retryPolicyConfiguration")
                                     (retry-policy-execution :target-type
                                      retry-policy-execution :member-name
                                      "retryPolicyExecution"))
                                    (:shape-name "JobRun"))

(smithy/sdk/shapes:define-enum job-run-state
    common-lisp:nil
  (:pending "PENDING")
  (:submitted "SUBMITTED")
  (:running "RUNNING")
  (:failed "FAILED")
  (:cancelled "CANCELLED")
  (:cancel-pending "CANCEL_PENDING")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list job-run-states :member job-run-state)

(smithy/sdk/shapes:define-list job-runs :member job-run)

(smithy/sdk/shapes:define-structure job-template common-lisp:nil
                                    ((name :target-type resource-name-string
                                      :member-name "name")
                                     (id :target-type resource-id-string
                                      :member-name "id")
                                     (arn :target-type job-template-arn
                                      :member-name "arn")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (created-by :target-type
                                      request-identity-user-arn :member-name
                                      "createdBy")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (job-template-data :target-type
                                      job-template-data :required common-lisp:t
                                      :member-name "jobTemplateData")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (decryption-error :target-type string2048
                                      :member-name "decryptionError"))
                                    (:shape-name "JobTemplate"))

(smithy/sdk/shapes:define-type job-template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-template-data common-lisp:nil
                                    ((execution-role-arn :target-type
                                      parametric-iamrole-arn :required
                                      common-lisp:t :member-name
                                      "executionRoleArn")
                                     (release-label :target-type
                                      parametric-release-label :required
                                      common-lisp:t :member-name
                                      "releaseLabel")
                                     (configuration-overrides :target-type
                                      parametric-configuration-overrides
                                      :member-name "configurationOverrides")
                                     (job-driver :target-type job-driver
                                      :required common-lisp:t :member-name
                                      "jobDriver")
                                     (parameter-configuration :target-type
                                      template-parameter-configuration-map
                                      :member-name "parameterConfiguration")
                                     (job-tags :target-type tag-map
                                      :member-name "jobTags"))
                                    (:shape-name "JobTemplateData"))

(smithy/sdk/shapes:define-list job-templates :member job-template)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kubernetes-namespace
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lake-formation-configuration
                                    common-lisp:nil
                                    ((authorized-session-tag-value :target-type
                                      session-tag-value :member-name
                                      "authorizedSessionTagValue")
                                     (secure-namespace-info :target-type
                                      secure-namespace-info :member-name
                                      "secureNamespaceInfo")
                                     (query-engine-role-arn :target-type
                                      iamrole-arn :member-name
                                      "queryEngineRoleArn"))
                                    (:shape-name "LakeFormationConfiguration"))

(smithy/sdk/shapes:define-input list-job-runs-request common-lisp:nil
                                ((virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t)
                                 (created-before :target-type date :member-name
                                  "createdBefore" :http-query "createdBefore")
                                 (created-after :target-type date :member-name
                                  "createdAfter" :http-query "createdAfter")
                                 (name :target-type resource-name-string
                                  :member-name "name" :http-query "name")
                                 (states :target-type job-run-states
                                  :member-name "states" :http-query "states")
                                 (max-results :target-type java-integer
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListJobRunsRequest"))

(smithy/sdk/shapes:define-output list-job-runs-response common-lisp:nil
                                 ((job-runs :target-type job-runs :member-name
                                   "jobRuns")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobRunsResponse"))

(smithy/sdk/shapes:define-input list-job-templates-request common-lisp:nil
                                ((created-after :target-type date :member-name
                                  "createdAfter" :http-query "createdAfter")
                                 (created-before :target-type date :member-name
                                  "createdBefore" :http-query "createdBefore")
                                 (max-results :target-type java-integer
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListJobTemplatesRequest"))

(smithy/sdk/shapes:define-output list-job-templates-response common-lisp:nil
                                 ((templates :target-type job-templates
                                   :member-name "templates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobTemplatesResponse"))

(smithy/sdk/shapes:define-input list-managed-endpoints-request common-lisp:nil
                                ((virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t)
                                 (created-before :target-type date :member-name
                                  "createdBefore" :http-query "createdBefore")
                                 (created-after :target-type date :member-name
                                  "createdAfter" :http-query "createdAfter")
                                 (types :target-type endpoint-types
                                  :member-name "types" :http-query "types")
                                 (states :target-type endpoint-states
                                  :member-name "states" :http-query "states")
                                 (max-results :target-type java-integer
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListManagedEndpointsRequest"))

(smithy/sdk/shapes:define-output list-managed-endpoints-response
                                 common-lisp:nil
                                 ((endpoints :target-type endpoints
                                   :member-name "endpoints")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListManagedEndpointsResponse"))

(smithy/sdk/shapes:define-input list-security-configurations-request
                                common-lisp:nil
                                ((created-after :target-type date :member-name
                                  "createdAfter" :http-query "createdAfter")
                                 (created-before :target-type date :member-name
                                  "createdBefore" :http-query "createdBefore")
                                 (max-results :target-type java-integer
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListSecurityConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-security-configurations-response
                                 common-lisp:nil
                                 ((security-configurations :target-type
                                   security-configurations :member-name
                                   "securityConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSecurityConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type rsi-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-virtual-clusters-request common-lisp:nil
                                ((container-provider-id :target-type string1024
                                  :member-name "containerProviderId"
                                  :http-query "containerProviderId")
                                 (container-provider-type :target-type
                                  container-provider-type :member-name
                                  "containerProviderType" :http-query
                                  "containerProviderType")
                                 (created-after :target-type date :member-name
                                  "createdAfter" :http-query "createdAfter")
                                 (created-before :target-type date :member-name
                                  "createdBefore" :http-query "createdBefore")
                                 (states :target-type virtual-cluster-states
                                  :member-name "states" :http-query "states")
                                 (max-results :target-type java-integer
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (eks-access-entry-integrated :target-type
                                  boolean :member-name
                                  "eksAccessEntryIntegrated" :http-query
                                  "eksAccessEntryIntegrated"))
                                (:shape-name "ListVirtualClustersRequest"))

(smithy/sdk/shapes:define-output list-virtual-clusters-response common-lisp:nil
                                 ((virtual-clusters :target-type
                                   virtual-clusters :member-name
                                   "virtualClusters")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListVirtualClustersResponse"))

(smithy/sdk/shapes:define-type log-context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-logs common-lisp:nil
                                    ((allow-awsto-retain-logs :target-type
                                      allow-awsto-retain-logs :member-name
                                      "allowAWSToRetainLogs")
                                     (encryption-key-arn :target-type
                                      kms-key-arn :member-name
                                      "encryptionKeyArn"))
                                    (:shape-name "ManagedLogs"))

(smithy/sdk/shapes:define-type max-files-to-keep
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure monitoring-configuration common-lisp:nil
                                    ((managed-logs :target-type managed-logs
                                      :member-name "managedLogs")
                                     (persistent-app-ui :target-type
                                      persistent-app-ui :member-name
                                      "persistentAppUI")
                                     (cloud-watch-monitoring-configuration
                                      :target-type
                                      cloud-watch-monitoring-configuration
                                      :member-name
                                      "cloudWatchMonitoringConfiguration")
                                     (s3monitoring-configuration :target-type
                                      s3monitoring-configuration :member-name
                                      "s3MonitoringConfiguration")
                                     (container-log-rotation-configuration
                                      :target-type
                                      container-log-rotation-configuration
                                      :member-name
                                      "containerLogRotationConfiguration"))
                                    (:shape-name "MonitoringConfiguration"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 parametric-cloud-watch-monitoring-configuration common-lisp:nil
 ((log-group-name :target-type template-parameter :member-name "logGroupName")
  (log-stream-name-prefix :target-type string256 :member-name
   "logStreamNamePrefix"))
 (:shape-name "ParametricCloudWatchMonitoringConfiguration"))

(smithy/sdk/shapes:define-structure parametric-configuration-overrides
                                    common-lisp:nil
                                    ((application-configuration :target-type
                                      configuration-list :member-name
                                      "applicationConfiguration")
                                     (monitoring-configuration :target-type
                                      parametric-monitoring-configuration
                                      :member-name "monitoringConfiguration"))
                                    (:shape-name
                                     "ParametricConfigurationOverrides"))

(smithy/sdk/shapes:define-type parametric-iamrole-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parametric-monitoring-configuration
                                    common-lisp:nil
                                    ((persistent-app-ui :target-type
                                      template-parameter :member-name
                                      "persistentAppUI")
                                     (cloud-watch-monitoring-configuration
                                      :target-type
                                      parametric-cloud-watch-monitoring-configuration
                                      :member-name
                                      "cloudWatchMonitoringConfiguration")
                                     (s3monitoring-configuration :target-type
                                      parametric-s3monitoring-configuration
                                      :member-name
                                      "s3MonitoringConfiguration"))
                                    (:shape-name
                                     "ParametricMonitoringConfiguration"))

(smithy/sdk/shapes:define-type parametric-release-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parametric-s3monitoring-configuration
                                    common-lisp:nil
                                    ((log-uri :target-type uri-string
                                      :member-name "logUri"))
                                    (:shape-name
                                     "ParametricS3MonitoringConfiguration"))

(smithy/sdk/shapes:define-enum persistent-app-ui
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type release-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-identity-user-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error request-throttled-exception common-lisp:nil
                                ((message :target-type string1024 :member-name
                                  "message"))
                                (:shape-name "RequestThrottledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string1024 :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure retry-policy-configuration common-lisp:nil
                                    ((max-attempts :target-type java-integer
                                      :required common-lisp:t :member-name
                                      "maxAttempts"))
                                    (:shape-name "RetryPolicyConfiguration"))

(smithy/sdk/shapes:define-structure retry-policy-execution common-lisp:nil
                                    ((current-attempt-count :target-type
                                      java-integer :required common-lisp:t
                                      :member-name "currentAttemptCount"))
                                    (:shape-name "RetryPolicyExecution"))

(smithy/sdk/shapes:define-type rotation-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rsi-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3monitoring-configuration common-lisp:nil
                                    ((log-uri :target-type uri-string :required
                                      common-lisp:t :member-name "logUri"))
                                    (:shape-name "S3MonitoringConfiguration"))

(smithy/sdk/shapes:define-type secrets-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure secure-namespace-info common-lisp:nil
                                    ((cluster-id :target-type cluster-id
                                      :member-name "clusterId")
                                     (namespace :target-type
                                      kubernetes-namespace :member-name
                                      "namespace"))
                                    (:shape-name "SecureNamespaceInfo"))

(smithy/sdk/shapes:define-structure security-configuration common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "id")
                                     (name :target-type resource-name-string
                                      :member-name "name")
                                     (arn :target-type
                                      security-configuration-arn :member-name
                                      "arn")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (created-by :target-type
                                      request-identity-user-arn :member-name
                                      "createdBy")
                                     (security-configuration-data :target-type
                                      security-configuration-data :member-name
                                      "securityConfigurationData")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "SecurityConfiguration"))

(smithy/sdk/shapes:define-type security-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure security-configuration-data common-lisp:nil
                                    ((authorization-configuration :target-type
                                      authorization-configuration :member-name
                                      "authorizationConfiguration"))
                                    (:shape-name "SecurityConfigurationData"))

(smithy/sdk/shapes:define-list security-configurations :member
                               security-configuration)

(smithy/sdk/shapes:define-map sensitive-properties-map :key string1024 :value
                              string1024)

(smithy/sdk/shapes:define-type session-tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure spark-sql-job-driver common-lisp:nil
                                    ((entry-point :target-type entry-point-path
                                      :member-name "entryPoint")
                                     (spark-sql-parameters :target-type
                                      spark-sql-parameters :member-name
                                      "sparkSqlParameters"))
                                    (:shape-name "SparkSqlJobDriver"))

(smithy/sdk/shapes:define-type spark-sql-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure spark-submit-job-driver common-lisp:nil
                                    ((entry-point :target-type entry-point-path
                                      :required common-lisp:t :member-name
                                      "entryPoint")
                                     (entry-point-arguments :target-type
                                      entry-point-arguments :member-name
                                      "entryPointArguments")
                                     (spark-submit-parameters :target-type
                                      spark-submit-parameters :member-name
                                      "sparkSubmitParameters"))
                                    (:shape-name "SparkSubmitJobDriver"))

(smithy/sdk/shapes:define-type spark-submit-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-job-run-request common-lisp:nil
                                ((name :target-type resource-name-string
                                  :member-name "name")
                                 (virtual-cluster-id :target-type
                                  resource-id-string :required common-lisp:t
                                  :member-name "virtualClusterId" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (execution-role-arn :target-type iamrole-arn
                                  :member-name "executionRoleArn")
                                 (release-label :target-type release-label
                                  :member-name "releaseLabel")
                                 (job-driver :target-type job-driver
                                  :member-name "jobDriver")
                                 (configuration-overrides :target-type
                                  configuration-overrides :member-name
                                  "configurationOverrides")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (job-template-id :target-type
                                  resource-id-string :member-name
                                  "jobTemplateId")
                                 (job-template-parameters :target-type
                                  template-parameter-input-map :member-name
                                  "jobTemplateParameters")
                                 (retry-policy-configuration :target-type
                                  retry-policy-configuration :member-name
                                  "retryPolicyConfiguration"))
                                (:shape-name "StartJobRunRequest"))

(smithy/sdk/shapes:define-output start-job-run-response common-lisp:nil
                                 ((id :target-type resource-id-string
                                   :member-name "id")
                                  (name :target-type resource-name-string
                                   :member-name "name")
                                  (arn :target-type job-arn :member-name "arn")
                                  (virtual-cluster-id :target-type
                                   resource-id-string :member-name
                                   "virtualClusterId"))
                                 (:shape-name "StartJobRunResponse"))

(smithy/sdk/shapes:define-type string1024 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-empty256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member string256)

(smithy/sdk/shapes:define-structure tlscertificate-configuration
                                    common-lisp:nil
                                    ((certificate-provider-type :target-type
                                      certificate-provider-type :member-name
                                      "certificateProviderType")
                                     (public-certificate-secret-arn
                                      :target-type secrets-manager-arn
                                      :member-name
                                      "publicCertificateSecretArn")
                                     (private-certificate-secret-arn
                                      :target-type secrets-manager-arn
                                      :member-name
                                      "privateCertificateSecretArn"))
                                    (:shape-name "TLSCertificateConfiguration"))

(smithy/sdk/shapes:define-list tag-key-list :member string128)

(smithy/sdk/shapes:define-map tag-map :key string128 :value string-empty256)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type rsi-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type template-parameter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-parameter-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      template-parameter-data-type :member-name
                                      "type")
                                     (default-value :target-type string1024
                                      :member-name "defaultValue"))
                                    (:shape-name
                                     "TemplateParameterConfiguration"))

(smithy/sdk/shapes:define-map template-parameter-configuration-map :key
                              template-parameter-name :value
                              template-parameter-configuration)

(smithy/sdk/shapes:define-enum template-parameter-data-type
    common-lisp:nil
  (:number "NUMBER")
  (:string "STRING"))

(smithy/sdk/shapes:define-map template-parameter-input-map :key
                              template-parameter-name :value string1024)

(smithy/sdk/shapes:define-type template-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type rsi-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type uri-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string1024 :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure virtual-cluster common-lisp:nil
                                    ((id :target-type resource-id-string
                                      :member-name "id")
                                     (name :target-type resource-name-string
                                      :member-name "name")
                                     (arn :target-type virtual-cluster-arn
                                      :member-name "arn")
                                     (state :target-type virtual-cluster-state
                                      :member-name "state")
                                     (container-provider :target-type
                                      container-provider :member-name
                                      "containerProvider")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (security-configuration-id :target-type
                                      resource-id-string :member-name
                                      "securityConfigurationId"))
                                    (:shape-name "VirtualCluster"))

(smithy/sdk/shapes:define-type virtual-cluster-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum virtual-cluster-state
    common-lisp:nil
  (:running "RUNNING")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:arrested "ARRESTED"))

(smithy/sdk/shapes:define-list virtual-cluster-states :member
                               virtual-cluster-state)

(smithy/sdk/shapes:define-list virtual-clusters :member virtual-cluster)

(smithy/sdk/operation:define-operation cancel-job-run :shape-name
                                       "CancelJobRun" :input
                                       cancel-job-run-request :output
                                       cancel-job-run-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/virtualclusters/{virtualClusterId}/jobruns/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-job-template :shape-name
                                       "CreateJobTemplate" :input
                                       create-job-template-request :output
                                       create-job-template-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/jobtemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation create-managed-endpoint :shape-name
                                       "CreateManagedEndpoint" :input
                                       create-managed-endpoint-request :output
                                       create-managed-endpoint-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/virtualclusters/{virtualClusterId}/endpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation create-security-configuration
                                       :shape-name
                                       "CreateSecurityConfiguration" :input
                                       create-security-configuration-request
                                       :output
                                       create-security-configuration-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/securityconfigurations" :code 200)

(smithy/sdk/operation:define-operation create-virtual-cluster :shape-name
                                       "CreateVirtualCluster" :input
                                       create-virtual-cluster-request :output
                                       create-virtual-cluster-response :errors
                                       (eksrequest-throttled-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/virtualclusters"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-job-template :shape-name
                                       "DeleteJobTemplate" :input
                                       delete-job-template-request :output
                                       delete-job-template-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/jobtemplates/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-managed-endpoint :shape-name
                                       "DeleteManagedEndpoint" :input
                                       delete-managed-endpoint-request :output
                                       delete-managed-endpoint-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/virtualclusters/{virtualClusterId}/endpoints/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-virtual-cluster :shape-name
                                       "DeleteVirtualCluster" :input
                                       delete-virtual-cluster-request :output
                                       delete-virtual-cluster-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/virtualclusters/{id}" :code 200)

(smithy/sdk/operation:define-operation describe-job-run :shape-name
                                       "DescribeJobRun" :input
                                       describe-job-run-request :output
                                       describe-job-run-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/virtualclusters/{virtualClusterId}/jobruns/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-job-template :shape-name
                                       "DescribeJobTemplate" :input
                                       describe-job-template-request :output
                                       describe-job-template-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/jobtemplates/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-managed-endpoint :shape-name
                                       "DescribeManagedEndpoint" :input
                                       describe-managed-endpoint-request
                                       :output
                                       describe-managed-endpoint-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/virtualclusters/{virtualClusterId}/endpoints/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-security-configuration
                                       :shape-name
                                       "DescribeSecurityConfiguration" :input
                                       describe-security-configuration-request
                                       :output
                                       describe-security-configuration-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/securityconfigurations/{id}" :code 200)

(smithy/sdk/operation:define-operation describe-virtual-cluster :shape-name
                                       "DescribeVirtualCluster" :input
                                       describe-virtual-cluster-request :output
                                       describe-virtual-cluster-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/virtualclusters/{id}" :code 200)

(smithy/sdk/operation:define-operation get-managed-endpoint-session-credentials
                                       :shape-name
                                       "GetManagedEndpointSessionCredentials"
                                       :input
                                       get-managed-endpoint-session-credentials-request
                                       :output
                                       get-managed-endpoint-session-credentials-response
                                       :errors
                                       (internal-server-exception
                                        request-throttled-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/virtualclusters/{virtualClusterIdentifier}/endpoints/{endpointIdentifier}/credentials"
                                       :code 200)

(smithy/sdk/operation:define-operation list-job-runs :shape-name "ListJobRuns"
                                       :input list-job-runs-request :output
                                       list-job-runs-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/virtualclusters/{virtualClusterId}/jobruns"
                                       :code 200)

(smithy/sdk/operation:define-operation list-job-templates :shape-name
                                       "ListJobTemplates" :input
                                       list-job-templates-request :output
                                       list-job-templates-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/jobtemplates" :code
                                       200)

(smithy/sdk/operation:define-operation list-managed-endpoints :shape-name
                                       "ListManagedEndpoints" :input
                                       list-managed-endpoints-request :output
                                       list-managed-endpoints-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/virtualclusters/{virtualClusterId}/endpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-security-configurations :shape-name
                                       "ListSecurityConfigurations" :input
                                       list-security-configurations-request
                                       :output
                                       list-security-configurations-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/securityconfigurations" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-virtual-clusters :shape-name
                                       "ListVirtualClusters" :input
                                       list-virtual-clusters-request :output
                                       list-virtual-clusters-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/virtualclusters"
                                       :code 200)

(smithy/sdk/operation:define-operation start-job-run :shape-name "StartJobRun"
                                       :input start-job-run-request :output
                                       start-job-run-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/virtualclusters/{virtualClusterId}/jobruns"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)
