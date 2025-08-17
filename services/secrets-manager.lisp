(uiop/package:define-package #:pira/secrets-manager (:use)
                             (:export #:apierror-list-type #:apierror-type
                              #:add-replica-region-list-type
                              #:automatically-rotate-after-days-type
                              #:batch-get-secret-value #:boolean-type
                              #:cancel-rotate-secret
                              #:client-request-token-type #:create-secret
                              #:created-date-type #:delete-resource-policy
                              #:delete-secret #:deleted-date-type
                              #:deletion-date-type #:describe-secret
                              #:description-type #:duration-type #:error-code
                              #:error-message #:exclude-characters-type
                              #:exclude-lowercase-type #:exclude-numbers-type
                              #:exclude-punctuation-type
                              #:exclude-uppercase-type #:filter
                              #:filter-name-string-type
                              #:filter-value-string-type
                              #:filter-values-string-list #:filters-list-type
                              #:get-random-password #:get-resource-policy
                              #:get-secret-value #:include-space-type
                              #:kms-key-id-list-type #:kms-key-id-type
                              #:last-accessed-date-type
                              #:last-changed-date-type #:last-rotated-date-type
                              #:list-secret-version-ids #:list-secrets
                              #:max-results-batch-type #:max-results-type
                              #:name-type #:next-rotation-date-type
                              #:next-token-type
                              #:non-empty-resource-policy-type
                              #:owning-service-type #:password-length-type
                              #:put-resource-policy #:put-secret-value
                              #:random-password-type
                              #:recovery-window-in-days-type #:region-type
                              #:remove-regions-from-replication
                              #:remove-replica-region-list-type
                              #:replica-region-type
                              #:replicate-secret-to-regions
                              #:replication-status-list-type
                              #:replication-status-type
                              #:require-each-included-type-type
                              #:restore-secret #:rotate-secret
                              #:rotation-enabled-type #:rotation-lambda-arntype
                              #:rotation-rules-type #:rotation-token-type
                              #:schedule-expression-type #:secret-arntype
                              #:secret-binary-type #:secret-id-list-type
                              #:secret-id-type #:secret-list-entry
                              #:secret-list-type #:secret-name-type
                              #:secret-string-type #:secret-value-entry
                              #:secret-values-type #:secret-version-id-type
                              #:secret-version-stage-type
                              #:secret-version-stages-type
                              #:secret-versions-list-entry
                              #:secret-versions-list-type
                              #:secret-versions-to-stages-map-type
                              #:sort-order-type #:status-message-type
                              #:status-type #:stop-replication-to-replica #:tag
                              #:tag-key-list-type #:tag-key-type
                              #:tag-list-type #:tag-resource #:tag-value-type
                              #:timestamp-type #:untag-resource #:update-secret
                              #:update-secret-version-stage
                              #:validate-resource-policy
                              #:validation-errors-entry
                              #:validation-errors-type #:secretsmanager))
(common-lisp:in-package #:pira/secrets-manager)

(smithy/sdk/service:define-service secretsmanager :shape-name "secretsmanager"
                                   :version "2017-10-17" :title
                                   "AWS Secrets Manager" :operations
                                   '(batch-get-secret-value
                                     cancel-rotate-secret create-secret
                                     delete-resource-policy delete-secret
                                     describe-secret get-random-password
                                     get-resource-policy get-secret-value
                                     list-secrets list-secret-version-ids
                                     put-resource-policy put-secret-value
                                     remove-regions-from-replication
                                     replicate-secret-to-regions restore-secret
                                     rotate-secret stop-replication-to-replica
                                     tag-resource untag-resource update-secret
                                     update-secret-version-stage
                                     validate-resource-policy)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Secrets Manager")
                                      ("arnNamespace" . "secretsmanager")
                                      ("cloudFormationName" . "SecretsManager")
                                      ("cloudTrailEventSource"
                                       . "secretsmanager.amazonaws.com")
                                      ("docId" . "secretsmanager-2017-10-17")
                                      ("endpointPrefix" . "secretsmanager"))
                                     ("aws.auth#sigv4"
                                      ("name" . "secretsmanager"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-list apierror-list-type :member apierror-type)

(smithy/sdk/shapes:define-structure apierror-type common-lisp:nil
                                    ((secret-id :target-type secret-id-type
                                      :member-name "SecretId")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (message :target-type error-message
                                      :member-name "Message"))
                                    (:shape-name "APIErrorType"))

(smithy/sdk/shapes:define-list add-replica-region-list-type :member
                               replica-region-type)

(smithy/sdk/shapes:define-type automatically-rotate-after-days-type
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input batch-get-secret-value-request common-lisp:nil
                                ((secret-id-list :target-type
                                  secret-id-list-type :member-name
                                  "SecretIdList")
                                 (filters :target-type filters-list-type
                                  :member-name "Filters")
                                 (max-results :target-type
                                  max-results-batch-type :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token-type
                                  :member-name "NextToken"))
                                (:shape-name "BatchGetSecretValueRequest"))

(smithy/sdk/shapes:define-output batch-get-secret-value-response
                                 common-lisp:nil
                                 ((secret-values :target-type
                                   secret-values-type :member-name
                                   "SecretValues")
                                  (next-token :target-type next-token-type
                                   :member-name "NextToken")
                                  (errors :target-type apierror-list-type
                                   :member-name "Errors"))
                                 (:shape-name "BatchGetSecretValueResponse"))

(smithy/sdk/shapes:define-type boolean-type smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-rotate-secret-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId"))
                                (:shape-name "CancelRotateSecretRequest"))

(smithy/sdk/shapes:define-output cancel-rotate-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (version-id :target-type
                                   secret-version-id-type :member-name
                                   "VersionId"))
                                 (:shape-name "CancelRotateSecretResponse"))

(smithy/sdk/shapes:define-type client-request-token-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-secret-request common-lisp:nil
                                ((name :target-type name-type :required
                                  common-lisp:t :member-name "Name")
                                 (client-request-token :target-type
                                  client-request-token-type :member-name
                                  "ClientRequestToken")
                                 (description :target-type description-type
                                  :member-name "Description")
                                 (kms-key-id :target-type kms-key-id-type
                                  :member-name "KmsKeyId")
                                 (secret-binary :target-type secret-binary-type
                                  :member-name "SecretBinary")
                                 (secret-string :target-type secret-string-type
                                  :member-name "SecretString")
                                 (tags :target-type tag-list-type :member-name
                                  "Tags")
                                 (add-replica-regions :target-type
                                  add-replica-region-list-type :member-name
                                  "AddReplicaRegions")
                                 (force-overwrite-replica-secret :target-type
                                  boolean-type :member-name
                                  "ForceOverwriteReplicaSecret"))
                                (:shape-name "CreateSecretRequest"))

(smithy/sdk/shapes:define-output create-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (version-id :target-type
                                   secret-version-id-type :member-name
                                   "VersionId")
                                  (replication-status :target-type
                                   replication-status-list-type :member-name
                                   "ReplicationStatus"))
                                 (:shape-name "CreateSecretResponse"))

(smithy/sdk/shapes:define-type created-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error decryption-failure common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DecryptionFailure")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type name-type :member-name
                                   "Name"))
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-secret-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (recovery-window-in-days :target-type
                                  recovery-window-in-days-type :member-name
                                  "RecoveryWindowInDays")
                                 (force-delete-without-recovery :target-type
                                  boolean-type :member-name
                                  "ForceDeleteWithoutRecovery"))
                                (:shape-name "DeleteSecretRequest"))

