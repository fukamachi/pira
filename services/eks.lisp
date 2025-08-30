(uiop/package:define-package #:pira/eks (:use)
                             (:export #:amitypes #:awswesley-frontend
                              #:access-config-response
                              #:access-denied-exception #:access-entry
                              #:access-policies-list #:access-policy
                              #:access-scope #:access-scope-type
                              #:additional-info-map #:addon
                              #:addon-compatibility-detail
                              #:addon-compatibility-details #:addon-health
                              #:addon-info #:addon-issue #:addon-issue-code
                              #:addon-issue-list
                              #:addon-pod-identity-associations
                              #:addon-pod-identity-associations-list
                              #:addon-pod-identity-configuration
                              #:addon-pod-identity-configuration-list
                              #:addon-status #:addon-version-info
                              #:addon-version-info-list #:addons
                              #:associate-access-policy
                              #:associate-encryption-config
                              #:associate-identity-provider-config
                              #:associated-access-policies-list
                              #:associated-access-policy #:authentication-mode
                              #:auto-scaling-group #:auto-scaling-group-list
                              #:bad-request-exception #:block-storage #:boolean
                              #:boxed-boolean #:boxed-integer #:capacity
                              #:capacity-types #:category #:category-list
                              #:certificate #:client-exception #:client-stat
                              #:client-stats #:cluster #:cluster-health
                              #:cluster-issue #:cluster-issue-code
                              #:cluster-issue-list #:cluster-name
                              #:cluster-status #:cluster-version-information
                              #:cluster-version-list #:cluster-version-status
                              #:compatibilities #:compatibility
                              #:compute-config-request
                              #:compute-config-response
                              #:connector-config-provider
                              #:connector-config-request
                              #:connector-config-response
                              #:control-plane-placement-request
                              #:control-plane-placement-response
                              #:create-access-config-request
                              #:create-access-entry #:create-addon
                              #:create-cluster
                              #:create-eks-anywhere-subscription
                              #:create-fargate-profile #:create-nodegroup
                              #:create-pod-identity-association
                              #:delete-access-entry #:delete-addon
                              #:delete-cluster
                              #:delete-eks-anywhere-subscription
                              #:delete-fargate-profile #:delete-nodegroup
                              #:delete-pod-identity-association
                              #:deprecation-detail #:deprecation-details
                              #:deregister-cluster #:describe-access-entry
                              #:describe-addon #:describe-addon-configuration
                              #:describe-addon-versions
                              #:describe-addon-versions-request-max-results
                              #:describe-cluster
                              #:describe-cluster-version-max-results
                              #:describe-cluster-versions
                              #:describe-eks-anywhere-subscription
                              #:describe-fargate-profile
                              #:describe-identity-provider-config
                              #:describe-insight #:describe-nodegroup
                              #:describe-pod-identity-association
                              #:describe-update #:disassociate-access-policy
                              #:disassociate-identity-provider-config
                              #:eks-anywhere-subscription
                              #:eks-anywhere-subscription-license-type
                              #:eks-anywhere-subscription-list
                              #:eks-anywhere-subscription-name
                              #:eks-anywhere-subscription-status
                              #:eks-anywhere-subscription-status-values
                              #:eks-anywhere-subscription-term
                              #:eks-anywhere-subscription-term-unit
                              #:elastic-load-balancing #:encryption-config
                              #:encryption-config-list #:error-code
                              #:error-detail #:error-details #:fargate-profile
                              #:fargate-profile-health #:fargate-profile-issue
                              #:fargate-profile-issue-code
                              #:fargate-profile-issue-list
                              #:fargate-profile-label
                              #:fargate-profile-selector
                              #:fargate-profile-selectors
                              #:fargate-profile-status
                              #:fargate-profiles-request-max-results #:identity
                              #:identity-provider-config
                              #:identity-provider-config-response
                              #:identity-provider-configs
                              #:include-clusters-list #:insight
                              #:insight-category-specific-summary
                              #:insight-resource-detail
                              #:insight-resource-details #:insight-status
                              #:insight-status-value
                              #:insight-status-value-list #:insight-summaries
                              #:insight-summary #:insights-filter #:integer
                              #:invalid-parameter-exception
                              #:invalid-request-exception
                              #:invalid-state-exception #:ip-family #:issue
                              #:issue-list #:kubernetes-network-config-request
                              #:kubernetes-network-config-response
                              #:launch-template-specification #:license
                              #:license-list #:list-access-entries
                              #:list-access-entries-request-max-results
                              #:list-access-policies
                              #:list-access-policies-request-max-results
                              #:list-addons #:list-addons-request-max-results
                              #:list-associated-access-policies
                              #:list-associated-access-policies-request-max-results
                              #:list-clusters
                              #:list-clusters-request-max-results
                              #:list-eks-anywhere-subscriptions
                              #:list-eks-anywhere-subscriptions-request-max-results
                              #:list-fargate-profiles
                              #:list-identity-provider-configs
                              #:list-identity-provider-configs-request-max-results
                              #:list-insights #:list-insights-max-results
                              #:list-nodegroups
                              #:list-nodegroups-request-max-results
                              #:list-pod-identity-associations
                              #:list-pod-identity-associations-max-results
                              #:list-tags-for-resource #:list-updates
                              #:list-updates-request-max-results #:log-setup
                              #:log-setups #:log-type #:log-types #:logging
                              #:marketplace-information #:node-repair-config
                              #:nodegroup #:nodegroup-health
                              #:nodegroup-issue-code #:nodegroup-resources
                              #:nodegroup-scaling-config #:nodegroup-status
                              #:nodegroup-update-config
                              #:nodegroup-update-strategies #:non-zero-integer
                              #:not-found-exception #:oidc
                              #:oidc-identity-provider-config
                              #:oidc-identity-provider-config-request
                              #:outpost-config-request
                              #:outpost-config-response #:percent-capacity
                              #:pod-identity-association
                              #:pod-identity-association-summaries
                              #:pod-identity-association-summary #:provider
                              #:register-cluster #:remote-access-config
                              #:remote-network-config-request
                              #:remote-network-config-response
                              #:remote-node-network #:remote-node-network-list
                              #:remote-pod-network #:remote-pod-network-list
                              #:resolve-conflicts #:resource-in-use-exception
                              #:resource-limit-exceeded-exception
                              #:resource-not-found-exception
                              #:resource-propagation-delay-exception #:role-arn
                              #:server-exception
                              #:service-unavailable-exception
                              #:storage-config-request
                              #:storage-config-response #:string #:string-list
                              #:support-type #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-value #:taint #:taint-effect
                              #:throttling-exception #:timestamp
                              #:unsupported-availability-zone-exception
                              #:untag-resource #:update
                              #:update-access-config-request
                              #:update-access-entry #:update-addon
                              #:update-cluster-config #:update-cluster-version
                              #:update-eks-anywhere-subscription
                              #:update-labels-payload #:update-nodegroup-config
                              #:update-nodegroup-version #:update-param
                              #:update-param-type #:update-params
                              #:update-pod-identity-association #:update-status
                              #:update-taints-payload #:update-type
                              #:upgrade-policy-request
                              #:upgrade-policy-response #:version-status
                              #:vpc-config-request #:vpc-config-response
                              #:zero-capacity #:zonal-shift-config-request
                              #:zonal-shift-config-response #:config-status
                              #:label-key #:label-value #:labels-key-list
                              #:labels-map #:required-claims-key
                              #:required-claims-map #:required-claims-value
                              #:taint-key #:taint-value #:taints-list
                              #:eks-error))
(common-lisp:in-package #:pira/eks)

(common-lisp:define-condition eks-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awswesley-frontend :shape-name
                                   "AWSWesleyFrontend" :version "2017-11-01"
                                   :title "Amazon Elastic Kubernetes Service"
                                   :operations
                                   '(associate-access-policy
                                     associate-encryption-config
                                     associate-identity-provider-config
                                     create-access-entry create-addon
                                     create-cluster
                                     create-eks-anywhere-subscription
                                     create-fargate-profile create-nodegroup
                                     create-pod-identity-association
                                     delete-access-entry delete-addon
                                     delete-cluster
                                     delete-eks-anywhere-subscription
                                     delete-fargate-profile delete-nodegroup
                                     delete-pod-identity-association
                                     deregister-cluster describe-access-entry
                                     describe-addon
                                     describe-addon-configuration
                                     describe-addon-versions describe-cluster
                                     describe-cluster-versions
                                     describe-eks-anywhere-subscription
                                     describe-fargate-profile
                                     describe-identity-provider-config
                                     describe-insight describe-nodegroup
                                     describe-pod-identity-association
                                     describe-update disassociate-access-policy
                                     disassociate-identity-provider-config
                                     list-access-entries list-access-policies
                                     list-addons
                                     list-associated-access-policies
                                     list-clusters
                                     list-eks-anywhere-subscriptions
                                     list-fargate-profiles
                                     list-identity-provider-configs
                                     list-insights list-nodegroups
                                     list-pod-identity-associations
                                     list-tags-for-resource list-updates
                                     register-cluster tag-resource
                                     untag-resource update-access-entry
                                     update-addon update-cluster-config
                                     update-cluster-version
                                     update-eks-anywhere-subscription
                                     update-nodegroup-config
                                     update-nodegroup-version
                                     update-pod-identity-association)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "EKS")
                                      ("arnNamespace" . "eks")
                                      ("cloudFormationName" . "EKS")
                                      ("cloudTrailEventSource"
                                       . "eks.amazonaws.com")
                                      ("endpointPrefix" . "eks"))
                                     ("aws.auth#sigv4" ("name" . "eks"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum amitypes
    common-lisp:nil
  (:al2-x86-64 "AL2_x86_64")
  (:al2-x86-64-gpu "AL2_x86_64_GPU")
  (:al2-arm-64 "AL2_ARM_64")
  (:custom "CUSTOM")
  (:bottlerocket-arm-64 "BOTTLEROCKET_ARM_64")
  (:bottlerocket-x86-64 "BOTTLEROCKET_x86_64")
  (:bottlerocket-arm-64-fips "BOTTLEROCKET_ARM_64_FIPS")
  (:bottlerocket-x86-64-fips "BOTTLEROCKET_x86_64_FIPS")
  (:bottlerocket-arm-64-nvidia "BOTTLEROCKET_ARM_64_NVIDIA")
  (:bottlerocket-x86-64-nvidia "BOTTLEROCKET_x86_64_NVIDIA")
  (:windows-core-2019-x86-64 "WINDOWS_CORE_2019_x86_64")
  (:windows-full-2019-x86-64 "WINDOWS_FULL_2019_x86_64")
  (:windows-core-2022-x86-64 "WINDOWS_CORE_2022_x86_64")
  (:windows-full-2022-x86-64 "WINDOWS_FULL_2022_x86_64")
  (:al2023-x86-64-standard "AL2023_x86_64_STANDARD")
  (:al2023-arm-64-standard "AL2023_ARM_64_STANDARD")
  (:al2023-x86-64-neuron "AL2023_x86_64_NEURON")
  (:al2023-x86-64-nvidia "AL2023_x86_64_NVIDIA")
  (:al2023-arm-64-nvidia "AL2023_ARM_64_NVIDIA"))

(smithy/sdk/shapes:define-structure access-config-response common-lisp:nil
                                    ((bootstrap-cluster-creator-admin-permissions
                                      :target-type boxed-boolean :member-name
                                      "bootstrapClusterCreatorAdminPermissions")
                                     (authentication-mode :target-type
                                      authentication-mode :member-name
                                      "authenticationMode"))
                                    (:shape-name "AccessConfigResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403) (:base-class eks-error))

(smithy/sdk/shapes:define-structure access-entry common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "clusterName")
                                     (principal-arn :target-type string
                                      :member-name "principalArn")
                                     (kubernetes-groups :target-type
                                      string-list :member-name
                                      "kubernetesGroups")
                                     (access-entry-arn :target-type string
                                      :member-name "accessEntryArn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type timestamp
                                      :member-name "modifiedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (username :target-type string :member-name
                                      "username")
                                     (type :target-type string :member-name
                                      "type"))
                                    (:shape-name "AccessEntry"))

(smithy/sdk/shapes:define-list access-policies-list :member access-policy)

(smithy/sdk/shapes:define-structure access-policy common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (arn :target-type string :member-name
                                      "arn"))
                                    (:shape-name "AccessPolicy"))

(smithy/sdk/shapes:define-structure access-scope common-lisp:nil
                                    ((type :target-type access-scope-type
                                      :member-name "type")
                                     (namespaces :target-type string-list
                                      :member-name "namespaces"))
                                    (:shape-name "AccessScope"))

(smithy/sdk/shapes:define-enum access-scope-type
    common-lisp:nil
  (:cluster "cluster")
  (:namespace "namespace"))

(smithy/sdk/shapes:define-map additional-info-map :key string :value string)

(smithy/sdk/shapes:define-structure addon common-lisp:nil
                                    ((addon-name :target-type string
                                      :member-name "addonName")
                                     (cluster-name :target-type cluster-name
                                      :member-name "clusterName")
                                     (status :target-type addon-status
                                      :member-name "status")
                                     (addon-version :target-type string
                                      :member-name "addonVersion")
                                     (health :target-type addon-health
                                      :member-name "health")
                                     (addon-arn :target-type string
                                      :member-name "addonArn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type timestamp
                                      :member-name "modifiedAt")
                                     (service-account-role-arn :target-type
                                      string :member-name
                                      "serviceAccountRoleArn")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (publisher :target-type string
                                      :member-name "publisher")
                                     (owner :target-type string :member-name
                                      "owner")
                                     (marketplace-information :target-type
                                      marketplace-information :member-name
                                      "marketplaceInformation")
                                     (configuration-values :target-type string
                                      :member-name "configurationValues")
                                     (pod-identity-associations :target-type
                                      string-list :member-name
                                      "podIdentityAssociations"))
                                    (:shape-name "Addon"))

(smithy/sdk/shapes:define-structure addon-compatibility-detail common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (compatible-versions :target-type
                                      string-list :member-name
                                      "compatibleVersions"))
                                    (:shape-name "AddonCompatibilityDetail"))

