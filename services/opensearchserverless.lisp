(uiop/package:define-package #:pira/opensearchserverless (:use)
                             (:export #:access-policy #:access-policy-detail
                              #:access-policy-stats #:access-policy-summaries
                              #:access-policy-summary #:access-policy-type
                              #:account-settings-detail #:arn
                              #:batch-get-collection
                              #:batch-get-collection-request
                              #:batch-get-collection-response
                              #:batch-get-effective-lifecycle-policy
                              #:batch-get-lifecycle-policy
                              #:batch-get-vpc-endpoint
                              #:batch-get-vpc-endpoint-request
                              #:batch-get-vpc-endpoint-response
                              #:capacity-limits #:client-token #:collection
                              #:collection-detail #:collection-details
                              #:collection-error-detail
                              #:collection-error-details #:collection-filters
                              #:collection-id #:collection-ids
                              #:collection-name #:collection-names
                              #:collection-status #:collection-summaries
                              #:collection-summary #:collection-type
                              #:config-description #:config-name
                              #:conflict-exception #:create-access-policy
                              #:create-access-policy-request
                              #:create-access-policy-response
                              #:create-collection #:create-collection-detail
                              #:create-collection-request
                              #:create-collection-response
                              #:create-iam-identity-center-config-options
                              #:create-lifecycle-policy
                              #:create-security-config
                              #:create-security-config-request
                              #:create-security-config-response
                              #:create-security-policy
                              #:create-security-policy-request
                              #:create-security-policy-response
                              #:create-vpc-endpoint
                              #:create-vpc-endpoint-detail
                              #:create-vpc-endpoint-request
                              #:create-vpc-endpoint-response
                              #:delete-access-policy
                              #:delete-access-policy-request
                              #:delete-access-policy-response
                              #:delete-collection #:delete-collection-detail
                              #:delete-collection-request
                              #:delete-collection-response
                              #:delete-lifecycle-policy
                              #:delete-security-config
                              #:delete-security-config-request
                              #:delete-security-config-response
                              #:delete-security-policy
                              #:delete-security-policy-request
                              #:delete-security-policy-response
                              #:delete-vpc-endpoint
                              #:delete-vpc-endpoint-detail
                              #:delete-vpc-endpoint-request
                              #:delete-vpc-endpoint-response
                              #:effective-lifecycle-policy-detail
                              #:effective-lifecycle-policy-details
                              #:effective-lifecycle-policy-error-detail
                              #:effective-lifecycle-policy-error-details
                              #:get-access-policy #:get-access-policy-request
                              #:get-access-policy-response
                              #:get-account-settings
                              #:get-account-settings-request
                              #:get-account-settings-response
                              #:get-policies-stats #:get-policies-stats-request
                              #:get-policies-stats-response
                              #:get-security-config
                              #:get-security-config-request
                              #:get-security-config-response
                              #:get-security-policy
                              #:get-security-policy-request
                              #:get-security-policy-response
                              #:iam-federation-config-options
                              #:iam-identity-center-application-arn
                              #:iam-identity-center-config-options
                              #:iam-identity-center-group-attribute
                              #:iam-identity-center-instance-arn
                              #:iam-identity-center-user-attribute
                              #:indexing-capacity-value
                              #:internal-server-exception #:lifecycle-policy
                              #:lifecycle-policy-detail
                              #:lifecycle-policy-details
                              #:lifecycle-policy-error-detail
                              #:lifecycle-policy-error-details
                              #:lifecycle-policy-identifier
                              #:lifecycle-policy-identifiers
                              #:lifecycle-policy-resource-identifier
                              #:lifecycle-policy-resource-identifiers
                              #:lifecycle-policy-stats
                              #:lifecycle-policy-summaries
                              #:lifecycle-policy-summary
                              #:lifecycle-policy-type #:lifecycle-resource
                              #:lifecycle-resource-filter
                              #:list-access-policies
                              #:list-access-policies-request
                              #:list-access-policies-response
                              #:list-collections #:list-collections-request
                              #:list-collections-response
                              #:list-lifecycle-policies #:list-security-configs
                              #:list-security-configs-request
                              #:list-security-configs-response
                              #:list-security-policies
                              #:list-security-policies-request
                              #:list-security-policies-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-vpc-endpoints #:list-vpc-endpoints-request
                              #:list-vpc-endpoints-response
                              #:ocu-limit-exceeded-exception
                              #:open-search-serverless #:policy-description
                              #:policy-document #:policy-name #:policy-version
                              #:resource #:resource-filter #:resource-name
                              #:resource-not-found-exception #:resource-type
                              #:saml-config-options #:search-capacity-value
                              #:security-config #:security-config-detail
                              #:security-config-id #:security-config-stats
                              #:security-config-summaries
                              #:security-config-summary #:security-config-type
                              #:security-group-id #:security-group-ids
                              #:security-policy #:security-policy-detail
                              #:security-policy-stats
                              #:security-policy-summaries
                              #:security-policy-summary #:security-policy-type
                              #:service-quota-exceeded-exception
                              #:standby-replicas #:subnet-id #:subnet-ids #:tag
                              #:tag-key #:tag-keys #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-access-policy
                              #:update-access-policy-request
                              #:update-access-policy-response
                              #:update-account-settings
                              #:update-account-settings-request
                              #:update-account-settings-response
                              #:update-collection #:update-collection-detail
                              #:update-collection-request
                              #:update-collection-response
                              #:update-iam-identity-center-config-options
                              #:update-lifecycle-policy
                              #:update-security-config
                              #:update-security-config-request
                              #:update-security-config-response
                              #:update-security-policy
                              #:update-security-policy-request
                              #:update-security-policy-response
                              #:update-vpc-endpoint
                              #:update-vpc-endpoint-detail
                              #:update-vpc-endpoint-request
                              #:update-vpc-endpoint-response
                              #:validation-exception #:vpc-endpoint
                              #:vpc-endpoint-detail #:vpc-endpoint-details
                              #:vpc-endpoint-error-detail
                              #:vpc-endpoint-error-details
                              #:vpc-endpoint-filters #:vpc-endpoint-id
                              #:vpc-endpoint-ids #:vpc-endpoint-name
                              #:vpc-endpoint-status #:vpc-endpoint-summaries
                              #:vpc-endpoint-summary #:vpc-id
                              #:iam-federation-group-attribute
                              #:iam-federation-user-attribute
                              #:open-search-serverless-entity-id
                              #:saml-group-attribute #:saml-metadata
                              #:saml-user-attribute
                              #:opensearchserverless-error))
(common-lisp:in-package #:pira/opensearchserverless)

(common-lisp:define-condition opensearchserverless-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service open-search-serverless :shape-name
                                   "OpenSearchServerless" :version "2021-11-01"
                                   :title "OpenSearch Service Serverless"
                                   :operations
                                   '(batch-get-collection
                                     batch-get-effective-lifecycle-policy
                                     batch-get-lifecycle-policy
                                     batch-get-vpc-endpoint
                                     create-lifecycle-policy
                                     create-security-policy
                                     get-account-settings get-policies-stats
                                     list-tags-for-resource tag-resource
                                     untag-resource update-account-settings
                                     update-vpc-endpoint)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "OpenSearchServerless")
                                      ("arnNamespace" . "aoss"))
                                     ("aws.auth#sigv4" ("name" . "aoss"))
                                     ("aws.protocols#awsJson1_0")))

