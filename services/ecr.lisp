(uiop/package:define-package #:pira/ecr (:use)
                             (:export #:account-setting-name
                              #:account-setting-value
                              #:amazon-ec2container-registry-v20150921 #:arch
                              #:arn #:attribute #:attribute-key
                              #:attribute-list #:attribute-value #:author
                              #:authorization-data #:authorization-data-list
                              #:aws-ecr-container-image-details #:base64
                              #:base-score #:batch-check-layer-availability
                              #:batch-check-layer-availability-request
                              #:batch-check-layer-availability-response
                              #:batch-delete-image #:batch-delete-image-request
                              #:batch-delete-image-response #:batch-get-image
                              #:batch-get-image-request
                              #:batch-get-image-response
                              #:batch-get-repository-scanning-configuration
                              #:batch-get-repository-scanning-configuration-request
                              #:batch-get-repository-scanning-configuration-response
                              #:batched-operation-layer-digest
                              #:batched-operation-layer-digest-list
                              #:complete-layer-upload
                              #:complete-layer-upload-request
                              #:complete-layer-upload-response
                              #:create-pull-through-cache-rule
                              #:create-pull-through-cache-rule-request
                              #:create-pull-through-cache-rule-response
                              #:create-repository
                              #:create-repository-creation-template
                              #:create-repository-creation-template-request
                              #:create-repository-creation-template-response
                              #:create-repository-request
                              #:create-repository-response #:creation-timestamp
                              #:credential-arn #:custom-role-arn #:cvss-score
                              #:cvss-score-adjustment
                              #:cvss-score-adjustment-list #:cvss-score-details
                              #:cvss-score-list #:date
                              #:delete-lifecycle-policy
                              #:delete-lifecycle-policy-request
                              #:delete-lifecycle-policy-response
                              #:delete-pull-through-cache-rule
                              #:delete-pull-through-cache-rule-request
                              #:delete-pull-through-cache-rule-response
                              #:delete-registry-policy
                              #:delete-registry-policy-request
                              #:delete-registry-policy-response
                              #:delete-repository
                              #:delete-repository-creation-template
                              #:delete-repository-creation-template-request
                              #:delete-repository-creation-template-response
                              #:delete-repository-policy
                              #:delete-repository-policy-request
                              #:delete-repository-policy-response
                              #:delete-repository-request
                              #:delete-repository-response
                              #:describe-image-replication-status
                              #:describe-image-replication-status-request
                              #:describe-image-replication-status-response
                              #:describe-image-scan-findings
                              #:describe-image-scan-findings-request
                              #:describe-image-scan-findings-response
                              #:describe-images #:describe-images-filter
                              #:describe-images-request
                              #:describe-images-response
                              #:describe-pull-through-cache-rules
                              #:describe-pull-through-cache-rules-request
                              #:describe-pull-through-cache-rules-response
                              #:describe-registry #:describe-registry-request
                              #:describe-registry-response
                              #:describe-repositories
                              #:describe-repositories-request
                              #:describe-repositories-response
                              #:describe-repository-creation-templates
                              #:describe-repository-creation-templates-request
                              #:describe-repository-creation-templates-response
                              #:empty-upload-exception
                              #:encryption-configuration
                              #:encryption-configuration-for-repository-creation-template
                              #:encryption-type #:enhanced-image-scan-finding
                              #:enhanced-image-scan-finding-list #:epoch
                              #:evaluation-timestamp #:exception-message
                              #:expiration-timestamp #:exploit-available
                              #:file-path #:finding-arn #:finding-description
                              #:finding-name #:finding-severity
                              #:finding-severity-counts #:fix-available
                              #:fixed-in-version #:force-flag
                              #:get-account-setting
                              #:get-account-setting-request
                              #:get-account-setting-response
                              #:get-authorization-token
                              #:get-authorization-token-registry-id-list
                              #:get-authorization-token-request
                              #:get-authorization-token-response
                              #:get-download-url-for-layer
                              #:get-download-url-for-layer-request
                              #:get-download-url-for-layer-response
                              #:get-lifecycle-policy
                              #:get-lifecycle-policy-preview
                              #:get-lifecycle-policy-preview-request
                              #:get-lifecycle-policy-preview-response
                              #:get-lifecycle-policy-request
                              #:get-lifecycle-policy-response
                              #:get-registry-policy
                              #:get-registry-policy-request
                              #:get-registry-policy-response
                              #:get-registry-scanning-configuration
                              #:get-registry-scanning-configuration-request
                              #:get-registry-scanning-configuration-response
                              #:get-repository-policy
                              #:get-repository-policy-request
                              #:get-repository-policy-response #:image
                              #:image-action-type
                              #:image-already-exists-exception #:image-count
                              #:image-detail #:image-detail-list #:image-digest
                              #:image-digest-does-not-match-exception
                              #:image-failure #:image-failure-code
                              #:image-failure-list #:image-failure-reason
                              #:image-identifier #:image-identifier-list
                              #:image-list #:image-manifest
                              #:image-not-found-exception
                              #:image-replication-status
                              #:image-replication-status-list
                              #:image-scan-finding #:image-scan-finding-list
                              #:image-scan-findings
                              #:image-scan-findings-summary #:image-scan-status
                              #:image-scanning-configuration
                              #:image-size-in-bytes #:image-tag
                              #:image-tag-already-exists-exception
                              #:image-tag-list #:image-tag-mutability
                              #:image-tag-mutability-exclusion-filter
                              #:image-tag-mutability-exclusion-filter-type
                              #:image-tag-mutability-exclusion-filter-value
                              #:image-tag-mutability-exclusion-filters
                              #:image-tags-list #:in-use-count
                              #:initiate-layer-upload
                              #:initiate-layer-upload-request
                              #:initiate-layer-upload-response
                              #:invalid-layer-exception
                              #:invalid-layer-part-exception
                              #:invalid-parameter-exception
                              #:invalid-tag-parameter-exception
                              #:is-ptcrule-valid #:kms-error #:kms-exception
                              #:kms-key
                              #:kms-key-for-repository-creation-template
                              #:layer #:layer-already-exists-exception
                              #:layer-availability #:layer-digest
                              #:layer-digest-list #:layer-failure
                              #:layer-failure-code #:layer-failure-list
                              #:layer-failure-reason
                              #:layer-inaccessible-exception #:layer-list
                              #:layer-part-blob
                              #:layer-part-too-small-exception
                              #:layer-size-in-bytes
                              #:layers-not-found-exception
                              #:lifecycle-policy-not-found-exception
                              #:lifecycle-policy-preview-filter
                              #:lifecycle-policy-preview-in-progress-exception
                              #:lifecycle-policy-preview-not-found-exception
                              #:lifecycle-policy-preview-result
                              #:lifecycle-policy-preview-result-list
                              #:lifecycle-policy-preview-status
                              #:lifecycle-policy-preview-summary
                              #:lifecycle-policy-rule-action
                              #:lifecycle-policy-rule-priority
                              #:lifecycle-policy-text
                              #:lifecycle-policy-text-for-repository-creation-template
                              #:lifecycle-preview-max-results
                              #:limit-exceeded-exception #:list-images
                              #:list-images-filter #:list-images-request
                              #:list-images-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:media-type #:media-type-list #:metric
                              #:next-token #:ptcvalidate-failure
                              #:package-manager #:package-vulnerability-details
                              #:part-size #:platform #:prefix #:prefix-list
                              #:proxy-endpoint #:pull-through-cache-rule
                              #:pull-through-cache-rule-already-exists-exception
                              #:pull-through-cache-rule-list
                              #:pull-through-cache-rule-not-found-exception
                              #:pull-through-cache-rule-repository-prefix
                              #:pull-through-cache-rule-repository-prefix-list
                              #:push-timestamp #:put-account-setting
                              #:put-account-setting-request
                              #:put-account-setting-response #:put-image
                              #:put-image-request #:put-image-response
                              #:put-image-scanning-configuration
                              #:put-image-scanning-configuration-request
                              #:put-image-scanning-configuration-response
                              #:put-image-tag-mutability
                              #:put-image-tag-mutability-request
                              #:put-image-tag-mutability-response
                              #:put-lifecycle-policy
                              #:put-lifecycle-policy-request
                              #:put-lifecycle-policy-response
                              #:put-registry-policy
                              #:put-registry-policy-request
                              #:put-registry-policy-response
                              #:put-registry-scanning-configuration
                              #:put-registry-scanning-configuration-request
                              #:put-registry-scanning-configuration-response
                              #:put-replication-configuration
                              #:put-replication-configuration-request
                              #:put-replication-configuration-response
                              #:rctapplied-for #:rctapplied-for-list #:reason
                              #:recommendation #:recommendation-text
                              #:recorded-pull-timestamp #:reference-urls-list
                              #:referenced-images-not-found-exception #:region
                              #:registry-id
                              #:registry-policy-not-found-exception
                              #:registry-policy-text
                              #:registry-scanning-configuration
                              #:registry-scanning-rule
                              #:registry-scanning-rule-list
                              #:related-vulnerabilities-list
                              #:related-vulnerability #:release #:remediation
                              #:replication-configuration
                              #:replication-destination
                              #:replication-destination-list
                              #:replication-error #:replication-rule
                              #:replication-rule-list #:replication-status
                              #:repository
                              #:repository-already-exists-exception
                              #:repository-creation-template
                              #:repository-creation-template-list
                              #:repository-filter #:repository-filter-list
                              #:repository-filter-type
                              #:repository-filter-value #:repository-list
                              #:repository-name #:repository-name-list
                              #:repository-not-empty-exception
                              #:repository-not-found-exception
                              #:repository-policy-not-found-exception
                              #:repository-policy-text
                              #:repository-scanning-configuration
                              #:repository-scanning-configuration-failure
                              #:repository-scanning-configuration-failure-list
                              #:repository-scanning-configuration-list
                              #:repository-template-description #:resource
                              #:resource-details #:resource-id #:resource-list
                              #:scan-frequency #:scan-not-found-exception
                              #:scan-on-push-flag #:scan-status
                              #:scan-status-description #:scan-timestamp
                              #:scan-type #:scanning-configuration-failure-code
                              #:scanning-configuration-failure-reason
                              #:scanning-configuration-repository-name-list
                              #:scanning-repository-filter
                              #:scanning-repository-filter-list
                              #:scanning-repository-filter-type
                              #:scanning-repository-filter-value #:score
                              #:score-details #:scoring-vector
                              #:secret-not-found-exception #:server-exception
                              #:set-repository-policy
                              #:set-repository-policy-request
                              #:set-repository-policy-response #:severity
                              #:severity-count #:source #:source-layer-hash
                              #:start-image-scan #:start-image-scan-request
                              #:start-image-scan-response
                              #:start-lifecycle-policy-preview
                              #:start-lifecycle-policy-preview-request
                              #:start-lifecycle-policy-preview-response
                              #:status #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-status #:tag-value
                              #:tags #:template-already-exists-exception
                              #:template-not-found-exception #:title
                              #:too-many-tags-exception #:type
                              #:unable-to-access-secret-exception
                              #:unable-to-decrypt-secret-value-exception
                              #:unable-to-get-upstream-image-exception
                              #:unable-to-get-upstream-layer-exception
                              #:unsupported-image-type-exception
                              #:unsupported-upstream-registry-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-pull-through-cache-rule
                              #:update-pull-through-cache-rule-request
                              #:update-pull-through-cache-rule-response
                              #:update-repository-creation-template
                              #:update-repository-creation-template-request
                              #:update-repository-creation-template-response
                              #:updated-timestamp #:upload-id
                              #:upload-layer-part #:upload-layer-part-request
                              #:upload-layer-part-response
                              #:upload-not-found-exception #:upstream-registry
                              #:url #:validate-pull-through-cache-rule
                              #:validate-pull-through-cache-rule-request
                              #:validate-pull-through-cache-rule-response
                              #:validation-exception #:version
                              #:vulnerability-id
                              #:vulnerability-source-update-timestamp
                              #:vulnerable-package #:vulnerable-package-name
                              #:vulnerable-packages-list))
(common-lisp:in-package #:pira/ecr)

(smithy/sdk/service:define-service amazon-ec2container-registry-v20150921
                                   :shape-name
                                   "AmazonEC2ContainerRegistry_V20150921"
                                   :version "2015-09-21" :title
                                   "Amazon Elastic Container Registry"
                                   :xml-namespace
                                   '(:uri
                                     "http://ecr.amazonaws.com/doc/2015-09-21/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "ECR")
                                      ("arnNamespace" . "ecr")
                                      ("cloudFormationName" . "ECR")
                                      ("cloudTrailEventSource"
                                       . "ecr.amazonaws.com")
                                      ("endpointPrefix" . "api.ecr"))
                                     ("aws.auth#sigv4" ("name" . "ecr"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type account-setting-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-setting-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arch smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((key :target-type attribute-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type attribute-value
                                      :member-name "value"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-type attribute-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-list :member attribute)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type author smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure authorization-data common-lisp:nil
                                    ((authorization-token :target-type base64
                                      :member-name "authorizationToken")
                                     (expires-at :target-type
                                      expiration-timestamp :member-name
                                      "expiresAt")
                                     (proxy-endpoint :target-type
                                      proxy-endpoint :member-name
                                      "proxyEndpoint"))
                                    (:shape-name "AuthorizationData"))

(smithy/sdk/shapes:define-list authorization-data-list :member
                               authorization-data)

(smithy/sdk/shapes:define-structure aws-ecr-container-image-details
                                    common-lisp:nil
                                    ((architecture :target-type arch
                                      :member-name "architecture")
                                     (author :target-type author :member-name
                                      "author")
                                     (image-hash :target-type image-digest
                                      :member-name "imageHash")
                                     (image-tags :target-type image-tags-list
                                      :member-name "imageTags")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (pushed-at :target-type date :member-name
                                      "pushedAt")
                                     (last-in-use-at :target-type date
                                      :member-name "lastInUseAt")
                                     (in-use-count :target-type in-use-count
                                      :member-name "inUseCount")
                                     (registry :target-type registry-id
                                      :member-name "registry")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName"))
                                    (:shape-name "AwsEcrContainerImageDetails"))

(smithy/sdk/shapes:define-type base64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type base-score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input batch-check-layer-availability-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (layer-digests :target-type
                                  batched-operation-layer-digest-list :required
                                  common-lisp:t :member-name "layerDigests"))
                                (:shape-name
                                 "BatchCheckLayerAvailabilityRequest"))

(smithy/sdk/shapes:define-output batch-check-layer-availability-response
                                 common-lisp:nil
                                 ((layers :target-type layer-list :member-name
                                   "layers")
                                  (failures :target-type layer-failure-list
                                   :member-name "failures"))
                                 (:shape-name
                                  "BatchCheckLayerAvailabilityResponse"))

(smithy/sdk/shapes:define-input batch-delete-image-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-ids :target-type image-identifier-list
                                  :required common-lisp:t :member-name
                                  "imageIds"))
                                (:shape-name "BatchDeleteImageRequest"))

(smithy/sdk/shapes:define-output batch-delete-image-response common-lisp:nil
                                 ((image-ids :target-type image-identifier-list
                                   :member-name "imageIds")
                                  (failures :target-type image-failure-list
                                   :member-name "failures"))
                                 (:shape-name "BatchDeleteImageResponse"))

(smithy/sdk/shapes:define-input batch-get-image-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-ids :target-type image-identifier-list
                                  :required common-lisp:t :member-name
                                  "imageIds")
                                 (accepted-media-types :target-type
                                  media-type-list :member-name
                                  "acceptedMediaTypes"))
                                (:shape-name "BatchGetImageRequest"))

(smithy/sdk/shapes:define-output batch-get-image-response common-lisp:nil
                                 ((images :target-type image-list :member-name
                                   "images")
                                  (failures :target-type image-failure-list
                                   :member-name "failures"))
                                 (:shape-name "BatchGetImageResponse"))

(smithy/sdk/shapes:define-input
 batch-get-repository-scanning-configuration-request common-lisp:nil
 ((repository-names :target-type scanning-configuration-repository-name-list
   :required common-lisp:t :member-name "repositoryNames"))
 (:shape-name "BatchGetRepositoryScanningConfigurationRequest"))

(smithy/sdk/shapes:define-output
 batch-get-repository-scanning-configuration-response common-lisp:nil
 ((scanning-configurations :target-type repository-scanning-configuration-list
   :member-name "scanningConfigurations")
  (failures :target-type repository-scanning-configuration-failure-list
   :member-name "failures"))
 (:shape-name "BatchGetRepositoryScanningConfigurationResponse"))

(smithy/sdk/shapes:define-type batched-operation-layer-digest
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list batched-operation-layer-digest-list :member
                               batched-operation-layer-digest)

(smithy/sdk/shapes:define-input complete-layer-upload-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId")
                                 (layer-digests :target-type layer-digest-list
                                  :required common-lisp:t :member-name
                                  "layerDigests"))
                                (:shape-name "CompleteLayerUploadRequest"))

