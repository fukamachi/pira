(uiop/package:define-package #:pira/signer (:use)
                             (:export #:account-id #:add-profile-permission
                              #:arn #:blob #:bucket-name
                              #:cancel-signing-profile #:category
                              #:certificate-arn #:certificate-hashes
                              #:client-request-token #:describe-signing-job
                              #:destination #:display-name
                              #:encryption-algorithm
                              #:encryption-algorithm-options
                              #:encryption-algorithms #:error-code
                              #:error-message #:get-revocation-status
                              #:get-signing-platform #:get-signing-profile
                              #:hash-algorithm #:hash-algorithm-options
                              #:hash-algorithms #:image-format #:image-formats
                              #:integer #:job-id #:key
                              #:list-profile-permissions #:list-signing-jobs
                              #:list-signing-platforms #:list-signing-profiles
                              #:list-tags-for-resource #:max-results
                              #:max-size-in-mb #:metadata #:next-token
                              #:payload #:permission #:permissions
                              #:platform-id #:policy-size-bytes #:prefix
                              #:profile-name #:profile-version
                              #:put-signing-profile #:remove-profile-permission
                              #:requested-by #:revocation-reason-string
                              #:revoke-signature #:revoke-signing-profile
                              #:revoked-entities #:s3destination
                              #:s3signed-object #:s3source #:sign-payload
                              #:signature-validity-period #:signed-object
                              #:signing-configuration
                              #:signing-configuration-overrides
                              #:signing-image-format #:signing-job
                              #:signing-job-revocation-record #:signing-jobs
                              #:signing-material #:signing-parameter-key
                              #:signing-parameter-value #:signing-parameters
                              #:signing-platform #:signing-platform-overrides
                              #:signing-platforms #:signing-profile
                              #:signing-profile-revocation-record
                              #:signing-profile-status #:signing-profiles
                              #:signing-status #:source #:start-signing-job
                              #:status-reason #:statuses #:string #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:timestamp #:untag-resource
                              #:validity-type #:version #:wallaby-service
                              #:bool))
(common-lisp:in-package #:pira/signer)

(smithy/sdk/service:define-service wallaby-service :shape-name "WallabyService"
                                   :version "2017-08-25" :title "AWS Signer"
                                   :operations
                                   '(add-profile-permission
                                     cancel-signing-profile
                                     describe-signing-job get-revocation-status
                                     get-signing-platform get-signing-profile
                                     list-profile-permissions list-signing-jobs
                                     list-signing-platforms
                                     list-signing-profiles
                                     list-tags-for-resource put-signing-profile
                                     remove-profile-permission revoke-signature
                                     revoke-signing-profile sign-payload
                                     start-signing-job tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "signer")
                                      ("arnNamespace" . "signer")
                                      ("cloudFormationName" . "Signer")
                                      ("cloudTrailEventSource"
                                       . "signer.amazonaws.com")
                                      ("endpointPrefix" . "signer"))
                                     ("aws.auth#sigv4" ("name" . "signer"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-profile-permission-request common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t)
                                 (profile-version :target-type profile-version
                                  :member-name "profileVersion")
                                 (action :target-type string :required
                                  common-lisp:t :member-name "action")
                                 (principal :target-type string :required
                                  common-lisp:t :member-name "principal")
                                 (revision-id :target-type string :member-name
                                  "revisionId")
                                 (statement-id :target-type string :required
                                  common-lisp:t :member-name "statementId"))
                                (:shape-name "AddProfilePermissionRequest"))

(smithy/sdk/shapes:define-output add-profile-permission-response
                                 common-lisp:nil
                                 ((revision-id :target-type string :member-name
                                   "revisionId"))
                                 (:shape-name "AddProfilePermissionResponse"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-signing-profile-request common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t))
                                (:shape-name "CancelSigningProfileRequest"))

(smithy/sdk/shapes:define-enum category
    common-lisp:nil
  (:awsio-t "AWSIoT"))

