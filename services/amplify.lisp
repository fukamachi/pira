(uiop/package:define-package #:pira/amplify (:use)
                             (:export #:access-token #:active-job-id #:amplify
                              #:app #:app-arn #:app-id #:apps #:artifact
                              #:artifact-file-name #:artifact-id #:artifact-url
                              #:artifacts #:artifacts-url #:associated-resource
                              #:associated-resources
                              #:auto-branch-creation-config
                              #:auto-branch-creation-pattern
                              #:auto-branch-creation-patterns
                              #:auto-sub-domain-creation-pattern
                              #:auto-sub-domain-creation-patterns
                              #:auto-sub-domain-iamrole #:backend
                              #:backend-environment #:backend-environment-arn
                              #:backend-environments #:basic-auth-credentials
                              #:branch #:branch-arn #:branch-name #:branches
                              #:build-compute-type #:build-spec #:cache-config
                              #:cache-config-type #:certificate
                              #:certificate-arn #:certificate-settings
                              #:certificate-type
                              #:certificate-verification-dnsrecord #:code
                              #:commit-id #:commit-message #:commit-time
                              #:compute-role-arn #:condition #:context
                              #:create-app #:create-backend-environment
                              #:create-branch #:create-deployment
                              #:create-domain-association #:create-time
                              #:create-webhook #:custom-domain #:custom-domains
                              #:custom-headers #:custom-rule #:custom-rules
                              #:dnsrecord #:default-domain #:delete-app
                              #:delete-backend-environment #:delete-branch
                              #:delete-domain-association #:delete-job
                              #:delete-webhook #:deployment-artifacts
                              #:description #:display-name #:domain-association
                              #:domain-association-arn #:domain-associations
                              #:domain-name #:domain-prefix #:domain-status
                              #:enable-auto-branch-creation #:enable-auto-build
                              #:enable-auto-sub-domain #:enable-basic-auth
                              #:enable-branch-auto-build
                              #:enable-branch-auto-deletion
                              #:enable-notification #:enable-performance-mode
                              #:enable-pull-request-preview
                              #:enable-skew-protection #:end-time #:env-key
                              #:env-value #:environment-name
                              #:environment-variables #:error-message
                              #:file-map #:file-name #:file-upload-urls
                              #:framework #:generate-access-logs #:get-app
                              #:get-artifact-url #:get-backend-environment
                              #:get-branch #:get-domain-association #:get-job
                              #:get-webhook #:job #:job-arn #:job-config
                              #:job-id #:job-reason #:job-status
                              #:job-summaries #:job-summary #:job-type
                              #:last-deploy-time #:list-apps #:list-artifacts
                              #:list-backend-environments #:list-branches
                              #:list-domain-associations #:list-jobs
                              #:list-tags-for-resource #:list-webhooks
                              #:log-url #:md5hash #:max-results
                              #:max-results-for-list-apps #:name #:next-token
                              #:oauth-token #:platform #:production-branch
                              #:pull-request-environment-name #:repository
                              #:repository-clone-method #:resource-arn
                              #:screenshots #:service-role-arn #:source
                              #:source-url #:source-url-type #:stack-arn
                              #:stack-name #:stage #:start-deployment
                              #:start-job #:start-time #:status #:status-reason
                              #:step #:step-name #:steps #:stop-job
                              #:sub-domain #:sub-domain-setting
                              #:sub-domain-settings #:sub-domains #:ttl
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:target #:test-artifacts-url
                              #:test-config-url #:thumbnail-name
                              #:thumbnail-url #:total-number-of-jobs
                              #:untag-resource #:update-app #:update-branch
                              #:update-domain-association #:update-status
                              #:update-time #:update-webhook #:upload-url
                              #:verified #:waf-configuration #:waf-status
                              #:web-acl-arn #:webhook #:webhook-arn
                              #:webhook-id #:webhook-url #:webhooks
                              #:webhook-create-time))
(common-lisp:in-package #:pira/amplify)

(smithy/sdk/service:define-service amplify :shape-name "Amplify" :version
                                   "2017-07-25" :title "AWS Amplify"
                                   :operations
                                   '(create-app create-backend-environment
                                     create-branch create-deployment
                                     create-domain-association create-webhook
                                     delete-app delete-backend-environment
                                     delete-branch delete-domain-association
                                     delete-job delete-webhook
                                     generate-access-logs get-app
                                     get-artifact-url get-backend-environment
                                     get-branch get-domain-association get-job
                                     get-webhook list-apps list-artifacts
                                     list-backend-environments list-branches
                                     list-domain-associations list-jobs
                                     list-tags-for-resource list-webhooks
                                     start-deployment start-job stop-job
                                     tag-resource untag-resource update-app
                                     update-branch update-domain-association
                                     update-webhook)
                                   :xml-namespace
                                   '(:uri "http://amplify.amazonaws.com"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Amplify")
                                      ("arnNamespace" . "amplify")
                                      ("cloudFormationName" . "Amplify")
                                      ("cloudTrailEventSource"
                                       . "amplify.amazonaws.com")
                                      ("endpointPrefix" . "amplify"))
                                     ("aws.auth#sigv4" ("name" . "amplify"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type access-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type active-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure app common-lisp:nil
                                    ((app-id :target-type app-id :required
                                      common-lisp:t :member-name "appId")
                                     (app-arn :target-type app-arn :required
                                      common-lisp:t :member-name "appArn")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (repository :target-type repository
                                      :required common-lisp:t :member-name
                                      "repository")
                                     (platform :target-type platform :required
                                      common-lisp:t :member-name "platform")
                                     (create-time :target-type create-time
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (compute-role-arn :target-type
                                      compute-role-arn :member-name
                                      "computeRoleArn")
                                     (iam-service-role-arn :target-type
                                      service-role-arn :member-name
                                      "iamServiceRoleArn")
                                     (environment-variables :target-type
                                      environment-variables :required
                                      common-lisp:t :member-name
                                      "environmentVariables")
                                     (default-domain :target-type
                                      default-domain :required common-lisp:t
                                      :member-name "defaultDomain")
                                     (enable-branch-auto-build :target-type
                                      enable-branch-auto-build :required
                                      common-lisp:t :member-name
                                      "enableBranchAutoBuild")
                                     (enable-branch-auto-deletion :target-type
                                      enable-branch-auto-deletion :member-name
                                      "enableBranchAutoDeletion")
                                     (enable-basic-auth :target-type
                                      enable-basic-auth :required common-lisp:t
                                      :member-name "enableBasicAuth")
                                     (basic-auth-credentials :target-type
                                      basic-auth-credentials :member-name
                                      "basicAuthCredentials")
                                     (custom-rules :target-type custom-rules
                                      :member-name "customRules")
                                     (production-branch :target-type
                                      production-branch :member-name
                                      "productionBranch")
                                     (build-spec :target-type build-spec
                                      :member-name "buildSpec")
                                     (custom-headers :target-type
                                      custom-headers :member-name
                                      "customHeaders")
                                     (enable-auto-branch-creation :target-type
                                      enable-auto-branch-creation :member-name
                                      "enableAutoBranchCreation")
                                     (auto-branch-creation-patterns
                                      :target-type
                                      auto-branch-creation-patterns
                                      :member-name
                                      "autoBranchCreationPatterns")
                                     (auto-branch-creation-config :target-type
                                      auto-branch-creation-config :member-name
                                      "autoBranchCreationConfig")
                                     (repository-clone-method :target-type
                                      repository-clone-method :member-name
                                      "repositoryCloneMethod")
                                     (cache-config :target-type cache-config
                                      :member-name "cacheConfig")
                                     (webhook-create-time :target-type
                                      webhook-create-time :member-name
                                      "webhookCreateTime")
                                     (waf-configuration :target-type
                                      waf-configuration :member-name
                                      "wafConfiguration")
                                     (job-config :target-type job-config
                                      :member-name "jobConfig"))
                                    (:shape-name "App"))

(smithy/sdk/shapes:define-type app-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list apps :member app)

(smithy/sdk/shapes:define-structure artifact common-lisp:nil
                                    ((artifact-file-name :target-type
                                      artifact-file-name :required
                                      common-lisp:t :member-name
                                      "artifactFileName")
                                     (artifact-id :target-type artifact-id
                                      :required common-lisp:t :member-name
                                      "artifactId"))
                                    (:shape-name "Artifact"))

(smithy/sdk/shapes:define-type artifact-file-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type artifact-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type artifact-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list artifacts :member artifact)

(smithy/sdk/shapes:define-type artifacts-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type associated-resource
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list associated-resources :member associated-resource)

(smithy/sdk/shapes:define-structure auto-branch-creation-config common-lisp:nil
                                    ((stage :target-type stage :member-name
                                      "stage")
                                     (framework :target-type framework
                                      :member-name "framework")
                                     (enable-auto-build :target-type
                                      enable-auto-build :member-name
                                      "enableAutoBuild")
                                     (environment-variables :target-type
                                      environment-variables :member-name
                                      "environmentVariables")
                                     (basic-auth-credentials :target-type
                                      basic-auth-credentials :member-name
                                      "basicAuthCredentials")
                                     (enable-basic-auth :target-type
                                      enable-basic-auth :member-name
                                      "enableBasicAuth")
                                     (enable-performance-mode :target-type
                                      enable-performance-mode :member-name
                                      "enablePerformanceMode")
                                     (build-spec :target-type build-spec
                                      :member-name "buildSpec")
                                     (enable-pull-request-preview :target-type
                                      enable-pull-request-preview :member-name
                                      "enablePullRequestPreview")
                                     (pull-request-environment-name
                                      :target-type
                                      pull-request-environment-name
                                      :member-name
                                      "pullRequestEnvironmentName"))
                                    (:shape-name "AutoBranchCreationConfig"))

(smithy/sdk/shapes:define-type auto-branch-creation-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-branch-creation-patterns :member
                               auto-branch-creation-pattern)

(smithy/sdk/shapes:define-type auto-sub-domain-creation-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auto-sub-domain-creation-patterns :member
                               auto-sub-domain-creation-pattern)

(smithy/sdk/shapes:define-type auto-sub-domain-iamrole
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure backend common-lisp:nil
                                    ((stack-arn :target-type stack-arn
                                      :member-name "stackArn"))
                                    (:shape-name "Backend"))

(smithy/sdk/shapes:define-structure backend-environment common-lisp:nil
                                    ((backend-environment-arn :target-type
                                      backend-environment-arn :required
                                      common-lisp:t :member-name
                                      "backendEnvironmentArn")
                                     (environment-name :target-type
                                      environment-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (stack-name :target-type stack-name
                                      :member-name "stackName")
                                     (deployment-artifacts :target-type
                                      deployment-artifacts :member-name
                                      "deploymentArtifacts")
                                     (create-time :target-type create-time
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name "BackendEnvironment"))

(smithy/sdk/shapes:define-type backend-environment-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list backend-environments :member backend-environment)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type basic-auth-credentials
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure branch common-lisp:nil
                                    ((branch-arn :target-type branch-arn
                                      :required common-lisp:t :member-name
                                      "branchArn")
                                     (branch-name :target-type branch-name
                                      :required common-lisp:t :member-name
                                      "branchName")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (stage :target-type stage :required
                                      common-lisp:t :member-name "stage")
                                     (display-name :target-type display-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (enable-notification :target-type
                                      enable-notification :required
                                      common-lisp:t :member-name
                                      "enableNotification")
                                     (create-time :target-type create-time
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (environment-variables :target-type
                                      environment-variables :required
                                      common-lisp:t :member-name
                                      "environmentVariables")
                                     (enable-auto-build :target-type
                                      enable-auto-build :required common-lisp:t
                                      :member-name "enableAutoBuild")
                                     (enable-skew-protection :target-type
                                      enable-skew-protection :member-name
                                      "enableSkewProtection")
                                     (custom-domains :target-type
                                      custom-domains :required common-lisp:t
                                      :member-name "customDomains")
                                     (framework :target-type framework
                                      :required common-lisp:t :member-name
                                      "framework")
                                     (active-job-id :target-type active-job-id
                                      :required common-lisp:t :member-name
                                      "activeJobId")
                                     (total-number-of-jobs :target-type
                                      total-number-of-jobs :required
                                      common-lisp:t :member-name
                                      "totalNumberOfJobs")
                                     (enable-basic-auth :target-type
                                      enable-basic-auth :required common-lisp:t
                                      :member-name "enableBasicAuth")
                                     (enable-performance-mode :target-type
                                      enable-performance-mode :member-name
                                      "enablePerformanceMode")
                                     (thumbnail-url :target-type thumbnail-url
                                      :member-name "thumbnailUrl")
                                     (basic-auth-credentials :target-type
                                      basic-auth-credentials :member-name
                                      "basicAuthCredentials")
                                     (build-spec :target-type build-spec
                                      :member-name "buildSpec")
                                     (ttl :target-type ttl :required
                                      common-lisp:t :member-name "ttl")
                                     (associated-resources :target-type
                                      associated-resources :member-name
                                      "associatedResources")
                                     (enable-pull-request-preview :target-type
                                      enable-pull-request-preview :required
                                      common-lisp:t :member-name
                                      "enablePullRequestPreview")
                                     (pull-request-environment-name
                                      :target-type
                                      pull-request-environment-name
                                      :member-name
                                      "pullRequestEnvironmentName")
                                     (destination-branch :target-type
                                      branch-name :member-name
                                      "destinationBranch")
                                     (source-branch :target-type branch-name
                                      :member-name "sourceBranch")
                                     (backend-environment-arn :target-type
                                      backend-environment-arn :member-name
                                      "backendEnvironmentArn")
                                     (backend :target-type backend :member-name
                                      "backend")
                                     (compute-role-arn :target-type
                                      compute-role-arn :member-name
                                      "computeRoleArn"))
                                    (:shape-name "Branch"))

(smithy/sdk/shapes:define-type branch-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list branches :member branch)

(smithy/sdk/shapes:define-enum build-compute-type
    common-lisp:nil
  (:standard-8gb "STANDARD_8GB")
  (:large-16gb "LARGE_16GB")
  (:xlarge-72gb "XLARGE_72GB"))

(smithy/sdk/shapes:define-type build-spec smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cache-config common-lisp:nil
                                    ((type :target-type cache-config-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "CacheConfig"))

(smithy/sdk/shapes:define-enum cache-config-type
    common-lisp:nil
  (:amplify-managed "AMPLIFY_MANAGED")
  (:amplify-managed-no-cookies "AMPLIFY_MANAGED_NO_COOKIES"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((type :target-type certificate-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (custom-certificate-arn :target-type
                                      certificate-arn :member-name
                                      "customCertificateArn")
                                     (certificate-verification-dnsrecord
                                      :target-type
                                      certificate-verification-dnsrecord
                                      :member-name
                                      "certificateVerificationDNSRecord"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-type certificate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificate-settings common-lisp:nil
                                    ((type :target-type certificate-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (custom-certificate-arn :target-type
                                      certificate-arn :member-name
                                      "customCertificateArn"))
                                    (:shape-name "CertificateSettings"))

(smithy/sdk/shapes:define-enum certificate-type
    common-lisp:nil
  (:amplify-managed "AMPLIFY_MANAGED")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-type certificate-verification-dnsrecord
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type commit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type commit-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type commit-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type compute-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type condition smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-app-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (repository :target-type repository
                                  :member-name "repository")
                                 (platform :target-type platform :member-name
                                  "platform")
                                 (compute-role-arn :target-type
                                  compute-role-arn :member-name
                                  "computeRoleArn")
                                 (iam-service-role-arn :target-type
                                  service-role-arn :member-name
                                  "iamServiceRoleArn")
                                 (oauth-token :target-type oauth-token
                                  :member-name "oauthToken")
                                 (access-token :target-type access-token
                                  :member-name "accessToken")
                                 (environment-variables :target-type
                                  environment-variables :member-name
                                  "environmentVariables")
                                 (enable-branch-auto-build :target-type
                                  enable-branch-auto-build :member-name
                                  "enableBranchAutoBuild")
                                 (enable-branch-auto-deletion :target-type
                                  enable-branch-auto-deletion :member-name
                                  "enableBranchAutoDeletion")
                                 (enable-basic-auth :target-type
                                  enable-basic-auth :member-name
                                  "enableBasicAuth")
                                 (basic-auth-credentials :target-type
                                  basic-auth-credentials :member-name
                                  "basicAuthCredentials")
                                 (custom-rules :target-type custom-rules
                                  :member-name "customRules")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (build-spec :target-type build-spec
                                  :member-name "buildSpec")
                                 (custom-headers :target-type custom-headers
                                  :member-name "customHeaders")
                                 (enable-auto-branch-creation :target-type
                                  enable-auto-branch-creation :member-name
                                  "enableAutoBranchCreation")
                                 (auto-branch-creation-patterns :target-type
                                  auto-branch-creation-patterns :member-name
                                  "autoBranchCreationPatterns")
                                 (auto-branch-creation-config :target-type
                                  auto-branch-creation-config :member-name
                                  "autoBranchCreationConfig")
                                 (job-config :target-type job-config
                                  :member-name "jobConfig")
                                 (cache-config :target-type cache-config
                                  :member-name "cacheConfig"))
                                (:shape-name "CreateAppRequest"))

(smithy/sdk/shapes:define-output create-app-result common-lisp:nil
                                 ((app :target-type app :required common-lisp:t
                                   :member-name "app"))
                                 (:shape-name "CreateAppResult"))

(smithy/sdk/shapes:define-input create-backend-environment-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  environment-name :required common-lisp:t
                                  :member-name "environmentName")
                                 (stack-name :target-type stack-name
                                  :member-name "stackName")
                                 (deployment-artifacts :target-type
                                  deployment-artifacts :member-name
                                  "deploymentArtifacts"))
                                (:shape-name "CreateBackendEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-backend-environment-result
                                 common-lisp:nil
                                 ((backend-environment :target-type
                                   backend-environment :required common-lisp:t
                                   :member-name "backendEnvironment"))
                                 (:shape-name "CreateBackendEnvironmentResult"))

(smithy/sdk/shapes:define-input create-branch-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName")
                                 (description :target-type description
                                  :member-name "description")
                                 (stage :target-type stage :member-name
                                  "stage")
                                 (framework :target-type framework :member-name
                                  "framework")
                                 (enable-notification :target-type
                                  enable-notification :member-name
                                  "enableNotification")
                                 (enable-auto-build :target-type
                                  enable-auto-build :member-name
                                  "enableAutoBuild")
                                 (enable-skew-protection :target-type
                                  enable-skew-protection :member-name
                                  "enableSkewProtection")
                                 (environment-variables :target-type
                                  environment-variables :member-name
                                  "environmentVariables")
                                 (basic-auth-credentials :target-type
                                  basic-auth-credentials :member-name
                                  "basicAuthCredentials")
                                 (enable-basic-auth :target-type
                                  enable-basic-auth :member-name
                                  "enableBasicAuth")
                                 (enable-performance-mode :target-type
                                  enable-performance-mode :member-name
                                  "enablePerformanceMode")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (build-spec :target-type build-spec
                                  :member-name "buildSpec")
                                 (ttl :target-type ttl :member-name "ttl")
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (enable-pull-request-preview :target-type
                                  enable-pull-request-preview :member-name
                                  "enablePullRequestPreview")
                                 (pull-request-environment-name :target-type
                                  pull-request-environment-name :member-name
                                  "pullRequestEnvironmentName")
                                 (backend-environment-arn :target-type
                                  backend-environment-arn :member-name
                                  "backendEnvironmentArn")
                                 (backend :target-type backend :member-name
                                  "backend")
                                 (compute-role-arn :target-type
                                  compute-role-arn :member-name
                                  "computeRoleArn"))
                                (:shape-name "CreateBranchRequest"))

(smithy/sdk/shapes:define-output create-branch-result common-lisp:nil
                                 ((branch :target-type branch :required
                                   common-lisp:t :member-name "branch"))
                                 (:shape-name "CreateBranchResult"))

(smithy/sdk/shapes:define-input create-deployment-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (file-map :target-type file-map :member-name
                                  "fileMap"))
                                (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-output create-deployment-result common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (file-upload-urls :target-type
                                   file-upload-urls :required common-lisp:t
                                   :member-name "fileUploadUrls")
                                  (zip-upload-url :target-type upload-url
                                   :required common-lisp:t :member-name
                                   "zipUploadUrl"))
                                 (:shape-name "CreateDeploymentResult"))

(smithy/sdk/shapes:define-input create-domain-association-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (enable-auto-sub-domain :target-type
                                  enable-auto-sub-domain :member-name
                                  "enableAutoSubDomain")
                                 (sub-domain-settings :target-type
                                  sub-domain-settings :required common-lisp:t
                                  :member-name "subDomainSettings")
                                 (auto-sub-domain-creation-patterns
                                  :target-type
                                  auto-sub-domain-creation-patterns
                                  :member-name "autoSubDomainCreationPatterns")
                                 (auto-sub-domain-iamrole :target-type
                                  auto-sub-domain-iamrole :member-name
                                  "autoSubDomainIAMRole")
                                 (certificate-settings :target-type
                                  certificate-settings :member-name
                                  "certificateSettings"))
                                (:shape-name "CreateDomainAssociationRequest"))

(smithy/sdk/shapes:define-output create-domain-association-result
                                 common-lisp:nil
                                 ((domain-association :target-type
                                   domain-association :required common-lisp:t
                                   :member-name "domainAssociation"))
                                 (:shape-name "CreateDomainAssociationResult"))

(smithy/sdk/shapes:define-type create-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input create-webhook-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "CreateWebhookRequest"))

(smithy/sdk/shapes:define-output create-webhook-result common-lisp:nil
                                 ((webhook :target-type webhook :required
                                   common-lisp:t :member-name "webhook"))
                                 (:shape-name "CreateWebhookResult"))

(smithy/sdk/shapes:define-type custom-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-domains :member custom-domain)

(smithy/sdk/shapes:define-type custom-headers smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-rule common-lisp:nil
                                    ((source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "target")
                                     (status :target-type status :member-name
                                      "status")
                                     (condition :target-type condition
                                      :member-name "condition"))
                                    (:shape-name "CustomRule"))

(smithy/sdk/shapes:define-list custom-rules :member custom-rule)

(smithy/sdk/shapes:define-type dnsrecord smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type default-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-app-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAppRequest"))

(smithy/sdk/shapes:define-output delete-app-result common-lisp:nil
                                 ((app :target-type app :required common-lisp:t
                                   :member-name "app"))
                                 (:shape-name "DeleteAppResult"))

(smithy/sdk/shapes:define-input delete-backend-environment-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  environment-name :required common-lisp:t
                                  :member-name "environmentName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteBackendEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-backend-environment-result
                                 common-lisp:nil
                                 ((backend-environment :target-type
                                   backend-environment :required common-lisp:t
                                   :member-name "backendEnvironment"))
                                 (:shape-name "DeleteBackendEnvironmentResult"))

(smithy/sdk/shapes:define-input delete-branch-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t))
                                (:shape-name "DeleteBranchRequest"))

(smithy/sdk/shapes:define-output delete-branch-result common-lisp:nil
                                 ((branch :target-type branch :required
                                   common-lisp:t :member-name "branch"))
                                 (:shape-name "DeleteBranchResult"))

(smithy/sdk/shapes:define-input delete-domain-association-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t))
                                (:shape-name "DeleteDomainAssociationRequest"))

(smithy/sdk/shapes:define-output delete-domain-association-result
                                 common-lisp:nil
                                 ((domain-association :target-type
                                   domain-association :required common-lisp:t
                                   :member-name "domainAssociation"))
                                 (:shape-name "DeleteDomainAssociationResult"))

(smithy/sdk/shapes:define-input delete-job-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteJobRequest"))

(smithy/sdk/shapes:define-output delete-job-result common-lisp:nil
                                 ((job-summary :target-type job-summary
                                   :required common-lisp:t :member-name
                                   "jobSummary"))
                                 (:shape-name "DeleteJobResult"))

(smithy/sdk/shapes:define-input delete-webhook-request common-lisp:nil
                                ((webhook-id :target-type webhook-id :required
                                  common-lisp:t :member-name "webhookId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteWebhookRequest"))

(smithy/sdk/shapes:define-output delete-webhook-result common-lisp:nil
                                 ((webhook :target-type webhook :required
                                   common-lisp:t :member-name "webhook"))
                                 (:shape-name "DeleteWebhookResult"))

(smithy/sdk/shapes:define-error dependent-service-failure-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "DependentServiceFailureException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type deployment-artifacts
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-association common-lisp:nil
                                    ((domain-association-arn :target-type
                                      domain-association-arn :required
                                      common-lisp:t :member-name
                                      "domainAssociationArn")
                                     (domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "domainName")
                                     (enable-auto-sub-domain :target-type
                                      enable-auto-sub-domain :required
                                      common-lisp:t :member-name
                                      "enableAutoSubDomain")
                                     (auto-sub-domain-creation-patterns
                                      :target-type
                                      auto-sub-domain-creation-patterns
                                      :member-name
                                      "autoSubDomainCreationPatterns")
                                     (auto-sub-domain-iamrole :target-type
                                      auto-sub-domain-iamrole :member-name
                                      "autoSubDomainIAMRole")
                                     (domain-status :target-type domain-status
                                      :required common-lisp:t :member-name
                                      "domainStatus")
                                     (update-status :target-type update-status
                                      :member-name "updateStatus")
                                     (status-reason :target-type status-reason
                                      :required common-lisp:t :member-name
                                      "statusReason")
                                     (certificate-verification-dnsrecord
                                      :target-type
                                      certificate-verification-dnsrecord
                                      :member-name
                                      "certificateVerificationDNSRecord")
                                     (sub-domains :target-type sub-domains
                                      :required common-lisp:t :member-name
                                      "subDomains")
                                     (certificate :target-type certificate
                                      :member-name "certificate"))
                                    (:shape-name "DomainAssociation"))

(smithy/sdk/shapes:define-type domain-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-associations :member domain-association)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-status
    common-lisp:nil
  (:pending-verification "PENDING_VERIFICATION")
  (:in-progress "IN_PROGRESS")
  (:available "AVAILABLE")
  (:importing-custom-certificate "IMPORTING_CUSTOM_CERTIFICATE")
  (:pending-deployment "PENDING_DEPLOYMENT")
  (:awaiting-app-cname "AWAITING_APP_CNAME")
  (:failed "FAILED")
  (:creating "CREATING")
  (:requesting-certificate "REQUESTING_CERTIFICATE")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type enable-auto-branch-creation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-auto-build
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-auto-sub-domain
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-basic-auth
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-branch-auto-build
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-branch-auto-deletion
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-notification
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-performance-mode
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-pull-request-preview
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enable-skew-protection
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type env-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type env-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map environment-variables :key env-key :value
                              env-value)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map file-map :key file-name :value md5hash)

(smithy/sdk/shapes:define-type file-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map file-upload-urls :key file-name :value upload-url)

(smithy/sdk/shapes:define-type framework smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input generate-access-logs-request common-lisp:nil
                                ((start-time :target-type start-time
                                  :member-name "startTime")
                                 (end-time :target-type end-time :member-name
                                  "endTime")
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t))
                                (:shape-name "GenerateAccessLogsRequest"))

(smithy/sdk/shapes:define-output generate-access-logs-result common-lisp:nil
                                 ((log-url :target-type log-url :member-name
                                   "logUrl"))
                                 (:shape-name "GenerateAccessLogsResult"))

(smithy/sdk/shapes:define-input get-app-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAppRequest"))

(smithy/sdk/shapes:define-output get-app-result common-lisp:nil
                                 ((app :target-type app :required common-lisp:t
                                   :member-name "app"))
                                 (:shape-name "GetAppResult"))

(smithy/sdk/shapes:define-input get-artifact-url-request common-lisp:nil
                                ((artifact-id :target-type artifact-id
                                  :required common-lisp:t :member-name
                                  "artifactId" :http-label common-lisp:t))
                                (:shape-name "GetArtifactUrlRequest"))

(smithy/sdk/shapes:define-output get-artifact-url-result common-lisp:nil
                                 ((artifact-id :target-type artifact-id
                                   :required common-lisp:t :member-name
                                   "artifactId")
                                  (artifact-url :target-type artifact-url
                                   :required common-lisp:t :member-name
                                   "artifactUrl"))
                                 (:shape-name "GetArtifactUrlResult"))

(smithy/sdk/shapes:define-input get-backend-environment-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  environment-name :required common-lisp:t
                                  :member-name "environmentName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetBackendEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-backend-environment-result common-lisp:nil
                                 ((backend-environment :target-type
                                   backend-environment :required common-lisp:t
                                   :member-name "backendEnvironment"))
                                 (:shape-name "GetBackendEnvironmentResult"))

(smithy/sdk/shapes:define-input get-branch-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t))
                                (:shape-name "GetBranchRequest"))

(smithy/sdk/shapes:define-output get-branch-result common-lisp:nil
                                 ((branch :target-type branch :required
                                   common-lisp:t :member-name "branch"))
                                 (:shape-name "GetBranchResult"))

(smithy/sdk/shapes:define-input get-domain-association-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t))
                                (:shape-name "GetDomainAssociationRequest"))