(smithy/sdk/shapes:define-output complete-layer-upload-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (upload-id :target-type upload-id
                                   :member-name "uploadId")
                                  (layer-digest :target-type layer-digest
                                   :member-name "layerDigest"))
                                 (:shape-name "CompleteLayerUploadResponse"))

(smithy/sdk/shapes:define-input create-pull-through-cache-rule-request
                                common-lisp:nil
                                ((ecr-repository-prefix :target-type
                                  pull-through-cache-rule-repository-prefix
                                  :required common-lisp:t :member-name
                                  "ecrRepositoryPrefix")
                                 (upstream-registry-url :target-type url
                                  :required common-lisp:t :member-name
                                  "upstreamRegistryUrl")
                                 (registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (upstream-registry :target-type
                                  upstream-registry :member-name
                                  "upstreamRegistry")
                                 (credential-arn :target-type credential-arn
                                  :member-name "credentialArn")
                                 (custom-role-arn :target-type custom-role-arn
                                  :member-name "customRoleArn")
                                 (upstream-repository-prefix :target-type
                                  pull-through-cache-rule-repository-prefix
                                  :member-name "upstreamRepositoryPrefix"))
                                (:shape-name
                                 "CreatePullThroughCacheRuleRequest"))

(smithy/sdk/shapes:define-output create-pull-through-cache-rule-response
                                 common-lisp:nil
                                 ((ecr-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "ecrRepositoryPrefix")
                                  (upstream-registry-url :target-type url
                                   :member-name "upstreamRegistryUrl")
                                  (created-at :target-type creation-timestamp
                                   :member-name "createdAt")
                                  (registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (upstream-registry :target-type
                                   upstream-registry :member-name
                                   "upstreamRegistry")
                                  (credential-arn :target-type credential-arn
                                   :member-name "credentialArn")
                                  (custom-role-arn :target-type custom-role-arn
                                   :member-name "customRoleArn")
                                  (upstream-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "upstreamRepositoryPrefix"))
                                 (:shape-name
                                  "CreatePullThroughCacheRuleResponse"))

(smithy/sdk/shapes:define-input create-repository-creation-template-request
                                common-lisp:nil
                                ((prefix :target-type prefix :required
                                  common-lisp:t :member-name "prefix")
                                 (description :target-type
                                  repository-template-description :member-name
                                  "description")
                                 (encryption-configuration :target-type
                                  encryption-configuration-for-repository-creation-template
                                  :member-name "encryptionConfiguration")
                                 (resource-tags :target-type tag-list
                                  :member-name "resourceTags")
                                 (image-tag-mutability :target-type
                                  image-tag-mutability :member-name
                                  "imageTagMutability")
                                 (image-tag-mutability-exclusion-filters
                                  :target-type
                                  image-tag-mutability-exclusion-filters
                                  :member-name
                                  "imageTagMutabilityExclusionFilters")
                                 (repository-policy :target-type
                                  repository-policy-text :member-name
                                  "repositoryPolicy")
                                 (lifecycle-policy :target-type
                                  lifecycle-policy-text-for-repository-creation-template
                                  :member-name "lifecyclePolicy")
                                 (applied-for :target-type rctapplied-for-list
                                  :required common-lisp:t :member-name
                                  "appliedFor")
                                 (custom-role-arn :target-type custom-role-arn
                                  :member-name "customRoleArn"))
                                (:shape-name
                                 "CreateRepositoryCreationTemplateRequest"))

(smithy/sdk/shapes:define-output create-repository-creation-template-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-creation-template :target-type
                                   repository-creation-template :member-name
                                   "repositoryCreationTemplate"))
                                 (:shape-name
                                  "CreateRepositoryCreationTemplateResponse"))

(smithy/sdk/shapes:define-input create-repository-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (image-tag-mutability :target-type
                                  image-tag-mutability :member-name
                                  "imageTagMutability")
                                 (image-tag-mutability-exclusion-filters
                                  :target-type
                                  image-tag-mutability-exclusion-filters
                                  :member-name
                                  "imageTagMutabilityExclusionFilters")
                                 (image-scanning-configuration :target-type
                                  image-scanning-configuration :member-name
                                  "imageScanningConfiguration")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration"))
                                (:shape-name "CreateRepositoryRequest"))

(smithy/sdk/shapes:define-output create-repository-response common-lisp:nil
                                 ((repository :target-type repository
                                   :member-name "repository"))
                                 (:shape-name "CreateRepositoryResponse"))

(smithy/sdk/shapes:define-type creation-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type credential-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cvss-score common-lisp:nil
                                    ((base-score :target-type base-score
                                      :member-name "baseScore")
                                     (scoring-vector :target-type
                                      scoring-vector :member-name
                                      "scoringVector")
                                     (source :target-type source :member-name
                                      "source")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "CvssScore"))