(smithy/sdk/shapes:define-output delete-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (deletion-date :target-type
                                   deletion-date-type :member-name
                                   "DeletionDate"))
                                 (:shape-name "DeleteSecretResponse"))

(smithy/sdk/shapes:define-type deleted-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type deletion-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input describe-secret-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId"))
                                (:shape-name "DescribeSecretRequest"))

(smithy/sdk/shapes:define-output describe-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (description :target-type description-type
                                   :member-name "Description")
                                  (kms-key-id :target-type kms-key-id-type
                                   :member-name "KmsKeyId")
                                  (rotation-enabled :target-type
                                   rotation-enabled-type :member-name
                                   "RotationEnabled")
                                  (rotation-lambda-arn :target-type
                                   rotation-lambda-arntype :member-name
                                   "RotationLambdaARN")
                                  (rotation-rules :target-type
                                   rotation-rules-type :member-name
                                   "RotationRules")
                                  (last-rotated-date :target-type
                                   last-rotated-date-type :member-name
                                   "LastRotatedDate")
                                  (last-changed-date :target-type
                                   last-changed-date-type :member-name
                                   "LastChangedDate")
                                  (last-accessed-date :target-type
                                   last-accessed-date-type :member-name
                                   "LastAccessedDate")
                                  (deleted-date :target-type deleted-date-type
                                   :member-name "DeletedDate")
                                  (next-rotation-date :target-type
                                   next-rotation-date-type :member-name
                                   "NextRotationDate")
                                  (tags :target-type tag-list-type :member-name
                                   "Tags")
                                  (version-ids-to-stages :target-type
                                   secret-versions-to-stages-map-type
                                   :member-name "VersionIdsToStages")
                                  (owning-service :target-type
                                   owning-service-type :member-name
                                   "OwningService")
                                  (created-date :target-type timestamp-type
                                   :member-name "CreatedDate")
                                  (primary-region :target-type region-type
                                   :member-name "PrimaryRegion")
                                  (replication-status :target-type
                                   replication-status-list-type :member-name
                                   "ReplicationStatus"))
                                 (:shape-name "DescribeSecretResponse"))