(smithy/sdk/shapes:define-list addon-compatibility-details :member
                               addon-compatibility-detail)

(smithy/sdk/shapes:define-structure addon-health common-lisp:nil
                                    ((issues :target-type addon-issue-list
                                      :member-name "issues"))
                                    (:shape-name "AddonHealth"))

(smithy/sdk/shapes:define-structure addon-info common-lisp:nil
                                    ((addon-name :target-type string
                                      :member-name "addonName")
                                     (type :target-type string :member-name
                                      "type")
                                     (addon-versions :target-type
                                      addon-version-info-list :member-name
                                      "addonVersions")
                                     (publisher :target-type string
                                      :member-name "publisher")
                                     (owner :target-type string :member-name
                                      "owner")
                                     (marketplace-information :target-type
                                      marketplace-information :member-name
                                      "marketplaceInformation"))
                                    (:shape-name "AddonInfo"))

(smithy/sdk/shapes:define-structure addon-issue common-lisp:nil
                                    ((code :target-type addon-issue-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message")
                                     (resource-ids :target-type string-list
                                      :member-name "resourceIds"))
                                    (:shape-name "AddonIssue"))

(smithy/sdk/shapes:define-enum addon-issue-code
    common-lisp:nil
  (:access-denied "AccessDenied")
  (:internal-failure "InternalFailure")
  (:cluster-unreachable "ClusterUnreachable")
  (:insufficient-number-of-replicas "InsufficientNumberOfReplicas")
  (:configuration-conflict "ConfigurationConflict")
  (:admission-request-denied "AdmissionRequestDenied")
  (:unsupported-addon-modification "UnsupportedAddonModification")
  (:k8s-resource-not-found "K8sResourceNotFound")
  (:addon-subscription-needed "AddonSubscriptionNeeded")
  (:addon-permission-failure "AddonPermissionFailure"))

(smithy/sdk/shapes:define-list addon-issue-list :member addon-issue)

(smithy/sdk/shapes:define-structure addon-pod-identity-associations
                                    common-lisp:nil
                                    ((service-account :target-type string
                                      :required common-lisp:t :member-name
                                      "serviceAccount")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name
                                     "AddonPodIdentityAssociations"))

(smithy/sdk/shapes:define-list addon-pod-identity-associations-list :member
                               addon-pod-identity-associations)

(smithy/sdk/shapes:define-structure addon-pod-identity-configuration
                                    common-lisp:nil
                                    ((service-account :target-type string
                                      :member-name "serviceAccount")
                                     (recommended-managed-policies :target-type
                                      string-list :member-name
                                      "recommendedManagedPolicies"))
                                    (:shape-name
                                     "AddonPodIdentityConfiguration"))

(smithy/sdk/shapes:define-list addon-pod-identity-configuration-list :member
                               addon-pod-identity-configuration)

(smithy/sdk/shapes:define-enum addon-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:create-failed "CREATE_FAILED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:degraded "DEGRADED")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure addon-version-info common-lisp:nil
                                    ((addon-version :target-type string
                                      :member-name "addonVersion")
                                     (architecture :target-type string-list
                                      :member-name "architecture")
                                     (compute-types :target-type string-list
                                      :member-name "computeTypes")
                                     (compatibilities :target-type
                                      compatibilities :member-name
                                      "compatibilities")
                                     (requires-configuration :target-type
                                      boolean :member-name
                                      "requiresConfiguration")
                                     (requires-iam-permissions :target-type
                                      boolean :member-name
                                      "requiresIamPermissions"))
                                    (:shape-name "AddonVersionInfo"))

(smithy/sdk/shapes:define-list addon-version-info-list :member
                               addon-version-info)

(smithy/sdk/shapes:define-list addons :member addon-info)

(smithy/sdk/shapes:define-input associate-access-policy-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn"
                                  :http-label common-lisp:t)
                                 (policy-arn :target-type string :required
                                  common-lisp:t :member-name "policyArn")
                                 (access-scope :target-type access-scope
                                  :required common-lisp:t :member-name
                                  "accessScope"))
                                (:shape-name "AssociateAccessPolicyRequest"))

(smithy/sdk/shapes:define-output associate-access-policy-response
                                 common-lisp:nil
                                 ((cluster-name :target-type string
                                   :member-name "clusterName")
                                  (principal-arn :target-type string
                                   :member-name "principalArn")
                                  (associated-access-policy :target-type
                                   associated-access-policy :member-name
                                   "associatedAccessPolicy"))
                                 (:shape-name "AssociateAccessPolicyResponse"))

(smithy/sdk/shapes:define-input associate-encryption-config-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (encryption-config :target-type
                                  encryption-config-list :required
                                  common-lisp:t :member-name
                                  "encryptionConfig")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken"))
                                (:shape-name
                                 "AssociateEncryptionConfigRequest"))

(smithy/sdk/shapes:define-output associate-encryption-config-response
                                 common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name
                                  "AssociateEncryptionConfigResponse"))

(smithy/sdk/shapes:define-input associate-identity-provider-config-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (oidc :target-type
                                  oidc-identity-provider-config-request
                                  :required common-lisp:t :member-name "oidc")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken"))
                                (:shape-name
                                 "AssociateIdentityProviderConfigRequest"))

(smithy/sdk/shapes:define-output associate-identity-provider-config-response
                                 common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "AssociateIdentityProviderConfigResponse"))

(smithy/sdk/shapes:define-list associated-access-policies-list :member
                               associated-access-policy)

(smithy/sdk/shapes:define-structure associated-access-policy common-lisp:nil
                                    ((policy-arn :target-type string
                                      :member-name "policyArn")
                                     (access-scope :target-type access-scope
                                      :member-name "accessScope")
                                     (associated-at :target-type timestamp
                                      :member-name "associatedAt")
                                     (modified-at :target-type timestamp
                                      :member-name "modifiedAt"))
                                    (:shape-name "AssociatedAccessPolicy"))

(smithy/sdk/shapes:define-enum authentication-mode
    common-lisp:nil
  (:api "API")
  (:api-and-config-map "API_AND_CONFIG_MAP")
  (:config-map "CONFIG_MAP"))

(smithy/sdk/shapes:define-structure auto-scaling-group common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name"))
                                    (:shape-name "AutoScalingGroup"))

(smithy/sdk/shapes:define-list auto-scaling-group-list :member
                               auto-scaling-group)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-structure block-storage common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled"))
                                    (:shape-name "BlockStorage"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum capacity-types
    common-lisp:nil
  (:on-demand "ON_DEMAND")
  (:spot "SPOT")
  (:capacity-block "CAPACITY_BLOCK"))

(smithy/sdk/shapes:define-enum category
    common-lisp:nil
  (:upgrade-readiness "UPGRADE_READINESS")
  (:misconfiguration "MISCONFIGURATION"))

(smithy/sdk/shapes:define-list category-list :member category)

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((data :target-type string :member-name
                                      "data"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-error client-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (addon-name :target-type string :member-name
                                  "addonName")
                                 (subscription-id :target-type string
                                  :member-name "subscriptionId")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ClientException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-structure client-stat common-lisp:nil
                                    ((user-agent :target-type string
                                      :member-name "userAgent")
                                     (number-of-requests-last30days
                                      :target-type integer :member-name
                                      "numberOfRequestsLast30Days")
                                     (last-request-time :target-type timestamp
                                      :member-name "lastRequestTime"))
                                    (:shape-name "ClientStat"))

(smithy/sdk/shapes:define-list client-stats :member client-stat)

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (arn :target-type string :member-name
                                      "arn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (version :target-type string :member-name
                                      "version")
                                     (endpoint :target-type string :member-name
                                      "endpoint")
                                     (role-arn :target-type string :member-name
                                      "roleArn")
                                     (resources-vpc-config :target-type
                                      vpc-config-response :member-name
                                      "resourcesVpcConfig")
                                     (kubernetes-network-config :target-type
                                      kubernetes-network-config-response
                                      :member-name "kubernetesNetworkConfig")
                                     (logging :target-type logging :member-name
                                      "logging")
                                     (identity :target-type identity
                                      :member-name "identity")
                                     (status :target-type cluster-status
                                      :member-name "status")
                                     (certificate-authority :target-type
                                      certificate :member-name
                                      "certificateAuthority")
                                     (client-request-token :target-type string
                                      :member-name "clientRequestToken")
                                     (platform-version :target-type string
                                      :member-name "platformVersion")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (encryption-config :target-type
                                      encryption-config-list :member-name
                                      "encryptionConfig")
                                     (connector-config :target-type
                                      connector-config-response :member-name
                                      "connectorConfig")
                                     (id :target-type string :member-name "id")
                                     (health :target-type cluster-health
                                      :member-name "health")
                                     (outpost-config :target-type
                                      outpost-config-response :member-name
                                      "outpostConfig")
                                     (access-config :target-type
                                      access-config-response :member-name
                                      "accessConfig")
                                     (upgrade-policy :target-type
                                      upgrade-policy-response :member-name
                                      "upgradePolicy")
                                     (zonal-shift-config :target-type
                                      zonal-shift-config-response :member-name
                                      "zonalShiftConfig")
                                     (remote-network-config :target-type
                                      remote-network-config-response
                                      :member-name "remoteNetworkConfig")
                                     (compute-config :target-type
                                      compute-config-response :member-name
                                      "computeConfig")
                                     (storage-config :target-type
                                      storage-config-response :member-name
                                      "storageConfig")
                                     (deletion-protection :target-type
                                      boxed-boolean :member-name
                                      "deletionProtection"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-structure cluster-health common-lisp:nil
                                    ((issues :target-type cluster-issue-list
                                      :member-name "issues"))
                                    (:shape-name "ClusterHealth"))

(smithy/sdk/shapes:define-structure cluster-issue common-lisp:nil
                                    ((code :target-type cluster-issue-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message")
                                     (resource-ids :target-type string-list
                                      :member-name "resourceIds"))
                                    (:shape-name "ClusterIssue"))

(smithy/sdk/shapes:define-enum cluster-issue-code
    common-lisp:nil
  (:access-denied "AccessDenied")
  (:cluster-unreachable "ClusterUnreachable")
  (:configuration-conflict "ConfigurationConflict")
  (:internal-failure "InternalFailure")
  (:resource-limit-exceeded "ResourceLimitExceeded")
  (:resource-not-found "ResourceNotFound")
  (:iam-role-not-found "IamRoleNotFound")
  (:vpc-not-found "VpcNotFound")
  (:insufficient-free-addresses "InsufficientFreeAddresses")
  (:ec2-service-not-subscribed "Ec2ServiceNotSubscribed")
  (:ec2-subnet-not-found "Ec2SubnetNotFound")
  (:ec2-security-group-not-found "Ec2SecurityGroupNotFound")
  (:kms-grant-revoked "KmsGrantRevoked")
  (:kms-key-not-found "KmsKeyNotFound")
  (:kms-key-marked-for-deletion "KmsKeyMarkedForDeletion")
  (:kms-key-disabled "KmsKeyDisabled")
  (:sts-regional-endpoint-disabled "StsRegionalEndpointDisabled")
  (:unsupported-version "UnsupportedVersion")
  (:other "Other"))

(smithy/sdk/shapes:define-list cluster-issue-list :member cluster-issue)

(smithy/sdk/shapes:define-type cluster-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cluster-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-structure cluster-version-information common-lisp:nil
                                    ((cluster-version :target-type string
                                      :member-name "clusterVersion")
                                     (cluster-type :target-type string
                                      :member-name "clusterType")
                                     (default-platform-version :target-type
                                      string :member-name
                                      "defaultPlatformVersion")
                                     (default-version :target-type boolean
                                      :member-name "defaultVersion")
                                     (release-date :target-type timestamp
                                      :member-name "releaseDate")
                                     (end-of-standard-support-date :target-type
                                      timestamp :member-name
                                      "endOfStandardSupportDate")
                                     (end-of-extended-support-date :target-type
                                      timestamp :member-name
                                      "endOfExtendedSupportDate")
                                     (status :target-type
                                      cluster-version-status :member-name
                                      "status")
                                     (version-status :target-type
                                      version-status :member-name
                                      "versionStatus")
                                     (kubernetes-patch-version :target-type
                                      string :member-name
                                      "kubernetesPatchVersion"))
                                    (:shape-name "ClusterVersionInformation"))

(smithy/sdk/shapes:define-list cluster-version-list :member
                               cluster-version-information)

(smithy/sdk/shapes:define-enum cluster-version-status
    common-lisp:nil
  (:unsupported "unsupported")
  (:standard-support "standard-support")
  (:extended-support "extended-support"))

(smithy/sdk/shapes:define-list compatibilities :member compatibility)

(smithy/sdk/shapes:define-structure compatibility common-lisp:nil
                                    ((cluster-version :target-type string
                                      :member-name "clusterVersion")
                                     (platform-versions :target-type
                                      string-list :member-name
                                      "platformVersions")
                                     (default-version :target-type boolean
                                      :member-name "defaultVersion"))
                                    (:shape-name "Compatibility"))

(smithy/sdk/shapes:define-structure compute-config-request common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled")
                                     (node-pools :target-type string-list
                                      :member-name "nodePools")
                                     (node-role-arn :target-type string
                                      :member-name "nodeRoleArn"))
                                    (:shape-name "ComputeConfigRequest"))

(smithy/sdk/shapes:define-structure compute-config-response common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled")
                                     (node-pools :target-type string-list
                                      :member-name "nodePools")
                                     (node-role-arn :target-type string
                                      :member-name "nodeRoleArn"))
                                    (:shape-name "ComputeConfigResponse"))