(smithy/sdk/shapes:define-structure cvss-score-adjustment common-lisp:nil
                                    ((metric :target-type metric :member-name
                                      "metric")
                                     (reason :target-type reason :member-name
                                      "reason"))
                                    (:shape-name "CvssScoreAdjustment"))

(smithy/sdk/shapes:define-list cvss-score-adjustment-list :member
                               cvss-score-adjustment)

(smithy/sdk/shapes:define-structure cvss-score-details common-lisp:nil
                                    ((adjustments :target-type
                                      cvss-score-adjustment-list :member-name
                                      "adjustments")
                                     (score :target-type score :member-name
                                      "score")
                                     (score-source :target-type source
                                      :member-name "scoreSource")
                                     (scoring-vector :target-type
                                      scoring-vector :member-name
                                      "scoringVector")
                                     (version :target-type version :member-name
                                      "version"))
                                    (:shape-name "CvssScoreDetails"))

(smithy/sdk/shapes:define-list cvss-score-list :member cvss-score)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-lifecycle-policy-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "DeleteLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output delete-lifecycle-policy-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (lifecycle-policy-text :target-type
                                   lifecycle-policy-text :member-name
                                   "lifecyclePolicyText")
                                  (last-evaluated-at :target-type
                                   evaluation-timestamp :member-name
                                   "lastEvaluatedAt"))
                                 (:shape-name "DeleteLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input delete-pull-through-cache-rule-request
                                common-lisp:nil
                                ((ecr-repository-prefix :target-type
                                  pull-through-cache-rule-repository-prefix
                                  :required common-lisp:t :member-name
                                  "ecrRepositoryPrefix")
                                 (registry-id :target-type registry-id
                                  :member-name "registryId"))
                                (:shape-name
                                 "DeletePullThroughCacheRuleRequest"))

(smithy/sdk/shapes:define-output delete-pull-through-cache-rule-response
                                 common-lisp:nil
                                 ((ecr-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "ecrRepositoryPrefix")
                                  (upstream-registry-url :target-type url
                                   :member-name "upstreamRegistryUrl")
                                  (created-at :target-type creation-timestamp
                                   :member-name "createdAt")
                                  (registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (credential-arn :target-type credential-arn
                                   :member-name "credentialArn")
                                  (custom-role-arn :target-type custom-role-arn
                                   :member-name "customRoleArn")
                                  (upstream-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "upstreamRepositoryPrefix"))
                                 (:shape-name
                                  "DeletePullThroughCacheRuleResponse"))

(smithy/sdk/shapes:define-input delete-registry-policy-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DeleteRegistryPolicyRequest"))

(smithy/sdk/shapes:define-output delete-registry-policy-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (policy-text :target-type
                                   registry-policy-text :member-name
                                   "policyText"))
                                 (:shape-name "DeleteRegistryPolicyResponse"))

(smithy/sdk/shapes:define-input delete-repository-creation-template-request
                                common-lisp:nil
                                ((prefix :target-type prefix :required
                                  common-lisp:t :member-name "prefix"))
                                (:shape-name
                                 "DeleteRepositoryCreationTemplateRequest"))

(smithy/sdk/shapes:define-output delete-repository-creation-template-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-creation-template :target-type
                                   repository-creation-template :member-name
                                   "repositoryCreationTemplate"))
                                 (:shape-name
                                  "DeleteRepositoryCreationTemplateResponse"))

(smithy/sdk/shapes:define-input delete-repository-policy-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "DeleteRepositoryPolicyRequest"))

(smithy/sdk/shapes:define-output delete-repository-policy-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (policy-text :target-type
                                   repository-policy-text :member-name
                                   "policyText"))
                                 (:shape-name "DeleteRepositoryPolicyResponse"))

(smithy/sdk/shapes:define-input delete-repository-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (force :target-type force-flag :member-name
                                  "force"))
                                (:shape-name "DeleteRepositoryRequest"))

(smithy/sdk/shapes:define-output delete-repository-response common-lisp:nil
                                 ((repository :target-type repository
                                   :member-name "repository"))
                                 (:shape-name "DeleteRepositoryResponse"))

(smithy/sdk/shapes:define-input describe-image-replication-status-request
                                common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-id :target-type image-identifier
                                  :required common-lisp:t :member-name
                                  "imageId")
                                 (registry-id :target-type registry-id
                                  :member-name "registryId"))
                                (:shape-name
                                 "DescribeImageReplicationStatusRequest"))

(smithy/sdk/shapes:define-output describe-image-replication-status-response
                                 common-lisp:nil
                                 ((repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (image-id :target-type image-identifier
                                   :member-name "imageId")
                                  (replication-statuses :target-type
                                   image-replication-status-list :member-name
                                   "replicationStatuses"))
                                 (:shape-name
                                  "DescribeImageReplicationStatusResponse"))

(smithy/sdk/shapes:define-input describe-image-scan-findings-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-id :target-type image-identifier
                                  :required common-lisp:t :member-name
                                  "imageId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribeImageScanFindingsRequest"))

(smithy/sdk/shapes:define-output describe-image-scan-findings-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (image-id :target-type image-identifier
                                   :member-name "imageId")
                                  (image-scan-status :target-type
                                   image-scan-status :member-name
                                   "imageScanStatus")
                                  (image-scan-findings :target-type
                                   image-scan-findings :member-name
                                   "imageScanFindings")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeImageScanFindingsResponse"))

(smithy/sdk/shapes:define-structure describe-images-filter common-lisp:nil
                                    ((tag-status :target-type tag-status
                                      :member-name "tagStatus"))
                                    (:shape-name "DescribeImagesFilter"))

(smithy/sdk/shapes:define-input describe-images-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-ids :target-type image-identifier-list
                                  :member-name "imageIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filter :target-type describe-images-filter
                                  :member-name "filter"))
                                (:shape-name "DescribeImagesRequest"))

(smithy/sdk/shapes:define-output describe-images-response common-lisp:nil
                                 ((image-details :target-type image-detail-list
                                   :member-name "imageDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeImagesResponse"))

(smithy/sdk/shapes:define-input describe-pull-through-cache-rules-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (ecr-repository-prefixes :target-type
                                  pull-through-cache-rule-repository-prefix-list
                                  :member-name "ecrRepositoryPrefixes")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribePullThroughCacheRulesRequest"))

(smithy/sdk/shapes:define-output describe-pull-through-cache-rules-response
                                 common-lisp:nil
                                 ((pull-through-cache-rules :target-type
                                   pull-through-cache-rule-list :member-name
                                   "pullThroughCacheRules")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribePullThroughCacheRulesResponse"))

(smithy/sdk/shapes:define-input describe-registry-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeRegistryRequest"))

(smithy/sdk/shapes:define-output describe-registry-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (replication-configuration :target-type
                                   replication-configuration :member-name
                                   "replicationConfiguration"))
                                 (:shape-name "DescribeRegistryResponse"))

(smithy/sdk/shapes:define-input describe-repositories-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-names :target-type
                                  repository-name-list :member-name
                                  "repositoryNames")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeRepositoriesRequest"))

(smithy/sdk/shapes:define-output describe-repositories-response common-lisp:nil
                                 ((repositories :target-type repository-list
                                   :member-name "repositories")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeRepositoriesResponse"))

(smithy/sdk/shapes:define-input describe-repository-creation-templates-request
                                common-lisp:nil
                                ((prefixes :target-type prefix-list
                                  :member-name "prefixes")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "DescribeRepositoryCreationTemplatesRequest"))

(smithy/sdk/shapes:define-output
 describe-repository-creation-templates-response common-lisp:nil
 ((registry-id :target-type registry-id :member-name "registryId")
  (repository-creation-templates :target-type repository-creation-template-list
   :member-name "repositoryCreationTemplates")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "DescribeRepositoryCreationTemplatesResponse"))

(smithy/sdk/shapes:define-error empty-upload-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "EmptyUploadException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((encryption-type :target-type
                                      encryption-type :required common-lisp:t
                                      :member-name "encryptionType")
                                     (kms-key :target-type kms-key :member-name
                                      "kmsKey"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-structure
 encryption-configuration-for-repository-creation-template common-lisp:nil
 ((encryption-type :target-type encryption-type :required common-lisp:t
   :member-name "encryptionType")
  (kms-key :target-type kms-key-for-repository-creation-template :member-name
   "kmsKey"))
 (:shape-name "EncryptionConfigurationForRepositoryCreationTemplate"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:aes256 "AES256")
  (:kms "KMS")
  (:kms-dsse "KMS_DSSE"))

(smithy/sdk/shapes:define-structure enhanced-image-scan-finding common-lisp:nil
                                    ((aws-account-id :target-type registry-id
                                      :member-name "awsAccountId")
                                     (description :target-type
                                      finding-description :member-name
                                      "description")
                                     (finding-arn :target-type finding-arn
                                      :member-name "findingArn")
                                     (first-observed-at :target-type date
                                      :member-name "firstObservedAt")
                                     (last-observed-at :target-type date
                                      :member-name "lastObservedAt")
                                     (package-vulnerability-details
                                      :target-type
                                      package-vulnerability-details
                                      :member-name
                                      "packageVulnerabilityDetails")
                                     (remediation :target-type remediation
                                      :member-name "remediation")
                                     (resources :target-type resource-list
                                      :member-name "resources")
                                     (score :target-type score :member-name
                                      "score")
                                     (score-details :target-type score-details
                                      :member-name "scoreDetails")
                                     (severity :target-type severity
                                      :member-name "severity")
                                     (status :target-type status :member-name
                                      "status")
                                     (title :target-type title :member-name
                                      "title")
                                     (type :target-type type :member-name
                                      "type")
                                     (updated-at :target-type date :member-name
                                      "updatedAt")
                                     (fix-available :target-type fix-available
                                      :member-name "fixAvailable")
                                     (exploit-available :target-type
                                      exploit-available :member-name
                                      "exploitAvailable"))
                                    (:shape-name "EnhancedImageScanFinding"))

(smithy/sdk/shapes:define-list enhanced-image-scan-finding-list :member
                               enhanced-image-scan-finding)

(smithy/sdk/shapes:define-type epoch smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type evaluation-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiration-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type exploit-available smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum finding-severity
    common-lisp:nil
  (:informational "INFORMATIONAL")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:critical "CRITICAL")
  (:undefined "UNDEFINED"))

(smithy/sdk/shapes:define-map finding-severity-counts :key finding-severity
                              :value severity-count)

(smithy/sdk/shapes:define-type fix-available smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fixed-in-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type force-flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input get-account-setting-request common-lisp:nil
                                ((name :target-type account-setting-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "GetAccountSettingRequest"))

(smithy/sdk/shapes:define-output get-account-setting-response common-lisp:nil
                                 ((name :target-type account-setting-name
                                   :member-name "name")
                                  (value :target-type account-setting-name
                                   :member-name "value"))
                                 (:shape-name "GetAccountSettingResponse"))

(smithy/sdk/shapes:define-list get-authorization-token-registry-id-list :member
                               registry-id)

(smithy/sdk/shapes:define-input get-authorization-token-request common-lisp:nil
                                ((registry-ids :target-type
                                  get-authorization-token-registry-id-list
                                  :member-name "registryIds"))
                                (:shape-name "GetAuthorizationTokenRequest"))

(smithy/sdk/shapes:define-output get-authorization-token-response
                                 common-lisp:nil
                                 ((authorization-data :target-type
                                   authorization-data-list :member-name
                                   "authorizationData"))
                                 (:shape-name "GetAuthorizationTokenResponse"))

(smithy/sdk/shapes:define-input get-download-url-for-layer-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (layer-digest :target-type layer-digest
                                  :required common-lisp:t :member-name
                                  "layerDigest"))
                                (:shape-name "GetDownloadUrlForLayerRequest"))

(smithy/sdk/shapes:define-output get-download-url-for-layer-response
                                 common-lisp:nil
                                 ((download-url :target-type url :member-name
                                   "downloadUrl")
                                  (layer-digest :target-type layer-digest
                                   :member-name "layerDigest"))
                                 (:shape-name "GetDownloadUrlForLayerResponse"))

(smithy/sdk/shapes:define-input get-lifecycle-policy-preview-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-ids :target-type image-identifier-list
                                  :member-name "imageIds")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  lifecycle-preview-max-results :member-name
                                  "maxResults")
                                 (filter :target-type
                                  lifecycle-policy-preview-filter :member-name
                                  "filter"))
                                (:shape-name
                                 "GetLifecyclePolicyPreviewRequest"))

(smithy/sdk/shapes:define-output get-lifecycle-policy-preview-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (lifecycle-policy-text :target-type
                                   lifecycle-policy-text :member-name
                                   "lifecyclePolicyText")
                                  (status :target-type
                                   lifecycle-policy-preview-status :member-name
                                   "status")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (preview-results :target-type
                                   lifecycle-policy-preview-result-list
                                   :member-name "previewResults")
                                  (summary :target-type
                                   lifecycle-policy-preview-summary
                                   :member-name "summary"))
                                 (:shape-name
                                  "GetLifecyclePolicyPreviewResponse"))

(smithy/sdk/shapes:define-input get-lifecycle-policy-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "GetLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output get-lifecycle-policy-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (lifecycle-policy-text :target-type
                                   lifecycle-policy-text :member-name
                                   "lifecyclePolicyText")
                                  (last-evaluated-at :target-type
                                   evaluation-timestamp :member-name
                                   "lastEvaluatedAt"))
                                 (:shape-name "GetLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input get-registry-policy-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetRegistryPolicyRequest"))