(smithy/sdk/shapes:define-type certificate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list certificate-hashes :member string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input describe-signing-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeSigningJobRequest"))

(smithy/sdk/shapes:define-output describe-signing-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (source :target-type source :member-name
                                   "source")
                                  (signing-material :target-type
                                   signing-material :member-name
                                   "signingMaterial")
                                  (platform-id :target-type platform-id
                                   :member-name "platformId")
                                  (platform-display-name :target-type
                                   display-name :member-name
                                   "platformDisplayName")
                                  (profile-name :target-type profile-name
                                   :member-name "profileName")
                                  (profile-version :target-type profile-version
                                   :member-name "profileVersion")
                                  (overrides :target-type
                                   signing-platform-overrides :member-name
                                   "overrides")
                                  (signing-parameters :target-type
                                   signing-parameters :member-name
                                   "signingParameters")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (completed-at :target-type timestamp
                                   :member-name "completedAt")
                                  (signature-expires-at :target-type timestamp
                                   :member-name "signatureExpiresAt")
                                  (requested-by :target-type requested-by
                                   :member-name "requestedBy")
                                  (status :target-type signing-status
                                   :member-name "status")
                                  (status-reason :target-type status-reason
                                   :member-name "statusReason")
                                  (revocation-record :target-type
                                   signing-job-revocation-record :member-name
                                   "revocationRecord")
                                  (signed-object :target-type signed-object
                                   :member-name "signedObject")
                                  (job-owner :target-type account-id
                                   :member-name "jobOwner")
                                  (job-invoker :target-type account-id
                                   :member-name "jobInvoker"))
                                 (:shape-name "DescribeSigningJobResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((s3 :target-type s3destination
                                      :member-name "s3"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum encryption-algorithm
    common-lisp:nil
  (:rsa "RSA")
  (:ecdsa "ECDSA"))

(smithy/sdk/shapes:define-structure encryption-algorithm-options
                                    common-lisp:nil
                                    ((allowed-values :target-type
                                      encryption-algorithms :required
                                      common-lisp:t :member-name
                                      "allowedValues")
                                     (default-value :target-type
                                      encryption-algorithm :required
                                      common-lisp:t :member-name
                                      "defaultValue"))
                                    (:shape-name "EncryptionAlgorithmOptions"))

(smithy/sdk/shapes:define-list encryption-algorithms :member
                               encryption-algorithm)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-revocation-status-request common-lisp:nil
                                ((signature-timestamp :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "signatureTimestamp" :http-query
                                  "signatureTimestamp")
                                 (platform-id :target-type platform-id
                                  :required common-lisp:t :member-name
                                  "platformId" :http-query "platformId")
                                 (profile-version-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "profileVersionArn" :http-query
                                  "profileVersionArn")
                                 (job-arn :target-type arn :required
                                  common-lisp:t :member-name "jobArn"
                                  :http-query "jobArn")
                                 (certificate-hashes :target-type
                                  certificate-hashes :required common-lisp:t
                                  :member-name "certificateHashes" :http-query
                                  "certificateHashes"))
                                (:shape-name "GetRevocationStatusRequest"))

(smithy/sdk/shapes:define-output get-revocation-status-response common-lisp:nil
                                 ((revoked-entities :target-type
                                   revoked-entities :member-name
                                   "revokedEntities"))
                                 (:shape-name "GetRevocationStatusResponse"))

(smithy/sdk/shapes:define-input get-signing-platform-request common-lisp:nil
                                ((platform-id :target-type platform-id
                                  :required common-lisp:t :member-name
                                  "platformId" :http-label common-lisp:t))
                                (:shape-name "GetSigningPlatformRequest"))

(smithy/sdk/shapes:define-output get-signing-platform-response common-lisp:nil
                                 ((platform-id :target-type platform-id
                                   :member-name "platformId")
                                  (display-name :target-type display-name
                                   :member-name "displayName")
                                  (partner :target-type string :member-name
                                   "partner")
                                  (target :target-type string :member-name
                                   "target")
                                  (category :target-type category :member-name
                                   "category")
                                  (signing-configuration :target-type
                                   signing-configuration :member-name
                                   "signingConfiguration")
                                  (signing-image-format :target-type
                                   signing-image-format :member-name
                                   "signingImageFormat")
                                  (max-size-in-mb :target-type max-size-in-mb
                                   :member-name "maxSizeInMB")
                                  (revocation-supported :target-type bool
                                   :member-name "revocationSupported"))
                                 (:shape-name "GetSigningPlatformResponse"))