(smithy/sdk/shapes:define-type description-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error encryption-failure common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "EncryptionFailure")
                                (:error-code 400))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exclude-characters-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exclude-lowercase-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type exclude-numbers-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type exclude-punctuation-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type exclude-uppercase-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((key :target-type filter-name-string-type
                                      :member-name "Key")
                                     (values :target-type
                                      filter-values-string-list :member-name
                                      "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-name-string-type
    common-lisp:nil
  (:description "description")
  (:name "name")
  (:tag-key "tag-key")
  (:tag-value "tag-value")
  (:primary-region "primary-region")
  (:owning-service "owning-service")
  (:all "all"))

(smithy/sdk/shapes:define-type filter-value-string-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values-string-list :member
                               filter-value-string-type)

(smithy/sdk/shapes:define-list filters-list-type :member filter)

(smithy/sdk/shapes:define-input get-random-password-request common-lisp:nil
                                ((password-length :target-type
                                  password-length-type :member-name
                                  "PasswordLength")
                                 (exclude-characters :target-type
                                  exclude-characters-type :member-name
                                  "ExcludeCharacters")
                                 (exclude-numbers :target-type
                                  exclude-numbers-type :member-name
                                  "ExcludeNumbers")
                                 (exclude-punctuation :target-type
                                  exclude-punctuation-type :member-name
                                  "ExcludePunctuation")
                                 (exclude-uppercase :target-type
                                  exclude-uppercase-type :member-name
                                  "ExcludeUppercase")
                                 (exclude-lowercase :target-type
                                  exclude-lowercase-type :member-name
                                  "ExcludeLowercase")
                                 (include-space :target-type include-space-type
                                  :member-name "IncludeSpace")
                                 (require-each-included-type :target-type
                                  require-each-included-type-type :member-name
                                  "RequireEachIncludedType"))
                                (:shape-name "GetRandomPasswordRequest"))

(smithy/sdk/shapes:define-output get-random-password-response common-lisp:nil
                                 ((random-password :target-type
                                   random-password-type :member-name
                                   "RandomPassword"))
                                 (:shape-name "GetRandomPasswordResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type name-type :member-name
                                   "Name")
                                  (resource-policy :target-type
                                   non-empty-resource-policy-type :member-name
                                   "ResourcePolicy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-input get-secret-value-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (version-id :target-type
                                  secret-version-id-type :member-name
                                  "VersionId")
                                 (version-stage :target-type
                                  secret-version-stage-type :member-name
                                  "VersionStage"))
                                (:shape-name "GetSecretValueRequest"))

(smithy/sdk/shapes:define-output get-secret-value-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (version-id :target-type
                                   secret-version-id-type :member-name
                                   "VersionId")
                                  (secret-binary :target-type
                                   secret-binary-type :member-name
                                   "SecretBinary")
                                  (secret-string :target-type
                                   secret-string-type :member-name
                                   "SecretString")
                                  (version-stages :target-type
                                   secret-version-stages-type :member-name
                                   "VersionStages")
                                  (created-date :target-type created-date-type
                                   :member-name "CreatedDate"))
                                 (:shape-name "GetSecretValueResponse"))

(smithy/sdk/shapes:define-type include-space-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-service-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list kms-key-id-list-type :member kms-key-id-type)