(smithy/sdk/shapes:define-output get-registry-policy-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (policy-text :target-type
                                   registry-policy-text :member-name
                                   "policyText"))
                                 (:shape-name "GetRegistryPolicyResponse"))

(smithy/sdk/shapes:define-input get-registry-scanning-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetRegistryScanningConfigurationRequest"))

(smithy/sdk/shapes:define-output get-registry-scanning-configuration-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (scanning-configuration :target-type
                                   registry-scanning-configuration :member-name
                                   "scanningConfiguration"))
                                 (:shape-name
                                  "GetRegistryScanningConfigurationResponse"))

(smithy/sdk/shapes:define-input get-repository-policy-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "GetRepositoryPolicyRequest"))

(smithy/sdk/shapes:define-output get-repository-policy-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (policy-text :target-type
                                   repository-policy-text :member-name
                                   "policyText"))
                                 (:shape-name "GetRepositoryPolicyResponse"))

(smithy/sdk/shapes:define-structure image common-lisp:nil
                                    ((registry-id :target-type registry-id
                                      :member-name "registryId")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (image-id :target-type image-identifier
                                      :member-name "imageId")
                                     (image-manifest :target-type
                                      image-manifest :member-name
                                      "imageManifest")
                                     (image-manifest-media-type :target-type
                                      media-type :member-name
                                      "imageManifestMediaType"))
                                    (:shape-name "Image"))

(smithy/sdk/shapes:define-enum image-action-type
    common-lisp:nil
  (:expire "EXPIRE"))

(smithy/sdk/shapes:define-error image-already-exists-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ImageAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type image-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure image-detail common-lisp:nil
                                    ((registry-id :target-type registry-id
                                      :member-name "registryId")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (image-digest :target-type image-digest
                                      :member-name "imageDigest")
                                     (image-tags :target-type image-tag-list
                                      :member-name "imageTags")
                                     (image-size-in-bytes :target-type
                                      image-size-in-bytes :member-name
                                      "imageSizeInBytes")
                                     (image-pushed-at :target-type
                                      push-timestamp :member-name
                                      "imagePushedAt")
                                     (image-scan-status :target-type
                                      image-scan-status :member-name
                                      "imageScanStatus")
                                     (image-scan-findings-summary :target-type
                                      image-scan-findings-summary :member-name
                                      "imageScanFindingsSummary")
                                     (image-manifest-media-type :target-type
                                      media-type :member-name
                                      "imageManifestMediaType")
                                     (artifact-media-type :target-type
                                      media-type :member-name
                                      "artifactMediaType")
                                     (last-recorded-pull-time :target-type
                                      recorded-pull-timestamp :member-name
                                      "lastRecordedPullTime"))
                                    (:shape-name "ImageDetail"))

(smithy/sdk/shapes:define-list image-detail-list :member image-detail)

(smithy/sdk/shapes:define-type image-digest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error image-digest-does-not-match-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ImageDigestDoesNotMatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure image-failure common-lisp:nil
                                    ((image-id :target-type image-identifier
                                      :member-name "imageId")
                                     (failure-code :target-type
                                      image-failure-code :member-name
                                      "failureCode")
                                     (failure-reason :target-type
                                      image-failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "ImageFailure"))

(smithy/sdk/shapes:define-enum image-failure-code
    common-lisp:nil
  (:invalid-image-digest "InvalidImageDigest")
  (:invalid-image-tag "InvalidImageTag")
  (:image-tag-does-not-match-digest "ImageTagDoesNotMatchDigest")
  (:image-not-found "ImageNotFound")
  (:missing-digest-and-tag "MissingDigestAndTag")
  (:image-referenced-by-manifest-list "ImageReferencedByManifestList")
  (:kms-error "KmsError")
  (:upstream-access-denied "UpstreamAccessDenied")
  (:upstream-too-many-requests "UpstreamTooManyRequests")
  (:upstream-unavailable "UpstreamUnavailable"))

(smithy/sdk/shapes:define-list image-failure-list :member image-failure)

(smithy/sdk/shapes:define-type image-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-identifier common-lisp:nil
                                    ((image-digest :target-type image-digest
                                      :member-name "imageDigest")
                                     (image-tag :target-type image-tag
                                      :member-name "imageTag"))
                                    (:shape-name "ImageIdentifier"))

(smithy/sdk/shapes:define-list image-identifier-list :member image-identifier)

(smithy/sdk/shapes:define-list image-list :member image)

(smithy/sdk/shapes:define-type image-manifest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error image-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ImageNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure image-replication-status common-lisp:nil
                                    ((region :target-type region :member-name
                                      "region")
                                     (registry-id :target-type registry-id
                                      :member-name "registryId")
                                     (status :target-type replication-status
                                      :member-name "status")
                                     (failure-code :target-type
                                      replication-error :member-name
                                      "failureCode"))
                                    (:shape-name "ImageReplicationStatus"))

(smithy/sdk/shapes:define-list image-replication-status-list :member
                               image-replication-status)

(smithy/sdk/shapes:define-structure image-scan-finding common-lisp:nil
                                    ((name :target-type finding-name
                                      :member-name "name")
                                     (description :target-type
                                      finding-description :member-name
                                      "description")
                                     (uri :target-type url :member-name "uri")
                                     (severity :target-type finding-severity
                                      :member-name "severity")
                                     (attributes :target-type attribute-list
                                      :member-name "attributes"))
                                    (:shape-name "ImageScanFinding"))

(smithy/sdk/shapes:define-list image-scan-finding-list :member
                               image-scan-finding)

(smithy/sdk/shapes:define-structure image-scan-findings common-lisp:nil
                                    ((image-scan-completed-at :target-type
                                      scan-timestamp :member-name
                                      "imageScanCompletedAt")
                                     (vulnerability-source-updated-at
                                      :target-type
                                      vulnerability-source-update-timestamp
                                      :member-name
                                      "vulnerabilitySourceUpdatedAt")
                                     (finding-severity-counts :target-type
                                      finding-severity-counts :member-name
                                      "findingSeverityCounts")
                                     (findings :target-type
                                      image-scan-finding-list :member-name
                                      "findings")
                                     (enhanced-findings :target-type
                                      enhanced-image-scan-finding-list
                                      :member-name "enhancedFindings"))
                                    (:shape-name "ImageScanFindings"))

(smithy/sdk/shapes:define-structure image-scan-findings-summary common-lisp:nil
                                    ((image-scan-completed-at :target-type
                                      scan-timestamp :member-name
                                      "imageScanCompletedAt")
                                     (vulnerability-source-updated-at
                                      :target-type
                                      vulnerability-source-update-timestamp
                                      :member-name
                                      "vulnerabilitySourceUpdatedAt")
                                     (finding-severity-counts :target-type
                                      finding-severity-counts :member-name
                                      "findingSeverityCounts"))
                                    (:shape-name "ImageScanFindingsSummary"))

(smithy/sdk/shapes:define-structure image-scan-status common-lisp:nil
                                    ((status :target-type scan-status
                                      :member-name "status")
                                     (description :target-type
                                      scan-status-description :member-name
                                      "description"))
                                    (:shape-name "ImageScanStatus"))

(smithy/sdk/shapes:define-structure image-scanning-configuration
                                    common-lisp:nil
                                    ((scan-on-push :target-type
                                      scan-on-push-flag :member-name
                                      "scanOnPush"))
                                    (:shape-name "ImageScanningConfiguration"))

(smithy/sdk/shapes:define-type image-size-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type image-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error image-tag-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ImageTagAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list image-tag-list :member image-tag)

(smithy/sdk/shapes:define-enum image-tag-mutability
    common-lisp:nil
  (:mutable "MUTABLE")
  (:immutable "IMMUTABLE")
  (:immutable-with-exclusion "IMMUTABLE_WITH_EXCLUSION")
  (:mutable-with-exclusion "MUTABLE_WITH_EXCLUSION"))

(smithy/sdk/shapes:define-structure image-tag-mutability-exclusion-filter
                                    common-lisp:nil
                                    ((filter-type :target-type
                                      image-tag-mutability-exclusion-filter-type
                                      :required common-lisp:t :member-name
                                      "filterType")
                                     (filter :target-type
                                      image-tag-mutability-exclusion-filter-value
                                      :required common-lisp:t :member-name
                                      "filter"))
                                    (:shape-name
                                     "ImageTagMutabilityExclusionFilter"))

(smithy/sdk/shapes:define-enum image-tag-mutability-exclusion-filter-type
    common-lisp:nil
  (:wildcard "WILDCARD"))

(smithy/sdk/shapes:define-type image-tag-mutability-exclusion-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list image-tag-mutability-exclusion-filters :member
                               image-tag-mutability-exclusion-filter)

(smithy/sdk/shapes:define-list image-tags-list :member image-tag)

(smithy/sdk/shapes:define-type in-use-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input initiate-layer-upload-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "InitiateLayerUploadRequest"))