(smithy/sdk/shapes:define-output get-domain-association-result common-lisp:nil
                                 ((domain-association :target-type
                                   domain-association :required common-lisp:t
                                   :member-name "domainAssociation"))
                                 (:shape-name "GetDomainAssociationResult"))

(smithy/sdk/shapes:define-input get-job-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetJobRequest"))

(smithy/sdk/shapes:define-output get-job-result common-lisp:nil
                                 ((job :target-type job :required common-lisp:t
                                   :member-name "job"))
                                 (:shape-name "GetJobResult"))

(smithy/sdk/shapes:define-input get-webhook-request common-lisp:nil
                                ((webhook-id :target-type webhook-id :required
                                  common-lisp:t :member-name "webhookId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetWebhookRequest"))

(smithy/sdk/shapes:define-output get-webhook-result common-lisp:nil
                                 ((webhook :target-type webhook :required
                                   common-lisp:t :member-name "webhook"))
                                 (:shape-name "GetWebhookResult"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((summary :target-type job-summary
                                      :required common-lisp:t :member-name
                                      "summary")
                                     (steps :target-type steps :required
                                      common-lisp:t :member-name "steps"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-type job-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-config common-lisp:nil
                                    ((build-compute-type :target-type
                                      build-compute-type :required
                                      common-lisp:t :member-name
                                      "buildComputeType"))
                                    (:shape-name "JobConfig"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:created "CREATED")
  (:pending "PENDING")
  (:provisioning "PROVISIONING")
  (:running "RUNNING")
  (:failed "FAILED")
  (:succeed "SUCCEED")
  (:cancelling "CANCELLING")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-list job-summaries :member job-summary)

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((job-arn :target-type job-arn :required
                                      common-lisp:t :member-name "jobArn")
                                     (job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (commit-id :target-type commit-id
                                      :required common-lisp:t :member-name
                                      "commitId")
                                     (commit-message :target-type
                                      commit-message :required common-lisp:t
                                      :member-name "commitMessage")
                                     (commit-time :target-type commit-time
                                      :required common-lisp:t :member-name
                                      "commitTime")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (end-time :target-type end-time
                                      :member-name "endTime")
                                     (job-type :target-type job-type :required
                                      common-lisp:t :member-name "jobType")
                                     (source-url :target-type source-url
                                      :member-name "sourceUrl")
                                     (source-url-type :target-type
                                      source-url-type :member-name
                                      "sourceUrlType"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-enum job-type
    common-lisp:nil
  (:release "RELEASE")
  (:retry "RETRY")
  (:manual "MANUAL")
  (:web-hook "WEB_HOOK"))

(smithy/sdk/shapes:define-type last-deploy-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input list-apps-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-for-list-apps :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListAppsRequest"))

(smithy/sdk/shapes:define-output list-apps-result common-lisp:nil
                                 ((apps :target-type apps :required
                                   common-lisp:t :member-name "apps")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAppsResult"))

(smithy/sdk/shapes:define-input list-artifacts-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListArtifactsRequest"))

(smithy/sdk/shapes:define-output list-artifacts-result common-lisp:nil
                                 ((artifacts :target-type artifacts :required
                                   common-lisp:t :member-name "artifacts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListArtifactsResult"))

(smithy/sdk/shapes:define-input list-backend-environments-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "environmentName" :http-query
                                  "environmentName")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBackendEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-backend-environments-result
                                 common-lisp:nil
                                 ((backend-environments :target-type
                                   backend-environments :required common-lisp:t
                                   :member-name "backendEnvironments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBackendEnvironmentsResult"))

(smithy/sdk/shapes:define-input list-branches-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBranchesRequest"))

(smithy/sdk/shapes:define-output list-branches-result common-lisp:nil
                                 ((branches :target-type branches :required
                                   common-lisp:t :member-name "branches")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBranchesResult"))

(smithy/sdk/shapes:define-input list-domain-associations-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDomainAssociationsRequest"))

(smithy/sdk/shapes:define-output list-domain-associations-result
                                 common-lisp:nil
                                 ((domain-associations :target-type
                                   domain-associations :required common-lisp:t
                                   :member-name "domainAssociations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDomainAssociationsResult"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-result common-lisp:nil
                                 ((job-summaries :target-type job-summaries
                                   :required common-lisp:t :member-name
                                   "jobSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListJobsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-webhooks-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListWebhooksRequest"))

(smithy/sdk/shapes:define-output list-webhooks-result common-lisp:nil
                                 ((webhooks :target-type webhooks :required
                                   common-lisp:t :member-name "webhooks")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWebhooksResult"))

(smithy/sdk/shapes:define-type log-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type md5hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-for-list-apps
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type oauth-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum platform
    common-lisp:nil
  (:web "WEB")
  (:web-dynamic "WEB_DYNAMIC")
  (:web-compute "WEB_COMPUTE"))

(smithy/sdk/shapes:define-structure production-branch common-lisp:nil
                                    ((last-deploy-time :target-type
                                      last-deploy-time :member-name
                                      "lastDeployTime")
                                     (status :target-type status :member-name
                                      "status")
                                     (thumbnail-url :target-type thumbnail-url
                                      :member-name "thumbnailUrl")
                                     (branch-name :target-type branch-name
                                      :member-name "branchName"))
                                    (:shape-name "ProductionBranch"))

(smithy/sdk/shapes:define-type pull-request-environment-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum repository-clone-method
    common-lisp:nil
  (:ssh "SSH")
  (:token "TOKEN")
  (:sigv4 "SIGV4"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((code :target-type code :required
                                  common-lisp:t :member-name "code")
                                 (message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-map screenshots :key thumbnail-name :value
                              thumbnail-url)

(smithy/sdk/shapes:define-type service-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-url-type
    common-lisp:nil
  (:zip "ZIP")
  (:bucket-prefix "BUCKET_PREFIX"))

(smithy/sdk/shapes:define-type stack-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stack-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum stage
    common-lisp:nil
  (:production "PRODUCTION")
  (:beta "BETA")
  (:development "DEVELOPMENT")
  (:experimental "EXPERIMENTAL")
  (:pull-request "PULL_REQUEST"))

(smithy/sdk/shapes:define-input start-deployment-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :member-name
                                  "jobId")
                                 (source-url :target-type source-url
                                  :member-name "sourceUrl")
                                 (source-url-type :target-type source-url-type
                                  :member-name "sourceUrlType"))
                                (:shape-name "StartDeploymentRequest"))

(smithy/sdk/shapes:define-output start-deployment-result common-lisp:nil
                                 ((job-summary :target-type job-summary
                                   :required common-lisp:t :member-name
                                   "jobSummary"))
                                 (:shape-name "StartDeploymentResult"))

(smithy/sdk/shapes:define-input start-job-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :member-name
                                  "jobId")
                                 (job-type :target-type job-type :required
                                  common-lisp:t :member-name "jobType")
                                 (job-reason :target-type job-reason
                                  :member-name "jobReason")
                                 (commit-id :target-type commit-id :member-name
                                  "commitId")
                                 (commit-message :target-type commit-message
                                  :member-name "commitMessage")
                                 (commit-time :target-type commit-time
                                  :member-name "commitTime"))
                                (:shape-name "StartJobRequest"))

(smithy/sdk/shapes:define-output start-job-result common-lisp:nil
                                 ((job-summary :target-type job-summary
                                   :required common-lisp:t :member-name
                                   "jobSummary"))
                                 (:shape-name "StartJobResult"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step common-lisp:nil
                                    ((step-name :target-type step-name
                                      :required common-lisp:t :member-name
                                      "stepName")
                                     (start-time :target-type start-time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (end-time :target-type end-time :required
                                      common-lisp:t :member-name "endTime")
                                     (log-url :target-type log-url :member-name
                                      "logUrl")
                                     (artifacts-url :target-type artifacts-url
                                      :member-name "artifactsUrl")
                                     (test-artifacts-url :target-type
                                      test-artifacts-url :member-name
                                      "testArtifactsUrl")
                                     (test-config-url :target-type
                                      test-config-url :member-name
                                      "testConfigUrl")
                                     (screenshots :target-type screenshots
                                      :member-name "screenshots")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (context :target-type context :member-name
                                      "context"))
                                    (:shape-name "Step"))

(smithy/sdk/shapes:define-type step-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list steps :member step)

(smithy/sdk/shapes:define-input stop-job-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopJobRequest"))

(smithy/sdk/shapes:define-output stop-job-result common-lisp:nil
                                 ((job-summary :target-type job-summary
                                   :required common-lisp:t :member-name
                                   "jobSummary"))
                                 (:shape-name "StopJobResult"))

(smithy/sdk/shapes:define-structure sub-domain common-lisp:nil
                                    ((sub-domain-setting :target-type
                                      sub-domain-setting :required
                                      common-lisp:t :member-name
                                      "subDomainSetting")
                                     (verified :target-type verified :required
                                      common-lisp:t :member-name "verified")
                                     (dns-record :target-type dnsrecord
                                      :required common-lisp:t :member-name
                                      "dnsRecord"))
                                    (:shape-name "SubDomain"))

(smithy/sdk/shapes:define-structure sub-domain-setting common-lisp:nil
                                    ((prefix :target-type domain-prefix
                                      :required common-lisp:t :member-name
                                      "prefix")
                                     (branch-name :target-type branch-name
                                      :required common-lisp:t :member-name
                                      "branchName"))
                                    (:shape-name "SubDomainSetting"))

(smithy/sdk/shapes:define-list sub-domain-settings :member sub-domain-setting)

(smithy/sdk/shapes:define-list sub-domains :member sub-domain)

(smithy/sdk/shapes:define-type ttl smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type test-artifacts-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type test-config-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thumbnail-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thumbnail-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type total-number-of-jobs
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-app-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (platform :target-type platform :member-name
                                  "platform")
                                 (compute-role-arn :target-type
                                  compute-role-arn :member-name
                                  "computeRoleArn")
                                 (iam-service-role-arn :target-type
                                  service-role-arn :member-name
                                  "iamServiceRoleArn")
                                 (environment-variables :target-type
                                  environment-variables :member-name
                                  "environmentVariables")
                                 (enable-branch-auto-build :target-type
                                  enable-auto-build :member-name
                                  "enableBranchAutoBuild")
                                 (enable-branch-auto-deletion :target-type
                                  enable-branch-auto-deletion :member-name
                                  "enableBranchAutoDeletion")
                                 (enable-basic-auth :target-type
                                  enable-basic-auth :member-name
                                  "enableBasicAuth")
                                 (basic-auth-credentials :target-type
                                  basic-auth-credentials :member-name
                                  "basicAuthCredentials")
                                 (custom-rules :target-type custom-rules
                                  :member-name "customRules")
                                 (build-spec :target-type build-spec
                                  :member-name "buildSpec")
                                 (custom-headers :target-type custom-headers
                                  :member-name "customHeaders")
                                 (enable-auto-branch-creation :target-type
                                  enable-auto-branch-creation :member-name
                                  "enableAutoBranchCreation")
                                 (auto-branch-creation-patterns :target-type
                                  auto-branch-creation-patterns :member-name
                                  "autoBranchCreationPatterns")
                                 (auto-branch-creation-config :target-type
                                  auto-branch-creation-config :member-name
                                  "autoBranchCreationConfig")
                                 (repository :target-type repository
                                  :member-name "repository")
                                 (oauth-token :target-type oauth-token
                                  :member-name "oauthToken")
                                 (access-token :target-type access-token
                                  :member-name "accessToken")
                                 (job-config :target-type job-config
                                  :member-name "jobConfig")
                                 (cache-config :target-type cache-config
                                  :member-name "cacheConfig"))
                                (:shape-name "UpdateAppRequest"))

(smithy/sdk/shapes:define-output update-app-result common-lisp:nil
                                 ((app :target-type app :required common-lisp:t
                                   :member-name "app"))
                                 (:shape-name "UpdateAppResult"))

(smithy/sdk/shapes:define-input update-branch-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :required common-lisp:t :member-name
                                  "branchName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (framework :target-type framework :member-name
                                  "framework")
                                 (stage :target-type stage :member-name
                                  "stage")
                                 (enable-notification :target-type
                                  enable-notification :member-name
                                  "enableNotification")
                                 (enable-auto-build :target-type
                                  enable-auto-build :member-name
                                  "enableAutoBuild")
                                 (enable-skew-protection :target-type
                                  enable-skew-protection :member-name
                                  "enableSkewProtection")
                                 (environment-variables :target-type
                                  environment-variables :member-name
                                  "environmentVariables")
                                 (basic-auth-credentials :target-type
                                  basic-auth-credentials :member-name
                                  "basicAuthCredentials")
                                 (enable-basic-auth :target-type
                                  enable-basic-auth :member-name
                                  "enableBasicAuth")
                                 (enable-performance-mode :target-type
                                  enable-performance-mode :member-name
                                  "enablePerformanceMode")
                                 (build-spec :target-type build-spec
                                  :member-name "buildSpec")
                                 (ttl :target-type ttl :member-name "ttl")
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (enable-pull-request-preview :target-type
                                  enable-pull-request-preview :member-name
                                  "enablePullRequestPreview")
                                 (pull-request-environment-name :target-type
                                  pull-request-environment-name :member-name
                                  "pullRequestEnvironmentName")
                                 (backend-environment-arn :target-type
                                  backend-environment-arn :member-name
                                  "backendEnvironmentArn")
                                 (backend :target-type backend :member-name
                                  "backend")
                                 (compute-role-arn :target-type
                                  compute-role-arn :member-name
                                  "computeRoleArn"))
                                (:shape-name "UpdateBranchRequest"))

(smithy/sdk/shapes:define-output update-branch-result common-lisp:nil
                                 ((branch :target-type branch :required
                                   common-lisp:t :member-name "branch"))
                                 (:shape-name "UpdateBranchResult"))

(smithy/sdk/shapes:define-input update-domain-association-request
                                common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t)
                                 (enable-auto-sub-domain :target-type
                                  enable-auto-sub-domain :member-name
                                  "enableAutoSubDomain")
                                 (sub-domain-settings :target-type
                                  sub-domain-settings :member-name
                                  "subDomainSettings")
                                 (auto-sub-domain-creation-patterns
                                  :target-type
                                  auto-sub-domain-creation-patterns
                                  :member-name "autoSubDomainCreationPatterns")
                                 (auto-sub-domain-iamrole :target-type
                                  auto-sub-domain-iamrole :member-name
                                  "autoSubDomainIAMRole")
                                 (certificate-settings :target-type
                                  certificate-settings :member-name
                                  "certificateSettings"))
                                (:shape-name "UpdateDomainAssociationRequest"))

(smithy/sdk/shapes:define-output update-domain-association-result
                                 common-lisp:nil
                                 ((domain-association :target-type
                                   domain-association :required common-lisp:t
                                   :member-name "domainAssociation"))
                                 (:shape-name "UpdateDomainAssociationResult"))

(smithy/sdk/shapes:define-enum update-status
    common-lisp:nil
  (:requesting-certificate "REQUESTING_CERTIFICATE")
  (:pending-verification "PENDING_VERIFICATION")
  (:importing-custom-certificate "IMPORTING_CUSTOM_CERTIFICATE")
  (:pending-deployment "PENDING_DEPLOYMENT")
  (:awaiting-app-cname "AWAITING_APP_CNAME")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-type update-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input update-webhook-request common-lisp:nil
                                ((webhook-id :target-type webhook-id :required
                                  common-lisp:t :member-name "webhookId"
                                  :http-label common-lisp:t)
                                 (branch-name :target-type branch-name
                                  :member-name "branchName")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateWebhookRequest"))

(smithy/sdk/shapes:define-output update-webhook-result common-lisp:nil
                                 ((webhook :target-type webhook :required
                                   common-lisp:t :member-name "webhook"))
                                 (:shape-name "UpdateWebhookResult"))

(smithy/sdk/shapes:define-type upload-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verified smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure waf-configuration common-lisp:nil
                                    ((web-acl-arn :target-type web-acl-arn
                                      :member-name "webAclArn")
                                     (waf-status :target-type waf-status
                                      :member-name "wafStatus")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason"))
                                    (:shape-name "WafConfiguration"))

(smithy/sdk/shapes:define-enum waf-status
    common-lisp:nil
  (:associating "ASSOCIATING")
  (:association-failed "ASSOCIATION_FAILED")
  (:association-success "ASSOCIATION_SUCCESS")
  (:disassociating "DISASSOCIATING")
  (:disassociation-failed "DISASSOCIATION_FAILED"))

(smithy/sdk/shapes:define-type web-acl-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure webhook common-lisp:nil
                                    ((webhook-arn :target-type webhook-arn
                                      :required common-lisp:t :member-name
                                      "webhookArn")
                                     (webhook-id :target-type webhook-id
                                      :required common-lisp:t :member-name
                                      "webhookId")
                                     (webhook-url :target-type webhook-url
                                      :required common-lisp:t :member-name
                                      "webhookUrl")
                                     (app-id :target-type app-id :member-name
                                      "appId")
                                     (branch-name :target-type branch-name
                                      :required common-lisp:t :member-name
                                      "branchName")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (create-time :target-type create-time
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name "Webhook"))

(smithy/sdk/shapes:define-type webhook-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webhook-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type webhook-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list webhooks :member webhook)

(smithy/sdk/shapes:define-type webhook-create-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation create-app :shape-name "CreateApp"
                                       :input create-app-request :output
                                       create-app-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/apps" :code 200)

(smithy/sdk/operation:define-operation create-backend-environment :shape-name
                                       "CreateBackendEnvironment" :input
                                       create-backend-environment-request
                                       :output
                                       create-backend-environment-result
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/backendenvironments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-branch :shape-name "CreateBranch"
                                       :input create-branch-request :output
                                       create-branch-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/branches" :code 200)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       create-deployment-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/branches/{branchName}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-domain-association :shape-name
                                       "CreateDomainAssociation" :input
                                       create-domain-association-request
                                       :output create-domain-association-result
                                       :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/domains" :code 200)

(smithy/sdk/operation:define-operation create-webhook :shape-name
                                       "CreateWebhook" :input
                                       create-webhook-request :output
                                       create-webhook-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/webhooks" :code 200)

(smithy/sdk/operation:define-operation delete-app :shape-name "DeleteApp"
                                       :input delete-app-request :output
                                       delete-app-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri "/apps/{appId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-backend-environment :shape-name
                                       "DeleteBackendEnvironment" :input
                                       delete-backend-environment-request
                                       :output
                                       delete-backend-environment-result
                                       :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/apps/{appId}/backendenvironments/{environmentName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-branch :shape-name "DeleteBranch"
                                       :input delete-branch-request :output
                                       delete-branch-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/apps/{appId}/branches/{branchName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain-association :shape-name
                                       "DeleteDomainAssociation" :input
                                       delete-domain-association-request
                                       :output delete-domain-association-result
                                       :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/apps/{appId}/domains/{domainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-job :shape-name "DeleteJob"
                                       :input delete-job-request :output
                                       delete-job-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/apps/{appId}/branches/{branchName}/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-webhook :shape-name
                                       "DeleteWebhook" :input
                                       delete-webhook-request :output
                                       delete-webhook-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/webhooks/{webhookId}" :code 200)

(smithy/sdk/operation:define-operation generate-access-logs :shape-name
                                       "GenerateAccessLogs" :input
                                       generate-access-logs-request :output
                                       generate-access-logs-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/accesslogs" :code 200)

(smithy/sdk/operation:define-operation get-app :shape-name "GetApp" :input
                                       get-app-request :output get-app-result
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/apps/{appId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-artifact-url :shape-name
                                       "GetArtifactUrl" :input
                                       get-artifact-url-request :output
                                       get-artifact-url-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/artifacts/{artifactId}" :code 200)

(smithy/sdk/operation:define-operation get-backend-environment :shape-name
                                       "GetBackendEnvironment" :input
                                       get-backend-environment-request :output
                                       get-backend-environment-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/backendenvironments/{environmentName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-branch :shape-name "GetBranch"
                                       :input get-branch-request :output
                                       get-branch-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/branches/{branchName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-association :shape-name
                                       "GetDomainAssociation" :input
                                       get-domain-association-request :output
                                       get-domain-association-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/domains/{domainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-job :shape-name "GetJob" :input
                                       get-job-request :output get-job-result
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/branches/{branchName}/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-webhook :shape-name "GetWebhook"
                                       :input get-webhook-request :output
                                       get-webhook-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/webhooks/{webhookId}" :code 200)

(smithy/sdk/operation:define-operation list-apps :shape-name "ListApps" :input
                                       list-apps-request :output
                                       list-apps-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/apps" :code 200)

(smithy/sdk/operation:define-operation list-artifacts :shape-name
                                       "ListArtifacts" :input
                                       list-artifacts-request :output
                                       list-artifacts-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts"
                                       :code 200)

(smithy/sdk/operation:define-operation list-backend-environments :shape-name
                                       "ListBackendEnvironments" :input
                                       list-backend-environments-request
                                       :output list-backend-environments-result
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/backendenvironments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-branches :shape-name "ListBranches"
                                       :input list-branches-request :output
                                       list-branches-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/branches" :code 200)

(smithy/sdk/operation:define-operation list-domain-associations :shape-name
                                       "ListDomainAssociations" :input
                                       list-domain-associations-request :output
                                       list-domain-associations-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/domains" :code 200)

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/branches/{branchName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-webhooks :shape-name "ListWebhooks"
                                       :input list-webhooks-request :output
                                       list-webhooks-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/apps/{appId}/webhooks" :code 200)

(smithy/sdk/operation:define-operation start-deployment :shape-name
                                       "StartDeployment" :input
                                       start-deployment-request :output
                                       start-deployment-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/branches/{branchName}/deployments/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-job :shape-name "StartJob" :input
                                       start-job-request :output
                                       start-job-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/branches/{branchName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-job :shape-name "StopJob" :input
                                       stop-job-request :output stop-job-result
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-app :shape-name "UpdateApp"
                                       :input update-app-request :output
                                       update-app-result :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/apps/{appId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-branch :shape-name "UpdateBranch"
                                       :input update-branch-request :output
                                       update-branch-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/branches/{branchName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-association :shape-name
                                       "UpdateDomainAssociation" :input
                                       update-domain-association-request
                                       :output update-domain-association-result
                                       :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apps/{appId}/domains/{domainName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-webhook :shape-name
                                       "UpdateWebhook" :input
                                       update-webhook-request :output
                                       update-webhook-result :errors
                                       (bad-request-exception
                                        dependent-service-failure-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/webhooks/{webhookId}" :code 200)