(smithy/sdk/shapes:define-input get-signing-profile-request common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t)
                                 (profile-owner :target-type account-id
                                  :member-name "profileOwner" :http-query
                                  "profileOwner"))
                                (:shape-name "GetSigningProfileRequest"))

(smithy/sdk/shapes:define-output get-signing-profile-response common-lisp:nil
                                 ((profile-name :target-type profile-name
                                   :member-name "profileName")
                                  (profile-version :target-type profile-version
                                   :member-name "profileVersion")
                                  (profile-version-arn :target-type arn
                                   :member-name "profileVersionArn")
                                  (revocation-record :target-type
                                   signing-profile-revocation-record
                                   :member-name "revocationRecord")
                                  (signing-material :target-type
                                   signing-material :member-name
                                   "signingMaterial")
                                  (platform-id :target-type platform-id
                                   :member-name "platformId")
                                  (platform-display-name :target-type
                                   display-name :member-name
                                   "platformDisplayName")
                                  (signature-validity-period :target-type
                                   signature-validity-period :member-name
                                   "signatureValidityPeriod")
                                  (overrides :target-type
                                   signing-platform-overrides :member-name
                                   "overrides")
                                  (signing-parameters :target-type
                                   signing-parameters :member-name
                                   "signingParameters")
                                  (status :target-type signing-profile-status
                                   :member-name "status")
                                  (status-reason :target-type string
                                   :member-name "statusReason")
                                  (arn :target-type string :member-name "arn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetSigningProfileResponse"))

(smithy/sdk/shapes:define-enum hash-algorithm
    common-lisp:nil
  (:sha1 "SHA1")
  (:sha256 "SHA256"))

(smithy/sdk/shapes:define-structure hash-algorithm-options common-lisp:nil
                                    ((allowed-values :target-type
                                      hash-algorithms :required common-lisp:t
                                      :member-name "allowedValues")
                                     (default-value :target-type hash-algorithm
                                      :required common-lisp:t :member-name
                                      "defaultValue"))
                                    (:shape-name "HashAlgorithmOptions"))

(smithy/sdk/shapes:define-list hash-algorithms :member hash-algorithm)

(smithy/sdk/shapes:define-enum image-format
    common-lisp:nil
  (:json "JSON")
  (:jsonembedded "JSONEmbedded")
  (:jsondetached "JSONDetached"))

(smithy/sdk/shapes:define-list image-formats :member image-format)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-profile-permissions-request
                                common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListProfilePermissionsRequest"))

(smithy/sdk/shapes:define-output list-profile-permissions-response
                                 common-lisp:nil
                                 ((revision-id :target-type string :member-name
                                   "revisionId")
                                  (policy-size-bytes :target-type
                                   policy-size-bytes :member-name
                                   "policySizeBytes")
                                  (permissions :target-type permissions
                                   :member-name "permissions")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListProfilePermissionsResponse"))

(smithy/sdk/shapes:define-input list-signing-jobs-request common-lisp:nil
                                ((status :target-type signing-status
                                  :member-name "status" :http-query "status")
                                 (platform-id :target-type platform-id
                                  :member-name "platformId" :http-query
                                  "platformId")
                                 (requested-by :target-type requested-by
                                  :member-name "requestedBy" :http-query
                                  "requestedBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (is-revoked :target-type bool :member-name
                                  "isRevoked" :http-query "isRevoked")
                                 (signature-expires-before :target-type
                                  timestamp :member-name
                                  "signatureExpiresBefore" :http-query
                                  "signatureExpiresBefore")
                                 (signature-expires-after :target-type
                                  timestamp :member-name
                                  "signatureExpiresAfter" :http-query
                                  "signatureExpiresAfter")
                                 (job-invoker :target-type account-id
                                  :member-name "jobInvoker" :http-query
                                  "jobInvoker"))
                                (:shape-name "ListSigningJobsRequest"))

(smithy/sdk/shapes:define-output list-signing-jobs-response common-lisp:nil
                                 ((jobs :target-type signing-jobs :member-name
                                   "jobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSigningJobsResponse"))

(smithy/sdk/shapes:define-input list-signing-platforms-request common-lisp:nil
                                ((category :target-type string :member-name
                                  "category" :http-query "category")
                                 (partner :target-type string :member-name
                                  "partner" :http-query "partner")
                                 (target :target-type string :member-name
                                  "target" :http-query "target")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListSigningPlatformsRequest"))

(smithy/sdk/shapes:define-output list-signing-platforms-response
                                 common-lisp:nil
                                 ((platforms :target-type signing-platforms
                                   :member-name "platforms")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSigningPlatformsResponse"))

(smithy/sdk/shapes:define-input list-signing-profiles-request common-lisp:nil
                                ((include-canceled :target-type bool
                                  :member-name "includeCanceled" :http-query
                                  "includeCanceled")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (platform-id :target-type platform-id
                                  :member-name "platformId" :http-query
                                  "platformId")
                                 (statuses :target-type statuses :member-name
                                  "statuses" :http-query "statuses"))
                                (:shape-name "ListSigningProfilesRequest"))

(smithy/sdk/shapes:define-output list-signing-profiles-response common-lisp:nil
                                 ((profiles :target-type signing-profiles
                                   :member-name "profiles")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSigningProfilesResponse"))

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

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size-in-mb smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map metadata :key string :value string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure permission common-lisp:nil
                                    ((action :target-type string :member-name
                                      "action")
                                     (principal :target-type string
                                      :member-name "principal")
                                     (statement-id :target-type string
                                      :member-name "statementId")
                                     (profile-version :target-type
                                      profile-version :member-name
                                      "profileVersion"))
                                    (:shape-name "Permission"))

(smithy/sdk/shapes:define-list permissions :member permission)

(smithy/sdk/shapes:define-type platform-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-size-bytes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-signing-profile-request common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t)
                                 (signing-material :target-type
                                  signing-material :member-name
                                  "signingMaterial")
                                 (signature-validity-period :target-type
                                  signature-validity-period :member-name
                                  "signatureValidityPeriod")
                                 (platform-id :target-type platform-id
                                  :required common-lisp:t :member-name
                                  "platformId")
                                 (overrides :target-type
                                  signing-platform-overrides :member-name
                                  "overrides")
                                 (signing-parameters :target-type
                                  signing-parameters :member-name
                                  "signingParameters")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "PutSigningProfileRequest"))

(smithy/sdk/shapes:define-output put-signing-profile-response common-lisp:nil
                                 ((arn :target-type string :member-name "arn")
                                  (profile-version :target-type profile-version
                                   :member-name "profileVersion")
                                  (profile-version-arn :target-type arn
                                   :member-name "profileVersionArn"))
                                 (:shape-name "PutSigningProfileResponse"))

(smithy/sdk/shapes:define-input remove-profile-permission-request
                                common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t)
                                 (revision-id :target-type string :required
                                  common-lisp:t :member-name "revisionId"
                                  :http-query "revisionId")
                                 (statement-id :target-type string :required
                                  common-lisp:t :member-name "statementId"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveProfilePermissionRequest"))

(smithy/sdk/shapes:define-output remove-profile-permission-response
                                 common-lisp:nil
                                 ((revision-id :target-type string :member-name
                                   "revisionId"))
                                 (:shape-name
                                  "RemoveProfilePermissionResponse"))

(smithy/sdk/shapes:define-type requested-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type revocation-reason-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input revoke-signature-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (job-owner :target-type account-id
                                  :member-name "jobOwner")
                                 (reason :target-type revocation-reason-string
                                  :required common-lisp:t :member-name
                                  "reason"))
                                (:shape-name "RevokeSignatureRequest"))

(smithy/sdk/shapes:define-input revoke-signing-profile-request common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName" :http-label common-lisp:t)
                                 (profile-version :target-type profile-version
                                  :required common-lisp:t :member-name
                                  "profileVersion")
                                 (reason :target-type revocation-reason-string
                                  :required common-lisp:t :member-name
                                  "reason")
                                 (effective-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "effectiveTime"))
                                (:shape-name "RevokeSigningProfileRequest"))

(smithy/sdk/shapes:define-list revoked-entities :member string)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :member-name "bucketName")
                                     (prefix :target-type prefix :member-name
                                      "prefix"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-structure s3signed-object common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :member-name "bucketName")
                                     (key :target-type key :member-name "key"))
                                    (:shape-name "S3SignedObject"))

(smithy/sdk/shapes:define-structure s3source common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version"))
                                    (:shape-name "S3Source"))

(smithy/sdk/shapes:define-error service-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ServiceLimitExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-input sign-payload-request common-lisp:nil
                                ((profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName")
                                 (profile-owner :target-type account-id
                                  :member-name "profileOwner")
                                 (payload :target-type payload :required
                                  common-lisp:t :member-name "payload")
                                 (payload-format :target-type string :required
                                  common-lisp:t :member-name "payloadFormat"))
                                (:shape-name "SignPayloadRequest"))

(smithy/sdk/shapes:define-output sign-payload-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (job-owner :target-type account-id
                                   :member-name "jobOwner")
                                  (metadata :target-type metadata :member-name
                                   "metadata")
                                  (signature :target-type blob :member-name
                                   "signature"))
                                 (:shape-name "SignPayloadResponse"))

(smithy/sdk/shapes:define-structure signature-validity-period common-lisp:nil
                                    ((value :target-type integer :member-name
                                      "value")
                                     (type :target-type validity-type
                                      :member-name "type"))
                                    (:shape-name "SignatureValidityPeriod"))

(smithy/sdk/shapes:define-structure signed-object common-lisp:nil
                                    ((s3 :target-type s3signed-object
                                      :member-name "s3"))
                                    (:shape-name "SignedObject"))

(smithy/sdk/shapes:define-structure signing-configuration common-lisp:nil
                                    ((encryption-algorithm-options :target-type
                                      encryption-algorithm-options :required
                                      common-lisp:t :member-name
                                      "encryptionAlgorithmOptions")
                                     (hash-algorithm-options :target-type
                                      hash-algorithm-options :required
                                      common-lisp:t :member-name
                                      "hashAlgorithmOptions"))
                                    (:shape-name "SigningConfiguration"))

(smithy/sdk/shapes:define-structure signing-configuration-overrides
                                    common-lisp:nil
                                    ((encryption-algorithm :target-type
                                      encryption-algorithm :member-name
                                      "encryptionAlgorithm")
                                     (hash-algorithm :target-type
                                      hash-algorithm :member-name
                                      "hashAlgorithm"))
                                    (:shape-name
                                     "SigningConfigurationOverrides"))

(smithy/sdk/shapes:define-structure signing-image-format common-lisp:nil
                                    ((supported-formats :target-type
                                      image-formats :required common-lisp:t
                                      :member-name "supportedFormats")
                                     (default-format :target-type image-format
                                      :required common-lisp:t :member-name
                                      "defaultFormat"))
                                    (:shape-name "SigningImageFormat"))

(smithy/sdk/shapes:define-structure signing-job common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "jobId")
                                     (source :target-type source :member-name
                                      "source")
                                     (signed-object :target-type signed-object
                                      :member-name "signedObject")
                                     (signing-material :target-type
                                      signing-material :member-name
                                      "signingMaterial")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (status :target-type signing-status
                                      :member-name "status")
                                     (is-revoked :target-type bool :member-name
                                      "isRevoked")
                                     (profile-name :target-type profile-name
                                      :member-name "profileName")
                                     (profile-version :target-type
                                      profile-version :member-name
                                      "profileVersion")
                                     (platform-id :target-type platform-id
                                      :member-name "platformId")
                                     (platform-display-name :target-type
                                      display-name :member-name
                                      "platformDisplayName")
                                     (signature-expires-at :target-type
                                      timestamp :member-name
                                      "signatureExpiresAt")
                                     (job-owner :target-type account-id
                                      :member-name "jobOwner")
                                     (job-invoker :target-type account-id
                                      :member-name "jobInvoker"))
                                    (:shape-name "SigningJob"))

(smithy/sdk/shapes:define-structure signing-job-revocation-record
                                    common-lisp:nil
                                    ((reason :target-type string :member-name
                                      "reason")
                                     (revoked-at :target-type timestamp
                                      :member-name "revokedAt")
                                     (revoked-by :target-type string
                                      :member-name "revokedBy"))
                                    (:shape-name "SigningJobRevocationRecord"))

(smithy/sdk/shapes:define-list signing-jobs :member signing-job)

(smithy/sdk/shapes:define-structure signing-material common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :required common-lisp:t
                                      :member-name "certificateArn"))
                                    (:shape-name "SigningMaterial"))