(smithy/sdk/shapes:define-output initiate-layer-upload-response common-lisp:nil
                                 ((upload-id :target-type upload-id
                                   :member-name "uploadId")
                                  (part-size :target-type part-size
                                   :member-name "partSize"))
                                 (:shape-name "InitiateLayerUploadResponse"))

(smithy/sdk/shapes:define-error invalid-layer-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidLayerException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-layer-part-exception common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :member-name "repositoryName")
                                 (upload-id :target-type upload-id :member-name
                                  "uploadId")
                                 (last-valid-byte-received :target-type
                                  part-size :member-name
                                  "lastValidByteReceived")
                                 (message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidLayerPartException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidTagParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type is-ptcrule-valid smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type kms-error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error kms-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (kms-error :target-type kms-error :member-name
                                  "kmsError"))
                                (:shape-name "KmsException") (:error-code 400))

(smithy/sdk/shapes:define-type kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-for-repository-creation-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure layer common-lisp:nil
                                    ((layer-digest :target-type layer-digest
                                      :member-name "layerDigest")
                                     (layer-availability :target-type
                                      layer-availability :member-name
                                      "layerAvailability")
                                     (layer-size :target-type
                                      layer-size-in-bytes :member-name
                                      "layerSize")
                                     (media-type :target-type media-type
                                      :member-name "mediaType"))
                                    (:shape-name "Layer"))

(smithy/sdk/shapes:define-error layer-already-exists-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LayerAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum layer-availability
    common-lisp:nil
  (:available "AVAILABLE")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-type layer-digest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list layer-digest-list :member layer-digest)

(smithy/sdk/shapes:define-structure layer-failure common-lisp:nil
                                    ((layer-digest :target-type
                                      batched-operation-layer-digest
                                      :member-name "layerDigest")
                                     (failure-code :target-type
                                      layer-failure-code :member-name
                                      "failureCode")
                                     (failure-reason :target-type
                                      layer-failure-reason :member-name
                                      "failureReason"))
                                    (:shape-name "LayerFailure"))

(smithy/sdk/shapes:define-enum layer-failure-code
    common-lisp:nil
  (:invalid-layer-digest "InvalidLayerDigest")
  (:missing-layer-digest "MissingLayerDigest"))

(smithy/sdk/shapes:define-list layer-failure-list :member layer-failure)

(smithy/sdk/shapes:define-type layer-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error layer-inaccessible-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LayerInaccessibleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list layer-list :member layer)

(smithy/sdk/shapes:define-type layer-part-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error layer-part-too-small-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LayerPartTooSmallException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type layer-size-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error layers-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LayersNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error lifecycle-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "LifecyclePolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure lifecycle-policy-preview-filter
                                    common-lisp:nil
                                    ((tag-status :target-type tag-status
                                      :member-name "tagStatus"))
                                    (:shape-name
                                     "LifecyclePolicyPreviewFilter"))

(smithy/sdk/shapes:define-error lifecycle-policy-preview-in-progress-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "LifecyclePolicyPreviewInProgressException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error lifecycle-policy-preview-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "LifecyclePolicyPreviewNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure lifecycle-policy-preview-result
                                    common-lisp:nil
                                    ((image-tags :target-type image-tag-list
                                      :member-name "imageTags")
                                     (image-digest :target-type image-digest
                                      :member-name "imageDigest")
                                     (image-pushed-at :target-type
                                      push-timestamp :member-name
                                      "imagePushedAt")
                                     (action :target-type
                                      lifecycle-policy-rule-action :member-name
                                      "action")
                                     (applied-rule-priority :target-type
                                      lifecycle-policy-rule-priority
                                      :member-name "appliedRulePriority"))
                                    (:shape-name
                                     "LifecyclePolicyPreviewResult"))

(smithy/sdk/shapes:define-list lifecycle-policy-preview-result-list :member
                               lifecycle-policy-preview-result)

(smithy/sdk/shapes:define-enum lifecycle-policy-preview-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:expired "EXPIRED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure lifecycle-policy-preview-summary
                                    common-lisp:nil
                                    ((expiring-image-total-count :target-type
                                      image-count :member-name
                                      "expiringImageTotalCount"))
                                    (:shape-name
                                     "LifecyclePolicyPreviewSummary"))

(smithy/sdk/shapes:define-structure lifecycle-policy-rule-action
                                    common-lisp:nil
                                    ((type :target-type image-action-type
                                      :member-name "type"))
                                    (:shape-name "LifecyclePolicyRuleAction"))

(smithy/sdk/shapes:define-type lifecycle-policy-rule-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type lifecycle-policy-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 lifecycle-policy-text-for-repository-creation-template
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lifecycle-preview-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure list-images-filter common-lisp:nil
                                    ((tag-status :target-type tag-status
                                      :member-name "tagStatus"))
                                    (:shape-name "ListImagesFilter"))

(smithy/sdk/shapes:define-input list-images-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filter :target-type list-images-filter
                                  :member-name "filter"))
                                (:shape-name "ListImagesRequest"))

(smithy/sdk/shapes:define-output list-images-response common-lisp:nil
                                 ((image-ids :target-type image-identifier-list
                                   :member-name "imageIds")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImagesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type media-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list media-type-list :member media-type)

(smithy/sdk/shapes:define-type metric smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ptcvalidate-failure
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-manager smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-vulnerability-details
                                    common-lisp:nil
                                    ((cvss :target-type cvss-score-list
                                      :member-name "cvss")
                                     (reference-urls :target-type
                                      reference-urls-list :member-name
                                      "referenceUrls")
                                     (related-vulnerabilities :target-type
                                      related-vulnerabilities-list :member-name
                                      "relatedVulnerabilities")
                                     (source :target-type source :member-name
                                      "source")
                                     (source-url :target-type url :member-name
                                      "sourceUrl")
                                     (vendor-created-at :target-type date
                                      :member-name "vendorCreatedAt")
                                     (vendor-severity :target-type severity
                                      :member-name "vendorSeverity")
                                     (vendor-updated-at :target-type date
                                      :member-name "vendorUpdatedAt")
                                     (vulnerability-id :target-type
                                      vulnerability-id :member-name
                                      "vulnerabilityId")
                                     (vulnerable-packages :target-type
                                      vulnerable-packages-list :member-name
                                      "vulnerablePackages"))
                                    (:shape-name "PackageVulnerabilityDetails"))

(smithy/sdk/shapes:define-type part-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type platform smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list prefix-list :member prefix)

(smithy/sdk/shapes:define-type proxy-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pull-through-cache-rule common-lisp:nil
                                    ((ecr-repository-prefix :target-type
                                      pull-through-cache-rule-repository-prefix
                                      :member-name "ecrRepositoryPrefix")
                                     (upstream-registry-url :target-type url
                                      :member-name "upstreamRegistryUrl")
                                     (created-at :target-type
                                      creation-timestamp :member-name
                                      "createdAt")
                                     (registry-id :target-type registry-id
                                      :member-name "registryId")
                                     (credential-arn :target-type
                                      credential-arn :member-name
                                      "credentialArn")
                                     (custom-role-arn :target-type
                                      custom-role-arn :member-name
                                      "customRoleArn")
                                     (upstream-repository-prefix :target-type
                                      pull-through-cache-rule-repository-prefix
                                      :member-name "upstreamRepositoryPrefix")
                                     (upstream-registry :target-type
                                      upstream-registry :member-name
                                      "upstreamRegistry")
                                     (updated-at :target-type updated-timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "PullThroughCacheRule"))

(smithy/sdk/shapes:define-error
 pull-through-cache-rule-already-exists-exception common-lisp:nil
 ((message :target-type exception-message :member-name "message"))
 (:shape-name "PullThroughCacheRuleAlreadyExistsException") (:error-code 400))

(smithy/sdk/shapes:define-list pull-through-cache-rule-list :member
                               pull-through-cache-rule)

(smithy/sdk/shapes:define-error pull-through-cache-rule-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "PullThroughCacheRuleNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type pull-through-cache-rule-repository-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pull-through-cache-rule-repository-prefix-list
                               :member
                               pull-through-cache-rule-repository-prefix)

(smithy/sdk/shapes:define-type push-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input put-account-setting-request common-lisp:nil
                                ((name :target-type account-setting-name
                                  :required common-lisp:t :member-name "name")
                                 (value :target-type account-setting-value
                                  :required common-lisp:t :member-name
                                  "value"))
                                (:shape-name "PutAccountSettingRequest"))

(smithy/sdk/shapes:define-output put-account-setting-response common-lisp:nil
                                 ((name :target-type account-setting-name
                                   :member-name "name")
                                  (value :target-type account-setting-value
                                   :member-name "value"))
                                 (:shape-name "PutAccountSettingResponse"))

(smithy/sdk/shapes:define-input put-image-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-manifest :target-type image-manifest
                                  :required common-lisp:t :member-name
                                  "imageManifest")
                                 (image-manifest-media-type :target-type
                                  media-type :member-name
                                  "imageManifestMediaType")
                                 (image-tag :target-type image-tag :member-name
                                  "imageTag")
                                 (image-digest :target-type image-digest
                                  :member-name "imageDigest"))
                                (:shape-name "PutImageRequest"))

(smithy/sdk/shapes:define-output put-image-response common-lisp:nil
                                 ((image :target-type image :member-name
                                   "image"))
                                 (:shape-name "PutImageResponse"))

(smithy/sdk/shapes:define-input put-image-scanning-configuration-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-scanning-configuration :target-type
                                  image-scanning-configuration :required
                                  common-lisp:t :member-name
                                  "imageScanningConfiguration"))
                                (:shape-name
                                 "PutImageScanningConfigurationRequest"))

(smithy/sdk/shapes:define-output put-image-scanning-configuration-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (image-scanning-configuration :target-type
                                   image-scanning-configuration :member-name
                                   "imageScanningConfiguration"))
                                 (:shape-name
                                  "PutImageScanningConfigurationResponse"))