(smithy/sdk/shapes:define-type kms-key-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-accessed-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-changed-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-rotated-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-secret-version-ids-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (max-results :target-type max-results-type
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token-type
                                  :member-name "NextToken")
                                 (include-deprecated :target-type boolean-type
                                  :member-name "IncludeDeprecated"))
                                (:shape-name "ListSecretVersionIdsRequest"))

(smithy/sdk/shapes:define-output list-secret-version-ids-response
                                 common-lisp:nil
                                 ((versions :target-type
                                   secret-versions-list-type :member-name
                                   "Versions")
                                  (next-token :target-type next-token-type
                                   :member-name "NextToken")
                                  (arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name"))
                                 (:shape-name "ListSecretVersionIdsResponse"))

(smithy/sdk/shapes:define-input list-secrets-request common-lisp:nil
                                ((include-planned-deletion :target-type
                                  boolean-type :member-name
                                  "IncludePlannedDeletion")
                                 (max-results :target-type max-results-type
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token-type
                                  :member-name "NextToken")
                                 (filters :target-type filters-list-type
                                  :member-name "Filters")
                                 (sort-order :target-type sort-order-type
                                  :member-name "SortOrder"))
                                (:shape-name "ListSecretsRequest"))

(smithy/sdk/shapes:define-output list-secrets-response common-lisp:nil
                                 ((secret-list :target-type secret-list-type
                                   :member-name "SecretList")
                                  (next-token :target-type next-token-type
                                   :member-name "NextToken"))
                                 (:shape-name "ListSecretsResponse"))

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max-results-batch-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-rotation-date-type
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type next-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-resource-policy-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owning-service-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type password-length-type
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error precondition-not-met-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "PreconditionNotMetException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error public-policy-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "PublicPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (resource-policy :target-type
                                  non-empty-resource-policy-type :required
                                  common-lisp:t :member-name "ResourcePolicy")
                                 (block-public-policy :target-type boolean-type
                                  :member-name "BlockPublicPolicy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type name-type :member-name
                                   "Name"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-input put-secret-value-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (client-request-token :target-type
                                  client-request-token-type :member-name
                                  "ClientRequestToken")
                                 (secret-binary :target-type secret-binary-type
                                  :member-name "SecretBinary")
                                 (secret-string :target-type secret-string-type
                                  :member-name "SecretString")
                                 (version-stages :target-type
                                  secret-version-stages-type :member-name
                                  "VersionStages")
                                 (rotation-token :target-type
                                  rotation-token-type :member-name
                                  "RotationToken"))
                                (:shape-name "PutSecretValueRequest"))

(smithy/sdk/shapes:define-output put-secret-value-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (version-id :target-type
                                   secret-version-id-type :member-name
                                   "VersionId")
                                  (version-stages :target-type
                                   secret-version-stages-type :member-name
                                   "VersionStages"))
                                 (:shape-name "PutSecretValueResponse"))

(smithy/sdk/shapes:define-type random-password-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recovery-window-in-days-type
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type region-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input remove-regions-from-replication-request
                                common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (remove-replica-regions :target-type
                                  remove-replica-region-list-type :required
                                  common-lisp:t :member-name
                                  "RemoveReplicaRegions"))
                                (:shape-name
                                 "RemoveRegionsFromReplicationRequest"))

(smithy/sdk/shapes:define-output remove-regions-from-replication-response
                                 common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (replication-status :target-type
                                   replication-status-list-type :member-name
                                   "ReplicationStatus"))
                                 (:shape-name
                                  "RemoveRegionsFromReplicationResponse"))

(smithy/sdk/shapes:define-list remove-replica-region-list-type :member
                               region-type)

(smithy/sdk/shapes:define-structure replica-region-type common-lisp:nil
                                    ((region :target-type region-type
                                      :member-name "Region")
                                     (kms-key-id :target-type kms-key-id-type
                                      :member-name "KmsKeyId"))
                                    (:shape-name "ReplicaRegionType"))

(smithy/sdk/shapes:define-input replicate-secret-to-regions-request
                                common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (add-replica-regions :target-type
                                  add-replica-region-list-type :required
                                  common-lisp:t :member-name
                                  "AddReplicaRegions")
                                 (force-overwrite-replica-secret :target-type
                                  boolean-type :member-name
                                  "ForceOverwriteReplicaSecret"))
                                (:shape-name "ReplicateSecretToRegionsRequest"))

(smithy/sdk/shapes:define-output replicate-secret-to-regions-response
                                 common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (replication-status :target-type
                                   replication-status-list-type :member-name
                                   "ReplicationStatus"))
                                 (:shape-name
                                  "ReplicateSecretToRegionsResponse"))