(smithy/sdk/shapes:define-type signing-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map signing-parameters :key signing-parameter-key
                              :value signing-parameter-value)

(smithy/sdk/shapes:define-structure signing-platform common-lisp:nil
                                    ((platform-id :target-type string
                                      :member-name "platformId")
                                     (display-name :target-type string
                                      :member-name "displayName")
                                     (partner :target-type string :member-name
                                      "partner")
                                     (target :target-type string :member-name
                                      "target")
                                     (category :target-type category
                                      :member-name "category")
                                     (signing-configuration :target-type
                                      signing-configuration :member-name
                                      "signingConfiguration")
                                     (signing-image-format :target-type
                                      signing-image-format :member-name
                                      "signingImageFormat")
                                     (max-size-in-mb :target-type
                                      max-size-in-mb :member-name
                                      "maxSizeInMB")
                                     (revocation-supported :target-type bool
                                      :member-name "revocationSupported"))
                                    (:shape-name "SigningPlatform"))

(smithy/sdk/shapes:define-structure signing-platform-overrides common-lisp:nil
                                    ((signing-configuration :target-type
                                      signing-configuration-overrides
                                      :member-name "signingConfiguration")
                                     (signing-image-format :target-type
                                      image-format :member-name
                                      "signingImageFormat"))
                                    (:shape-name "SigningPlatformOverrides"))