(smithy/sdk/shapes:define-input put-image-tag-mutability-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-tag-mutability :target-type
                                  image-tag-mutability :required common-lisp:t
                                  :member-name "imageTagMutability")
                                 (image-tag-mutability-exclusion-filters
                                  :target-type
                                  image-tag-mutability-exclusion-filters
                                  :member-name
                                  "imageTagMutabilityExclusionFilters"))
                                (:shape-name "PutImageTagMutabilityRequest"))

(smithy/sdk/shapes:define-output put-image-tag-mutability-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (image-tag-mutability :target-type
                                   image-tag-mutability :member-name
                                   "imageTagMutability")
                                  (image-tag-mutability-exclusion-filters
                                   :target-type
                                   image-tag-mutability-exclusion-filters
                                   :member-name
                                   "imageTagMutabilityExclusionFilters"))
                                 (:shape-name "PutImageTagMutabilityResponse"))

(smithy/sdk/shapes:define-input put-lifecycle-policy-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (lifecycle-policy-text :target-type
                                  lifecycle-policy-text :required common-lisp:t
                                  :member-name "lifecyclePolicyText"))
                                (:shape-name "PutLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output put-lifecycle-policy-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (lifecycle-policy-text :target-type
                                   lifecycle-policy-text :member-name
                                   "lifecyclePolicyText"))
                                 (:shape-name "PutLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input put-registry-policy-request common-lisp:nil
                                ((policy-text :target-type registry-policy-text
                                  :required common-lisp:t :member-name
                                  "policyText"))
                                (:shape-name "PutRegistryPolicyRequest"))

(smithy/sdk/shapes:define-output put-registry-policy-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (policy-text :target-type
                                   registry-policy-text :member-name
                                   "policyText"))
                                 (:shape-name "PutRegistryPolicyResponse"))

(smithy/sdk/shapes:define-input put-registry-scanning-configuration-request
                                common-lisp:nil
                                ((scan-type :target-type scan-type :member-name
                                  "scanType")
                                 (rules :target-type
                                  registry-scanning-rule-list :member-name
                                  "rules"))
                                (:shape-name
                                 "PutRegistryScanningConfigurationRequest"))

(smithy/sdk/shapes:define-output put-registry-scanning-configuration-response
                                 common-lisp:nil
                                 ((registry-scanning-configuration :target-type
                                   registry-scanning-configuration :member-name
                                   "registryScanningConfiguration"))
                                 (:shape-name
                                  "PutRegistryScanningConfigurationResponse"))

(smithy/sdk/shapes:define-input put-replication-configuration-request
                                common-lisp:nil
                                ((replication-configuration :target-type
                                  replication-configuration :required
                                  common-lisp:t :member-name
                                  "replicationConfiguration"))
                                (:shape-name
                                 "PutReplicationConfigurationRequest"))

(smithy/sdk/shapes:define-output put-replication-configuration-response
                                 common-lisp:nil
                                 ((replication-configuration :target-type
                                   replication-configuration :member-name
                                   "replicationConfiguration"))
                                 (:shape-name
                                  "PutReplicationConfigurationResponse"))

(smithy/sdk/shapes:define-enum rctapplied-for
    common-lisp:nil
  (:replication "REPLICATION")
  (:pull-through-cache "PULL_THROUGH_CACHE"))

(smithy/sdk/shapes:define-list rctapplied-for-list :member rctapplied-for)

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((url :target-type url :member-name "url")
                                     (text :target-type recommendation-text
                                      :member-name "text"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-type recommendation-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recorded-pull-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list reference-urls-list :member url)

(smithy/sdk/shapes:define-error referenced-images-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReferencedImagesNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registry-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error registry-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RegistryPolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type registry-policy-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registry-scanning-configuration
                                    common-lisp:nil
                                    ((scan-type :target-type scan-type
                                      :member-name "scanType")
                                     (rules :target-type
                                      registry-scanning-rule-list :member-name
                                      "rules"))
                                    (:shape-name
                                     "RegistryScanningConfiguration"))

(smithy/sdk/shapes:define-structure registry-scanning-rule common-lisp:nil
                                    ((scan-frequency :target-type
                                      scan-frequency :required common-lisp:t
                                      :member-name "scanFrequency")
                                     (repository-filters :target-type
                                      scanning-repository-filter-list :required
                                      common-lisp:t :member-name
                                      "repositoryFilters"))
                                    (:shape-name "RegistryScanningRule"))

(smithy/sdk/shapes:define-list registry-scanning-rule-list :member
                               registry-scanning-rule)

(smithy/sdk/shapes:define-list related-vulnerabilities-list :member
                               related-vulnerability)

(smithy/sdk/shapes:define-type related-vulnerability
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type release smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure remediation common-lisp:nil
                                    ((recommendation :target-type
                                      recommendation :member-name
                                      "recommendation"))
                                    (:shape-name "Remediation"))

(smithy/sdk/shapes:define-structure replication-configuration common-lisp:nil
                                    ((rules :target-type replication-rule-list
                                      :required common-lisp:t :member-name
                                      "rules"))
                                    (:shape-name "ReplicationConfiguration"))

(smithy/sdk/shapes:define-structure replication-destination common-lisp:nil
                                    ((region :target-type region :required
                                      common-lisp:t :member-name "region")
                                     (registry-id :target-type registry-id
                                      :required common-lisp:t :member-name
                                      "registryId"))
                                    (:shape-name "ReplicationDestination"))

(smithy/sdk/shapes:define-list replication-destination-list :member
                               replication-destination)

(smithy/sdk/shapes:define-type replication-error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replication-rule common-lisp:nil
                                    ((destinations :target-type
                                      replication-destination-list :required
                                      common-lisp:t :member-name
                                      "destinations")
                                     (repository-filters :target-type
                                      repository-filter-list :member-name
                                      "repositoryFilters"))
                                    (:shape-name "ReplicationRule"))

(smithy/sdk/shapes:define-list replication-rule-list :member replication-rule)

(smithy/sdk/shapes:define-enum replication-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure repository common-lisp:nil
                                    ((repository-arn :target-type arn
                                      :member-name "repositoryArn")
                                     (registry-id :target-type registry-id
                                      :member-name "registryId")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (repository-uri :target-type url
                                      :member-name "repositoryUri")
                                     (created-at :target-type
                                      creation-timestamp :member-name
                                      "createdAt")
                                     (image-tag-mutability :target-type
                                      image-tag-mutability :member-name
                                      "imageTagMutability")
                                     (image-tag-mutability-exclusion-filters
                                      :target-type
                                      image-tag-mutability-exclusion-filters
                                      :member-name
                                      "imageTagMutabilityExclusionFilters")
                                     (image-scanning-configuration :target-type
                                      image-scanning-configuration :member-name
                                      "imageScanningConfiguration")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "encryptionConfiguration"))
                                    (:shape-name "Repository"))

(smithy/sdk/shapes:define-error repository-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RepositoryAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure repository-creation-template
                                    common-lisp:nil
                                    ((prefix :target-type prefix :member-name
                                      "prefix")
                                     (description :target-type
                                      repository-template-description
                                      :member-name "description")
                                     (encryption-configuration :target-type
                                      encryption-configuration-for-repository-creation-template
                                      :member-name "encryptionConfiguration")
                                     (resource-tags :target-type tag-list
                                      :member-name "resourceTags")
                                     (image-tag-mutability :target-type
                                      image-tag-mutability :member-name
                                      "imageTagMutability")
                                     (image-tag-mutability-exclusion-filters
                                      :target-type
                                      image-tag-mutability-exclusion-filters
                                      :member-name
                                      "imageTagMutabilityExclusionFilters")
                                     (repository-policy :target-type
                                      repository-policy-text :member-name
                                      "repositoryPolicy")
                                     (lifecycle-policy :target-type
                                      lifecycle-policy-text-for-repository-creation-template
                                      :member-name "lifecyclePolicy")
                                     (applied-for :target-type
                                      rctapplied-for-list :member-name
                                      "appliedFor")
                                     (custom-role-arn :target-type
                                      custom-role-arn :member-name
                                      "customRoleArn")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt"))
                                    (:shape-name "RepositoryCreationTemplate"))

(smithy/sdk/shapes:define-list repository-creation-template-list :member
                               repository-creation-template)

(smithy/sdk/shapes:define-structure repository-filter common-lisp:nil
                                    ((filter :target-type
                                      repository-filter-value :required
                                      common-lisp:t :member-name "filter")
                                     (filter-type :target-type
                                      repository-filter-type :required
                                      common-lisp:t :member-name "filterType"))
                                    (:shape-name "RepositoryFilter"))

(smithy/sdk/shapes:define-list repository-filter-list :member repository-filter)

(smithy/sdk/shapes:define-enum repository-filter-type
    common-lisp:nil
  (:prefix-match "PREFIX_MATCH"))

(smithy/sdk/shapes:define-type repository-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-list :member repository)

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-name-list :member repository-name)

(smithy/sdk/shapes:define-error repository-not-empty-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RepositoryNotEmptyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error repository-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RepositoryNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error repository-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RepositoryPolicyNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type repository-policy-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure repository-scanning-configuration
                                    common-lisp:nil
                                    ((repository-arn :target-type arn
                                      :member-name "repositoryArn")
                                     (repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (scan-on-push :target-type
                                      scan-on-push-flag :member-name
                                      "scanOnPush")
                                     (scan-frequency :target-type
                                      scan-frequency :member-name
                                      "scanFrequency")
                                     (applied-scan-filters :target-type
                                      scanning-repository-filter-list
                                      :member-name "appliedScanFilters"))
                                    (:shape-name
                                     "RepositoryScanningConfiguration"))

(smithy/sdk/shapes:define-structure repository-scanning-configuration-failure
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (failure-code :target-type
                                      scanning-configuration-failure-code
                                      :member-name "failureCode")
                                     (failure-reason :target-type
                                      scanning-configuration-failure-reason
                                      :member-name "failureReason"))
                                    (:shape-name
                                     "RepositoryScanningConfigurationFailure"))

(smithy/sdk/shapes:define-list repository-scanning-configuration-failure-list
                               :member
                               repository-scanning-configuration-failure)

(smithy/sdk/shapes:define-list repository-scanning-configuration-list :member
                               repository-scanning-configuration)