(smithy/sdk/shapes:define-list replication-status-list-type :member
                               replication-status-type)

(smithy/sdk/shapes:define-structure replication-status-type common-lisp:nil
                                    ((region :target-type region-type
                                      :member-name "Region")
                                     (kms-key-id :target-type kms-key-id-type
                                      :member-name "KmsKeyId")
                                     (status :target-type status-type
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message-type :member-name
                                      "StatusMessage")
                                     (last-accessed-date :target-type
                                      last-accessed-date-type :member-name
                                      "LastAccessedDate"))
                                    (:shape-name "ReplicationStatusType"))

(smithy/sdk/shapes:define-type require-each-included-type-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error resource-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input restore-secret-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId"))
                                (:shape-name "RestoreSecretRequest"))

(smithy/sdk/shapes:define-output restore-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name"))
                                 (:shape-name "RestoreSecretResponse"))

(smithy/sdk/shapes:define-input rotate-secret-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (client-request-token :target-type
                                  client-request-token-type :member-name
                                  "ClientRequestToken")
                                 (rotation-lambda-arn :target-type
                                  rotation-lambda-arntype :member-name
                                  "RotationLambdaARN")
                                 (rotation-rules :target-type
                                  rotation-rules-type :member-name
                                  "RotationRules")
                                 (rotate-immediately :target-type boolean-type
                                  :member-name "RotateImmediately"))
                                (:shape-name "RotateSecretRequest"))

(smithy/sdk/shapes:define-output rotate-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (version-id :target-type
                                   secret-version-id-type :member-name
                                   "VersionId"))
                                 (:shape-name "RotateSecretResponse"))

(smithy/sdk/shapes:define-type rotation-enabled-type
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type rotation-lambda-arntype
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rotation-rules-type common-lisp:nil
                                    ((automatically-after-days :target-type
                                      automatically-rotate-after-days-type
                                      :member-name "AutomaticallyAfterDays")
                                     (duration :target-type duration-type
                                      :member-name "Duration")
                                     (schedule-expression :target-type
                                      schedule-expression-type :member-name
                                      "ScheduleExpression"))
                                    (:shape-name "RotationRulesType"))

(smithy/sdk/shapes:define-type rotation-token-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-expression-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-arntype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-binary-type smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list secret-id-list-type :member secret-id-type)

(smithy/sdk/shapes:define-type secret-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure secret-list-entry common-lisp:nil
                                    ((arn :target-type secret-arntype
                                      :member-name "ARN")
                                     (name :target-type secret-name-type
                                      :member-name "Name")
                                     (description :target-type description-type
                                      :member-name "Description")
                                     (kms-key-id :target-type kms-key-id-type
                                      :member-name "KmsKeyId")
                                     (rotation-enabled :target-type
                                      rotation-enabled-type :member-name
                                      "RotationEnabled")
                                     (rotation-lambda-arn :target-type
                                      rotation-lambda-arntype :member-name
                                      "RotationLambdaARN")
                                     (rotation-rules :target-type
                                      rotation-rules-type :member-name
                                      "RotationRules")
                                     (last-rotated-date :target-type
                                      last-rotated-date-type :member-name
                                      "LastRotatedDate")
                                     (last-changed-date :target-type
                                      last-changed-date-type :member-name
                                      "LastChangedDate")
                                     (last-accessed-date :target-type
                                      last-accessed-date-type :member-name
                                      "LastAccessedDate")
                                     (deleted-date :target-type
                                      deleted-date-type :member-name
                                      "DeletedDate")
                                     (next-rotation-date :target-type
                                      next-rotation-date-type :member-name
                                      "NextRotationDate")
                                     (tags :target-type tag-list-type
                                      :member-name "Tags")
                                     (secret-versions-to-stages :target-type
                                      secret-versions-to-stages-map-type
                                      :member-name "SecretVersionsToStages")
                                     (owning-service :target-type
                                      owning-service-type :member-name
                                      "OwningService")
                                     (created-date :target-type timestamp-type
                                      :member-name "CreatedDate")
                                     (primary-region :target-type region-type
                                      :member-name "PrimaryRegion"))
                                    (:shape-name "SecretListEntry"))

(smithy/sdk/shapes:define-list secret-list-type :member secret-list-entry)