(smithy/sdk/shapes:define-list signing-platforms :member signing-platform)

(smithy/sdk/shapes:define-structure signing-profile common-lisp:nil
                                    ((profile-name :target-type profile-name
                                      :member-name "profileName")
                                     (profile-version :target-type
                                      profile-version :member-name
                                      "profileVersion")
                                     (profile-version-arn :target-type arn
                                      :member-name "profileVersionArn")
                                     (signing-material :target-type
                                      signing-material :member-name
                                      "signingMaterial")
                                     (signature-validity-period :target-type
                                      signature-validity-period :member-name
                                      "signatureValidityPeriod")
                                     (platform-id :target-type platform-id
                                      :member-name "platformId")
                                     (platform-display-name :target-type
                                      display-name :member-name
                                      "platformDisplayName")
                                     (signing-parameters :target-type
                                      signing-parameters :member-name
                                      "signingParameters")
                                     (status :target-type
                                      signing-profile-status :member-name
                                      "status")
                                     (arn :target-type string :member-name
                                      "arn")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "SigningProfile"))

(smithy/sdk/shapes:define-structure signing-profile-revocation-record
                                    common-lisp:nil
                                    ((revocation-effective-from :target-type
                                      timestamp :member-name
                                      "revocationEffectiveFrom")
                                     (revoked-at :target-type timestamp
                                      :member-name "revokedAt")
                                     (revoked-by :target-type string
                                      :member-name "revokedBy"))
                                    (:shape-name
                                     "SigningProfileRevocationRecord"))