(smithy/sdk/shapes:define-type repository-template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((details :target-type resource-details
                                      :member-name "details")
                                     (id :target-type resource-id :member-name
                                      "id")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (type :target-type type :member-name
                                      "type"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-structure resource-details common-lisp:nil
                                    ((aws-ecr-container-image :target-type
                                      aws-ecr-container-image-details
                                      :member-name "awsEcrContainerImage"))
                                    (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-enum scan-frequency
    common-lisp:nil
  (:scan-on-push "SCAN_ON_PUSH")
  (:continuous-scan "CONTINUOUS_SCAN")
  (:manual "MANUAL"))

(smithy/sdk/shapes:define-error scan-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ScanNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type scan-on-push-flag
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum scan-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:unsupported-image "UNSUPPORTED_IMAGE")
  (:active "ACTIVE")
  (:pending "PENDING")
  (:scan-eligibility-expired "SCAN_ELIGIBILITY_EXPIRED")
  (:findings-unavailable "FINDINGS_UNAVAILABLE")
  (:limit-exceeded "LIMIT_EXCEEDED"))

(smithy/sdk/shapes:define-type scan-status-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum scan-type
    common-lisp:nil
  (:basic "BASIC")
  (:enhanced "ENHANCED"))

(smithy/sdk/shapes:define-enum scanning-configuration-failure-code
    common-lisp:nil
  (:repository-not-found "REPOSITORY_NOT_FOUND"))

(smithy/sdk/shapes:define-type scanning-configuration-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scanning-configuration-repository-name-list
                               :member repository-name)

(smithy/sdk/shapes:define-structure scanning-repository-filter common-lisp:nil
                                    ((filter :target-type
                                      scanning-repository-filter-value
                                      :required common-lisp:t :member-name
                                      "filter")
                                     (filter-type :target-type
                                      scanning-repository-filter-type :required
                                      common-lisp:t :member-name "filterType"))
                                    (:shape-name "ScanningRepositoryFilter"))

(smithy/sdk/shapes:define-list scanning-repository-filter-list :member
                               scanning-repository-filter)

(smithy/sdk/shapes:define-enum scanning-repository-filter-type
    common-lisp:nil
  (:wildcard "WILDCARD"))

(smithy/sdk/shapes:define-type scanning-repository-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure score-details common-lisp:nil
                                    ((cvss :target-type cvss-score-details
                                      :member-name "cvss"))
                                    (:shape-name "ScoreDetails"))

(smithy/sdk/shapes:define-type scoring-vector smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error secret-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SecretNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input set-repository-policy-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (policy-text :target-type
                                  repository-policy-text :required
                                  common-lisp:t :member-name "policyText")
                                 (force :target-type force-flag :member-name
                                  "force"))
                                (:shape-name "SetRepositoryPolicyRequest"))

(smithy/sdk/shapes:define-output set-repository-policy-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (policy-text :target-type
                                   repository-policy-text :member-name
                                   "policyText"))
                                 (:shape-name "SetRepositoryPolicyResponse"))

(smithy/sdk/shapes:define-type severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type severity-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-layer-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-image-scan-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (image-id :target-type image-identifier
                                  :required common-lisp:t :member-name
                                  "imageId"))
                                (:shape-name "StartImageScanRequest"))

(smithy/sdk/shapes:define-output start-image-scan-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (image-id :target-type image-identifier
                                   :member-name "imageId")
                                  (image-scan-status :target-type
                                   image-scan-status :member-name
                                   "imageScanStatus"))
                                 (:shape-name "StartImageScanResponse"))

(smithy/sdk/shapes:define-input start-lifecycle-policy-preview-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (lifecycle-policy-text :target-type
                                  lifecycle-policy-text :member-name
                                  "lifecyclePolicyText"))
                                (:shape-name
                                 "StartLifecyclePolicyPreviewRequest"))

(smithy/sdk/shapes:define-output start-lifecycle-policy-preview-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (lifecycle-policy-text :target-type
                                   lifecycle-policy-text :member-name
                                   "lifecyclePolicyText")
                                  (status :target-type
                                   lifecycle-policy-preview-status :member-name
                                   "status"))
                                 (:shape-name
                                  "StartLifecyclePolicyPreviewResponse"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-enum tag-status
    common-lisp:nil
  (:tagged "TAGGED")
  (:untagged "UNTAGGED")
  (:any "ANY"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error template-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TemplateAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error template-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TemplateNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unable-to-access-secret-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnableToAccessSecretException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unable-to-decrypt-secret-value-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnableToDecryptSecretValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unable-to-get-upstream-image-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnableToGetUpstreamImageException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unable-to-get-upstream-layer-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnableToGetUpstreamLayerException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-image-type-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedImageTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-upstream-registry-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnsupportedUpstreamRegistryException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-pull-through-cache-rule-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (ecr-repository-prefix :target-type
                                  pull-through-cache-rule-repository-prefix
                                  :required common-lisp:t :member-name
                                  "ecrRepositoryPrefix")
                                 (credential-arn :target-type credential-arn
                                  :member-name "credentialArn")
                                 (custom-role-arn :target-type custom-role-arn
                                  :member-name "customRoleArn"))
                                (:shape-name
                                 "UpdatePullThroughCacheRuleRequest"))

(smithy/sdk/shapes:define-output update-pull-through-cache-rule-response
                                 common-lisp:nil
                                 ((ecr-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "ecrRepositoryPrefix")
                                  (registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (updated-at :target-type updated-timestamp
                                   :member-name "updatedAt")
                                  (credential-arn :target-type credential-arn
                                   :member-name "credentialArn")
                                  (custom-role-arn :target-type custom-role-arn
                                   :member-name "customRoleArn")
                                  (upstream-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "upstreamRepositoryPrefix"))
                                 (:shape-name
                                  "UpdatePullThroughCacheRuleResponse"))

(smithy/sdk/shapes:define-input update-repository-creation-template-request
                                common-lisp:nil
                                ((prefix :target-type prefix :required
                                  common-lisp:t :member-name "prefix")
                                 (description :target-type
                                  repository-template-description :member-name
                                  "description")
                                 (encryption-configuration :target-type
                                  encryption-configuration-for-repository-creation-template
                                  :member-name "encryptionConfiguration")
                                 (resource-tags :target-type tag-list
                                  :member-name "resourceTags")
                                 (image-tag-mutability :target-type
                                  image-tag-mutability :member-name
                                  "imageTagMutability")
                                 (image-tag-mutability-exclusion-filters
                                  :target-type
                                  image-tag-mutability-exclusion-filters
                                  :member-name
                                  "imageTagMutabilityExclusionFilters")
                                 (repository-policy :target-type
                                  repository-policy-text :member-name
                                  "repositoryPolicy")
                                 (lifecycle-policy :target-type
                                  lifecycle-policy-text-for-repository-creation-template
                                  :member-name "lifecyclePolicy")
                                 (applied-for :target-type rctapplied-for-list
                                  :member-name "appliedFor")
                                 (custom-role-arn :target-type custom-role-arn
                                  :member-name "customRoleArn"))
                                (:shape-name
                                 "UpdateRepositoryCreationTemplateRequest"))

(smithy/sdk/shapes:define-output update-repository-creation-template-response
                                 common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-creation-template :target-type
                                   repository-creation-template :member-name
                                   "repositoryCreationTemplate"))
                                 (:shape-name
                                  "UpdateRepositoryCreationTemplateResponse"))

(smithy/sdk/shapes:define-type updated-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type upload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input upload-layer-part-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId")
                                 (part-first-byte :target-type part-size
                                  :required common-lisp:t :member-name
                                  "partFirstByte")
                                 (part-last-byte :target-type part-size
                                  :required common-lisp:t :member-name
                                  "partLastByte")
                                 (layer-part-blob :target-type layer-part-blob
                                  :required common-lisp:t :member-name
                                  "layerPartBlob"))
                                (:shape-name "UploadLayerPartRequest"))