(smithy/sdk/shapes:define-type secret-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-string-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure secret-value-entry common-lisp:nil
                                    ((arn :target-type secret-arntype
                                      :member-name "ARN")
                                     (name :target-type secret-name-type
                                      :member-name "Name")
                                     (version-id :target-type
                                      secret-version-id-type :member-name
                                      "VersionId")
                                     (secret-binary :target-type
                                      secret-binary-type :member-name
                                      "SecretBinary")
                                     (secret-string :target-type
                                      secret-string-type :member-name
                                      "SecretString")
                                     (version-stages :target-type
                                      secret-version-stages-type :member-name
                                      "VersionStages")
                                     (created-date :target-type
                                      created-date-type :member-name
                                      "CreatedDate"))
                                    (:shape-name "SecretValueEntry"))

(smithy/sdk/shapes:define-list secret-values-type :member secret-value-entry)

(smithy/sdk/shapes:define-type secret-version-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-version-stage-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list secret-version-stages-type :member
                               secret-version-stage-type)

(smithy/sdk/shapes:define-structure secret-versions-list-entry common-lisp:nil
                                    ((version-id :target-type
                                      secret-version-id-type :member-name
                                      "VersionId")
                                     (version-stages :target-type
                                      secret-version-stages-type :member-name
                                      "VersionStages")
                                     (last-accessed-date :target-type
                                      last-accessed-date-type :member-name
                                      "LastAccessedDate")
                                     (created-date :target-type
                                      created-date-type :member-name
                                      "CreatedDate")
                                     (kms-key-ids :target-type
                                      kms-key-id-list-type :member-name
                                      "KmsKeyIds"))
                                    (:shape-name "SecretVersionsListEntry"))

(smithy/sdk/shapes:define-list secret-versions-list-type :member
                               secret-versions-list-entry)

(smithy/sdk/shapes:define-map secret-versions-to-stages-map-type :key
                              secret-version-id-type :value
                              secret-version-stages-type)

(smithy/sdk/shapes:define-enum sort-order-type
    common-lisp:nil
  (:asc "asc")
  (:desc "desc"))

(smithy/sdk/shapes:define-type status-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:in-sync "InSync")
  (:failed "Failed")
  (:in-progress "InProgress"))

(smithy/sdk/shapes:define-input stop-replication-to-replica-request
                                common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId"))
                                (:shape-name "StopReplicationToReplicaRequest"))

(smithy/sdk/shapes:define-output stop-replication-to-replica-response
                                 common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN"))
                                 (:shape-name
                                  "StopReplicationToReplicaResponse"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key-type
                                      :member-name "Key")
                                     (value :target-type tag-value-type
                                      :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-key-list-type :member tag-key-type)

(smithy/sdk/shapes:define-type tag-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list-type :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (tags :target-type tag-list-type :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (tag-keys :target-type tag-key-list-type
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-secret-request common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (client-request-token :target-type
                                  client-request-token-type :member-name
                                  "ClientRequestToken")
                                 (description :target-type description-type
                                  :member-name "Description")
                                 (kms-key-id :target-type kms-key-id-type
                                  :member-name "KmsKeyId")
                                 (secret-binary :target-type secret-binary-type
                                  :member-name "SecretBinary")
                                 (secret-string :target-type secret-string-type
                                  :member-name "SecretString"))
                                (:shape-name "UpdateSecretRequest"))

(smithy/sdk/shapes:define-output update-secret-response common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name")
                                  (version-id :target-type
                                   secret-version-id-type :member-name
                                   "VersionId"))
                                 (:shape-name "UpdateSecretResponse"))

(smithy/sdk/shapes:define-input update-secret-version-stage-request
                                common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :required common-lisp:t :member-name
                                  "SecretId")
                                 (version-stage :target-type
                                  secret-version-stage-type :required
                                  common-lisp:t :member-name "VersionStage")
                                 (remove-from-version-id :target-type
                                  secret-version-id-type :member-name
                                  "RemoveFromVersionId")
                                 (move-to-version-id :target-type
                                  secret-version-id-type :member-name
                                  "MoveToVersionId"))
                                (:shape-name "UpdateSecretVersionStageRequest"))

(smithy/sdk/shapes:define-output update-secret-version-stage-response
                                 common-lisp:nil
                                 ((arn :target-type secret-arntype :member-name
                                   "ARN")
                                  (name :target-type secret-name-type
                                   :member-name "Name"))
                                 (:shape-name
                                  "UpdateSecretVersionStageResponse"))