(smithy/sdk/shapes:define-enum signing-profile-status
    common-lisp:nil
  (:active "Active")
  (:canceled "Canceled")
  (:revoked "Revoked"))

(smithy/sdk/shapes:define-list signing-profiles :member signing-profile)

(smithy/sdk/shapes:define-enum signing-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:failed "Failed")
  (:succeeded "Succeeded"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((s3 :target-type s3source :member-name
                                      "s3"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-input start-signing-job-request common-lisp:nil
                                ((source :target-type source :required
                                  common-lisp:t :member-name "source")
                                 (destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "destination")
                                 (profile-name :target-type profile-name
                                  :required common-lisp:t :member-name
                                  "profileName")
                                 (client-request-token :target-type
                                  client-request-token :required common-lisp:t
                                  :member-name "clientRequestToken")
                                 (profile-owner :target-type account-id
                                  :member-name "profileOwner"))
                                (:shape-name "StartSigningJobRequest"))

(smithy/sdk/shapes:define-output start-signing-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "jobId")
                                  (job-owner :target-type account-id
                                   :member-name "jobOwner"))
                                 (:shape-name "StartSigningJobResponse"))

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list statuses :member signing-profile-status)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

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

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (code :target-type error-code :member-name
                                  "code"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validity-type
    common-lisp:nil
  (:days "DAYS")
  (:months "MONTHS")
  (:years "YEARS"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bool smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation add-profile-permission :shape-name
                                       "AddProfilePermission" :input
                                       add-profile-permission-request :output
                                       add-profile-permission-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        service-limit-exceeded-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/signing-profiles/{profileName}/permissions"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-signing-profile :shape-name
                                       "CancelSigningProfile" :input
                                       cancel-signing-profile-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/signing-profiles/{profileName}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-signing-job :shape-name
                                       "DescribeSigningJob" :input
                                       describe-signing-job-request :output
                                       describe-signing-job-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/signing-jobs/{jobId}" :code 200)

(smithy/sdk/operation:define-operation get-revocation-status :shape-name
                                       "GetRevocationStatus" :input
                                       get-revocation-status-request :output
                                       get-revocation-status-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "GET" :uri "/revocations" :code
                                       200 :endpoint-host-prefix
                                       "verification.")

(smithy/sdk/operation:define-operation get-signing-platform :shape-name
                                       "GetSigningPlatform" :input
                                       get-signing-platform-request :output
                                       get-signing-platform-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/signing-platforms/{platformId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-signing-profile :shape-name
                                       "GetSigningProfile" :input
                                       get-signing-profile-request :output
                                       get-signing-profile-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/signing-profiles/{profileName}" :code
                                       200)

(smithy/sdk/operation:define-operation list-profile-permissions :shape-name
                                       "ListProfilePermissions" :input
                                       list-profile-permissions-request :output
                                       list-profile-permissions-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/signing-profiles/{profileName}/permissions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-signing-jobs :shape-name
                                       "ListSigningJobs" :input
                                       list-signing-jobs-request :output
                                       list-signing-jobs-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "GET" :uri "/signing-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation list-signing-platforms :shape-name
                                       "ListSigningPlatforms" :input
                                       list-signing-platforms-request :output
                                       list-signing-platforms-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "GET" :uri "/signing-platforms"
                                       :code 200)

(smithy/sdk/operation:define-operation list-signing-profiles :shape-name
                                       "ListSigningProfiles" :input
                                       list-signing-profiles-request :output
                                       list-signing-profiles-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/signing-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-signing-profile :shape-name
                                       "PutSigningProfile" :input
                                       put-signing-profile-request :output
                                       put-signing-profile-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/signing-profiles/{profileName}" :code
                                       200)

(smithy/sdk/operation:define-operation remove-profile-permission :shape-name
                                       "RemoveProfilePermission" :input
                                       remove-profile-permission-request
                                       :output
                                       remove-profile-permission-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/signing-profiles/{profileName}/permissions/{statementId}"
                                       :code 200)

(smithy/sdk/operation:define-operation revoke-signature :shape-name
                                       "RevokeSignature" :input
                                       revoke-signature-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/signing-jobs/{jobId}/revoke" :code 200)

(smithy/sdk/operation:define-operation revoke-signing-profile :shape-name
                                       "RevokeSigningProfile" :input
                                       revoke-signing-profile-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/signing-profiles/{profileName}/revoke"
                                       :code 200)

(smithy/sdk/operation:define-operation sign-payload :shape-name "SignPayload"
                                       :input sign-payload-request :output
                                       sign-payload-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/signing-jobs/with-payload" :code 200)

(smithy/sdk/operation:define-operation start-signing-job :shape-name
                                       "StartSigningJob" :input
                                       start-signing-job-request :output
                                       start-signing-job-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri "/signing-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)