(smithy/sdk/shapes:define-output upload-layer-part-response common-lisp:nil
                                 ((registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (repository-name :target-type repository-name
                                   :member-name "repositoryName")
                                  (upload-id :target-type upload-id
                                   :member-name "uploadId")
                                  (last-byte-received :target-type part-size
                                   :member-name "lastByteReceived"))
                                 (:shape-name "UploadLayerPartResponse"))

(smithy/sdk/shapes:define-error upload-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UploadNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum upstream-registry
    common-lisp:nil
  (:ecr "ecr")
  (:ecr-public "ecr-public")
  (:quay "quay")
  (:k8s "k8s")
  (:docker-hub "docker-hub")
  (:git-hub-container-registry "github-container-registry")
  (:azure-container-registry "azure-container-registry")
  (:git-lab-container-registry "gitlab-container-registry"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input validate-pull-through-cache-rule-request
                                common-lisp:nil
                                ((ecr-repository-prefix :target-type
                                  pull-through-cache-rule-repository-prefix
                                  :required common-lisp:t :member-name
                                  "ecrRepositoryPrefix")
                                 (registry-id :target-type registry-id
                                  :member-name "registryId"))
                                (:shape-name
                                 "ValidatePullThroughCacheRuleRequest"))

(smithy/sdk/shapes:define-output validate-pull-through-cache-rule-response
                                 common-lisp:nil
                                 ((ecr-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "ecrRepositoryPrefix")
                                  (registry-id :target-type registry-id
                                   :member-name "registryId")
                                  (upstream-registry-url :target-type url
                                   :member-name "upstreamRegistryUrl")
                                  (credential-arn :target-type credential-arn
                                   :member-name "credentialArn")
                                  (custom-role-arn :target-type custom-role-arn
                                   :member-name "customRoleArn")
                                  (upstream-repository-prefix :target-type
                                   pull-through-cache-rule-repository-prefix
                                   :member-name "upstreamRepositoryPrefix")
                                  (is-valid :target-type is-ptcrule-valid
                                   :member-name "isValid")
                                  (failure :target-type ptcvalidate-failure
                                   :member-name "failure"))
                                 (:shape-name
                                  "ValidatePullThroughCacheRuleResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vulnerability-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vulnerability-source-update-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure vulnerable-package common-lisp:nil
                                    ((arch :target-type arch :member-name
                                      "arch")
                                     (epoch :target-type epoch :member-name
                                      "epoch")
                                     (file-path :target-type file-path
                                      :member-name "filePath")
                                     (name :target-type vulnerable-package-name
                                      :member-name "name")
                                     (package-manager :target-type
                                      package-manager :member-name
                                      "packageManager")
                                     (release :target-type release :member-name
                                      "release")
                                     (source-layer-hash :target-type
                                      source-layer-hash :member-name
                                      "sourceLayerHash")
                                     (version :target-type version :member-name
                                      "version")
                                     (fixed-in-version :target-type
                                      fixed-in-version :member-name
                                      "fixedInVersion"))
                                    (:shape-name "VulnerablePackage"))

(smithy/sdk/shapes:define-type vulnerable-package-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vulnerable-packages-list :member
                               vulnerable-package)

(smithy/sdk/operation:define-operation batch-check-layer-availability
                                       :shape-name
                                       "BatchCheckLayerAvailability" :input
                                       batch-check-layer-availability-request
                                       :output
                                       batch-check-layer-availability-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation batch-delete-image :shape-name
                                       "BatchDeleteImage" :input
                                       batch-delete-image-request :output
                                       batch-delete-image-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation batch-get-image :shape-name
                                       "BatchGetImage" :input
                                       batch-get-image-request :output
                                       batch-get-image-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        repository-not-found-exception
                                        server-exception
                                        unable-to-get-upstream-image-exception))

(smithy/sdk/operation:define-operation
 batch-get-repository-scanning-configuration :shape-name
 "BatchGetRepositoryScanningConfiguration" :input
 batch-get-repository-scanning-configuration-request :output
 batch-get-repository-scanning-configuration-response :errors
 (invalid-parameter-exception repository-not-found-exception server-exception
  validation-exception))

(smithy/sdk/operation:define-operation complete-layer-upload :shape-name
                                       "CompleteLayerUpload" :input
                                       complete-layer-upload-request :output
                                       complete-layer-upload-response :errors
                                       (empty-upload-exception
                                        invalid-layer-exception
                                        invalid-parameter-exception
                                        kms-exception
                                        layer-already-exists-exception
                                        layer-part-too-small-exception
                                        repository-not-found-exception
                                        server-exception
                                        upload-not-found-exception))

(smithy/sdk/operation:define-operation create-pull-through-cache-rule
                                       :shape-name "CreatePullThroughCacheRule"
                                       :input
                                       create-pull-through-cache-rule-request
                                       :output
                                       create-pull-through-cache-rule-response
                                       :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        pull-through-cache-rule-already-exists-exception
                                        secret-not-found-exception
                                        server-exception
                                        unable-to-access-secret-exception
                                        unable-to-decrypt-secret-value-exception
                                        unsupported-upstream-registry-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-repository :shape-name
                                       "CreateRepository" :input
                                       create-repository-request :output
                                       create-repository-response :errors
                                       (invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        kms-exception limit-exceeded-exception
                                        repository-already-exists-exception
                                        server-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-repository-creation-template
                                       :shape-name
                                       "CreateRepositoryCreationTemplate"
                                       :input
                                       create-repository-creation-template-request
                                       :output
                                       create-repository-creation-template-response
                                       :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        server-exception
                                        template-already-exists-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-lifecycle-policy :shape-name
                                       "DeleteLifecyclePolicy" :input
                                       delete-lifecycle-policy-request :output
                                       delete-lifecycle-policy-response :errors
                                       (invalid-parameter-exception
                                        lifecycle-policy-not-found-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation delete-pull-through-cache-rule
                                       :shape-name "DeletePullThroughCacheRule"
                                       :input
                                       delete-pull-through-cache-rule-request
                                       :output
                                       delete-pull-through-cache-rule-response
                                       :errors
                                       (invalid-parameter-exception
                                        pull-through-cache-rule-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation delete-registry-policy :shape-name
                                       "DeleteRegistryPolicy" :input
                                       delete-registry-policy-request :output
                                       delete-registry-policy-response :errors
                                       (invalid-parameter-exception
                                        registry-policy-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation delete-repository :shape-name
                                       "DeleteRepository" :input
                                       delete-repository-request :output
                                       delete-repository-response :errors
                                       (invalid-parameter-exception
                                        kms-exception
                                        repository-not-empty-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation delete-repository-creation-template
                                       :shape-name
                                       "DeleteRepositoryCreationTemplate"
                                       :input
                                       delete-repository-creation-template-request
                                       :output
                                       delete-repository-creation-template-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception
                                        template-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-repository-policy :shape-name
                                       "DeleteRepositoryPolicy" :input
                                       delete-repository-policy-request :output
                                       delete-repository-policy-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        repository-policy-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-image-replication-status
                                       :shape-name
                                       "DescribeImageReplicationStatus" :input
                                       describe-image-replication-status-request
                                       :output
                                       describe-image-replication-status-response
                                       :errors
                                       (image-not-found-exception
                                        invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation describe-image-scan-findings :shape-name
                                       "DescribeImageScanFindings" :input
                                       describe-image-scan-findings-request
                                       :output
                                       describe-image-scan-findings-response
                                       :errors
                                       (image-not-found-exception
                                        invalid-parameter-exception
                                        repository-not-found-exception
                                        scan-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation describe-images :shape-name
                                       "DescribeImages" :input
                                       describe-images-request :output
                                       describe-images-response :errors
                                       (image-not-found-exception
                                        invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-pull-through-cache-rules
                                       :shape-name
                                       "DescribePullThroughCacheRules" :input
                                       describe-pull-through-cache-rules-request
                                       :output
                                       describe-pull-through-cache-rules-response
                                       :errors
                                       (invalid-parameter-exception
                                        pull-through-cache-rule-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation describe-registry :shape-name
                                       "DescribeRegistry" :input
                                       describe-registry-request :output
                                       describe-registry-response :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation describe-repositories :shape-name
                                       "DescribeRepositories" :input
                                       describe-repositories-request :output
                                       describe-repositories-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation describe-repository-creation-templates
                                       :shape-name
                                       "DescribeRepositoryCreationTemplates"
                                       :input
                                       describe-repository-creation-templates-request
                                       :output
                                       describe-repository-creation-templates-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation get-account-setting :shape-name
                                       "GetAccountSetting" :input
                                       get-account-setting-request :output
                                       get-account-setting-response :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation get-authorization-token :shape-name
                                       "GetAuthorizationToken" :input
                                       get-authorization-token-request :output
                                       get-authorization-token-response :errors
                                       (invalid-parameter-exception
                                        server-exception))

(smithy/sdk/operation:define-operation get-download-url-for-layer :shape-name
                                       "GetDownloadUrlForLayer" :input
                                       get-download-url-for-layer-request
                                       :output
                                       get-download-url-for-layer-response
                                       :errors
                                       (invalid-parameter-exception
                                        layer-inaccessible-exception
                                        layers-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unable-to-get-upstream-layer-exception))

(smithy/sdk/operation:define-operation get-lifecycle-policy :shape-name
                                       "GetLifecyclePolicy" :input
                                       get-lifecycle-policy-request :output
                                       get-lifecycle-policy-response :errors
                                       (invalid-parameter-exception
                                        lifecycle-policy-not-found-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation get-lifecycle-policy-preview :shape-name
                                       "GetLifecyclePolicyPreview" :input
                                       get-lifecycle-policy-preview-request
                                       :output
                                       get-lifecycle-policy-preview-response
                                       :errors
                                       (invalid-parameter-exception
                                        lifecycle-policy-preview-not-found-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation get-registry-policy :shape-name
                                       "GetRegistryPolicy" :input
                                       get-registry-policy-request :output
                                       get-registry-policy-response :errors
                                       (invalid-parameter-exception
                                        registry-policy-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation get-registry-scanning-configuration
                                       :shape-name
                                       "GetRegistryScanningConfiguration"
                                       :input
                                       get-registry-scanning-configuration-request
                                       :output
                                       get-registry-scanning-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation get-repository-policy :shape-name
                                       "GetRepositoryPolicy" :input
                                       get-repository-policy-request :output
                                       get-repository-policy-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        repository-policy-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation initiate-layer-upload :shape-name
                                       "InitiateLayerUpload" :input
                                       initiate-layer-upload-request :output
                                       initiate-layer-upload-response :errors
                                       (invalid-parameter-exception
                                        kms-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-images :shape-name "ListImages"
                                       :input list-images-request :output
                                       list-images-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation put-account-setting :shape-name
                                       "PutAccountSetting" :input
                                       put-account-setting-request :output
                                       put-account-setting-response :errors
                                       (invalid-parameter-exception
                                        limit-exceeded-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation put-image :shape-name "PutImage" :input
                                       put-image-request :output
                                       put-image-response :errors
                                       (image-already-exists-exception
                                        image-digest-does-not-match-exception
                                        image-tag-already-exists-exception
                                        invalid-parameter-exception
                                        kms-exception
                                        layers-not-found-exception
                                        limit-exceeded-exception
                                        referenced-images-not-found-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation put-image-scanning-configuration
                                       :shape-name
                                       "PutImageScanningConfiguration" :input
                                       put-image-scanning-configuration-request
                                       :output
                                       put-image-scanning-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation put-image-tag-mutability :shape-name
                                       "PutImageTagMutability" :input
                                       put-image-tag-mutability-request :output
                                       put-image-tag-mutability-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation put-lifecycle-policy :shape-name
                                       "PutLifecyclePolicy" :input
                                       put-lifecycle-policy-request :output
                                       put-lifecycle-policy-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation put-registry-policy :shape-name
                                       "PutRegistryPolicy" :input
                                       put-registry-policy-request :output
                                       put-registry-policy-response :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation put-registry-scanning-configuration
                                       :shape-name
                                       "PutRegistryScanningConfiguration"
                                       :input
                                       put-registry-scanning-configuration-request
                                       :output
                                       put-registry-scanning-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation put-replication-configuration
                                       :shape-name
                                       "PutReplicationConfiguration" :input
                                       put-replication-configuration-request
                                       :output
                                       put-replication-configuration-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation set-repository-policy :shape-name
                                       "SetRepositoryPolicy" :input
                                       set-repository-policy-request :output
                                       set-repository-policy-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception))

(smithy/sdk/operation:define-operation start-image-scan :shape-name
                                       "StartImageScan" :input
                                       start-image-scan-request :output
                                       start-image-scan-response :errors
                                       (image-not-found-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-image-type-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-lifecycle-policy-preview
                                       :shape-name
                                       "StartLifecyclePolicyPreview" :input
                                       start-lifecycle-policy-preview-request
                                       :output
                                       start-lifecycle-policy-preview-response
                                       :errors
                                       (invalid-parameter-exception
                                        lifecycle-policy-not-found-exception
                                        lifecycle-policy-preview-in-progress-exception
                                        repository-not-found-exception
                                        server-exception validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation update-pull-through-cache-rule
                                       :shape-name "UpdatePullThroughCacheRule"
                                       :input
                                       update-pull-through-cache-rule-request
                                       :output
                                       update-pull-through-cache-rule-response
                                       :errors
                                       (invalid-parameter-exception
                                        pull-through-cache-rule-not-found-exception
                                        secret-not-found-exception
                                        server-exception
                                        unable-to-access-secret-exception
                                        unable-to-decrypt-secret-value-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-repository-creation-template
                                       :shape-name
                                       "UpdateRepositoryCreationTemplate"
                                       :input
                                       update-repository-creation-template-request
                                       :output
                                       update-repository-creation-template-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception
                                        template-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation upload-layer-part :shape-name
                                       "UploadLayerPart" :input
                                       upload-layer-part-request :output
                                       upload-layer-part-response :errors
                                       (invalid-layer-part-exception
                                        invalid-parameter-exception
                                        kms-exception limit-exceeded-exception
                                        repository-not-found-exception
                                        server-exception
                                        upload-not-found-exception))

(smithy/sdk/operation:define-operation validate-pull-through-cache-rule
                                       :shape-name
                                       "ValidatePullThroughCacheRule" :input
                                       validate-pull-through-cache-rule-request
                                       :output
                                       validate-pull-through-cache-rule-response
                                       :errors
                                       (invalid-parameter-exception
                                        pull-through-cache-rule-not-found-exception
                                        server-exception validation-exception))
