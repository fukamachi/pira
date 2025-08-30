(uiop/package:define-package #:pira/ecr-public (:use)
                             (:export #:about-text #:architecture
                              #:architecture-list #:arn #:authorization-data
                              #:base64 #:batch-check-layer-availability
                              #:batch-delete-image
                              #:batched-operation-layer-digest
                              #:batched-operation-layer-digest-list
                              #:complete-layer-upload #:create-repository
                              #:creation-timestamp
                              #:default-registry-alias-flag #:delete-repository
                              #:delete-repository-policy #:describe-image-tags
                              #:describe-images #:describe-registries
                              #:describe-repositories #:empty-upload-exception
                              #:exception-message #:expiration-timestamp
                              #:force-flag #:get-authorization-token
                              #:get-registry-catalog-data
                              #:get-repository-catalog-data
                              #:get-repository-policy #:image
                              #:image-already-exists-exception #:image-detail
                              #:image-detail-list #:image-digest
                              #:image-digest-does-not-match-exception
                              #:image-failure #:image-failure-code
                              #:image-failure-list #:image-failure-reason
                              #:image-identifier #:image-identifier-list
                              #:image-manifest #:image-not-found-exception
                              #:image-size-in-bytes #:image-tag
                              #:image-tag-already-exists-exception
                              #:image-tag-detail #:image-tag-detail-list
                              #:image-tag-list #:initiate-layer-upload
                              #:invalid-layer-exception
                              #:invalid-layer-part-exception
                              #:invalid-parameter-exception
                              #:invalid-tag-parameter-exception #:layer
                              #:layer-already-exists-exception
                              #:layer-availability #:layer-digest
                              #:layer-digest-list #:layer-failure
                              #:layer-failure-code #:layer-failure-list
                              #:layer-failure-reason #:layer-list
                              #:layer-part-blob
                              #:layer-part-too-small-exception
                              #:layer-size-in-bytes
                              #:layers-not-found-exception
                              #:limit-exceeded-exception
                              #:list-tags-for-resource #:logo-image-blob
                              #:marketplace-certified #:max-results
                              #:media-type #:next-token #:operating-system
                              #:operating-system-list #:part-size
                              #:primary-registry-alias-flag #:push-timestamp
                              #:put-image #:put-registry-catalog-data
                              #:put-repository-catalog-data
                              #:referenced-image-detail
                              #:referenced-images-not-found-exception
                              #:registry #:registry-alias #:registry-alias-list
                              #:registry-alias-name #:registry-alias-status
                              #:registry-catalog-data #:registry-display-name
                              #:registry-id #:registry-id-or-alias
                              #:registry-list #:registry-not-found-exception
                              #:registry-verified #:repository
                              #:repository-already-exists-exception
                              #:repository-catalog-data
                              #:repository-catalog-data-input
                              #:repository-catalog-data-not-found-exception
                              #:repository-description #:repository-list
                              #:repository-name #:repository-name-list
                              #:repository-not-empty-exception
                              #:repository-not-found-exception
                              #:repository-policy-not-found-exception
                              #:repository-policy-text #:resource-url
                              #:server-exception #:set-repository-policy
                              #:spencer-frontend-service #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:too-many-tags-exception
                              #:unsupported-command-exception #:untag-resource
                              #:upload-id #:upload-layer-part
                              #:upload-not-found-exception #:url #:usage-text
                              #:ecr-public-error))
(common-lisp:in-package #:pira/ecr-public)

(common-lisp:define-condition ecr-public-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service spencer-frontend-service :shape-name
                                   "SpencerFrontendService" :version
                                   "2020-10-30" :title
                                   "Amazon Elastic Container Registry Public"
                                   :operations
                                   '(batch-check-layer-availability
                                     batch-delete-image complete-layer-upload
                                     create-repository delete-repository
                                     delete-repository-policy describe-images
                                     describe-image-tags describe-registries
                                     describe-repositories
                                     get-authorization-token
                                     get-registry-catalog-data
                                     get-repository-catalog-data
                                     get-repository-policy
                                     initiate-layer-upload
                                     list-tags-for-resource put-image
                                     put-registry-catalog-data
                                     put-repository-catalog-data
                                     set-repository-policy tag-resource
                                     untag-resource upload-layer-part)
                                   :xml-namespace
                                   '(:uri
                                     "http://ecr-public.amazonaws.com/doc/2020-12-02/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ECR PUBLIC")
                                      ("arnNamespace" . "ecr-public")
                                      ("cloudFormationName" . "ECRPUBLIC")
                                      ("cloudTrailEventSource"
                                       . "ecrpublic.amazonaws.com")
                                      ("endpointPrefix" . "api.ecr-public"))
                                     ("aws.auth#sigv4" ("name" . "ecr-public"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type about-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type architecture smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list architecture-list :member architecture)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure authorization-data common-lisp:nil
                                    ((authorization-token :target-type base64
                                      :member-name "authorizationToken")
                                     (expires-at :target-type
                                      expiration-timestamp :member-name
                                      "expiresAt"))
                                    (:shape-name "AuthorizationData"))

(smithy/sdk/shapes:define-type base64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-check-layer-availability-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id-or-alias
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
                                ((registry-id :target-type registry-id-or-alias
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

(smithy/sdk/shapes:define-type batched-operation-layer-digest
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list batched-operation-layer-digest-list :member
                               batched-operation-layer-digest)

(smithy/sdk/shapes:define-input complete-layer-upload-request common-lisp:nil
                                ((registry-id :target-type registry-id-or-alias
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

(smithy/sdk/shapes:define-input create-repository-request common-lisp:nil
                                ((repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (catalog-data :target-type
                                  repository-catalog-data-input :member-name
                                  "catalogData")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateRepositoryRequest"))

(smithy/sdk/shapes:define-output create-repository-response common-lisp:nil
                                 ((repository :target-type repository
                                   :member-name "repository")
                                  (catalog-data :target-type
                                   repository-catalog-data :member-name
                                   "catalogData"))
                                 (:shape-name "CreateRepositoryResponse"))

(smithy/sdk/shapes:define-type creation-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type default-registry-alias-flag
                               smithy/sdk/smithy-types:boolean)

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

(smithy/sdk/shapes:define-input describe-image-tags-request common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeImageTagsRequest"))

(smithy/sdk/shapes:define-output describe-image-tags-response common-lisp:nil
                                 ((image-tag-details :target-type
                                   image-tag-detail-list :member-name
                                   "imageTagDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeImageTagsResponse"))

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
                                  :member-name "maxResults"))
                                (:shape-name "DescribeImagesRequest"))

(smithy/sdk/shapes:define-output describe-images-response common-lisp:nil
                                 ((image-details :target-type image-detail-list
                                   :member-name "imageDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeImagesResponse"))

(smithy/sdk/shapes:define-input describe-registries-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "DescribeRegistriesRequest"))

(smithy/sdk/shapes:define-output describe-registries-response common-lisp:nil
                                 ((registries :target-type registry-list
                                   :required common-lisp:t :member-name
                                   "registries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeRegistriesResponse"))

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

(smithy/sdk/shapes:define-error empty-upload-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "EmptyUploadException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiration-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type force-flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input get-authorization-token-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAuthorizationTokenRequest"))

(smithy/sdk/shapes:define-output get-authorization-token-response
                                 common-lisp:nil
                                 ((authorization-data :target-type
                                   authorization-data :member-name
                                   "authorizationData"))
                                 (:shape-name "GetAuthorizationTokenResponse"))

(smithy/sdk/shapes:define-input get-registry-catalog-data-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetRegistryCatalogDataRequest"))

(smithy/sdk/shapes:define-output get-registry-catalog-data-response
                                 common-lisp:nil
                                 ((registry-catalog-data :target-type
                                   registry-catalog-data :required
                                   common-lisp:t :member-name
                                   "registryCatalogData"))
                                 (:shape-name "GetRegistryCatalogDataResponse"))

(smithy/sdk/shapes:define-input get-repository-catalog-data-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName"))
                                (:shape-name "GetRepositoryCatalogDataRequest"))

(smithy/sdk/shapes:define-output get-repository-catalog-data-response
                                 common-lisp:nil
                                 ((catalog-data :target-type
                                   repository-catalog-data :member-name
                                   "catalogData"))
                                 (:shape-name
                                  "GetRepositoryCatalogDataResponse"))

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
                                    ((registry-id :target-type
                                      registry-id-or-alias :member-name
                                      "registryId")
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

(smithy/sdk/shapes:define-error image-already-exists-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ImageAlreadyExistsException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

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
                                     (image-manifest-media-type :target-type
                                      media-type :member-name
                                      "imageManifestMediaType")
                                     (artifact-media-type :target-type
                                      media-type :member-name
                                      "artifactMediaType"))
                                    (:shape-name "ImageDetail"))

(smithy/sdk/shapes:define-list image-detail-list :member image-detail)

(smithy/sdk/shapes:define-type image-digest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error image-digest-does-not-match-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ImageDigestDoesNotMatchException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

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
  (:kms-error "KmsError"))

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

(smithy/sdk/shapes:define-type image-manifest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error image-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ImageNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type image-size-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type image-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error image-tag-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ImageTagAlreadyExistsException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-structure image-tag-detail common-lisp:nil
                                    ((image-tag :target-type image-tag
                                      :member-name "imageTag")
                                     (created-at :target-type
                                      creation-timestamp :member-name
                                      "createdAt")
                                     (image-detail :target-type
                                      referenced-image-detail :member-name
                                      "imageDetail"))
                                    (:shape-name "ImageTagDetail"))

(smithy/sdk/shapes:define-list image-tag-detail-list :member image-tag-detail)

(smithy/sdk/shapes:define-list image-tag-list :member image-tag)

(smithy/sdk/shapes:define-input initiate-layer-upload-request common-lisp:nil
                                ((registry-id :target-type registry-id-or-alias
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
                                (:error-code 400)
                                (:base-class ecr-public-error))

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
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-error invalid-tag-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidTagParameterException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

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
                                (:error-code 400)
                                (:base-class ecr-public-error))

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

(smithy/sdk/shapes:define-list layer-list :member layer)

(smithy/sdk/shapes:define-type layer-part-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-error layer-part-too-small-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LayerPartTooSmallException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type layer-size-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error layers-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LayersNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type logo-image-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type marketplace-certified
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type media-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operating-system smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list operating-system-list :member operating-system)

(smithy/sdk/shapes:define-type part-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type primary-registry-alias-flag
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type push-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input put-image-request common-lisp:nil
                                ((registry-id :target-type registry-id-or-alias
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

(smithy/sdk/shapes:define-input put-registry-catalog-data-request
                                common-lisp:nil
                                ((display-name :target-type
                                  registry-display-name :member-name
                                  "displayName"))
                                (:shape-name "PutRegistryCatalogDataRequest"))

(smithy/sdk/shapes:define-output put-registry-catalog-data-response
                                 common-lisp:nil
                                 ((registry-catalog-data :target-type
                                   registry-catalog-data :required
                                   common-lisp:t :member-name
                                   "registryCatalogData"))
                                 (:shape-name "PutRegistryCatalogDataResponse"))

(smithy/sdk/shapes:define-input put-repository-catalog-data-request
                                common-lisp:nil
                                ((registry-id :target-type registry-id
                                  :member-name "registryId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repositoryName")
                                 (catalog-data :target-type
                                  repository-catalog-data-input :required
                                  common-lisp:t :member-name "catalogData"))
                                (:shape-name "PutRepositoryCatalogDataRequest"))

(smithy/sdk/shapes:define-output put-repository-catalog-data-response
                                 common-lisp:nil
                                 ((catalog-data :target-type
                                   repository-catalog-data :member-name
                                   "catalogData"))
                                 (:shape-name
                                  "PutRepositoryCatalogDataResponse"))

(smithy/sdk/shapes:define-structure referenced-image-detail common-lisp:nil
                                    ((image-digest :target-type image-digest
                                      :member-name "imageDigest")
                                     (image-size-in-bytes :target-type
                                      image-size-in-bytes :member-name
                                      "imageSizeInBytes")
                                     (image-pushed-at :target-type
                                      push-timestamp :member-name
                                      "imagePushedAt")
                                     (image-manifest-media-type :target-type
                                      media-type :member-name
                                      "imageManifestMediaType")
                                     (artifact-media-type :target-type
                                      media-type :member-name
                                      "artifactMediaType"))
                                    (:shape-name "ReferencedImageDetail"))

(smithy/sdk/shapes:define-error referenced-images-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ReferencedImagesNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-structure registry common-lisp:nil
                                    ((registry-id :target-type registry-id
                                      :required common-lisp:t :member-name
                                      "registryId")
                                     (registry-arn :target-type arn :required
                                      common-lisp:t :member-name "registryArn")
                                     (registry-uri :target-type url :required
                                      common-lisp:t :member-name "registryUri")
                                     (verified :target-type registry-verified
                                      :required common-lisp:t :member-name
                                      "verified")
                                     (aliases :target-type registry-alias-list
                                      :required common-lisp:t :member-name
                                      "aliases"))
                                    (:shape-name "Registry"))

(smithy/sdk/shapes:define-structure registry-alias common-lisp:nil
                                    ((name :target-type registry-alias-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (status :target-type registry-alias-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (primary-registry-alias :target-type
                                      primary-registry-alias-flag :required
                                      common-lisp:t :member-name
                                      "primaryRegistryAlias")
                                     (default-registry-alias :target-type
                                      default-registry-alias-flag :required
                                      common-lisp:t :member-name
                                      "defaultRegistryAlias"))
                                    (:shape-name "RegistryAlias"))

(smithy/sdk/shapes:define-list registry-alias-list :member registry-alias)

(smithy/sdk/shapes:define-type registry-alias-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum registry-alias-status
    common-lisp:nil
  (:active "ACTIVE")
  (:pending "PENDING")
  (:rejected "REJECTED"))

(smithy/sdk/shapes:define-structure registry-catalog-data common-lisp:nil
                                    ((display-name :target-type
                                      registry-display-name :member-name
                                      "displayName"))
                                    (:shape-name "RegistryCatalogData"))

(smithy/sdk/shapes:define-type registry-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registry-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registry-id-or-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list registry-list :member registry)

(smithy/sdk/shapes:define-error registry-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RegistryNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type registry-verified
                               smithy/sdk/smithy-types:boolean)

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
                                      "createdAt"))
                                    (:shape-name "Repository"))

(smithy/sdk/shapes:define-error repository-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RepositoryAlreadyExistsException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-structure repository-catalog-data common-lisp:nil
                                    ((description :target-type
                                      repository-description :member-name
                                      "description")
                                     (architectures :target-type
                                      architecture-list :member-name
                                      "architectures")
                                     (operating-systems :target-type
                                      operating-system-list :member-name
                                      "operatingSystems")
                                     (logo-url :target-type resource-url
                                      :member-name "logoUrl")
                                     (about-text :target-type about-text
                                      :member-name "aboutText")
                                     (usage-text :target-type usage-text
                                      :member-name "usageText")
                                     (marketplace-certified :target-type
                                      marketplace-certified :member-name
                                      "marketplaceCertified"))
                                    (:shape-name "RepositoryCatalogData"))

(smithy/sdk/shapes:define-structure repository-catalog-data-input
                                    common-lisp:nil
                                    ((description :target-type
                                      repository-description :member-name
                                      "description")
                                     (architectures :target-type
                                      architecture-list :member-name
                                      "architectures")
                                     (operating-systems :target-type
                                      operating-system-list :member-name
                                      "operatingSystems")
                                     (logo-image-blob :target-type
                                      logo-image-blob :member-name
                                      "logoImageBlob")
                                     (about-text :target-type about-text
                                      :member-name "aboutText")
                                     (usage-text :target-type usage-text
                                      :member-name "usageText"))
                                    (:shape-name "RepositoryCatalogDataInput"))

(smithy/sdk/shapes:define-error repository-catalog-data-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RepositoryCatalogDataNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type repository-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-list :member repository)

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-name-list :member repository-name)

(smithy/sdk/shapes:define-error repository-not-empty-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RepositoryNotEmptyException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-error repository-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RepositoryNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-error repository-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "RepositoryPolicyNotFoundException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type repository-policy-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ServerException")
                                (:error-code 500)
                                (:base-class ecr-public-error))

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
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-error unsupported-command-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedCommandException")
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type upload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input upload-layer-part-request common-lisp:nil
                                ((registry-id :target-type registry-id-or-alias
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
                                (:error-code 400)
                                (:base-class ecr-public-error))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type usage-text smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-check-layer-availability
                                       :shape-name
                                       "BatchCheckLayerAvailability" :input
                                       batch-check-layer-availability-request
                                       :output
                                       batch-check-layer-availability-response
                                       :errors
                                       (invalid-parameter-exception
                                        registry-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation batch-delete-image :shape-name
                                       "BatchDeleteImage" :input
                                       batch-delete-image-request :output
                                       batch-delete-image-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation complete-layer-upload :shape-name
                                       "CompleteLayerUpload" :input
                                       complete-layer-upload-request :output
                                       complete-layer-upload-response :errors
                                       (empty-upload-exception
                                        invalid-layer-exception
                                        invalid-parameter-exception
                                        layer-already-exists-exception
                                        layer-part-too-small-exception
                                        registry-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception
                                        upload-not-found-exception))

(smithy/sdk/operation:define-operation create-repository :shape-name
                                       "CreateRepository" :input
                                       create-repository-request :output
                                       create-repository-response :errors
                                       (invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        limit-exceeded-exception
                                        repository-already-exists-exception
                                        server-exception
                                        too-many-tags-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation delete-repository :shape-name
                                       "DeleteRepository" :input
                                       delete-repository-request :output
                                       delete-repository-response :errors
                                       (invalid-parameter-exception
                                        repository-not-empty-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation delete-repository-policy :shape-name
                                       "DeleteRepositoryPolicy" :input
                                       delete-repository-policy-request :output
                                       delete-repository-policy-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        repository-policy-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation describe-image-tags :shape-name
                                       "DescribeImageTags" :input
                                       describe-image-tags-request :output
                                       describe-image-tags-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation describe-images :shape-name
                                       "DescribeImages" :input
                                       describe-images-request :output
                                       describe-images-response :errors
                                       (image-not-found-exception
                                        invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation describe-registries :shape-name
                                       "DescribeRegistries" :input
                                       describe-registries-request :output
                                       describe-registries-response :errors
                                       (invalid-parameter-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation describe-repositories :shape-name
                                       "DescribeRepositories" :input
                                       describe-repositories-request :output
                                       describe-repositories-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation get-authorization-token :shape-name
                                       "GetAuthorizationToken" :input
                                       get-authorization-token-request :output
                                       get-authorization-token-response :errors
                                       (invalid-parameter-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation get-registry-catalog-data :shape-name
                                       "GetRegistryCatalogData" :input
                                       get-registry-catalog-data-request
                                       :output
                                       get-registry-catalog-data-response
                                       :errors
                                       (server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation get-repository-catalog-data :shape-name
                                       "GetRepositoryCatalogData" :input
                                       get-repository-catalog-data-request
                                       :output
                                       get-repository-catalog-data-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-catalog-data-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation get-repository-policy :shape-name
                                       "GetRepositoryPolicy" :input
                                       get-repository-policy-request :output
                                       get-repository-policy-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        repository-policy-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation initiate-layer-upload :shape-name
                                       "InitiateLayerUpload" :input
                                       initiate-layer-upload-request :output
                                       initiate-layer-upload-response :errors
                                       (invalid-parameter-exception
                                        registry-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation put-image :shape-name "PutImage" :input
                                       put-image-request :output
                                       put-image-response :errors
                                       (image-already-exists-exception
                                        image-digest-does-not-match-exception
                                        image-tag-already-exists-exception
                                        invalid-parameter-exception
                                        layers-not-found-exception
                                        limit-exceeded-exception
                                        referenced-images-not-found-exception
                                        registry-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation put-registry-catalog-data :shape-name
                                       "PutRegistryCatalogData" :input
                                       put-registry-catalog-data-request
                                       :output
                                       put-registry-catalog-data-response
                                       :errors
                                       (invalid-parameter-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation put-repository-catalog-data :shape-name
                                       "PutRepositoryCatalogData" :input
                                       put-repository-catalog-data-request
                                       :output
                                       put-repository-catalog-data-response
                                       :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation set-repository-policy :shape-name
                                       "SetRepositoryPolicy" :input
                                       set-repository-policy-request :output
                                       set-repository-policy-response :errors
                                       (invalid-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        too-many-tags-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        repository-not-found-exception
                                        server-exception
                                        too-many-tags-exception
                                        unsupported-command-exception))

(smithy/sdk/operation:define-operation upload-layer-part :shape-name
                                       "UploadLayerPart" :input
                                       upload-layer-part-request :output
                                       upload-layer-part-response :errors
                                       (invalid-layer-part-exception
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        registry-not-found-exception
                                        repository-not-found-exception
                                        server-exception
                                        unsupported-command-exception
                                        upload-not-found-exception))