(smithy/sdk/shapes:define-input validate-resource-policy-request
                                common-lisp:nil
                                ((secret-id :target-type secret-id-type
                                  :member-name "SecretId")
                                 (resource-policy :target-type
                                  non-empty-resource-policy-type :required
                                  common-lisp:t :member-name "ResourcePolicy"))
                                (:shape-name "ValidateResourcePolicyRequest"))

(smithy/sdk/shapes:define-output validate-resource-policy-response
                                 common-lisp:nil
                                 ((policy-validation-passed :target-type
                                   boolean-type :member-name
                                   "PolicyValidationPassed")
                                  (validation-errors :target-type
                                   validation-errors-type :member-name
                                   "ValidationErrors"))
                                 (:shape-name "ValidateResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure validation-errors-entry common-lisp:nil
                                    ((check-name :target-type name-type
                                      :member-name "CheckName")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ValidationErrorsEntry"))

(smithy/sdk/shapes:define-list validation-errors-type :member
                               validation-errors-entry)

(smithy/sdk/operation:define-operation batch-get-secret-value :shape-name
                                       "BatchGetSecretValue" :input
                                       batch-get-secret-value-request :output
                                       batch-get-secret-value-response :errors
                                       (decryption-failure
                                        internal-service-error
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation cancel-rotate-secret :shape-name
                                       "CancelRotateSecret" :input
                                       cancel-rotate-secret-request :output
                                       cancel-rotate-secret-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-secret :shape-name "CreateSecret"
                                       :input create-secret-request :output
                                       create-secret-response :errors
                                       (decryption-failure encryption-failure
                                        internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        precondition-not-met-exception
                                        resource-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-secret :shape-name "DeleteSecret"
                                       :input delete-secret-request :output
                                       delete-secret-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-secret :shape-name
                                       "DescribeSecret" :input
                                       describe-secret-request :output
                                       describe-secret-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-random-password :shape-name
                                       "GetRandomPassword" :input
                                       get-random-password-request :output
                                       get-random-password-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-secret-value :shape-name
                                       "GetSecretValue" :input
                                       get-secret-value-request :output
                                       get-secret-value-response :errors
                                       (decryption-failure
                                        internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-secret-version-ids :shape-name
                                       "ListSecretVersionIds" :input
                                       list-secret-version-ids-request :output
                                       list-secret-version-ids-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-secrets :shape-name "ListSecrets"
                                       :input list-secrets-request :output
                                       list-secrets-response :errors
                                       (internal-service-error
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        malformed-policy-document-exception
                                        public-policy-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation put-secret-value :shape-name
                                       "PutSecretValue" :input
                                       put-secret-value-request :output
                                       put-secret-value-response :errors
                                       (decryption-failure encryption-failure
                                        internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation remove-regions-from-replication
                                       :shape-name
                                       "RemoveRegionsFromReplication" :input
                                       remove-regions-from-replication-request
                                       :output
                                       remove-regions-from-replication-response
                                       :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation replicate-secret-to-regions :shape-name
                                       "ReplicateSecretToRegions" :input
                                       replicate-secret-to-regions-request
                                       :output
                                       replicate-secret-to-regions-response
                                       :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation restore-secret :shape-name
                                       "RestoreSecret" :input
                                       restore-secret-request :output
                                       restore-secret-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation rotate-secret :shape-name "RotateSecret"
                                       :input rotate-secret-request :output
                                       rotate-secret-response :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-replication-to-replica :shape-name
                                       "StopReplicationToReplica" :input
                                       stop-replication-to-replica-request
                                       :output
                                       stop-replication-to-replica-response
                                       :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-secret :shape-name "UpdateSecret"
                                       :input update-secret-request :output
                                       update-secret-response :errors
                                       (decryption-failure encryption-failure
                                        internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        precondition-not-met-exception
                                        resource-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-secret-version-stage :shape-name
                                       "UpdateSecretVersionStage" :input
                                       update-secret-version-stage-request
                                       :output
                                       update-secret-version-stage-response
                                       :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation validate-resource-policy :shape-name
                                       "ValidateResourcePolicy" :input
                                       validate-resource-policy-request :output
                                       validate-resource-policy-response
                                       :errors
                                       (internal-service-error
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        malformed-policy-document-exception
                                        resource-not-found-exception))