(smithy/sdk/shapes:define-enum connector-config-provider
    common-lisp:nil
  (:eks-anywhere "EKS_ANYWHERE")
  (:anthos "ANTHOS")
  (:gke "GKE")
  (:aks "AKS")
  (:openshift "OPENSHIFT")
  (:tanzu "TANZU")
  (:rancher "RANCHER")
  (:ec2 "EC2")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure connector-config-request common-lisp:nil
                                    ((role-arn :target-type string :required
                                      common-lisp:t :member-name "roleArn")
                                     (provider :target-type
                                      connector-config-provider :required
                                      common-lisp:t :member-name "provider"))
                                    (:shape-name "ConnectorConfigRequest"))

(smithy/sdk/shapes:define-structure connector-config-response common-lisp:nil
                                    ((activation-id :target-type string
                                      :member-name "activationId")
                                     (activation-code :target-type string
                                      :member-name "activationCode")
                                     (activation-expiry :target-type timestamp
                                      :member-name "activationExpiry")
                                     (provider :target-type string :member-name
                                      "provider")
                                     (role-arn :target-type string :member-name
                                      "roleArn"))
                                    (:shape-name "ConnectorConfigResponse"))

(smithy/sdk/shapes:define-structure control-plane-placement-request
                                    common-lisp:nil
                                    ((group-name :target-type string
                                      :member-name "groupName"))
                                    (:shape-name
                                     "ControlPlanePlacementRequest"))

(smithy/sdk/shapes:define-structure control-plane-placement-response
                                    common-lisp:nil
                                    ((group-name :target-type string
                                      :member-name "groupName"))
                                    (:shape-name
                                     "ControlPlanePlacementResponse"))

(smithy/sdk/shapes:define-structure create-access-config-request
                                    common-lisp:nil
                                    ((bootstrap-cluster-creator-admin-permissions
                                      :target-type boxed-boolean :member-name
                                      "bootstrapClusterCreatorAdminPermissions")
                                     (authentication-mode :target-type
                                      authentication-mode :member-name
                                      "authenticationMode"))
                                    (:shape-name "CreateAccessConfigRequest"))

(smithy/sdk/shapes:define-input create-access-entry-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn")
                                 (kubernetes-groups :target-type string-list
                                  :member-name "kubernetesGroups")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (username :target-type string :member-name
                                  "username")
                                 (type :target-type string :member-name
                                  "type"))
                                (:shape-name "CreateAccessEntryRequest"))

(smithy/sdk/shapes:define-output create-access-entry-response common-lisp:nil
                                 ((access-entry :target-type access-entry
                                   :member-name "accessEntry"))
                                 (:shape-name "CreateAccessEntryResponse"))

(smithy/sdk/shapes:define-input create-addon-request common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (addon-name :target-type string :required
                                  common-lisp:t :member-name "addonName")
                                 (addon-version :target-type string
                                  :member-name "addonVersion")
                                 (service-account-role-arn :target-type
                                  role-arn :member-name
                                  "serviceAccountRoleArn")
                                 (resolve-conflicts :target-type
                                  resolve-conflicts :member-name
                                  "resolveConflicts")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (configuration-values :target-type string
                                  :member-name "configurationValues")
                                 (pod-identity-associations :target-type
                                  addon-pod-identity-associations-list
                                  :member-name "podIdentityAssociations"))
                                (:shape-name "CreateAddonRequest"))