common-lisp:nil

(smithy/sdk/shapes:define-structure access-policy-detail common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (policy-version :target-type
                                      policy-version :member-name
                                      "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "policy")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "AccessPolicyDetail"))

(smithy/sdk/shapes:define-structure access-policy-stats common-lisp:nil
                                    ((data-policy-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "DataPolicyCount"))
                                    (:shape-name "AccessPolicyStats"))

(smithy/sdk/shapes:define-list access-policy-summaries :member
                               access-policy-summary)

(smithy/sdk/shapes:define-structure access-policy-summary common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (policy-version :target-type
                                      policy-version :member-name
                                      "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "AccessPolicySummary"))

(smithy/sdk/shapes:define-type access-policy-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-settings-detail common-lisp:nil
                                    ((capacity-limits :target-type
                                      capacity-limits :member-name
                                      "capacityLimits"))
                                    (:shape-name "AccountSettingsDetail"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-get-collection-request
                                    common-lisp:nil
                                    ((ids :target-type collection-ids
                                      :member-name "ids")
                                     (names :target-type collection-names
                                      :member-name "names"))
                                    (:shape-name "BatchGetCollectionRequest"))

(smithy/sdk/shapes:define-structure batch-get-collection-response
                                    common-lisp:nil
                                    ((collection-details :target-type
                                      collection-details :member-name
                                      "collectionDetails")
                                     (collection-error-details :target-type
                                      collection-error-details :member-name
                                      "collectionErrorDetails"))
                                    (:shape-name "BatchGetCollectionResponse"))

(smithy/sdk/shapes:define-input batch-get-effective-lifecycle-policy-request
                                common-lisp:nil
                                ((resource-identifiers :target-type
                                  lifecycle-policy-resource-identifiers
                                  :required common-lisp:t :member-name
                                  "resourceIdentifiers"))
                                (:shape-name
                                 "BatchGetEffectiveLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output batch-get-effective-lifecycle-policy-response
                                 common-lisp:nil
                                 ((effective-lifecycle-policy-details
                                   :target-type
                                   effective-lifecycle-policy-details
                                   :member-name
                                   "effectiveLifecyclePolicyDetails")
                                  (effective-lifecycle-policy-error-details
                                   :target-type
                                   effective-lifecycle-policy-error-details
                                   :member-name
                                   "effectiveLifecyclePolicyErrorDetails"))
                                 (:shape-name
                                  "BatchGetEffectiveLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input batch-get-lifecycle-policy-request
                                common-lisp:nil
                                ((identifiers :target-type
                                  lifecycle-policy-identifiers :required
                                  common-lisp:t :member-name "identifiers"))
                                (:shape-name "BatchGetLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output batch-get-lifecycle-policy-response
                                 common-lisp:nil
                                 ((lifecycle-policy-details :target-type
                                   lifecycle-policy-details :member-name
                                   "lifecyclePolicyDetails")
                                  (lifecycle-policy-error-details :target-type
                                   lifecycle-policy-error-details :member-name
                                   "lifecyclePolicyErrorDetails"))
                                 (:shape-name
                                  "BatchGetLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-structure batch-get-vpc-endpoint-request
                                    common-lisp:nil
                                    ((ids :target-type vpc-endpoint-ids
                                      :required common-lisp:t :member-name
                                      "ids"))
                                    (:shape-name "BatchGetVpcEndpointRequest"))

(smithy/sdk/shapes:define-structure batch-get-vpc-endpoint-response
                                    common-lisp:nil
                                    ((vpc-endpoint-details :target-type
                                      vpc-endpoint-details :member-name
                                      "vpcEndpointDetails")
                                     (vpc-endpoint-error-details :target-type
                                      vpc-endpoint-error-details :member-name
                                      "vpcEndpointErrorDetails"))
                                    (:shape-name "BatchGetVpcEndpointResponse"))

(smithy/sdk/shapes:define-structure capacity-limits common-lisp:nil
                                    ((max-indexing-capacity-in-ocu :target-type
                                      indexing-capacity-value :member-name
                                      "maxIndexingCapacityInOCU")
                                     (max-search-capacity-in-ocu :target-type
                                      search-capacity-value :member-name
                                      "maxSearchCapacityInOCU"))
                                    (:shape-name "CapacityLimits"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure collection-detail common-lisp:nil
                                    ((id :target-type collection-id
                                      :member-name "id")
                                     (name :target-type collection-name
                                      :member-name "name")
                                     (status :target-type collection-status
                                      :member-name "status")
                                     (type :target-type collection-type
                                      :member-name "type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (kms-key-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyArn")
                                     (standby-replicas :target-type
                                      standby-replicas :member-name
                                      "standbyReplicas")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate")
                                     (collection-endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "collectionEndpoint")
                                     (dashboard-endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dashboardEndpoint")
                                     (failure-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureCode")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage"))
                                    (:shape-name "CollectionDetail"))

(smithy/sdk/shapes:define-list collection-details :member collection-detail)

(smithy/sdk/shapes:define-structure collection-error-detail common-lisp:nil
                                    ((id :target-type collection-id
                                      :member-name "id")
                                     (name :target-type collection-name
                                      :member-name "name")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorCode"))
                                    (:shape-name "CollectionErrorDetail"))

(smithy/sdk/shapes:define-list collection-error-details :member
                               collection-error-detail)

(smithy/sdk/shapes:define-structure collection-filters common-lisp:nil
                                    ((name :target-type collection-name
                                      :member-name "name")
                                     (status :target-type collection-status
                                      :member-name "status"))
                                    (:shape-name "CollectionFilters"))

(smithy/sdk/shapes:define-type collection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list collection-ids :member collection-id)

(smithy/sdk/shapes:define-type collection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list collection-names :member collection-name)

(smithy/sdk/shapes:define-type collection-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list collection-summaries :member collection-summary)

(smithy/sdk/shapes:define-structure collection-summary common-lisp:nil
                                    ((id :target-type collection-id
                                      :member-name "id")
                                     (name :target-type collection-name
                                      :member-name "name")
                                     (status :target-type collection-status
                                      :member-name "status")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn"))
                                    (:shape-name "CollectionSummary"))

(smithy/sdk/shapes:define-type collection-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type config-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type config-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class opensearchserverless-error))

(smithy/sdk/shapes:define-structure create-access-policy-request
                                    common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type policy-document
                                      :required common-lisp:t :member-name
                                      "policy")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateAccessPolicyRequest"))

(smithy/sdk/shapes:define-structure create-access-policy-response
                                    common-lisp:nil
                                    ((access-policy-detail :target-type
                                      access-policy-detail :member-name
                                      "accessPolicyDetail"))
                                    (:shape-name "CreateAccessPolicyResponse"))

(smithy/sdk/shapes:define-structure create-collection-detail common-lisp:nil
                                    ((id :target-type collection-id
                                      :member-name "id")
                                     (name :target-type collection-name
                                      :member-name "name")
                                     (status :target-type collection-status
                                      :member-name "status")
                                     (type :target-type collection-type
                                      :member-name "type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (kms-key-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyArn")
                                     (standby-replicas :target-type
                                      standby-replicas :member-name
                                      "standbyReplicas")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "CreateCollectionDetail"))

(smithy/sdk/shapes:define-structure create-collection-request common-lisp:nil
                                    ((name :target-type collection-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type collection-type
                                      :member-name "type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (standby-replicas :target-type
                                      standby-replicas :member-name
                                      "standbyReplicas")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateCollectionRequest"))

(smithy/sdk/shapes:define-structure create-collection-response common-lisp:nil
                                    ((create-collection-detail :target-type
                                      create-collection-detail :member-name
                                      "createCollectionDetail"))
                                    (:shape-name "CreateCollectionResponse"))

(smithy/sdk/shapes:define-structure create-iam-identity-center-config-options
                                    common-lisp:nil
                                    ((instance-arn :target-type
                                      iam-identity-center-instance-arn
                                      :required common-lisp:t :member-name
                                      "instanceArn")
                                     (user-attribute :target-type
                                      iam-identity-center-user-attribute
                                      :member-name "userAttribute")
                                     (group-attribute :target-type
                                      iam-identity-center-group-attribute
                                      :member-name "groupAttribute"))
                                    (:shape-name
                                     "CreateIamIdentityCenterConfigOptions"))

(smithy/sdk/shapes:define-input create-lifecycle-policy-request common-lisp:nil
                                ((type :target-type lifecycle-policy-type
                                  :required common-lisp:t :member-name "type")
                                 (name :target-type policy-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type policy-description
                                  :member-name "description")
                                 (policy :target-type policy-document :required
                                  common-lisp:t :member-name "policy")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output create-lifecycle-policy-response
                                 common-lisp:nil
                                 ((lifecycle-policy-detail :target-type
                                   lifecycle-policy-detail :member-name
                                   "lifecyclePolicyDetail"))
                                 (:shape-name "CreateLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-structure create-security-config-request
                                    common-lisp:nil
                                    ((type :target-type security-config-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type config-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      config-description :member-name
                                      "description")
                                     (saml-options :target-type
                                      saml-config-options :member-name
                                      "samlOptions")
                                     (iam-identity-center-options :target-type
                                      create-iam-identity-center-config-options
                                      :member-name "iamIdentityCenterOptions")
                                     (iam-federation-options :target-type
                                      iam-federation-config-options
                                      :member-name "iamFederationOptions")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateSecurityConfigRequest"))

(smithy/sdk/shapes:define-structure create-security-config-response
                                    common-lisp:nil
                                    ((security-config-detail :target-type
                                      security-config-detail :member-name
                                      "securityConfigDetail"))
                                    (:shape-name
                                     "CreateSecurityConfigResponse"))

(smithy/sdk/shapes:define-structure create-security-policy-request
                                    common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type policy-document
                                      :required common-lisp:t :member-name
                                      "policy")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateSecurityPolicyRequest"))

(smithy/sdk/shapes:define-structure create-security-policy-response
                                    common-lisp:nil
                                    ((security-policy-detail :target-type
                                      security-policy-detail :member-name
                                      "securityPolicyDetail"))
                                    (:shape-name
                                     "CreateSecurityPolicyResponse"))

(smithy/sdk/shapes:define-structure create-vpc-endpoint-detail common-lisp:nil
                                    ((id :target-type vpc-endpoint-id
                                      :member-name "id")
                                     (name :target-type vpc-endpoint-name
                                      :member-name "name")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "status"))
                                    (:shape-name "CreateVpcEndpointDetail"))

(smithy/sdk/shapes:define-structure create-vpc-endpoint-request common-lisp:nil
                                    ((name :target-type vpc-endpoint-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "vpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateVpcEndpointRequest"))

(smithy/sdk/shapes:define-structure create-vpc-endpoint-response
                                    common-lisp:nil
                                    ((create-vpc-endpoint-detail :target-type
                                      create-vpc-endpoint-detail :member-name
                                      "createVpcEndpointDetail"))
                                    (:shape-name "CreateVpcEndpointResponse"))

(smithy/sdk/shapes:define-structure delete-access-policy-request
                                    common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteAccessPolicyRequest"))

(smithy/sdk/shapes:define-structure delete-access-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteAccessPolicyResponse"))

(smithy/sdk/shapes:define-structure delete-collection-detail common-lisp:nil
                                    ((id :target-type collection-id
                                      :member-name "id")
                                     (name :target-type collection-name
                                      :member-name "name")
                                     (status :target-type collection-status
                                      :member-name "status"))
                                    (:shape-name "DeleteCollectionDetail"))

(smithy/sdk/shapes:define-structure delete-collection-request common-lisp:nil
                                    ((id :target-type collection-id :required
                                      common-lisp:t :member-name "id")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteCollectionRequest"))

(smithy/sdk/shapes:define-structure delete-collection-response common-lisp:nil
                                    ((delete-collection-detail :target-type
                                      delete-collection-detail :member-name
                                      "deleteCollectionDetail"))
                                    (:shape-name "DeleteCollectionResponse"))

(smithy/sdk/shapes:define-input delete-lifecycle-policy-request common-lisp:nil
                                ((type :target-type lifecycle-policy-type
                                  :required common-lisp:t :member-name "type")
                                 (name :target-type policy-name :required
                                  common-lisp:t :member-name "name")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "DeleteLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output delete-lifecycle-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-structure delete-security-config-request
                                    common-lisp:nil
                                    ((id :target-type security-config-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteSecurityConfigRequest"))

(smithy/sdk/shapes:define-structure delete-security-config-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteSecurityConfigResponse"))

(smithy/sdk/shapes:define-structure delete-security-policy-request
                                    common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteSecurityPolicyRequest"))

(smithy/sdk/shapes:define-structure delete-security-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteSecurityPolicyResponse"))

(smithy/sdk/shapes:define-structure delete-vpc-endpoint-detail common-lisp:nil
                                    ((id :target-type vpc-endpoint-id
                                      :member-name "id")
                                     (name :target-type vpc-endpoint-name
                                      :member-name "name")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "status"))
                                    (:shape-name "DeleteVpcEndpointDetail"))

(smithy/sdk/shapes:define-structure delete-vpc-endpoint-request common-lisp:nil
                                    ((id :target-type vpc-endpoint-id :required
                                      common-lisp:t :member-name "id")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "DeleteVpcEndpointRequest"))

(smithy/sdk/shapes:define-structure delete-vpc-endpoint-response
                                    common-lisp:nil
                                    ((delete-vpc-endpoint-detail :target-type
                                      delete-vpc-endpoint-detail :member-name
                                      "deleteVpcEndpointDetail"))
                                    (:shape-name "DeleteVpcEndpointResponse"))

(smithy/sdk/shapes:define-structure effective-lifecycle-policy-detail
                                    common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :member-name "type")
                                     (resource :target-type resource
                                      :member-name "resource")
                                     (policy-name :target-type policy-name
                                      :member-name "policyName")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (retention-period :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "retentionPeriod")
                                     (no-min-retention-period :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "noMinRetentionPeriod"))
                                    (:shape-name
                                     "EffectiveLifecyclePolicyDetail"))

(smithy/sdk/shapes:define-list effective-lifecycle-policy-details :member
                               effective-lifecycle-policy-detail)

(smithy/sdk/shapes:define-structure effective-lifecycle-policy-error-detail
                                    common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :member-name "type")
                                     (resource :target-type resource
                                      :member-name "resource")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorCode"))
                                    (:shape-name
                                     "EffectiveLifecyclePolicyErrorDetail"))

(smithy/sdk/shapes:define-list effective-lifecycle-policy-error-details :member
                               effective-lifecycle-policy-error-detail)

(smithy/sdk/shapes:define-structure get-access-policy-request common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetAccessPolicyRequest"))

(smithy/sdk/shapes:define-structure get-access-policy-response common-lisp:nil
                                    ((access-policy-detail :target-type
                                      access-policy-detail :member-name
                                      "accessPolicyDetail"))
                                    (:shape-name "GetAccessPolicyResponse"))

(smithy/sdk/shapes:define-structure get-account-settings-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "GetAccountSettingsRequest"))

(smithy/sdk/shapes:define-structure get-account-settings-response
                                    common-lisp:nil
                                    ((account-settings-detail :target-type
                                      account-settings-detail :member-name
                                      "accountSettingsDetail"))
                                    (:shape-name "GetAccountSettingsResponse"))

(smithy/sdk/shapes:define-structure get-policies-stats-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetPoliciesStatsRequest"))

(smithy/sdk/shapes:define-structure get-policies-stats-response common-lisp:nil
                                    ((access-policy-stats :target-type
                                      access-policy-stats :member-name
                                      "AccessPolicyStats")
                                     (security-policy-stats :target-type
                                      security-policy-stats :member-name
                                      "SecurityPolicyStats")
                                     (security-config-stats :target-type
                                      security-config-stats :member-name
                                      "SecurityConfigStats")
                                     (lifecycle-policy-stats :target-type
                                      lifecycle-policy-stats :member-name
                                      "LifecyclePolicyStats")
                                     (total-policy-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "TotalPolicyCount"))
                                    (:shape-name "GetPoliciesStatsResponse"))

(smithy/sdk/shapes:define-structure get-security-config-request common-lisp:nil
                                    ((id :target-type security-config-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name "GetSecurityConfigRequest"))

(smithy/sdk/shapes:define-structure get-security-config-response
                                    common-lisp:nil
                                    ((security-config-detail :target-type
                                      security-config-detail :member-name
                                      "securityConfigDetail"))
                                    (:shape-name "GetSecurityConfigResponse"))

(smithy/sdk/shapes:define-structure get-security-policy-request common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetSecurityPolicyRequest"))

(smithy/sdk/shapes:define-structure get-security-policy-response
                                    common-lisp:nil
                                    ((security-policy-detail :target-type
                                      security-policy-detail :member-name
                                      "securityPolicyDetail"))
                                    (:shape-name "GetSecurityPolicyResponse"))

(smithy/sdk/shapes:define-structure iam-federation-config-options
                                    common-lisp:nil
                                    ((group-attribute :target-type
                                      iam-federation-group-attribute
                                      :member-name "groupAttribute")
                                     (user-attribute :target-type
                                      iam-federation-user-attribute
                                      :member-name "userAttribute"))
                                    (:shape-name "IamFederationConfigOptions"))

(smithy/sdk/shapes:define-type iam-identity-center-application-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure iam-identity-center-config-options
                                    common-lisp:nil
                                    ((instance-arn :target-type
                                      iam-identity-center-instance-arn
                                      :member-name "instanceArn")
                                     (application-arn :target-type
                                      iam-identity-center-application-arn
                                      :member-name "applicationArn")
                                     (application-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "applicationName")
                                     (application-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "applicationDescription")
                                     (user-attribute :target-type
                                      iam-identity-center-user-attribute
                                      :member-name "userAttribute")
                                     (group-attribute :target-type
                                      iam-identity-center-group-attribute
                                      :member-name "groupAttribute"))
                                    (:shape-name
                                     "IamIdentityCenterConfigOptions"))

(smithy/sdk/shapes:define-type iam-identity-center-group-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-identity-center-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-identity-center-user-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type indexing-capacity-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class opensearchserverless-error))

common-lisp:nil

(smithy/sdk/shapes:define-structure lifecycle-policy-detail common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (policy-version :target-type
                                      policy-version :member-name
                                      "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "policy")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "LifecyclePolicyDetail"))

(smithy/sdk/shapes:define-list lifecycle-policy-details :member
                               lifecycle-policy-detail)

(smithy/sdk/shapes:define-structure lifecycle-policy-error-detail
                                    common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorCode"))
                                    (:shape-name "LifecyclePolicyErrorDetail"))

(smithy/sdk/shapes:define-list lifecycle-policy-error-details :member
                               lifecycle-policy-error-detail)

(smithy/sdk/shapes:define-structure lifecycle-policy-identifier common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "LifecyclePolicyIdentifier"))

(smithy/sdk/shapes:define-list lifecycle-policy-identifiers :member
                               lifecycle-policy-identifier)

(smithy/sdk/shapes:define-structure lifecycle-policy-resource-identifier
                                    common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (resource :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "resource"))
                                    (:shape-name
                                     "LifecyclePolicyResourceIdentifier"))

(smithy/sdk/shapes:define-list lifecycle-policy-resource-identifiers :member
                               lifecycle-policy-resource-identifier)

(smithy/sdk/shapes:define-structure lifecycle-policy-stats common-lisp:nil
                                    ((retention-policy-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "RetentionPolicyCount"))
                                    (:shape-name "LifecyclePolicyStats"))

(smithy/sdk/shapes:define-list lifecycle-policy-summaries :member
                               lifecycle-policy-summary)

(smithy/sdk/shapes:define-structure lifecycle-policy-summary common-lisp:nil
                                    ((type :target-type lifecycle-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (policy-version :target-type
                                      policy-version :member-name
                                      "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "LifecyclePolicySummary"))

(smithy/sdk/shapes:define-type lifecycle-policy-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lifecycle-resource
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lifecycle-resource-filter :member
                               lifecycle-resource)

(smithy/sdk/shapes:define-structure list-access-policies-request
                                    common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (resource :target-type resource-filter
                                      :member-name "resource")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListAccessPoliciesRequest"))

(smithy/sdk/shapes:define-structure list-access-policies-response
                                    common-lisp:nil
                                    ((access-policy-summaries :target-type
                                      access-policy-summaries :member-name
                                      "accessPolicySummaries")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListAccessPoliciesResponse"))

(smithy/sdk/shapes:define-structure list-collections-request common-lisp:nil
                                    ((collection-filters :target-type
                                      collection-filters :member-name
                                      "collectionFilters")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListCollectionsRequest"))

(smithy/sdk/shapes:define-structure list-collections-response common-lisp:nil
                                    ((collection-summaries :target-type
                                      collection-summaries :member-name
                                      "collectionSummaries")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListCollectionsResponse"))

(smithy/sdk/shapes:define-input list-lifecycle-policies-request common-lisp:nil
                                ((type :target-type lifecycle-policy-type
                                  :required common-lisp:t :member-name "type")
                                 (resources :target-type
                                  lifecycle-resource-filter :member-name
                                  "resources")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListLifecyclePoliciesRequest"))

(smithy/sdk/shapes:define-output list-lifecycle-policies-response
                                 common-lisp:nil
                                 ((lifecycle-policy-summaries :target-type
                                   lifecycle-policy-summaries :member-name
                                   "lifecyclePolicySummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListLifecyclePoliciesResponse"))

(smithy/sdk/shapes:define-structure list-security-configs-request
                                    common-lisp:nil
                                    ((type :target-type security-config-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListSecurityConfigsRequest"))

(smithy/sdk/shapes:define-structure list-security-configs-response
                                    common-lisp:nil
                                    ((security-config-summaries :target-type
                                      security-config-summaries :member-name
                                      "securityConfigSummaries")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListSecurityConfigsResponse"))

(smithy/sdk/shapes:define-structure list-security-policies-request
                                    common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (resource :target-type resource-filter
                                      :member-name "resource")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListSecurityPoliciesRequest"))

(smithy/sdk/shapes:define-structure list-security-policies-response
                                    common-lisp:nil
                                    ((security-policy-summaries :target-type
                                      security-policy-summaries :member-name
                                      "securityPolicySummaries")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSecurityPoliciesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-vpc-endpoints-request common-lisp:nil
                                    ((vpc-endpoint-filters :target-type
                                      vpc-endpoint-filters :member-name
                                      "vpcEndpointFilters")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListVpcEndpointsRequest"))

(smithy/sdk/shapes:define-structure list-vpc-endpoints-response common-lisp:nil
                                    ((vpc-endpoint-summaries :target-type
                                      vpc-endpoint-summaries :member-name
                                      "vpcEndpointSummaries")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListVpcEndpointsResponse"))

(smithy/sdk/shapes:define-error ocu-limit-exceeded-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "OcuLimitExceededException")
                                (:error-code 402)
                                (:base-class opensearchserverless-error))

(smithy/sdk/shapes:define-type policy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-filter :member resource)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class opensearchserverless-error))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saml-config-options common-lisp:nil
                                    ((metadata :target-type saml-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (user-attribute :target-type
                                      saml-user-attribute :member-name
                                      "userAttribute")
                                     (group-attribute :target-type
                                      saml-group-attribute :member-name
                                      "groupAttribute")
                                     (open-search-serverless-entity-id
                                      :target-type
                                      open-search-serverless-entity-id
                                      :member-name
                                      "openSearchServerlessEntityId")
                                     (session-timeout :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "sessionTimeout"))
                                    (:shape-name "SamlConfigOptions"))

(smithy/sdk/shapes:define-type search-capacity-value
                               smithy/sdk/smithy-types:integer)

common-lisp:nil

(smithy/sdk/shapes:define-structure security-config-detail common-lisp:nil
                                    ((id :target-type security-config-id
                                      :member-name "id")
                                     (type :target-type security-config-type
                                      :member-name "type")
                                     (config-version :target-type
                                      policy-version :member-name
                                      "configVersion")
                                     (description :target-type
                                      config-description :member-name
                                      "description")
                                     (saml-options :target-type
                                      saml-config-options :member-name
                                      "samlOptions")
                                     (iam-identity-center-options :target-type
                                      iam-identity-center-config-options
                                      :member-name "iamIdentityCenterOptions")
                                     (iam-federation-options :target-type
                                      iam-federation-config-options
                                      :member-name "iamFederationOptions")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "SecurityConfigDetail"))

(smithy/sdk/shapes:define-type security-config-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure security-config-stats common-lisp:nil
                                    ((saml-config-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "SamlConfigCount"))
                                    (:shape-name "SecurityConfigStats"))

(smithy/sdk/shapes:define-list security-config-summaries :member
                               security-config-summary)

(smithy/sdk/shapes:define-structure security-config-summary common-lisp:nil
                                    ((id :target-type security-config-id
                                      :member-name "id")
                                     (type :target-type security-config-type
                                      :member-name "type")
                                     (config-version :target-type
                                      policy-version :member-name
                                      "configVersion")
                                     (description :target-type
                                      config-description :member-name
                                      "description")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "SecurityConfigSummary"))

(smithy/sdk/shapes:define-type security-config-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

common-lisp:nil

(smithy/sdk/shapes:define-structure security-policy-detail common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (policy-version :target-type
                                      policy-version :member-name
                                      "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "policy")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "SecurityPolicyDetail"))

(smithy/sdk/shapes:define-structure security-policy-stats common-lisp:nil
                                    ((encryption-policy-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "EncryptionPolicyCount")
                                     (network-policy-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "NetworkPolicyCount"))
                                    (:shape-name "SecurityPolicyStats"))

(smithy/sdk/shapes:define-list security-policy-summaries :member
                               security-policy-summary)

(smithy/sdk/shapes:define-structure security-policy-summary common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :member-name "type")
                                     (name :target-type policy-name
                                      :member-name "name")
                                     (policy-version :target-type
                                      policy-version :member-name
                                      "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "SecurityPolicySummary"))

(smithy/sdk/shapes:define-type security-policy-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class opensearchserverless-error))

(smithy/sdk/shapes:define-type standby-replicas smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-access-policy-request
                                    common-lisp:nil
                                    ((type :target-type access-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name")
                                     (policy-version :target-type
                                      policy-version :required common-lisp:t
                                      :member-name "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type policy-document
                                      :member-name "policy")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateAccessPolicyRequest"))

(smithy/sdk/shapes:define-structure update-access-policy-response
                                    common-lisp:nil
                                    ((access-policy-detail :target-type
                                      access-policy-detail :member-name
                                      "accessPolicyDetail"))
                                    (:shape-name "UpdateAccessPolicyResponse"))

(smithy/sdk/shapes:define-structure update-account-settings-request
                                    common-lisp:nil
                                    ((capacity-limits :target-type
                                      capacity-limits :member-name
                                      "capacityLimits"))
                                    (:shape-name
                                     "UpdateAccountSettingsRequest"))

(smithy/sdk/shapes:define-structure update-account-settings-response
                                    common-lisp:nil
                                    ((account-settings-detail :target-type
                                      account-settings-detail :member-name
                                      "accountSettingsDetail"))
                                    (:shape-name
                                     "UpdateAccountSettingsResponse"))

(smithy/sdk/shapes:define-structure update-collection-detail common-lisp:nil
                                    ((id :target-type collection-id
                                      :member-name "id")
                                     (name :target-type collection-name
                                      :member-name "name")
                                     (status :target-type collection-status
                                      :member-name "status")
                                     (type :target-type collection-type
                                      :member-name "type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "UpdateCollectionDetail"))

(smithy/sdk/shapes:define-structure update-collection-request common-lisp:nil
                                    ((id :target-type collection-id :required
                                      common-lisp:t :member-name "id")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateCollectionRequest"))

(smithy/sdk/shapes:define-structure update-collection-response common-lisp:nil
                                    ((update-collection-detail :target-type
                                      update-collection-detail :member-name
                                      "updateCollectionDetail"))
                                    (:shape-name "UpdateCollectionResponse"))

(smithy/sdk/shapes:define-structure update-iam-identity-center-config-options
                                    common-lisp:nil
                                    ((user-attribute :target-type
                                      iam-identity-center-user-attribute
                                      :member-name "userAttribute")
                                     (group-attribute :target-type
                                      iam-identity-center-group-attribute
                                      :member-name "groupAttribute"))
                                    (:shape-name
                                     "UpdateIamIdentityCenterConfigOptions"))

(smithy/sdk/shapes:define-input update-lifecycle-policy-request common-lisp:nil
                                ((type :target-type lifecycle-policy-type
                                  :required common-lisp:t :member-name "type")
                                 (name :target-type policy-name :required
                                  common-lisp:t :member-name "name")
                                 (policy-version :target-type policy-version
                                  :required common-lisp:t :member-name
                                  "policyVersion")
                                 (description :target-type policy-description
                                  :member-name "description")
                                 (policy :target-type policy-document
                                  :member-name "policy")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output update-lifecycle-policy-response
                                 common-lisp:nil
                                 ((lifecycle-policy-detail :target-type
                                   lifecycle-policy-detail :member-name
                                   "lifecyclePolicyDetail"))
                                 (:shape-name "UpdateLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-structure update-security-config-request
                                    common-lisp:nil
                                    ((id :target-type security-config-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (config-version :target-type
                                      policy-version :required common-lisp:t
                                      :member-name "configVersion")
                                     (description :target-type
                                      config-description :member-name
                                      "description")
                                     (saml-options :target-type
                                      saml-config-options :member-name
                                      "samlOptions")
                                     (iam-identity-center-options-updates
                                      :target-type
                                      update-iam-identity-center-config-options
                                      :member-name
                                      "iamIdentityCenterOptionsUpdates")
                                     (iam-federation-options :target-type
                                      iam-federation-config-options
                                      :member-name "iamFederationOptions")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateSecurityConfigRequest"))

(smithy/sdk/shapes:define-structure update-security-config-response
                                    common-lisp:nil
                                    ((security-config-detail :target-type
                                      security-config-detail :member-name
                                      "securityConfigDetail"))
                                    (:shape-name
                                     "UpdateSecurityConfigResponse"))

(smithy/sdk/shapes:define-structure update-security-policy-request
                                    common-lisp:nil
                                    ((type :target-type security-policy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type policy-name :required
                                      common-lisp:t :member-name "name")
                                     (policy-version :target-type
                                      policy-version :required common-lisp:t
                                      :member-name "policyVersion")
                                     (description :target-type
                                      policy-description :member-name
                                      "description")
                                     (policy :target-type policy-document
                                      :member-name "policy")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateSecurityPolicyRequest"))

(smithy/sdk/shapes:define-structure update-security-policy-response
                                    common-lisp:nil
                                    ((security-policy-detail :target-type
                                      security-policy-detail :member-name
                                      "securityPolicyDetail"))
                                    (:shape-name
                                     "UpdateSecurityPolicyResponse"))

(smithy/sdk/shapes:define-structure update-vpc-endpoint-detail common-lisp:nil
                                    ((id :target-type vpc-endpoint-id
                                      :member-name "id")
                                     (name :target-type vpc-endpoint-name
                                      :member-name "name")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "status")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds")
                                     (last-modified-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lastModifiedDate"))
                                    (:shape-name "UpdateVpcEndpointDetail"))

(smithy/sdk/shapes:define-structure update-vpc-endpoint-request common-lisp:nil
                                    ((id :target-type vpc-endpoint-id :required
                                      common-lisp:t :member-name "id")
                                     (add-subnet-ids :target-type subnet-ids
                                      :member-name "addSubnetIds")
                                     (remove-subnet-ids :target-type subnet-ids
                                      :member-name "removeSubnetIds")
                                     (add-security-group-ids :target-type
                                      security-group-ids :member-name
                                      "addSecurityGroupIds")
                                     (remove-security-group-ids :target-type
                                      security-group-ids :member-name
                                      "removeSecurityGroupIds")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateVpcEndpointRequest"))

(smithy/sdk/shapes:define-structure update-vpc-endpoint-response
                                    common-lisp:nil
                                    ((update-vpc-endpoint-detail :target-type
                                      update-vpc-endpoint-detail :member-name
                                      "UpdateVpcEndpointDetail"))
                                    (:shape-name "UpdateVpcEndpointResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class opensearchserverless-error))

common-lisp:nil

(smithy/sdk/shapes:define-structure vpc-endpoint-detail common-lisp:nil
                                    ((id :target-type vpc-endpoint-id
                                      :member-name "id")
                                     (name :target-type vpc-endpoint-name
                                      :member-name "name")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "status")
                                     (created-date :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "createdDate")
                                     (failure-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureCode")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage"))
                                    (:shape-name "VpcEndpointDetail"))

(smithy/sdk/shapes:define-list vpc-endpoint-details :member vpc-endpoint-detail)

(smithy/sdk/shapes:define-structure vpc-endpoint-error-detail common-lisp:nil
                                    ((id :target-type vpc-endpoint-id
                                      :member-name "id")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorCode"))
                                    (:shape-name "VpcEndpointErrorDetail"))

(smithy/sdk/shapes:define-list vpc-endpoint-error-details :member
                               vpc-endpoint-error-detail)

(smithy/sdk/shapes:define-structure vpc-endpoint-filters common-lisp:nil
                                    ((status :target-type vpc-endpoint-status
                                      :member-name "status"))
                                    (:shape-name "VpcEndpointFilters"))

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-endpoint-ids :member vpc-endpoint-id)

(smithy/sdk/shapes:define-type vpc-endpoint-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-endpoint-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-endpoint-summaries :member
                               vpc-endpoint-summary)

(smithy/sdk/shapes:define-structure vpc-endpoint-summary common-lisp:nil
                                    ((id :target-type vpc-endpoint-id
                                      :member-name "id")
                                     (name :target-type vpc-endpoint-name
                                      :member-name "name")
                                     (status :target-type vpc-endpoint-status
                                      :member-name "status"))
                                    (:shape-name "VpcEndpointSummary"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-federation-group-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-federation-user-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type open-search-serverless-entity-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type saml-group-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type saml-metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type saml-user-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-get-collection :shape-name
                                       "BatchGetCollection" :input
                                       batch-get-collection-request :output
                                       batch-get-collection-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-effective-lifecycle-policy
                                       :shape-name
                                       "BatchGetEffectiveLifecyclePolicy"
                                       :input
                                       batch-get-effective-lifecycle-policy-request
                                       :output
                                       batch-get-effective-lifecycle-policy-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-lifecycle-policy :shape-name
                                       "BatchGetLifecyclePolicy" :input
                                       batch-get-lifecycle-policy-request
                                       :output
                                       batch-get-lifecycle-policy-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation batch-get-vpc-endpoint :shape-name
                                       "BatchGetVpcEndpoint" :input
                                       batch-get-vpc-endpoint-request :output
                                       batch-get-vpc-endpoint-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-access-policy :shape-name
                                       "CreateAccessPolicy" :input
                                       create-access-policy-request :output
                                       create-access-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-collection :shape-name
                                       "CreateCollection" :input
                                       create-collection-request :output
                                       create-collection-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        ocu-limit-exceeded-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-lifecycle-policy :shape-name
                                       "CreateLifecyclePolicy" :input
                                       create-lifecycle-policy-request :output
                                       create-lifecycle-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-security-config :shape-name
                                       "CreateSecurityConfig" :input
                                       create-security-config-request :output
                                       create-security-config-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-security-policy :shape-name
                                       "CreateSecurityPolicy" :input
                                       create-security-policy-request :output
                                       create-security-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-vpc-endpoint :shape-name
                                       "CreateVpcEndpoint" :input
                                       create-vpc-endpoint-request :output
                                       create-vpc-endpoint-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-access-policy :shape-name
                                       "DeleteAccessPolicy" :input
                                       delete-access-policy-request :output
                                       delete-access-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-collection :shape-name
                                       "DeleteCollection" :input
                                       delete-collection-request :output
                                       delete-collection-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-lifecycle-policy :shape-name
                                       "DeleteLifecyclePolicy" :input
                                       delete-lifecycle-policy-request :output
                                       delete-lifecycle-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-security-config :shape-name
                                       "DeleteSecurityConfig" :input
                                       delete-security-config-request :output
                                       delete-security-config-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-security-policy :shape-name
                                       "DeleteSecurityPolicy" :input
                                       delete-security-policy-request :output
                                       delete-security-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-vpc-endpoint :shape-name
                                       "DeleteVpcEndpoint" :input
                                       delete-vpc-endpoint-request :output
                                       delete-vpc-endpoint-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-access-policy :shape-name
                                       "GetAccessPolicy" :input
                                       get-access-policy-request :output
                                       get-access-policy-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       get-account-settings-request :output
                                       get-account-settings-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-policies-stats :shape-name
                                       "GetPoliciesStats" :input
                                       get-policies-stats-request :output
                                       get-policies-stats-response :errors
                                       (internal-server-exception))

(smithy/sdk/operation:define-operation get-security-config :shape-name
                                       "GetSecurityConfig" :input
                                       get-security-config-request :output
                                       get-security-config-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-security-policy :shape-name
                                       "GetSecurityPolicy" :input
                                       get-security-policy-request :output
                                       get-security-policy-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-access-policies :shape-name
                                       "ListAccessPolicies" :input
                                       list-access-policies-request :output
                                       list-access-policies-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-collections :shape-name
                                       "ListCollections" :input
                                       list-collections-request :output
                                       list-collections-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-lifecycle-policies :shape-name
                                       "ListLifecyclePolicies" :input
                                       list-lifecycle-policies-request :output
                                       list-lifecycle-policies-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-security-configs :shape-name
                                       "ListSecurityConfigs" :input
                                       list-security-configs-request :output
                                       list-security-configs-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-security-policies :shape-name
                                       "ListSecurityPolicies" :input
                                       list-security-policies-request :output
                                       list-security-policies-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-vpc-endpoints :shape-name
                                       "ListVpcEndpoints" :input
                                       list-vpc-endpoints-request :output
                                       list-vpc-endpoints-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-access-policy :shape-name
                                       "UpdateAccessPolicy" :input
                                       update-access-policy-request :output
                                       update-access-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-account-settings :shape-name
                                       "UpdateAccountSettings" :input
                                       update-account-settings-request :output
                                       update-account-settings-response :errors
                                       (internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-collection :shape-name
                                       "UpdateCollection" :input
                                       update-collection-request :output
                                       update-collection-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-lifecycle-policy :shape-name
                                       "UpdateLifecyclePolicy" :input
                                       update-lifecycle-policy-request :output
                                       update-lifecycle-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-security-config :shape-name
                                       "UpdateSecurityConfig" :input
                                       update-security-config-request :output
                                       update-security-config-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-security-policy :shape-name
                                       "UpdateSecurityPolicy" :input
                                       update-security-policy-request :output
                                       update-security-policy-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-vpc-endpoint :shape-name
                                       "UpdateVpcEndpoint" :input
                                       update-vpc-endpoint-request :output
                                       update-vpc-endpoint-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception))