(smithy/sdk/shapes:define-output create-addon-response common-lisp:nil
                                 ((addon :target-type addon :member-name
                                   "addon"))
                                 (:shape-name "CreateAddonResponse"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((name :target-type cluster-name :required
                                  common-lisp:t :member-name "name")
                                 (version :target-type string :member-name
                                  "version")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "roleArn")
                                 (resources-vpc-config :target-type
                                  vpc-config-request :required common-lisp:t
                                  :member-name "resourcesVpcConfig")
                                 (kubernetes-network-config :target-type
                                  kubernetes-network-config-request
                                  :member-name "kubernetesNetworkConfig")
                                 (logging :target-type logging :member-name
                                  "logging")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (encryption-config :target-type
                                  encryption-config-list :member-name
                                  "encryptionConfig")
                                 (outpost-config :target-type
                                  outpost-config-request :member-name
                                  "outpostConfig")
                                 (access-config :target-type
                                  create-access-config-request :member-name
                                  "accessConfig")
                                 (bootstrap-self-managed-addons :target-type
                                  boxed-boolean :member-name
                                  "bootstrapSelfManagedAddons")
                                 (upgrade-policy :target-type
                                  upgrade-policy-request :member-name
                                  "upgradePolicy")
                                 (zonal-shift-config :target-type
                                  zonal-shift-config-request :member-name
                                  "zonalShiftConfig")
                                 (remote-network-config :target-type
                                  remote-network-config-request :member-name
                                  "remoteNetworkConfig")
                                 (compute-config :target-type
                                  compute-config-request :member-name
                                  "computeConfig")
                                 (storage-config :target-type
                                  storage-config-request :member-name
                                  "storageConfig")
                                 (deletion-protection :target-type
                                  boxed-boolean :member-name
                                  "deletionProtection"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-eks-anywhere-subscription-request
                                common-lisp:nil
                                ((name :target-type
                                  eks-anywhere-subscription-name :required
                                  common-lisp:t :member-name "name")
                                 (term :target-type
                                  eks-anywhere-subscription-term :required
                                  common-lisp:t :member-name "term")
                                 (license-quantity :target-type integer
                                  :member-name "licenseQuantity")
                                 (license-type :target-type
                                  eks-anywhere-subscription-license-type
                                  :member-name "licenseType")
                                 (auto-renew :target-type boolean :member-name
                                  "autoRenew")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateEksAnywhereSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-eks-anywhere-subscription-response
                                 common-lisp:nil
                                 ((subscription :target-type
                                   eks-anywhere-subscription :member-name
                                   "subscription"))
                                 (:shape-name
                                  "CreateEksAnywhereSubscriptionResponse"))

(smithy/sdk/shapes:define-input create-fargate-profile-request common-lisp:nil
                                ((fargate-profile-name :target-type string
                                  :required common-lisp:t :member-name
                                  "fargateProfileName")
                                 (cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (pod-execution-role-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "podExecutionRoleArn")
                                 (subnets :target-type string-list :member-name
                                  "subnets")
                                 (selectors :target-type
                                  fargate-profile-selectors :member-name
                                  "selectors")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateFargateProfileRequest"))

(smithy/sdk/shapes:define-output create-fargate-profile-response
                                 common-lisp:nil
                                 ((fargate-profile :target-type fargate-profile
                                   :member-name "fargateProfile"))
                                 (:shape-name "CreateFargateProfileResponse"))

(smithy/sdk/shapes:define-input create-nodegroup-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (nodegroup-name :target-type string :required
                                  common-lisp:t :member-name "nodegroupName")
                                 (scaling-config :target-type
                                  nodegroup-scaling-config :member-name
                                  "scalingConfig")
                                 (disk-size :target-type boxed-integer
                                  :member-name "diskSize")
                                 (subnets :target-type string-list :required
                                  common-lisp:t :member-name "subnets")
                                 (instance-types :target-type string-list
                                  :member-name "instanceTypes")
                                 (ami-type :target-type amitypes :member-name
                                  "amiType")
                                 (remote-access :target-type
                                  remote-access-config :member-name
                                  "remoteAccess")
                                 (node-role :target-type string :required
                                  common-lisp:t :member-name "nodeRole")
                                 (labels :target-type labels-map :member-name
                                  "labels")
                                 (taints :target-type taints-list :member-name
                                  "taints")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (launch-template :target-type
                                  launch-template-specification :member-name
                                  "launchTemplate")
                                 (update-config :target-type
                                  nodegroup-update-config :member-name
                                  "updateConfig")
                                 (node-repair-config :target-type
                                  node-repair-config :member-name
                                  "nodeRepairConfig")
                                 (capacity-type :target-type capacity-types
                                  :member-name "capacityType")
                                 (version :target-type string :member-name
                                  "version")
                                 (release-version :target-type string
                                  :member-name "releaseVersion"))
                                (:shape-name "CreateNodegroupRequest"))

(smithy/sdk/shapes:define-output create-nodegroup-response common-lisp:nil
                                 ((nodegroup :target-type nodegroup
                                   :member-name "nodegroup"))
                                 (:shape-name "CreateNodegroupResponse"))

(smithy/sdk/shapes:define-input create-pod-identity-association-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (namespace :target-type string :required
                                  common-lisp:t :member-name "namespace")
                                 (service-account :target-type string :required
                                  common-lisp:t :member-name "serviceAccount")
                                 (role-arn :target-type string :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (disable-session-tags :target-type
                                  boxed-boolean :member-name
                                  "disableSessionTags")
                                 (target-role-arn :target-type string
                                  :member-name "targetRoleArn"))
                                (:shape-name
                                 "CreatePodIdentityAssociationRequest"))

(smithy/sdk/shapes:define-output create-pod-identity-association-response
                                 common-lisp:nil
                                 ((association :target-type
                                   pod-identity-association :member-name
                                   "association"))
                                 (:shape-name
                                  "CreatePodIdentityAssociationResponse"))

(smithy/sdk/shapes:define-input delete-access-entry-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAccessEntryRequest"))

(smithy/sdk/shapes:define-output delete-access-entry-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAccessEntryResponse"))

(smithy/sdk/shapes:define-input delete-addon-request common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (addon-name :target-type string :required
                                  common-lisp:t :member-name "addonName"
                                  :http-label common-lisp:t)
                                 (preserve :target-type boolean :member-name
                                  "preserve" :http-query "preserve"))
                                (:shape-name "DeleteAddonRequest"))

(smithy/sdk/shapes:define-output delete-addon-response common-lisp:nil
                                 ((addon :target-type addon :member-name
                                   "addon"))
                                 (:shape-name "DeleteAddonResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-eks-anywhere-subscription-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteEksAnywhereSubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-eks-anywhere-subscription-response
                                 common-lisp:nil
                                 ((subscription :target-type
                                   eks-anywhere-subscription :member-name
                                   "subscription"))
                                 (:shape-name
                                  "DeleteEksAnywhereSubscriptionResponse"))

(smithy/sdk/shapes:define-input delete-fargate-profile-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (fargate-profile-name :target-type string
                                  :required common-lisp:t :member-name
                                  "fargateProfileName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteFargateProfileRequest"))

(smithy/sdk/shapes:define-output delete-fargate-profile-response
                                 common-lisp:nil
                                 ((fargate-profile :target-type fargate-profile
                                   :member-name "fargateProfile"))
                                 (:shape-name "DeleteFargateProfileResponse"))

(smithy/sdk/shapes:define-input delete-nodegroup-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (nodegroup-name :target-type string :required
                                  common-lisp:t :member-name "nodegroupName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteNodegroupRequest"))

(smithy/sdk/shapes:define-output delete-nodegroup-response common-lisp:nil
                                 ((nodegroup :target-type nodegroup
                                   :member-name "nodegroup"))
                                 (:shape-name "DeleteNodegroupResponse"))

(smithy/sdk/shapes:define-input delete-pod-identity-association-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeletePodIdentityAssociationRequest"))

(smithy/sdk/shapes:define-output delete-pod-identity-association-response
                                 common-lisp:nil
                                 ((association :target-type
                                   pod-identity-association :member-name
                                   "association"))
                                 (:shape-name
                                  "DeletePodIdentityAssociationResponse"))

(smithy/sdk/shapes:define-structure deprecation-detail common-lisp:nil
                                    ((usage :target-type string :member-name
                                      "usage")
                                     (replaced-with :target-type string
                                      :member-name "replacedWith")
                                     (stop-serving-version :target-type string
                                      :member-name "stopServingVersion")
                                     (start-serving-replacement-version
                                      :target-type string :member-name
                                      "startServingReplacementVersion")
                                     (client-stats :target-type client-stats
                                      :member-name "clientStats"))
                                    (:shape-name "DeprecationDetail"))

(smithy/sdk/shapes:define-list deprecation-details :member deprecation-detail)

(smithy/sdk/shapes:define-input deregister-cluster-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeregisterClusterRequest"))

(smithy/sdk/shapes:define-output deregister-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "DeregisterClusterResponse"))

(smithy/sdk/shapes:define-input describe-access-entry-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeAccessEntryRequest"))

(smithy/sdk/shapes:define-output describe-access-entry-response common-lisp:nil
                                 ((access-entry :target-type access-entry
                                   :member-name "accessEntry"))
                                 (:shape-name "DescribeAccessEntryResponse"))

(smithy/sdk/shapes:define-input describe-addon-configuration-request
                                common-lisp:nil
                                ((addon-name :target-type string :required
                                  common-lisp:t :member-name "addonName"
                                  :http-query "addonName")
                                 (addon-version :target-type string :required
                                  common-lisp:t :member-name "addonVersion"
                                  :http-query "addonVersion"))
                                (:shape-name
                                 "DescribeAddonConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-addon-configuration-response
                                 common-lisp:nil
                                 ((addon-name :target-type string :member-name
                                   "addonName")
                                  (addon-version :target-type string
                                   :member-name "addonVersion")
                                  (configuration-schema :target-type string
                                   :member-name "configurationSchema")
                                  (pod-identity-configuration :target-type
                                   addon-pod-identity-configuration-list
                                   :member-name "podIdentityConfiguration"))
                                 (:shape-name
                                  "DescribeAddonConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-addon-request common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (addon-name :target-type string :required
                                  common-lisp:t :member-name "addonName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeAddonRequest"))

(smithy/sdk/shapes:define-output describe-addon-response common-lisp:nil
                                 ((addon :target-type addon :member-name
                                   "addon"))
                                 (:shape-name "DescribeAddonResponse"))

(smithy/sdk/shapes:define-input describe-addon-versions-request common-lisp:nil
                                ((kubernetes-version :target-type string
                                  :member-name "kubernetesVersion" :http-query
                                  "kubernetesVersion")
                                 (max-results :target-type
                                  describe-addon-versions-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (addon-name :target-type string :member-name
                                  "addonName" :http-query "addonName")
                                 (types :target-type string-list :member-name
                                  "types" :http-query "types")
                                 (publishers :target-type string-list
                                  :member-name "publishers" :http-query
                                  "publishers")
                                 (owners :target-type string-list :member-name
                                  "owners" :http-query "owners"))
                                (:shape-name "DescribeAddonVersionsRequest"))

(smithy/sdk/shapes:define-type describe-addon-versions-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output describe-addon-versions-response
                                 common-lisp:nil
                                 ((addons :target-type addons :member-name
                                   "addons")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "DescribeAddonVersionsResponse"))

(smithy/sdk/shapes:define-input describe-cluster-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeClusterRequest"))

(smithy/sdk/shapes:define-output describe-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "DescribeClusterResponse"))

(smithy/sdk/shapes:define-type describe-cluster-version-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-cluster-versions-request
                                common-lisp:nil
                                ((cluster-type :target-type string :member-name
                                  "clusterType" :http-query "clusterType")
                                 (max-results :target-type
                                  describe-cluster-version-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (default-only :target-type boxed-boolean
                                  :member-name "defaultOnly" :http-query
                                  "defaultOnly")
                                 (include-all :target-type boxed-boolean
                                  :member-name "includeAll" :http-query
                                  "includeAll")
                                 (cluster-versions :target-type string-list
                                  :member-name "clusterVersions" :http-query
                                  "clusterVersions")
                                 (status :target-type cluster-version-status
                                  :member-name "status" :http-query "status")
                                 (version-status :target-type version-status
                                  :member-name "versionStatus" :http-query
                                  "versionStatus"))
                                (:shape-name "DescribeClusterVersionsRequest"))

(smithy/sdk/shapes:define-output describe-cluster-versions-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken")
                                  (cluster-versions :target-type
                                   cluster-version-list :member-name
                                   "clusterVersions"))
                                 (:shape-name
                                  "DescribeClusterVersionsResponse"))

(smithy/sdk/shapes:define-input describe-eks-anywhere-subscription-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DescribeEksAnywhereSubscriptionRequest"))

(smithy/sdk/shapes:define-output describe-eks-anywhere-subscription-response
                                 common-lisp:nil
                                 ((subscription :target-type
                                   eks-anywhere-subscription :member-name
                                   "subscription"))
                                 (:shape-name
                                  "DescribeEksAnywhereSubscriptionResponse"))

(smithy/sdk/shapes:define-input describe-fargate-profile-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (fargate-profile-name :target-type string
                                  :required common-lisp:t :member-name
                                  "fargateProfileName" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeFargateProfileRequest"))

(smithy/sdk/shapes:define-output describe-fargate-profile-response
                                 common-lisp:nil
                                 ((fargate-profile :target-type fargate-profile
                                   :member-name "fargateProfile"))
                                 (:shape-name "DescribeFargateProfileResponse"))

(smithy/sdk/shapes:define-input describe-identity-provider-config-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (identity-provider-config :target-type
                                  identity-provider-config :required
                                  common-lisp:t :member-name
                                  "identityProviderConfig"))
                                (:shape-name
                                 "DescribeIdentityProviderConfigRequest"))

(smithy/sdk/shapes:define-output describe-identity-provider-config-response
                                 common-lisp:nil
                                 ((identity-provider-config :target-type
                                   identity-provider-config-response
                                   :member-name "identityProviderConfig"))
                                 (:shape-name
                                  "DescribeIdentityProviderConfigResponse"))

(smithy/sdk/shapes:define-input describe-insight-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeInsightRequest"))

(smithy/sdk/shapes:define-output describe-insight-response common-lisp:nil
                                 ((insight :target-type insight :member-name
                                   "insight"))
                                 (:shape-name "DescribeInsightResponse"))

(smithy/sdk/shapes:define-input describe-nodegroup-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (nodegroup-name :target-type string :required
                                  common-lisp:t :member-name "nodegroupName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeNodegroupRequest"))

(smithy/sdk/shapes:define-output describe-nodegroup-response common-lisp:nil
                                 ((nodegroup :target-type nodegroup
                                   :member-name "nodegroup"))
                                 (:shape-name "DescribeNodegroupResponse"))

(smithy/sdk/shapes:define-input describe-pod-identity-association-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribePodIdentityAssociationRequest"))

(smithy/sdk/shapes:define-output describe-pod-identity-association-response
                                 common-lisp:nil
                                 ((association :target-type
                                   pod-identity-association :member-name
                                   "association"))
                                 (:shape-name
                                  "DescribePodIdentityAssociationResponse"))

(smithy/sdk/shapes:define-input describe-update-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (update-id :target-type string :required
                                  common-lisp:t :member-name "updateId"
                                  :http-label common-lisp:t)
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName" :http-query
                                  "nodegroupName")
                                 (addon-name :target-type string :member-name
                                  "addonName" :http-query "addonName"))
                                (:shape-name "DescribeUpdateRequest"))

(smithy/sdk/shapes:define-output describe-update-response common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name "DescribeUpdateResponse"))

(smithy/sdk/shapes:define-input disassociate-access-policy-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn"
                                  :http-label common-lisp:t)
                                 (policy-arn :target-type string :required
                                  common-lisp:t :member-name "policyArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DisassociateAccessPolicyRequest"))

(smithy/sdk/shapes:define-output disassociate-access-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateAccessPolicyResponse"))

(smithy/sdk/shapes:define-input disassociate-identity-provider-config-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (identity-provider-config :target-type
                                  identity-provider-config :required
                                  common-lisp:t :member-name
                                  "identityProviderConfig")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken"))
                                (:shape-name
                                 "DisassociateIdentityProviderConfigRequest"))

(smithy/sdk/shapes:define-output disassociate-identity-provider-config-response
                                 common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name
                                  "DisassociateIdentityProviderConfigResponse"))

(smithy/sdk/shapes:define-structure eks-anywhere-subscription common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (arn :target-type string :member-name
                                      "arn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (effective-date :target-type timestamp
                                      :member-name "effectiveDate")
                                     (expiration-date :target-type timestamp
                                      :member-name "expirationDate")
                                     (license-quantity :target-type integer
                                      :member-name "licenseQuantity")
                                     (license-type :target-type
                                      eks-anywhere-subscription-license-type
                                      :member-name "licenseType")
                                     (term :target-type
                                      eks-anywhere-subscription-term
                                      :member-name "term")
                                     (status :target-type string :member-name
                                      "status")
                                     (auto-renew :target-type boolean
                                      :member-name "autoRenew")
                                     (license-arns :target-type string-list
                                      :member-name "licenseArns")
                                     (licenses :target-type license-list
                                      :member-name "licenses")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "EksAnywhereSubscription"))

(smithy/sdk/shapes:define-enum eks-anywhere-subscription-license-type
    common-lisp:nil
  (:cluster "Cluster"))

(smithy/sdk/shapes:define-list eks-anywhere-subscription-list :member
                               eks-anywhere-subscription)

(smithy/sdk/shapes:define-type eks-anywhere-subscription-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum eks-anywhere-subscription-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:expiring "EXPIRING")
  (:expired "EXPIRED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list eks-anywhere-subscription-status-values :member
                               eks-anywhere-subscription-status)

(smithy/sdk/shapes:define-structure eks-anywhere-subscription-term
                                    common-lisp:nil
                                    ((duration :target-type integer
                                      :member-name "duration")
                                     (unit :target-type
                                      eks-anywhere-subscription-term-unit
                                      :member-name "unit"))
                                    (:shape-name "EksAnywhereSubscriptionTerm"))

(smithy/sdk/shapes:define-enum eks-anywhere-subscription-term-unit
    common-lisp:nil
  (:months "MONTHS"))

(smithy/sdk/shapes:define-structure elastic-load-balancing common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled"))
                                    (:shape-name "ElasticLoadBalancing"))

(smithy/sdk/shapes:define-structure encryption-config common-lisp:nil
                                    ((resources :target-type string-list
                                      :member-name "resources")
                                     (provider :target-type provider
                                      :member-name "provider"))
                                    (:shape-name "EncryptionConfig"))

(smithy/sdk/shapes:define-list encryption-config-list :member encryption-config)

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:subnet-not-found "SubnetNotFound")
  (:security-group-not-found "SecurityGroupNotFound")
  (:eni-limit-reached "EniLimitReached")
  (:ip-not-available "IpNotAvailable")
  (:access-denied "AccessDenied")
  (:operation-not-permitted "OperationNotPermitted")
  (:vpc-id-not-found "VpcIdNotFound")
  (:unknown "Unknown")
  (:node-creation-failure "NodeCreationFailure")
  (:pod-eviction-failure "PodEvictionFailure")
  (:insufficient-free-addresses "InsufficientFreeAddresses")
  (:cluster-unreachable "ClusterUnreachable")
  (:insufficient-number-of-replicas "InsufficientNumberOfReplicas")
  (:configuration-conflict "ConfigurationConflict")
  (:admission-request-denied "AdmissionRequestDenied")
  (:unsupported-addon-modification "UnsupportedAddonModification")
  (:k8s-resource-not-found "K8sResourceNotFound"))

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "errorCode")
                                     (error-message :target-type string
                                      :member-name "errorMessage")
                                     (resource-ids :target-type string-list
                                      :member-name "resourceIds"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-list error-details :member error-detail)

(smithy/sdk/shapes:define-structure fargate-profile common-lisp:nil
                                    ((fargate-profile-name :target-type string
                                      :member-name "fargateProfileName")
                                     (fargate-profile-arn :target-type string
                                      :member-name "fargateProfileArn")
                                     (cluster-name :target-type string
                                      :member-name "clusterName")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (pod-execution-role-arn :target-type
                                      string :member-name
                                      "podExecutionRoleArn")
                                     (subnets :target-type string-list
                                      :member-name "subnets")
                                     (selectors :target-type
                                      fargate-profile-selectors :member-name
                                      "selectors")
                                     (status :target-type
                                      fargate-profile-status :member-name
                                      "status")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (health :target-type
                                      fargate-profile-health :member-name
                                      "health"))
                                    (:shape-name "FargateProfile"))

(smithy/sdk/shapes:define-structure fargate-profile-health common-lisp:nil
                                    ((issues :target-type
                                      fargate-profile-issue-list :member-name
                                      "issues"))
                                    (:shape-name "FargateProfileHealth"))

(smithy/sdk/shapes:define-structure fargate-profile-issue common-lisp:nil
                                    ((code :target-type
                                      fargate-profile-issue-code :member-name
                                      "code")
                                     (message :target-type string :member-name
                                      "message")
                                     (resource-ids :target-type string-list
                                      :member-name "resourceIds"))
                                    (:shape-name "FargateProfileIssue"))

(smithy/sdk/shapes:define-enum fargate-profile-issue-code
    common-lisp:nil
  (:pod-execution-role-already-in-use "PodExecutionRoleAlreadyInUse")
  (:access-denied "AccessDenied")
  (:cluster-unreachable "ClusterUnreachable")
  (:internal-failure "InternalFailure"))

(smithy/sdk/shapes:define-list fargate-profile-issue-list :member
                               fargate-profile-issue)

(smithy/sdk/shapes:define-map fargate-profile-label :key string :value string)

(smithy/sdk/shapes:define-structure fargate-profile-selector common-lisp:nil
                                    ((namespace :target-type string
                                      :member-name "namespace")
                                     (labels :target-type fargate-profile-label
                                      :member-name "labels"))
                                    (:shape-name "FargateProfileSelector"))

(smithy/sdk/shapes:define-list fargate-profile-selectors :member
                               fargate-profile-selector)

(smithy/sdk/shapes:define-enum fargate-profile-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-type fargate-profiles-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure identity common-lisp:nil
                                    ((oidc :target-type oidc :member-name
                                      "oidc"))
                                    (:shape-name "Identity"))

(smithy/sdk/shapes:define-structure identity-provider-config common-lisp:nil
                                    ((type :target-type string :required
                                      common-lisp:t :member-name "type")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "IdentityProviderConfig"))

(smithy/sdk/shapes:define-structure identity-provider-config-response
                                    common-lisp:nil
                                    ((oidc :target-type
                                      oidc-identity-provider-config
                                      :member-name "oidc"))
                                    (:shape-name
                                     "IdentityProviderConfigResponse"))

(smithy/sdk/shapes:define-list identity-provider-configs :member
                               identity-provider-config)

(smithy/sdk/shapes:define-list include-clusters-list :member string)

(smithy/sdk/shapes:define-structure insight common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (category :target-type category
                                      :member-name "category")
                                     (kubernetes-version :target-type string
                                      :member-name "kubernetesVersion")
                                     (last-refresh-time :target-type timestamp
                                      :member-name "lastRefreshTime")
                                     (last-transition-time :target-type
                                      timestamp :member-name
                                      "lastTransitionTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (insight-status :target-type
                                      insight-status :member-name
                                      "insightStatus")
                                     (recommendation :target-type string
                                      :member-name "recommendation")
                                     (additional-info :target-type
                                      additional-info-map :member-name
                                      "additionalInfo")
                                     (resources :target-type
                                      insight-resource-details :member-name
                                      "resources")
                                     (category-specific-summary :target-type
                                      insight-category-specific-summary
                                      :member-name "categorySpecificSummary"))
                                    (:shape-name "Insight"))

(smithy/sdk/shapes:define-structure insight-category-specific-summary
                                    common-lisp:nil
                                    ((deprecation-details :target-type
                                      deprecation-details :member-name
                                      "deprecationDetails")
                                     (addon-compatibility-details :target-type
                                      addon-compatibility-details :member-name
                                      "addonCompatibilityDetails"))
                                    (:shape-name
                                     "InsightCategorySpecificSummary"))

(smithy/sdk/shapes:define-structure insight-resource-detail common-lisp:nil
                                    ((insight-status :target-type
                                      insight-status :member-name
                                      "insightStatus")
                                     (kubernetes-resource-uri :target-type
                                      string :member-name
                                      "kubernetesResourceUri")
                                     (arn :target-type string :member-name
                                      "arn"))
                                    (:shape-name "InsightResourceDetail"))

(smithy/sdk/shapes:define-list insight-resource-details :member
                               insight-resource-detail)

(smithy/sdk/shapes:define-structure insight-status common-lisp:nil
                                    ((status :target-type insight-status-value
                                      :member-name "status")
                                     (reason :target-type string :member-name
                                      "reason"))
                                    (:shape-name "InsightStatus"))

(smithy/sdk/shapes:define-enum insight-status-value
    common-lisp:nil
  (:passing "PASSING")
  (:warning "WARNING")
  (:error "ERROR")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-list insight-status-value-list :member
                               insight-status-value)

(smithy/sdk/shapes:define-list insight-summaries :member insight-summary)

(smithy/sdk/shapes:define-structure insight-summary common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (category :target-type category
                                      :member-name "category")
                                     (kubernetes-version :target-type string
                                      :member-name "kubernetesVersion")
                                     (last-refresh-time :target-type timestamp
                                      :member-name "lastRefreshTime")
                                     (last-transition-time :target-type
                                      timestamp :member-name
                                      "lastTransitionTime")
                                     (description :target-type string
                                      :member-name "description")
                                     (insight-status :target-type
                                      insight-status :member-name
                                      "insightStatus"))
                                    (:shape-name "InsightSummary"))

(smithy/sdk/shapes:define-structure insights-filter common-lisp:nil
                                    ((categories :target-type category-list
                                      :member-name "categories")
                                     (kubernetes-versions :target-type
                                      string-list :member-name
                                      "kubernetesVersions")
                                     (statuses :target-type
                                      insight-status-value-list :member-name
                                      "statuses"))
                                    (:shape-name "InsightsFilter"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (fargate-profile-name :target-type string
                                  :member-name "fargateProfileName")
                                 (addon-name :target-type string :member-name
                                  "addonName")
                                 (subscription-id :target-type string
                                  :member-name "subscriptionId")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (addon-name :target-type string :member-name
                                  "addonName")
                                 (subscription-id :target-type string
                                  :member-name "subscriptionId")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-enum ip-family
    common-lisp:nil
  (:ipv4 "ipv4")
  (:ipv6 "ipv6"))

(smithy/sdk/shapes:define-structure issue common-lisp:nil
                                    ((code :target-type nodegroup-issue-code
                                      :member-name "code")
                                     (message :target-type string :member-name
                                      "message")
                                     (resource-ids :target-type string-list
                                      :member-name "resourceIds"))
                                    (:shape-name "Issue"))

(smithy/sdk/shapes:define-list issue-list :member issue)

(smithy/sdk/shapes:define-structure kubernetes-network-config-request
                                    common-lisp:nil
                                    ((service-ipv4cidr :target-type string
                                      :member-name "serviceIpv4Cidr")
                                     (ip-family :target-type ip-family
                                      :member-name "ipFamily")
                                     (elastic-load-balancing :target-type
                                      elastic-load-balancing :member-name
                                      "elasticLoadBalancing"))
                                    (:shape-name
                                     "KubernetesNetworkConfigRequest"))

(smithy/sdk/shapes:define-structure kubernetes-network-config-response
                                    common-lisp:nil
                                    ((service-ipv4cidr :target-type string
                                      :member-name "serviceIpv4Cidr")
                                     (service-ipv6cidr :target-type string
                                      :member-name "serviceIpv6Cidr")
                                     (ip-family :target-type ip-family
                                      :member-name "ipFamily")
                                     (elastic-load-balancing :target-type
                                      elastic-load-balancing :member-name
                                      "elasticLoadBalancing"))
                                    (:shape-name
                                     "KubernetesNetworkConfigResponse"))

(smithy/sdk/shapes:define-structure launch-template-specification
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (version :target-type string :member-name
                                      "version")
                                     (id :target-type string :member-name
                                      "id"))
                                    (:shape-name "LaunchTemplateSpecification"))

(smithy/sdk/shapes:define-structure license common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (token :target-type string :member-name
                                      "token"))
                                    (:shape-name "License"))

(smithy/sdk/shapes:define-list license-list :member license)

(smithy/sdk/shapes:define-input list-access-entries-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (associated-policy-arn :target-type string
                                  :member-name "associatedPolicyArn"
                                  :http-query "associatedPolicyArn")
                                 (max-results :target-type
                                  list-access-entries-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListAccessEntriesRequest"))

(smithy/sdk/shapes:define-type list-access-entries-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-access-entries-response common-lisp:nil
                                 ((access-entries :target-type string-list
                                   :member-name "accessEntries")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAccessEntriesResponse"))

(smithy/sdk/shapes:define-input list-access-policies-request common-lisp:nil
                                ((max-results :target-type
                                  list-access-policies-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListAccessPoliciesRequest"))

(smithy/sdk/shapes:define-type list-access-policies-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-access-policies-response common-lisp:nil
                                 ((access-policies :target-type
                                   access-policies-list :member-name
                                   "accessPolicies")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAccessPoliciesResponse"))

(smithy/sdk/shapes:define-input list-addons-request common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-addons-request-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListAddonsRequest"))

(smithy/sdk/shapes:define-type list-addons-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-addons-response common-lisp:nil
                                 ((addons :target-type string-list :member-name
                                   "addons")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAddonsResponse"))

(smithy/sdk/shapes:define-input list-associated-access-policies-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-associated-access-policies-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListAssociatedAccessPoliciesRequest"))

(smithy/sdk/shapes:define-type
 list-associated-access-policies-request-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-associated-access-policies-response
                                 common-lisp:nil
                                 ((cluster-name :target-type string
                                   :member-name "clusterName")
                                  (principal-arn :target-type string
                                   :member-name "principalArn")
                                  (next-token :target-type string :member-name
                                   "nextToken")
                                  (associated-access-policies :target-type
                                   associated-access-policies-list :member-name
                                   "associatedAccessPolicies"))
                                 (:shape-name
                                  "ListAssociatedAccessPoliciesResponse"))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((max-results :target-type
                                  list-clusters-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (include :target-type include-clusters-list
                                  :member-name "include" :http-query
                                  "include"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-type list-clusters-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-clusters-response common-lisp:nil
                                 ((clusters :target-type string-list
                                   :member-name "clusters")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListClustersResponse"))

(smithy/sdk/shapes:define-input list-eks-anywhere-subscriptions-request
                                common-lisp:nil
                                ((max-results :target-type
                                  list-eks-anywhere-subscriptions-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (include-status :target-type
                                  eks-anywhere-subscription-status-values
                                  :member-name "includeStatus" :http-query
                                  "includeStatus"))
                                (:shape-name
                                 "ListEksAnywhereSubscriptionsRequest"))

(smithy/sdk/shapes:define-type
 list-eks-anywhere-subscriptions-request-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-eks-anywhere-subscriptions-response
                                 common-lisp:nil
                                 ((subscriptions :target-type
                                   eks-anywhere-subscription-list :member-name
                                   "subscriptions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListEksAnywhereSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-fargate-profiles-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  fargate-profiles-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListFargateProfilesRequest"))

(smithy/sdk/shapes:define-output list-fargate-profiles-response common-lisp:nil
                                 ((fargate-profile-names :target-type
                                   string-list :member-name
                                   "fargateProfileNames")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListFargateProfilesResponse"))

(smithy/sdk/shapes:define-input list-identity-provider-configs-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-identity-provider-configs-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListIdentityProviderConfigsRequest"))

(smithy/sdk/shapes:define-type
 list-identity-provider-configs-request-max-results
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-identity-provider-configs-response
                                 common-lisp:nil
                                 ((identity-provider-configs :target-type
                                   identity-provider-configs :member-name
                                   "identityProviderConfigs")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListIdentityProviderConfigsResponse"))

(smithy/sdk/shapes:define-type list-insights-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-insights-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (filter :target-type insights-filter
                                  :member-name "filter")
                                 (max-results :target-type
                                  list-insights-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListInsightsRequest"))

(smithy/sdk/shapes:define-output list-insights-response common-lisp:nil
                                 ((insights :target-type insight-summaries
                                   :member-name "insights")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListInsightsResponse"))

(smithy/sdk/shapes:define-input list-nodegroups-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  list-nodegroups-request-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListNodegroupsRequest"))

(smithy/sdk/shapes:define-type list-nodegroups-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-nodegroups-response common-lisp:nil
                                 ((nodegroups :target-type string-list
                                   :member-name "nodegroups")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListNodegroupsResponse"))

(smithy/sdk/shapes:define-type list-pod-identity-associations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-pod-identity-associations-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (namespace :target-type string :member-name
                                  "namespace" :http-query "namespace")
                                 (service-account :target-type string
                                  :member-name "serviceAccount" :http-query
                                  "serviceAccount")
                                 (max-results :target-type
                                  list-pod-identity-associations-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListPodIdentityAssociationsRequest"))

(smithy/sdk/shapes:define-output list-pod-identity-associations-response
                                 common-lisp:nil
                                 ((associations :target-type
                                   pod-identity-association-summaries
                                   :member-name "associations")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListPodIdentityAssociationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-updates-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName" :http-query
                                  "nodegroupName")
                                 (addon-name :target-type string :member-name
                                  "addonName" :http-query "addonName")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  list-updates-request-max-results :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListUpdatesRequest"))

(smithy/sdk/shapes:define-type list-updates-request-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-updates-response common-lisp:nil
                                 ((update-ids :target-type string-list
                                   :member-name "updateIds")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListUpdatesResponse"))

(smithy/sdk/shapes:define-structure log-setup common-lisp:nil
                                    ((types :target-type log-types :member-name
                                      "types")
                                     (enabled :target-type boxed-boolean
                                      :member-name "enabled"))
                                    (:shape-name "LogSetup"))

(smithy/sdk/shapes:define-list log-setups :member log-setup)

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:api "api")
  (:audit "audit")
  (:authenticator "authenticator")
  (:controller-manager "controllerManager")
  (:scheduler "scheduler"))

(smithy/sdk/shapes:define-list log-types :member log-type)

(smithy/sdk/shapes:define-structure logging common-lisp:nil
                                    ((cluster-logging :target-type log-setups
                                      :member-name "clusterLogging"))
                                    (:shape-name "Logging"))

(smithy/sdk/shapes:define-structure marketplace-information common-lisp:nil
                                    ((product-id :target-type string
                                      :member-name "productId")
                                     (product-url :target-type string
                                      :member-name "productUrl"))
                                    (:shape-name "MarketplaceInformation"))

(smithy/sdk/shapes:define-structure node-repair-config common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled"))
                                    (:shape-name "NodeRepairConfig"))

(smithy/sdk/shapes:define-structure nodegroup common-lisp:nil
                                    ((nodegroup-name :target-type string
                                      :member-name "nodegroupName")
                                     (nodegroup-arn :target-type string
                                      :member-name "nodegroupArn")
                                     (cluster-name :target-type string
                                      :member-name "clusterName")
                                     (version :target-type string :member-name
                                      "version")
                                     (release-version :target-type string
                                      :member-name "releaseVersion")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type timestamp
                                      :member-name "modifiedAt")
                                     (status :target-type nodegroup-status
                                      :member-name "status")
                                     (capacity-type :target-type capacity-types
                                      :member-name "capacityType")
                                     (scaling-config :target-type
                                      nodegroup-scaling-config :member-name
                                      "scalingConfig")
                                     (instance-types :target-type string-list
                                      :member-name "instanceTypes")
                                     (subnets :target-type string-list
                                      :member-name "subnets")
                                     (remote-access :target-type
                                      remote-access-config :member-name
                                      "remoteAccess")
                                     (ami-type :target-type amitypes
                                      :member-name "amiType")
                                     (node-role :target-type string
                                      :member-name "nodeRole")
                                     (labels :target-type labels-map
                                      :member-name "labels")
                                     (taints :target-type taints-list
                                      :member-name "taints")
                                     (resources :target-type
                                      nodegroup-resources :member-name
                                      "resources")
                                     (disk-size :target-type boxed-integer
                                      :member-name "diskSize")
                                     (health :target-type nodegroup-health
                                      :member-name "health")
                                     (update-config :target-type
                                      nodegroup-update-config :member-name
                                      "updateConfig")
                                     (node-repair-config :target-type
                                      node-repair-config :member-name
                                      "nodeRepairConfig")
                                     (launch-template :target-type
                                      launch-template-specification
                                      :member-name "launchTemplate")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Nodegroup"))

(smithy/sdk/shapes:define-structure nodegroup-health common-lisp:nil
                                    ((issues :target-type issue-list
                                      :member-name "issues"))
                                    (:shape-name "NodegroupHealth"))

(smithy/sdk/shapes:define-enum nodegroup-issue-code
    common-lisp:nil
  (:auto-scaling-group-not-found "AutoScalingGroupNotFound")
  (:auto-scaling-group-invalid-configuration
   "AutoScalingGroupInvalidConfiguration")
  (:ec2-security-group-not-found "Ec2SecurityGroupNotFound")
  (:ec2-security-group-deletion-failure "Ec2SecurityGroupDeletionFailure")
  (:ec2-launch-template-not-found "Ec2LaunchTemplateNotFound")
  (:ec2-launch-template-version-mismatch "Ec2LaunchTemplateVersionMismatch")
  (:ec2-subnet-not-found "Ec2SubnetNotFound")
  (:ec2-subnet-invalid-configuration "Ec2SubnetInvalidConfiguration")
  (:iam-instance-profile-not-found "IamInstanceProfileNotFound")
  (:ec2-subnet-missing-ipv6-assignment "Ec2SubnetMissingIpv6Assignment")
  (:iam-limit-exceeded "IamLimitExceeded")
  (:iam-node-role-not-found "IamNodeRoleNotFound")
  (:node-creation-failure "NodeCreationFailure")
  (:asg-instance-launch-failures "AsgInstanceLaunchFailures")
  (:instance-limit-exceeded "InstanceLimitExceeded")
  (:insufficient-free-addresses "InsufficientFreeAddresses")
  (:access-denied "AccessDenied")
  (:internal-failure "InternalFailure")
  (:cluster-unreachable "ClusterUnreachable")
  (:ami-id-not-found "AmiIdNotFound")
  (:auto-scaling-group-opt-in-required "AutoScalingGroupOptInRequired")
  (:auto-scaling-group-rate-limit-exceeded "AutoScalingGroupRateLimitExceeded")
  (:ec2-launch-template-deletion-failure "Ec2LaunchTemplateDeletionFailure")
  (:ec2-launch-template-invalid-configuration
   "Ec2LaunchTemplateInvalidConfiguration")
  (:ec2-launch-template-max-limit-exceeded "Ec2LaunchTemplateMaxLimitExceeded")
  (:ec2-subnet-list-too-long "Ec2SubnetListTooLong")
  (:iam-throttling "IamThrottling")
  (:node-termination-failure "NodeTerminationFailure")
  (:pod-eviction-failure "PodEvictionFailure")
  (:source-ec2-launch-template-not-found "SourceEc2LaunchTemplateNotFound")
  (:limit-exceeded "LimitExceeded")
  (:unknown "Unknown")
  (:auto-scaling-group-instance-refresh-active
   "AutoScalingGroupInstanceRefreshActive")
  (:kubernetes-label-invalid "KubernetesLabelInvalid")
  (:ec2-launch-template-version-max-limit-exceeded
   "Ec2LaunchTemplateVersionMaxLimitExceeded")
  (:ec2-instance-type-does-not-exist "Ec2InstanceTypeDoesNotExist"))

(smithy/sdk/shapes:define-structure nodegroup-resources common-lisp:nil
                                    ((auto-scaling-groups :target-type
                                      auto-scaling-group-list :member-name
                                      "autoScalingGroups")
                                     (remote-access-security-group :target-type
                                      string :member-name
                                      "remoteAccessSecurityGroup"))
                                    (:shape-name "NodegroupResources"))

(smithy/sdk/shapes:define-structure nodegroup-scaling-config common-lisp:nil
                                    ((min-size :target-type zero-capacity
                                      :member-name "minSize")
                                     (max-size :target-type capacity
                                      :member-name "maxSize")
                                     (desired-size :target-type zero-capacity
                                      :member-name "desiredSize"))
                                    (:shape-name "NodegroupScalingConfig"))

(smithy/sdk/shapes:define-enum nodegroup-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:delete-failed "DELETE_FAILED")
  (:degraded "DEGRADED"))

(smithy/sdk/shapes:define-structure nodegroup-update-config common-lisp:nil
                                    ((max-unavailable :target-type
                                      non-zero-integer :member-name
                                      "maxUnavailable")
                                     (max-unavailable-percentage :target-type
                                      percent-capacity :member-name
                                      "maxUnavailablePercentage")
                                     (update-strategy :target-type
                                      nodegroup-update-strategies :member-name
                                      "updateStrategy"))
                                    (:shape-name "NodegroupUpdateConfig"))

(smithy/sdk/shapes:define-enum nodegroup-update-strategies
    common-lisp:nil
  (:default "DEFAULT")
  (:minimal "MINIMAL"))

(smithy/sdk/shapes:define-type non-zero-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404) (:base-class eks-error))

(smithy/sdk/shapes:define-structure oidc common-lisp:nil
                                    ((issuer :target-type string :member-name
                                      "issuer"))
                                    (:shape-name "OIDC"))

(smithy/sdk/shapes:define-structure oidc-identity-provider-config
                                    common-lisp:nil
                                    ((identity-provider-config-name
                                      :target-type string :member-name
                                      "identityProviderConfigName")
                                     (identity-provider-config-arn :target-type
                                      string :member-name
                                      "identityProviderConfigArn")
                                     (cluster-name :target-type string
                                      :member-name "clusterName")
                                     (issuer-url :target-type string
                                      :member-name "issuerUrl")
                                     (client-id :target-type string
                                      :member-name "clientId")
                                     (username-claim :target-type string
                                      :member-name "usernameClaim")
                                     (username-prefix :target-type string
                                      :member-name "usernamePrefix")
                                     (groups-claim :target-type string
                                      :member-name "groupsClaim")
                                     (groups-prefix :target-type string
                                      :member-name "groupsPrefix")
                                     (required-claims :target-type
                                      required-claims-map :member-name
                                      "requiredClaims")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (status :target-type config-status
                                      :member-name "status"))
                                    (:shape-name "OidcIdentityProviderConfig"))

(smithy/sdk/shapes:define-structure oidc-identity-provider-config-request
                                    common-lisp:nil
                                    ((identity-provider-config-name
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "identityProviderConfigName")
                                     (issuer-url :target-type string :required
                                      common-lisp:t :member-name "issuerUrl")
                                     (client-id :target-type string :required
                                      common-lisp:t :member-name "clientId")
                                     (username-claim :target-type string
                                      :member-name "usernameClaim")
                                     (username-prefix :target-type string
                                      :member-name "usernamePrefix")
                                     (groups-claim :target-type string
                                      :member-name "groupsClaim")
                                     (groups-prefix :target-type string
                                      :member-name "groupsPrefix")
                                     (required-claims :target-type
                                      required-claims-map :member-name
                                      "requiredClaims"))
                                    (:shape-name
                                     "OidcIdentityProviderConfigRequest"))

(smithy/sdk/shapes:define-structure outpost-config-request common-lisp:nil
                                    ((outpost-arns :target-type string-list
                                      :required common-lisp:t :member-name
                                      "outpostArns")
                                     (control-plane-instance-type :target-type
                                      string :required common-lisp:t
                                      :member-name "controlPlaneInstanceType")
                                     (control-plane-placement :target-type
                                      control-plane-placement-request
                                      :member-name "controlPlanePlacement"))
                                    (:shape-name "OutpostConfigRequest"))

(smithy/sdk/shapes:define-structure outpost-config-response common-lisp:nil
                                    ((outpost-arns :target-type string-list
                                      :required common-lisp:t :member-name
                                      "outpostArns")
                                     (control-plane-instance-type :target-type
                                      string :required common-lisp:t
                                      :member-name "controlPlaneInstanceType")
                                     (control-plane-placement :target-type
                                      control-plane-placement-response
                                      :member-name "controlPlanePlacement"))
                                    (:shape-name "OutpostConfigResponse"))

(smithy/sdk/shapes:define-type percent-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure pod-identity-association common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "clusterName")
                                     (namespace :target-type string
                                      :member-name "namespace")
                                     (service-account :target-type string
                                      :member-name "serviceAccount")
                                     (role-arn :target-type string :member-name
                                      "roleArn")
                                     (association-arn :target-type string
                                      :member-name "associationArn")
                                     (association-id :target-type string
                                      :member-name "associationId")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type timestamp
                                      :member-name "modifiedAt")
                                     (owner-arn :target-type string
                                      :member-name "ownerArn")
                                     (disable-session-tags :target-type
                                      boxed-boolean :member-name
                                      "disableSessionTags")
                                     (target-role-arn :target-type string
                                      :member-name "targetRoleArn")
                                     (external-id :target-type string
                                      :member-name "externalId"))
                                    (:shape-name "PodIdentityAssociation"))

(smithy/sdk/shapes:define-list pod-identity-association-summaries :member
                               pod-identity-association-summary)

(smithy/sdk/shapes:define-structure pod-identity-association-summary
                                    common-lisp:nil
                                    ((cluster-name :target-type string
                                      :member-name "clusterName")
                                     (namespace :target-type string
                                      :member-name "namespace")
                                     (service-account :target-type string
                                      :member-name "serviceAccount")
                                     (association-arn :target-type string
                                      :member-name "associationArn")
                                     (association-id :target-type string
                                      :member-name "associationId")
                                     (owner-arn :target-type string
                                      :member-name "ownerArn"))
                                    (:shape-name
                                     "PodIdentityAssociationSummary"))

(smithy/sdk/shapes:define-structure provider common-lisp:nil
                                    ((key-arn :target-type string :member-name
                                      "keyArn"))
                                    (:shape-name "Provider"))

(smithy/sdk/shapes:define-input register-cluster-request common-lisp:nil
                                ((name :target-type cluster-name :required
                                  common-lisp:t :member-name "name")
                                 (connector-config :target-type
                                  connector-config-request :required
                                  common-lisp:t :member-name "connectorConfig")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "RegisterClusterRequest"))

(smithy/sdk/shapes:define-output register-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "cluster"))
                                 (:shape-name "RegisterClusterResponse"))

(smithy/sdk/shapes:define-structure remote-access-config common-lisp:nil
                                    ((ec2ssh-key :target-type string
                                      :member-name "ec2SshKey")
                                     (source-security-groups :target-type
                                      string-list :member-name
                                      "sourceSecurityGroups"))
                                    (:shape-name "RemoteAccessConfig"))

(smithy/sdk/shapes:define-structure remote-network-config-request
                                    common-lisp:nil
                                    ((remote-node-networks :target-type
                                      remote-node-network-list :member-name
                                      "remoteNodeNetworks")
                                     (remote-pod-networks :target-type
                                      remote-pod-network-list :member-name
                                      "remotePodNetworks"))
                                    (:shape-name "RemoteNetworkConfigRequest"))

(smithy/sdk/shapes:define-structure remote-network-config-response
                                    common-lisp:nil
                                    ((remote-node-networks :target-type
                                      remote-node-network-list :member-name
                                      "remoteNodeNetworks")
                                     (remote-pod-networks :target-type
                                      remote-pod-network-list :member-name
                                      "remotePodNetworks"))
                                    (:shape-name "RemoteNetworkConfigResponse"))

(smithy/sdk/shapes:define-structure remote-node-network common-lisp:nil
                                    ((cidrs :target-type string-list
                                      :member-name "cidrs"))
                                    (:shape-name "RemoteNodeNetwork"))

(smithy/sdk/shapes:define-list remote-node-network-list :member
                               remote-node-network)

(smithy/sdk/shapes:define-structure remote-pod-network common-lisp:nil
                                    ((cidrs :target-type string-list
                                      :member-name "cidrs"))
                                    (:shape-name "RemotePodNetwork"))

(smithy/sdk/shapes:define-list remote-pod-network-list :member
                               remote-pod-network)

(smithy/sdk/shapes:define-enum resolve-conflicts
    common-lisp:nil
  (:overwrite "OVERWRITE")
  (:none "NONE")
  (:preserve "PRESERVE"))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (addon-name :target-type string :member-name
                                  "addonName")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409) (:base-class eks-error))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (subscription-id :target-type string
                                  :member-name "subscriptionId")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (fargate-profile-name :target-type string
                                  :member-name "fargateProfileName")
                                 (addon-name :target-type string :member-name
                                  "addonName")
                                 (subscription-id :target-type string
                                  :member-name "subscriptionId")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404) (:base-class eks-error))

(smithy/sdk/shapes:define-error resource-propagation-delay-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ResourcePropagationDelayException")
                                (:error-code 428) (:base-class eks-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error server-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (addon-name :target-type string :member-name
                                  "addonName")
                                 (subscription-id :target-type string
                                  :member-name "subscriptionId")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServerException")
                                (:error-code 500) (:base-class eks-error))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503) (:base-class eks-error))

(smithy/sdk/shapes:define-structure storage-config-request common-lisp:nil
                                    ((block-storage :target-type block-storage
                                      :member-name "blockStorage"))
                                    (:shape-name "StorageConfigRequest"))

(smithy/sdk/shapes:define-structure storage-config-response common-lisp:nil
                                    ((block-storage :target-type block-storage
                                      :member-name "blockStorage"))
                                    (:shape-name "StorageConfigResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-enum support-type
    common-lisp:nil
  (:standard "STANDARD")
  (:extended "EXTENDED"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure taint common-lisp:nil
                                    ((key :target-type taint-key :member-name
                                      "key")
                                     (value :target-type taint-value
                                      :member-name "value")
                                     (effect :target-type taint-effect
                                      :member-name "effect"))
                                    (:shape-name "Taint"))

(smithy/sdk/shapes:define-enum taint-effect
    common-lisp:nil
  (:no-schedule "NO_SCHEDULE")
  (:no-execute "NO_EXECUTE")
  (:prefer-no-schedule "PREFER_NO_SCHEDULE"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((cluster-name :target-type string :member-name
                                  "clusterName")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429) (:base-class eks-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error unsupported-availability-zone-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (cluster-name :target-type string :member-name
                                  "clusterName")
                                 (nodegroup-name :target-type string
                                  :member-name "nodegroupName")
                                 (valid-zones :target-type string-list
                                  :member-name "validZones"))
                                (:shape-name
                                 "UnsupportedAvailabilityZoneException")
                                (:error-code 400) (:base-class eks-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (status :target-type update-status
                                      :member-name "status")
                                     (type :target-type update-type
                                      :member-name "type")
                                     (params :target-type update-params
                                      :member-name "params")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (errors :target-type error-details
                                      :member-name "errors"))
                                    (:shape-name "Update"))

(smithy/sdk/shapes:define-structure update-access-config-request
                                    common-lisp:nil
                                    ((authentication-mode :target-type
                                      authentication-mode :member-name
                                      "authenticationMode"))
                                    (:shape-name "UpdateAccessConfigRequest"))

(smithy/sdk/shapes:define-input update-access-entry-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (principal-arn :target-type string :required
                                  common-lisp:t :member-name "principalArn"
                                  :http-label common-lisp:t)
                                 (kubernetes-groups :target-type string-list
                                  :member-name "kubernetesGroups")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (username :target-type string :member-name
                                  "username"))
                                (:shape-name "UpdateAccessEntryRequest"))

(smithy/sdk/shapes:define-output update-access-entry-response common-lisp:nil
                                 ((access-entry :target-type access-entry
                                   :member-name "accessEntry"))
                                 (:shape-name "UpdateAccessEntryResponse"))

(smithy/sdk/shapes:define-input update-addon-request common-lisp:nil
                                ((cluster-name :target-type cluster-name
                                  :required common-lisp:t :member-name
                                  "clusterName" :http-label common-lisp:t)
                                 (addon-name :target-type string :required
                                  common-lisp:t :member-name "addonName"
                                  :http-label common-lisp:t)
                                 (addon-version :target-type string
                                  :member-name "addonVersion")
                                 (service-account-role-arn :target-type
                                  role-arn :member-name
                                  "serviceAccountRoleArn")
                                 (resolve-conflicts :target-type
                                  resolve-conflicts :member-name
                                  "resolveConflicts")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (configuration-values :target-type string
                                  :member-name "configurationValues")
                                 (pod-identity-associations :target-type
                                  addon-pod-identity-associations-list
                                  :member-name "podIdentityAssociations"))
                                (:shape-name "UpdateAddonRequest"))

(smithy/sdk/shapes:define-output update-addon-response common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name "UpdateAddonResponse"))

(smithy/sdk/shapes:define-input update-cluster-config-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (resources-vpc-config :target-type
                                  vpc-config-request :member-name
                                  "resourcesVpcConfig")
                                 (logging :target-type logging :member-name
                                  "logging")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (access-config :target-type
                                  update-access-config-request :member-name
                                  "accessConfig")
                                 (upgrade-policy :target-type
                                  upgrade-policy-request :member-name
                                  "upgradePolicy")
                                 (zonal-shift-config :target-type
                                  zonal-shift-config-request :member-name
                                  "zonalShiftConfig")
                                 (compute-config :target-type
                                  compute-config-request :member-name
                                  "computeConfig")
                                 (kubernetes-network-config :target-type
                                  kubernetes-network-config-request
                                  :member-name "kubernetesNetworkConfig")
                                 (storage-config :target-type
                                  storage-config-request :member-name
                                  "storageConfig")
                                 (remote-network-config :target-type
                                  remote-network-config-request :member-name
                                  "remoteNetworkConfig")
                                 (deletion-protection :target-type
                                  boxed-boolean :member-name
                                  "deletionProtection"))
                                (:shape-name "UpdateClusterConfigRequest"))

(smithy/sdk/shapes:define-output update-cluster-config-response common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name "UpdateClusterConfigResponse"))

(smithy/sdk/shapes:define-input update-cluster-version-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version :target-type string :required
                                  common-lisp:t :member-name "version")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (force :target-type boolean :member-name
                                  "force"))
                                (:shape-name "UpdateClusterVersionRequest"))

(smithy/sdk/shapes:define-output update-cluster-version-response
                                 common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name "UpdateClusterVersionResponse"))

(smithy/sdk/shapes:define-input update-eks-anywhere-subscription-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (auto-renew :target-type boolean :required
                                  common-lisp:t :member-name "autoRenew")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken"))
                                (:shape-name
                                 "UpdateEksAnywhereSubscriptionRequest"))

(smithy/sdk/shapes:define-output update-eks-anywhere-subscription-response
                                 common-lisp:nil
                                 ((subscription :target-type
                                   eks-anywhere-subscription :member-name
                                   "subscription"))
                                 (:shape-name
                                  "UpdateEksAnywhereSubscriptionResponse"))

(smithy/sdk/shapes:define-structure update-labels-payload common-lisp:nil
                                    ((add-or-update-labels :target-type
                                      labels-map :member-name
                                      "addOrUpdateLabels")
                                     (remove-labels :target-type
                                      labels-key-list :member-name
                                      "removeLabels"))
                                    (:shape-name "UpdateLabelsPayload"))

(smithy/sdk/shapes:define-input update-nodegroup-config-request common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (nodegroup-name :target-type string :required
                                  common-lisp:t :member-name "nodegroupName"
                                  :http-label common-lisp:t)
                                 (labels :target-type update-labels-payload
                                  :member-name "labels")
                                 (taints :target-type update-taints-payload
                                  :member-name "taints")
                                 (scaling-config :target-type
                                  nodegroup-scaling-config :member-name
                                  "scalingConfig")
                                 (update-config :target-type
                                  nodegroup-update-config :member-name
                                  "updateConfig")
                                 (node-repair-config :target-type
                                  node-repair-config :member-name
                                  "nodeRepairConfig")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken"))
                                (:shape-name "UpdateNodegroupConfigRequest"))

(smithy/sdk/shapes:define-output update-nodegroup-config-response
                                 common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name "UpdateNodegroupConfigResponse"))

(smithy/sdk/shapes:define-input update-nodegroup-version-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (nodegroup-name :target-type string :required
                                  common-lisp:t :member-name "nodegroupName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "version")
                                 (release-version :target-type string
                                  :member-name "releaseVersion")
                                 (launch-template :target-type
                                  launch-template-specification :member-name
                                  "launchTemplate")
                                 (force :target-type boolean :member-name
                                  "force")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken"))
                                (:shape-name "UpdateNodegroupVersionRequest"))

(smithy/sdk/shapes:define-output update-nodegroup-version-response
                                 common-lisp:nil
                                 ((update :target-type update :member-name
                                   "update"))
                                 (:shape-name "UpdateNodegroupVersionResponse"))

(smithy/sdk/shapes:define-structure update-param common-lisp:nil
                                    ((type :target-type update-param-type
                                      :member-name "type")
                                     (value :target-type string :member-name
                                      "value"))
                                    (:shape-name "UpdateParam"))

(smithy/sdk/shapes:define-enum update-param-type
    common-lisp:nil
  (:version "Version")
  (:platform-version "PlatformVersion")
  (:endpoint-private-access "EndpointPrivateAccess")
  (:endpoint-public-access "EndpointPublicAccess")
  (:cluster-logging "ClusterLogging")
  (:desired-size "DesiredSize")
  (:labels-to-add "LabelsToAdd")
  (:labels-to-remove "LabelsToRemove")
  (:taints-to-add "TaintsToAdd")
  (:taints-to-remove "TaintsToRemove")
  (:max-size "MaxSize")
  (:min-size "MinSize")
  (:release-version "ReleaseVersion")
  (:public-access-cidrs "PublicAccessCidrs")
  (:launch-template-name "LaunchTemplateName")
  (:launch-template-version "LaunchTemplateVersion")
  (:identity-provider-config "IdentityProviderConfig")
  (:encryption-config "EncryptionConfig")
  (:addon-version "AddonVersion")
  (:service-account-role-arn "ServiceAccountRoleArn")
  (:resolve-conflicts "ResolveConflicts")
  (:max-unavailable "MaxUnavailable")
  (:max-unavailable-percentage "MaxUnavailablePercentage")
  (:node-repair-enabled "NodeRepairEnabled")
  (:update-strategy "UpdateStrategy")
  (:configuration-values "ConfigurationValues")
  (:security-groups "SecurityGroups")
  (:subnets "Subnets")
  (:authentication-mode "AuthenticationMode")
  (:pod-identity-associations "PodIdentityAssociations")
  (:upgrade-policy "UpgradePolicy")
  (:zonal-shift-config "ZonalShiftConfig")
  (:compute-config "ComputeConfig")
  (:storage-config "StorageConfig")
  (:kubernetes-network-config "KubernetesNetworkConfig")
  (:remote-network-config "RemoteNetworkConfig")
  (:deletion-protection "DeletionProtection"))

(smithy/sdk/shapes:define-list update-params :member update-param)

(smithy/sdk/shapes:define-input update-pod-identity-association-request
                                common-lisp:nil
                                ((cluster-name :target-type string :required
                                  common-lisp:t :member-name "clusterName"
                                  :http-label common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type string :member-name
                                  "roleArn")
                                 (client-request-token :target-type string
                                  :member-name "clientRequestToken")
                                 (disable-session-tags :target-type
                                  boxed-boolean :member-name
                                  "disableSessionTags")
                                 (target-role-arn :target-type string
                                  :member-name "targetRoleArn"))
                                (:shape-name
                                 "UpdatePodIdentityAssociationRequest"))

(smithy/sdk/shapes:define-output update-pod-identity-association-response
                                 common-lisp:nil
                                 ((association :target-type
                                   pod-identity-association :member-name
                                   "association"))
                                 (:shape-name
                                  "UpdatePodIdentityAssociationResponse"))

(smithy/sdk/shapes:define-enum update-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:failed "Failed")
  (:cancelled "Cancelled")
  (:successful "Successful"))

(smithy/sdk/shapes:define-structure update-taints-payload common-lisp:nil
                                    ((add-or-update-taints :target-type
                                      taints-list :member-name
                                      "addOrUpdateTaints")
                                     (remove-taints :target-type taints-list
                                      :member-name "removeTaints"))
                                    (:shape-name "UpdateTaintsPayload"))

(smithy/sdk/shapes:define-enum update-type
    common-lisp:nil
  (:version-update "VersionUpdate")
  (:endpoint-access-update "EndpointAccessUpdate")
  (:logging-update "LoggingUpdate")
  (:config-update "ConfigUpdate")
  (:associate-identity-provider-config "AssociateIdentityProviderConfig")
  (:disassociate-identity-provider-config "DisassociateIdentityProviderConfig")
  (:associate-encryption-config "AssociateEncryptionConfig")
  (:addon-update "AddonUpdate")
  (:vpc-config-update "VpcConfigUpdate")
  (:access-config-update "AccessConfigUpdate")
  (:upgrade-policy-update "UpgradePolicyUpdate")
  (:zonal-shift-config-update "ZonalShiftConfigUpdate")
  (:auto-mode-update "AutoModeUpdate")
  (:remote-network-config-update "RemoteNetworkConfigUpdate")
  (:deletion-protection-update "DeletionProtectionUpdate"))

(smithy/sdk/shapes:define-structure upgrade-policy-request common-lisp:nil
                                    ((support-type :target-type support-type
                                      :member-name "supportType"))
                                    (:shape-name "UpgradePolicyRequest"))

(smithy/sdk/shapes:define-structure upgrade-policy-response common-lisp:nil
                                    ((support-type :target-type support-type
                                      :member-name "supportType"))
                                    (:shape-name "UpgradePolicyResponse"))

(smithy/sdk/shapes:define-enum version-status
    common-lisp:nil
  (:unsupported "UNSUPPORTED")
  (:standard-support "STANDARD_SUPPORT")
  (:extended-support "EXTENDED_SUPPORT"))

(smithy/sdk/shapes:define-structure vpc-config-request common-lisp:nil
                                    ((subnet-ids :target-type string-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      string-list :member-name
                                      "securityGroupIds")
                                     (endpoint-public-access :target-type
                                      boxed-boolean :member-name
                                      "endpointPublicAccess")
                                     (endpoint-private-access :target-type
                                      boxed-boolean :member-name
                                      "endpointPrivateAccess")
                                     (public-access-cidrs :target-type
                                      string-list :member-name
                                      "publicAccessCidrs"))
                                    (:shape-name "VpcConfigRequest"))

(smithy/sdk/shapes:define-structure vpc-config-response common-lisp:nil
                                    ((subnet-ids :target-type string-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      string-list :member-name
                                      "securityGroupIds")
                                     (cluster-security-group-id :target-type
                                      string :member-name
                                      "clusterSecurityGroupId")
                                     (vpc-id :target-type string :member-name
                                      "vpcId")
                                     (endpoint-public-access :target-type
                                      boolean :member-name
                                      "endpointPublicAccess")
                                     (endpoint-private-access :target-type
                                      boolean :member-name
                                      "endpointPrivateAccess")
                                     (public-access-cidrs :target-type
                                      string-list :member-name
                                      "publicAccessCidrs"))
                                    (:shape-name "VpcConfigResponse"))

(smithy/sdk/shapes:define-type zero-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure zonal-shift-config-request common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled"))
                                    (:shape-name "ZonalShiftConfigRequest"))

(smithy/sdk/shapes:define-structure zonal-shift-config-response common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :member-name "enabled"))
                                    (:shape-name "ZonalShiftConfigResponse"))

(smithy/sdk/shapes:define-enum config-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-type label-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list labels-key-list :member string)

(smithy/sdk/shapes:define-map labels-map :key label-key :value label-value)

(smithy/sdk/shapes:define-type required-claims-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map required-claims-map :key required-claims-key
                              :value required-claims-value)

(smithy/sdk/shapes:define-type required-claims-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taint-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taint-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list taints-list :member taint)

(smithy/sdk/operation:define-operation associate-access-policy :shape-name
                                       "AssociateAccessPolicy" :input
                                       associate-access-policy-request :output
                                       associate-access-policy-response :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/access-entries/{principalArn}/access-policies"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-encryption-config :shape-name
                                       "AssociateEncryptionConfig" :input
                                       associate-encryption-config-request
                                       :output
                                       associate-encryption-config-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception throttling-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/encryption-config/associate"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-identity-provider-config
                                       :shape-name
                                       "AssociateIdentityProviderConfig" :input
                                       associate-identity-provider-config-request
                                       :output
                                       associate-identity-provider-config-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception throttling-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/identity-provider-configs/associate"
                                       :code 200)

(smithy/sdk/operation:define-operation create-access-entry :shape-name
                                       "CreateAccessEntry" :input
                                       create-access-entry-request :output
                                       create-access-entry-response :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/access-entries"
                                       :code 200)

(smithy/sdk/operation:define-operation create-addon :shape-name "CreateAddon"
                                       :input create-addon-request :output
                                       create-addon-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/addons" :code
                                       200)

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        server-exception
                                        service-unavailable-exception
                                        unsupported-availability-zone-exception)
                                       :method "POST" :uri "/clusters" :code
                                       200)

(smithy/sdk/operation:define-operation create-eks-anywhere-subscription
                                       :shape-name
                                       "CreateEksAnywhereSubscription" :input
                                       create-eks-anywhere-subscription-request
                                       :output
                                       create-eks-anywhere-subscription-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-limit-exceeded-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/eks-anywhere-subscriptions" :code 200)

(smithy/sdk/operation:define-operation create-fargate-profile :shape-name
                                       "CreateFargateProfile" :input
                                       create-fargate-profile-request :output
                                       create-fargate-profile-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-limit-exceeded-exception
                                        server-exception
                                        unsupported-availability-zone-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/fargate-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation create-nodegroup :shape-name
                                       "CreateNodegroup" :input
                                       create-nodegroup-request :output
                                       create-nodegroup-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/node-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation create-pod-identity-association
                                       :shape-name
                                       "CreatePodIdentityAssociation" :input
                                       create-pod-identity-association-request
                                       :output
                                       create-pod-identity-association-response
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/pod-identity-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-access-entry :shape-name
                                       "DeleteAccessEntry" :input
                                       delete-access-entry-request :output
                                       delete-access-entry-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "DELETE" :uri
                                       "/clusters/{clusterName}/access-entries/{principalArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-addon :shape-name "DeleteAddon"
                                       :input delete-addon-request :output
                                       delete-addon-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "DELETE" :uri
                                       "/clusters/{clusterName}/addons/{addonName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (client-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri "/clusters/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-eks-anywhere-subscription
                                       :shape-name
                                       "DeleteEksAnywhereSubscription" :input
                                       delete-eks-anywhere-subscription-request
                                       :output
                                       delete-eks-anywhere-subscription-response
                                       :errors
                                       (client-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "DELETE" :uri
                                       "/eks-anywhere-subscriptions/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-fargate-profile :shape-name
                                       "DeleteFargateProfile" :input
                                       delete-fargate-profile-request :output
                                       delete-fargate-profile-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "DELETE" :uri
                                       "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-nodegroup :shape-name
                                       "DeleteNodegroup" :input
                                       delete-nodegroup-request :output
                                       delete-nodegroup-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/clusters/{clusterName}/node-groups/{nodegroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-pod-identity-association
                                       :shape-name
                                       "DeletePodIdentityAssociation" :input
                                       delete-pod-identity-association-request
                                       :output
                                       delete-pod-identity-association-response
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "DELETE" :uri
                                       "/clusters/{clusterName}/pod-identity-associations/{associationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-cluster :shape-name
                                       "DeregisterCluster" :input
                                       deregister-cluster-request :output
                                       deregister-cluster-response :errors
                                       (access-denied-exception
                                        client-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/cluster-registrations/{name}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-access-entry :shape-name
                                       "DescribeAccessEntry" :input
                                       describe-access-entry-request :output
                                       describe-access-entry-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/access-entries/{principalArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-addon :shape-name
                                       "DescribeAddon" :input
                                       describe-addon-request :output
                                       describe-addon-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/addons/{addonName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-addon-configuration :shape-name
                                       "DescribeAddonConfiguration" :input
                                       describe-addon-configuration-request
                                       :output
                                       describe-addon-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/addons/configuration-schemas" :code
                                       200)

(smithy/sdk/operation:define-operation describe-addon-versions :shape-name
                                       "DescribeAddonVersions" :input
                                       describe-addon-versions-request :output
                                       describe-addon-versions-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/addons/supported-versions" :code 200)

(smithy/sdk/operation:define-operation describe-cluster :shape-name
                                       "DescribeCluster" :input
                                       describe-cluster-request :output
                                       describe-cluster-response :errors
                                       (client-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/clusters/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-cluster-versions :shape-name
                                       "DescribeClusterVersions" :input
                                       describe-cluster-versions-request
                                       :output
                                       describe-cluster-versions-response
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        server-exception)
                                       :method "GET" :uri "/cluster-versions"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-eks-anywhere-subscription
                                       :shape-name
                                       "DescribeEksAnywhereSubscription" :input
                                       describe-eks-anywhere-subscription-request
                                       :output
                                       describe-eks-anywhere-subscription-response
                                       :errors
                                       (client-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/eks-anywhere-subscriptions/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-fargate-profile :shape-name
                                       "DescribeFargateProfile" :input
                                       describe-fargate-profile-request :output
                                       describe-fargate-profile-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/fargate-profiles/{fargateProfileName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-identity-provider-config
                                       :shape-name
                                       "DescribeIdentityProviderConfig" :input
                                       describe-identity-provider-config-request
                                       :output
                                       describe-identity-provider-config-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/identity-provider-configs/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-insight :shape-name
                                       "DescribeInsight" :input
                                       describe-insight-request :output
                                       describe-insight-response :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/insights/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-nodegroup :shape-name
                                       "DescribeNodegroup" :input
                                       describe-nodegroup-request :output
                                       describe-nodegroup-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/node-groups/{nodegroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-pod-identity-association
                                       :shape-name
                                       "DescribePodIdentityAssociation" :input
                                       describe-pod-identity-association-request
                                       :output
                                       describe-pod-identity-association-response
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/pod-identity-associations/{associationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-update :shape-name
                                       "DescribeUpdate" :input
                                       describe-update-request :output
                                       describe-update-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{name}/updates/{updateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-access-policy :shape-name
                                       "DisassociateAccessPolicy" :input
                                       disassociate-access-policy-request
                                       :output
                                       disassociate-access-policy-response
                                       :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "DELETE" :uri
                                       "/clusters/{clusterName}/access-entries/{principalArn}/access-policies/{policyArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-identity-provider-config
                                       :shape-name
                                       "DisassociateIdentityProviderConfig"
                                       :input
                                       disassociate-identity-provider-config-request
                                       :output
                                       disassociate-identity-provider-config-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception throttling-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/identity-provider-configs/disassociate"
                                       :code 200)

(smithy/sdk/operation:define-operation list-access-entries :shape-name
                                       "ListAccessEntries" :input
                                       list-access-entries-request :output
                                       list-access-entries-response :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/access-entries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-access-policies :shape-name
                                       "ListAccessPolicies" :input
                                       list-access-policies-request :output
                                       list-access-policies-response :errors
                                       (server-exception) :method "GET" :uri
                                       "/access-policies" :code 200)

(smithy/sdk/operation:define-operation list-addons :shape-name "ListAddons"
                                       :input list-addons-request :output
                                       list-addons-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/addons" :code
                                       200)

(smithy/sdk/operation:define-operation list-associated-access-policies
                                       :shape-name
                                       "ListAssociatedAccessPolicies" :input
                                       list-associated-access-policies-request
                                       :output
                                       list-associated-access-policies-response
                                       :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/access-entries/{principalArn}/access-policies"
                                       :code 200)

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/clusters" :code 200)

(smithy/sdk/operation:define-operation list-eks-anywhere-subscriptions
                                       :shape-name
                                       "ListEksAnywhereSubscriptions" :input
                                       list-eks-anywhere-subscriptions-request
                                       :output
                                       list-eks-anywhere-subscriptions-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/eks-anywhere-subscriptions" :code 200)

(smithy/sdk/operation:define-operation list-fargate-profiles :shape-name
                                       "ListFargateProfiles" :input
                                       list-fargate-profiles-request :output
                                       list-fargate-profiles-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/fargate-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-identity-provider-configs
                                       :shape-name
                                       "ListIdentityProviderConfigs" :input
                                       list-identity-provider-configs-request
                                       :output
                                       list-identity-provider-configs-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/identity-provider-configs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-insights :shape-name "ListInsights"
                                       :input list-insights-request :output
                                       list-insights-response :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/insights" :code
                                       200)

(smithy/sdk/operation:define-operation list-nodegroups :shape-name
                                       "ListNodegroups" :input
                                       list-nodegroups-request :output
                                       list-nodegroups-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/node-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-pod-identity-associations
                                       :shape-name
                                       "ListPodIdentityAssociations" :input
                                       list-pod-identity-associations-request
                                       :output
                                       list-pod-identity-associations-response
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{clusterName}/pod-identity-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-updates :shape-name "ListUpdates"
                                       :input list-updates-request :output
                                       list-updates-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "GET" :uri
                                       "/clusters/{name}/updates" :code 200)

(smithy/sdk/operation:define-operation register-cluster :shape-name
                                       "RegisterCluster" :input
                                       register-cluster-request :output
                                       register-cluster-response :errors
                                       (access-denied-exception
                                        client-exception
                                        invalid-parameter-exception
                                        resource-in-use-exception
                                        resource-limit-exceeded-exception
                                        resource-propagation-delay-exception
                                        server-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/cluster-registrations" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-access-entry :shape-name
                                       "UpdateAccessEntry" :input
                                       update-access-entry-request :output
                                       update-access-entry-response :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/access-entries/{principalArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-addon :shape-name "UpdateAddon"
                                       :input update-addon-request :output
                                       update-addon-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/addons/{addonName}/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-cluster-config :shape-name
                                       "UpdateClusterConfig" :input
                                       update-cluster-config-request :output
                                       update-cluster-config-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception throttling-exception)
                                       :method "POST" :uri
                                       "/clusters/{name}/update-config" :code
                                       200)

(smithy/sdk/operation:define-operation update-cluster-version :shape-name
                                       "UpdateClusterVersion" :input
                                       update-cluster-version-request :output
                                       update-cluster-version-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        invalid-state-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception throttling-exception)
                                       :method "POST" :uri
                                       "/clusters/{name}/updates" :code 200)

(smithy/sdk/operation:define-operation update-eks-anywhere-subscription
                                       :shape-name
                                       "UpdateEksAnywhereSubscription" :input
                                       update-eks-anywhere-subscription-request
                                       :output
                                       update-eks-anywhere-subscription-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/eks-anywhere-subscriptions/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation update-nodegroup-config :shape-name
                                       "UpdateNodegroupConfig" :input
                                       update-nodegroup-config-request :output
                                       update-nodegroup-config-response :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/node-groups/{nodegroupName}/update-config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-nodegroup-version :shape-name
                                       "UpdateNodegroupVersion" :input
                                       update-nodegroup-version-request :output
                                       update-nodegroup-version-response
                                       :errors
                                       (client-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/node-groups/{nodegroupName}/update-version"
                                       :code 200)

(smithy/sdk/operation:define-operation update-pod-identity-association
                                       :shape-name
                                       "UpdatePodIdentityAssociation" :input
                                       update-pod-identity-association-request
                                       :output
                                       update-pod-identity-association-response
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        server-exception)
                                       :method "POST" :uri
                                       "/clusters/{clusterName}/pod-identity-associations/{associationId}"
                                       :code 200)
