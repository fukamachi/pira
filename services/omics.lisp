(uiop/package:define-package #:pira/omics (:use)
                             (:export #:abort-multipart-read-set-upload
                              #:accelerators #:accept-share
                              #:access-log-location #:activate-read-set-filter
                              #:activate-read-set-job-item
                              #:activate-read-set-job-list
                              #:activate-read-set-source-item
                              #:activate-read-set-source-list
                              #:activation-job-id #:annotation-field-map
                              #:annotation-import-item-detail
                              #:annotation-import-item-details
                              #:annotation-import-item-source
                              #:annotation-import-item-sources
                              #:annotation-import-job
                              #:annotation-import-job-item
                              #:annotation-import-job-items #:annotation-store
                              #:annotation-store-item #:annotation-store-items
                              #:annotation-store-version
                              #:annotation-store-version-item
                              #:annotation-store-version-items
                              #:annotation-type #:arn #:arn-list
                              #:aws-account-id #:batch-delete-read-set
                              #:cache-behavior #:cancel-annotation-import-job
                              #:cancel-run #:cancel-variant-import-job
                              #:client-token #:comment-char
                              #:complete-multipart-read-set-upload
                              #:complete-read-set-upload-part-list
                              #:complete-read-set-upload-part-list-item
                              #:completion-time #:connection-arn
                              #:create-annotation-store
                              #:create-annotation-store-version
                              #:create-multipart-read-set-upload
                              #:create-reference-store #:create-run-cache
                              #:create-run-group #:create-sequence-store
                              #:create-share #:create-variant-store
                              #:create-workflow #:create-workflow-version
                              #:creation-job-id #:creation-time #:creation-type
                              #:definition-repository
                              #:definition-repository-details
                              #:delete-annotation-store
                              #:delete-annotation-store-versions
                              #:delete-reference #:delete-reference-store
                              #:delete-run #:delete-run-cache
                              #:delete-run-group #:delete-s3access-policy
                              #:delete-sequence-store #:delete-share
                              #:delete-variant-store #:delete-workflow
                              #:delete-workflow-version #:description #:etag
                              #:etag-algorithm #:etag-algorithm-family
                              #:encoding #:encryption-type #:engine-log-stream
                              #:engine-version #:escape-char #:escape-quotes
                              #:exclude-file-pattern-list #:export-job-id
                              #:export-read-set #:export-read-set-detail
                              #:export-read-set-detail-list
                              #:export-read-set-filter
                              #:export-read-set-job-detail
                              #:export-read-set-job-detail-list
                              #:export-read-set-list #:fallback-location
                              #:file-information #:file-type #:filter
                              #:format-options #:format-to-header
                              #:format-to-header-key #:full-repository-id
                              #:generated-from #:get-annotation-import-job
                              #:get-annotation-store
                              #:get-annotation-store-version #:get-read-set
                              #:get-read-set-activation-job
                              #:get-read-set-export-job
                              #:get-read-set-import-job #:get-read-set-metadata
                              #:get-reference #:get-reference-import-job
                              #:get-reference-metadata #:get-reference-store
                              #:get-run #:get-run-cache #:get-run-group
                              #:get-run-task #:get-s3access-policy
                              #:get-sequence-store #:get-share
                              #:get-variant-import-job #:get-variant-store
                              #:get-workflow #:get-workflow-version #:header
                              #:id-list #:import-job-id
                              #:import-read-set-filter
                              #:import-read-set-job-item
                              #:import-read-set-job-list
                              #:import-read-set-source-item
                              #:import-read-set-source-list
                              #:import-reference-filter
                              #:import-reference-job-item
                              #:import-reference-job-list
                              #:import-reference-source-item
                              #:import-reference-source-list #:job-status
                              #:job-status-message #:job-status-msg #:line-sep
                              #:list-annotation-import-jobs
                              #:list-annotation-import-jobs-filter
                              #:list-annotation-store-versions
                              #:list-annotation-store-versions-filter
                              #:list-annotation-stores
                              #:list-annotation-stores-filter
                              #:list-multipart-read-set-uploads
                              #:list-read-set-activation-jobs
                              #:list-read-set-export-jobs
                              #:list-read-set-import-jobs
                              #:list-read-set-upload-parts #:list-read-sets
                              #:list-reference-import-jobs
                              #:list-reference-stores #:list-references
                              #:list-run-caches #:list-run-groups
                              #:list-run-tasks #:list-runs
                              #:list-sequence-stores #:list-shares
                              #:list-tags-for-resource #:list-token
                              #:list-variant-import-jobs
                              #:list-variant-import-jobs-filter
                              #:list-variant-stores
                              #:list-variant-stores-filter
                              #:list-workflow-versions #:list-workflows #:md5
                              #:multipart-read-set-upload-list
                              #:multipart-read-set-upload-list-item
                              #:next-token #:numeric-id-in-arn #:omics
                              #:parameter-template-path
                              #:propagated-set-level-tags #:put-s3access-policy
                              #:quote #:quote-all #:range #:read-options
                              #:read-set-activation-job-item-status
                              #:read-set-activation-job-status #:read-set-arn
                              #:read-set-batch-error
                              #:read-set-batch-error-list
                              #:read-set-description
                              #:read-set-export-job-item-status
                              #:read-set-export-job-status #:read-set-file
                              #:read-set-files #:read-set-filter #:read-set-id
                              #:read-set-id-list
                              #:read-set-import-job-item-status
                              #:read-set-import-job-status #:read-set-list
                              #:read-set-list-item #:read-set-name
                              #:read-set-part-source
                              #:read-set-part-streaming-blob
                              #:read-set-resource #:read-set-s3access
                              #:read-set-status #:read-set-status-message
                              #:read-set-streaming-blob
                              #:read-set-upload-part-list
                              #:read-set-upload-part-list-filter
                              #:read-set-upload-part-list-item
                              #:readme-markdown #:readme-path
                              #:readme-s3presigned-url #:reference-arn
                              #:reference-arn-filter #:reference-creation-type
                              #:reference-description #:reference-file
                              #:reference-files #:reference-filter
                              #:reference-id #:reference-import-job-item-status
                              #:reference-import-job-status #:reference-item
                              #:reference-list #:reference-list-item
                              #:reference-name #:reference-resource
                              #:reference-status #:reference-store-arn
                              #:reference-store-description
                              #:reference-store-detail
                              #:reference-store-detail-list
                              #:reference-store-filter #:reference-store-id
                              #:reference-store-name #:reference-store-resource
                              #:reference-streaming-blob #:resource-id
                              #:resource-identifier #:resource-owner #:role-arn
                              #:run-arn #:run-cache-arn #:run-cache-id
                              #:run-cache-list #:run-cache-list-item
                              #:run-cache-request-id #:run-cache-resource
                              #:run-cache-status #:run-cache-timestamp
                              #:run-export #:run-export-list
                              #:run-failure-reason #:run-group-arn
                              #:run-group-id #:run-group-list
                              #:run-group-list-item #:run-group-list-token
                              #:run-group-name #:run-group-request-id
                              #:run-group-resource #:run-group-timestamp
                              #:run-id #:run-left-normalization #:run-list
                              #:run-list-item #:run-list-token #:run-log-level
                              #:run-log-location #:run-log-stream #:run-name
                              #:run-output-uri #:run-parameters
                              #:run-request-id #:run-resource
                              #:run-resource-digest #:run-resource-digest-key
                              #:run-resource-digests #:run-retention-mode
                              #:run-role-arn #:run-started-by #:run-status
                              #:run-status-message #:run-timestamp #:run-uuid
                              #:s3access-config #:s3access-point-arn
                              #:s3access-policy #:s3destination #:s3uri
                              #:s3uri-for-bucket-or-object #:s3uri-for-object
                              #:sample-id #:schema #:schema-item
                              #:schema-value-type #:separator
                              #:sequence-information #:sequence-store-arn
                              #:sequence-store-description
                              #:sequence-store-detail
                              #:sequence-store-detail-list
                              #:sequence-store-filter #:sequence-store-id
                              #:sequence-store-name #:sequence-store-resource
                              #:sequence-store-s3access #:sequence-store-status
                              #:sequence-store-status-message #:share
                              #:share-details #:share-details-list #:share-name
                              #:share-resource-type #:share-status
                              #:source-files #:source-reference
                              #:source-reference-type #:source-reference-value
                              #:sse-config #:start-annotation-import-job
                              #:start-read-set-activation-job
                              #:start-read-set-activation-job-source-item
                              #:start-read-set-activation-job-source-list
                              #:start-read-set-export-job
                              #:start-read-set-import-job
                              #:start-read-set-import-job-source-item
                              #:start-read-set-import-job-source-list
                              #:start-reference-import-job
                              #:start-reference-import-job-source-item
                              #:start-reference-import-job-source-list
                              #:start-run #:start-variant-import-job
                              #:status-list #:status-message #:storage-type
                              #:store-format #:store-id #:store-name
                              #:store-options #:store-status #:store-type
                              #:subject-id #:tag-arn #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value
                              #:tagging-resource #:task-failure-reason
                              #:task-id #:task-instance-type #:task-list
                              #:task-list-item #:task-list-token
                              #:task-log-stream #:task-name #:task-resource
                              #:task-status #:task-status-message
                              #:task-timestamp #:tsv-options
                              #:tsv-store-options #:tsv-version-options
                              #:type-list #:untag-resource
                              #:update-annotation-store
                              #:update-annotation-store-version
                              #:update-run-cache #:update-run-group
                              #:update-sequence-store #:update-time
                              #:update-variant-store #:update-workflow
                              #:update-workflow-version #:upload-id
                              #:upload-read-set-part #:user-custom-description
                              #:user-custom-name #:variant-import-item-detail
                              #:variant-import-item-details
                              #:variant-import-item-source
                              #:variant-import-item-sources
                              #:variant-import-job #:variant-import-job-item
                              #:variant-import-job-items #:variant-store
                              #:variant-store-item #:variant-store-items
                              #:vcf-options #:version-delete-error
                              #:version-delete-error-list #:version-list
                              #:version-name #:version-options #:version-status
                              #:workflow-arn #:workflow-bucket-owner-id
                              #:workflow-definition #:workflow-description
                              #:workflow-digest #:workflow-engine
                              #:workflow-export #:workflow-export-list
                              #:workflow-id #:workflow-list
                              #:workflow-list-item #:workflow-list-token
                              #:workflow-main #:workflow-metadata
                              #:workflow-metadata-key #:workflow-metadata-value
                              #:workflow-name #:workflow-owner-id
                              #:workflow-parameter
                              #:workflow-parameter-description
                              #:workflow-parameter-name
                              #:workflow-parameter-template
                              #:workflow-request-id #:workflow-resource
                              #:workflow-status #:workflow-status-message
                              #:workflow-timestamp #:workflow-type
                              #:workflow-uuid #:workflow-version
                              #:workflow-version-arn
                              #:workflow-version-description
                              #:workflow-version-list
                              #:workflow-version-list-item
                              #:workflow-version-list-token
                              #:workflow-version-name))
(common-lisp:in-package #:pira/omics)

(smithy/sdk/service:define-service omics :shape-name "Omics" :version
                                   "2022-11-28" :title "Amazon Omics"
                                   :operations
                                   '(delete-s3access-policy get-s3access-policy
                                     put-s3access-policy)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Omics")
                                      ("arnNamespace" . "omics")
                                      ("cloudTrailEventSource"
                                       . "omics.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "omics"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the presence of tag key-value pairs attached to the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the presence of tag key-value pairs in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the presence of tag keys in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input abort-multipart-read-set-upload-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "AbortMultipartReadSetUploadRequest"))

(smithy/sdk/shapes:define-output abort-multipart-read-set-upload-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AbortMultipartReadSetUploadResponse"))

(smithy/sdk/shapes:define-type accelerators smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input accept-share-request common-lisp:nil
                                ((share-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "shareId"
                                  :http-label common-lisp:t))
                                (:shape-name "AcceptShareRequest"))

(smithy/sdk/shapes:define-output accept-share-response common-lisp:nil
                                 ((status :target-type share-status
                                   :member-name "status"))
                                 (:shape-name "AcceptShareResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-log-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure activate-read-set-filter common-lisp:nil
                                    ((status :target-type
                                      read-set-activation-job-status
                                      :member-name "status")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ActivateReadSetFilter"))

(smithy/sdk/shapes:define-structure activate-read-set-job-item common-lisp:nil
                                    ((id :target-type activation-job-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (sequence-store-id :target-type
                                      sequence-store-id :required common-lisp:t
                                      :member-name "sequenceStoreId")
                                     (status :target-type
                                      read-set-activation-job-status :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (completion-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completionTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ActivateReadSetJobItem"))

(smithy/sdk/shapes:define-list activate-read-set-job-list :member
                               activate-read-set-job-item)

(smithy/sdk/shapes:define-structure activate-read-set-source-item
                                    common-lisp:nil
                                    ((read-set-id :target-type read-set-id
                                      :required common-lisp:t :member-name
                                      "readSetId")
                                     (status :target-type
                                      read-set-activation-job-item-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-message :target-type
                                      job-status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "ActivateReadSetSourceItem"))

(smithy/sdk/shapes:define-list activate-read-set-source-list :member
                               activate-read-set-source-item)

(smithy/sdk/shapes:define-type activation-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map annotation-field-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure annotation-import-item-detail
                                    common-lisp:nil
                                    ((source :target-type s3uri :required
                                      common-lisp:t :member-name "source")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "jobStatus"))
                                    (:shape-name "AnnotationImportItemDetail"))

(smithy/sdk/shapes:define-list annotation-import-item-details :member
                               annotation-import-item-detail)

(smithy/sdk/shapes:define-structure annotation-import-item-source
                                    common-lisp:nil
                                    ((source :target-type s3uri :required
                                      common-lisp:t :member-name "source"))
                                    (:shape-name "AnnotationImportItemSource"))

(smithy/sdk/shapes:define-list annotation-import-item-sources :member
                               annotation-import-item-source)

common-lisp:nil

(smithy/sdk/shapes:define-structure annotation-import-job-item common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (destination-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "destinationName")
                                     (version-name :target-type version-name
                                      :required common-lisp:t :member-name
                                      "versionName")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (completion-time :target-type
                                      completion-time :member-name
                                      "completionTime")
                                     (run-left-normalization :target-type
                                      run-left-normalization :member-name
                                      "runLeftNormalization")
                                     (annotation-fields :target-type
                                      annotation-field-map :member-name
                                      "annotationFields"))
                                    (:shape-name "AnnotationImportJobItem"))

(smithy/sdk/shapes:define-list annotation-import-job-items :member
                               annotation-import-job-item)

common-lisp:nil

(smithy/sdk/shapes:define-structure annotation-store-item common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (reference :target-type reference-item
                                      :required common-lisp:t :member-name
                                      "reference")
                                     (status :target-type store-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (store-arn :target-type arn :required
                                      common-lisp:t :member-name "storeArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (store-format :target-type store-format
                                      :required common-lisp:t :member-name
                                      "storeFormat")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (sse-config :target-type sse-config
                                      :required common-lisp:t :member-name
                                      "sseConfig")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (status-message :target-type
                                      status-message :required common-lisp:t
                                      :member-name "statusMessage")
                                     (store-size-bytes :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "storeSizeBytes"))
                                    (:shape-name "AnnotationStoreItem"))

(smithy/sdk/shapes:define-list annotation-store-items :member
                               annotation-store-item)

common-lisp:nil

(smithy/sdk/shapes:define-structure annotation-store-version-item
                                    common-lisp:nil
                                    ((store-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "storeId")
                                     (id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (status :target-type version-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (version-arn :target-type arn :required
                                      common-lisp:t :member-name "versionArn")
                                     (name :target-type store-name :required
                                      common-lisp:t :member-name "name")
                                     (version-name :target-type version-name
                                      :required common-lisp:t :member-name
                                      "versionName")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (status-message :target-type
                                      status-message :required common-lisp:t
                                      :member-name "statusMessage")
                                     (version-size-bytes :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "versionSizeBytes"))
                                    (:shape-name "AnnotationStoreVersionItem"))

(smithy/sdk/shapes:define-list annotation-store-version-items :member
                               annotation-store-version-item)

(smithy/sdk/shapes:define-type annotation-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-delete-read-set-request common-lisp:nil
                                ((ids :target-type read-set-id-list :required
                                  common-lisp:t :member-name "ids")
                                 (sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "BatchDeleteReadSetRequest"))

(smithy/sdk/shapes:define-output batch-delete-read-set-response common-lisp:nil
                                 ((errors :target-type
                                   read-set-batch-error-list :member-name
                                   "errors"))
                                 (:shape-name "BatchDeleteReadSetResponse"))

(smithy/sdk/shapes:define-type cache-behavior smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-annotation-import-request
                                common-lisp:nil
                                ((job-id :target-type resource-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelAnnotationImportRequest"))

(smithy/sdk/shapes:define-output cancel-annotation-import-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CancelAnnotationImportResponse"))

(smithy/sdk/shapes:define-input cancel-run-request common-lisp:nil
                                ((id :target-type run-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "CancelRunRequest"))

(smithy/sdk/shapes:define-input cancel-variant-import-request common-lisp:nil
                                ((job-id :target-type resource-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelVariantImportRequest"))

(smithy/sdk/shapes:define-output cancel-variant-import-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelVariantImportResponse"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comment-char smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input complete-multipart-read-set-upload-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (parts :target-type
                                  complete-read-set-upload-part-list :required
                                  common-lisp:t :member-name "parts"))
                                (:shape-name
                                 "CompleteMultipartReadSetUploadRequest"))

(smithy/sdk/shapes:define-output complete-multipart-read-set-upload-response
                                 common-lisp:nil
                                 ((read-set-id :target-type read-set-id
                                   :required common-lisp:t :member-name
                                   "readSetId"))
                                 (:shape-name
                                  "CompleteMultipartReadSetUploadResponse"))

(smithy/sdk/shapes:define-list complete-read-set-upload-part-list :member
                               complete-read-set-upload-part-list-item)

(smithy/sdk/shapes:define-structure complete-read-set-upload-part-list-item
                                    common-lisp:nil
                                    ((part-number :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "partNumber")
                                     (part-source :target-type
                                      read-set-part-source :required
                                      common-lisp:t :member-name "partSource")
                                     (checksum :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "checksum"))
                                    (:shape-name
                                     "CompleteReadSetUploadPartListItem"))

(smithy/sdk/shapes:define-type completion-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-annotation-store-request common-lisp:nil
                                ((reference :target-type reference-item
                                  :member-name "reference")
                                 (name :target-type store-name :member-name
                                  "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (version-name :target-type version-name
                                  :member-name "versionName")
                                 (sse-config :target-type sse-config
                                  :member-name "sseConfig")
                                 (store-format :target-type store-format
                                  :required common-lisp:t :member-name
                                  "storeFormat")
                                 (store-options :target-type store-options
                                  :member-name "storeOptions"))
                                (:shape-name "CreateAnnotationStoreRequest"))

(smithy/sdk/shapes:define-output create-annotation-store-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (reference :target-type reference-item
                                   :member-name "reference")
                                  (store-format :target-type store-format
                                   :member-name "storeFormat")
                                  (store-options :target-type store-options
                                   :member-name "storeOptions")
                                  (status :target-type store-status :required
                                   common-lisp:t :member-name "status")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (version-name :target-type version-name
                                   :required common-lisp:t :member-name
                                   "versionName")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime"))
                                 (:shape-name "CreateAnnotationStoreResponse"))

(smithy/sdk/shapes:define-input create-annotation-store-version-request
                                common-lisp:nil
                                ((name :target-type store-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "versionName")
                                 (description :target-type description
                                  :member-name "description")
                                 (version-options :target-type version-options
                                  :member-name "versionOptions")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateAnnotationStoreVersionRequest"))

(smithy/sdk/shapes:define-output create-annotation-store-version-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (version-name :target-type version-name
                                   :required common-lisp:t :member-name
                                   "versionName")
                                  (store-id :target-type resource-id :required
                                   common-lisp:t :member-name "storeId")
                                  (version-options :target-type version-options
                                   :member-name "versionOptions")
                                  (name :target-type store-name :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type version-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime"))
                                 (:shape-name
                                  "CreateAnnotationStoreVersionResponse"))

(smithy/sdk/shapes:define-input create-multipart-read-set-upload-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (source-file-type :target-type file-type
                                  :required common-lisp:t :member-name
                                  "sourceFileType")
                                 (subject-id :target-type subject-id :required
                                  common-lisp:t :member-name "subjectId")
                                 (sample-id :target-type sample-id :required
                                  common-lisp:t :member-name "sampleId")
                                 (generated-from :target-type generated-from
                                  :member-name "generatedFrom")
                                 (reference-arn :target-type reference-arn
                                  :member-name "referenceArn")
                                 (name :target-type read-set-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type read-set-description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateMultipartReadSetUploadRequest"))

(smithy/sdk/shapes:define-output create-multipart-read-set-upload-response
                                 common-lisp:nil
                                 ((sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (upload-id :target-type upload-id :required
                                   common-lisp:t :member-name "uploadId")
                                  (source-file-type :target-type file-type
                                   :required common-lisp:t :member-name
                                   "sourceFileType")
                                  (subject-id :target-type subject-id :required
                                   common-lisp:t :member-name "subjectId")
                                  (sample-id :target-type sample-id :required
                                   common-lisp:t :member-name "sampleId")
                                  (generated-from :target-type generated-from
                                   :member-name "generatedFrom")
                                  (reference-arn :target-type reference-arn
                                   :required common-lisp:t :member-name
                                   "referenceArn")
                                  (name :target-type read-set-name :member-name
                                   "name")
                                  (description :target-type
                                   read-set-description :member-name
                                   "description")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name
                                  "CreateMultipartReadSetUploadResponse"))

(smithy/sdk/shapes:define-input create-reference-store-request common-lisp:nil
                                ((name :target-type reference-store-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type
                                  reference-store-description :member-name
                                  "description")
                                 (sse-config :target-type sse-config
                                  :member-name "sseConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateReferenceStoreRequest"))

(smithy/sdk/shapes:define-output create-reference-store-response
                                 common-lisp:nil
                                 ((id :target-type reference-store-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type reference-store-arn
                                   :required common-lisp:t :member-name "arn")
                                  (name :target-type reference-store-name
                                   :member-name "name")
                                  (description :target-type
                                   reference-store-description :member-name
                                   "description")
                                  (sse-config :target-type sse-config
                                   :member-name "sseConfig")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name "CreateReferenceStoreResponse"))

(smithy/sdk/shapes:define-input create-run-cache-request common-lisp:nil
                                ((cache-behavior :target-type cache-behavior
                                  :member-name "cacheBehavior")
                                 (cache-s3location :target-type
                                  s3uri-for-bucket-or-object :required
                                  common-lisp:t :member-name "cacheS3Location")
                                 (description :target-type
                                  user-custom-description :member-name
                                  "description")
                                 (name :target-type user-custom-name
                                  :member-name "name")
                                 (request-id :target-type run-cache-request-id
                                  :required common-lisp:t :member-name
                                  "requestId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (cache-bucket-owner-id :target-type
                                  aws-account-id :member-name
                                  "cacheBucketOwnerId"))
                                (:shape-name "CreateRunCacheRequest"))

(smithy/sdk/shapes:define-output create-run-cache-response common-lisp:nil
                                 ((arn :target-type run-cache-arn :member-name
                                   "arn")
                                  (id :target-type run-cache-id :member-name
                                   "id")
                                  (status :target-type run-cache-status
                                   :member-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateRunCacheResponse"))

(smithy/sdk/shapes:define-input create-run-group-request common-lisp:nil
                                ((name :target-type run-group-name :member-name
                                  "name")
                                 (max-cpus :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxCpus")
                                 (max-runs :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxRuns")
                                 (max-duration :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxDuration")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (request-id :target-type run-group-request-id
                                  :required common-lisp:t :member-name
                                  "requestId")
                                 (max-gpus :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxGpus"))
                                (:shape-name "CreateRunGroupRequest"))

(smithy/sdk/shapes:define-output create-run-group-response common-lisp:nil
                                 ((arn :target-type run-group-arn :member-name
                                   "arn")
                                  (id :target-type run-group-id :member-name
                                   "id")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateRunGroupResponse"))

(smithy/sdk/shapes:define-input create-sequence-store-request common-lisp:nil
                                ((name :target-type sequence-store-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type
                                  sequence-store-description :member-name
                                  "description")
                                 (sse-config :target-type sse-config
                                  :member-name "sseConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (fallback-location :target-type
                                  fallback-location :member-name
                                  "fallbackLocation")
                                 (e-tag-algorithm-family :target-type
                                  etag-algorithm-family :member-name
                                  "eTagAlgorithmFamily")
                                 (propagated-set-level-tags :target-type
                                  propagated-set-level-tags :member-name
                                  "propagatedSetLevelTags")
                                 (s3access-config :target-type s3access-config
                                  :member-name "s3AccessConfig"))
                                (:shape-name "CreateSequenceStoreRequest"))

(smithy/sdk/shapes:define-output create-sequence-store-response common-lisp:nil
                                 ((id :target-type sequence-store-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type sequence-store-arn
                                   :required common-lisp:t :member-name "arn")
                                  (name :target-type sequence-store-name
                                   :member-name "name")
                                  (description :target-type
                                   sequence-store-description :member-name
                                   "description")
                                  (sse-config :target-type sse-config
                                   :member-name "sseConfig")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (fallback-location :target-type
                                   fallback-location :member-name
                                   "fallbackLocation")
                                  (e-tag-algorithm-family :target-type
                                   etag-algorithm-family :member-name
                                   "eTagAlgorithmFamily")
                                  (status :target-type sequence-store-status
                                   :member-name "status")
                                  (status-message :target-type
                                   sequence-store-status-message :member-name
                                   "statusMessage")
                                  (propagated-set-level-tags :target-type
                                   propagated-set-level-tags :member-name
                                   "propagatedSetLevelTags")
                                  (s3access :target-type
                                   sequence-store-s3access :member-name
                                   "s3Access"))
                                 (:shape-name "CreateSequenceStoreResponse"))

(smithy/sdk/shapes:define-input create-share-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn")
                                 (principal-subscriber :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "principalSubscriber")
                                 (share-name :target-type share-name
                                  :member-name "shareName"))
                                (:shape-name "CreateShareRequest"))

(smithy/sdk/shapes:define-output create-share-response common-lisp:nil
                                 ((share-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "shareId")
                                  (status :target-type share-status
                                   :member-name "status")
                                  (share-name :target-type share-name
                                   :member-name "shareName"))
                                 (:shape-name "CreateShareResponse"))

(smithy/sdk/shapes:define-input create-variant-store-request common-lisp:nil
                                ((reference :target-type reference-item
                                  :required common-lisp:t :member-name
                                  "reference")
                                 (name :target-type store-name :member-name
                                  "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (sse-config :target-type sse-config
                                  :member-name "sseConfig"))
                                (:shape-name "CreateVariantStoreRequest"))

(smithy/sdk/shapes:define-output create-variant-store-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (reference :target-type reference-item
                                   :member-name "reference")
                                  (status :target-type store-status :required
                                   common-lisp:t :member-name "status")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime"))
                                 (:shape-name "CreateVariantStoreResponse"))

(smithy/sdk/shapes:define-input create-workflow-request common-lisp:nil
                                ((name :target-type workflow-name :member-name
                                  "name")
                                 (description :target-type workflow-description
                                  :member-name "description")
                                 (engine :target-type workflow-engine
                                  :member-name "engine")
                                 (definition-zip :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "definitionZip")
                                 (definition-uri :target-type
                                  workflow-definition :member-name
                                  "definitionUri")
                                 (main :target-type workflow-main :member-name
                                  "main")
                                 (parameter-template :target-type
                                  workflow-parameter-template :member-name
                                  "parameterTemplate")
                                 (storage-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "storageCapacity")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (request-id :target-type workflow-request-id
                                  :required common-lisp:t :member-name
                                  "requestId")
                                 (accelerators :target-type accelerators
                                  :member-name "accelerators")
                                 (storage-type :target-type storage-type
                                  :member-name "storageType")
                                 (readme-markdown :target-type readme-markdown
                                  :member-name "readmeMarkdown")
                                 (parameter-template-path :target-type
                                  parameter-template-path :member-name
                                  "parameterTemplatePath")
                                 (readme-path :target-type readme-path
                                  :member-name "readmePath")
                                 (definition-repository :target-type
                                  definition-repository :member-name
                                  "definitionRepository")
                                 (workflow-bucket-owner-id :target-type
                                  workflow-bucket-owner-id :member-name
                                  "workflowBucketOwnerId")
                                 (readme-uri :target-type s3uri-for-object
                                  :member-name "readmeUri"))
                                (:shape-name "CreateWorkflowRequest"))

(smithy/sdk/shapes:define-output create-workflow-response common-lisp:nil
                                 ((arn :target-type workflow-arn :member-name
                                   "arn")
                                  (id :target-type workflow-id :member-name
                                   "id")
                                  (status :target-type workflow-status
                                   :member-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (uuid :target-type workflow-uuid :member-name
                                   "uuid"))
                                 (:shape-name "CreateWorkflowResponse"))

(smithy/sdk/shapes:define-input create-workflow-version-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId" :http-label common-lisp:t)
                                 (version-name :target-type
                                  workflow-version-name :required common-lisp:t
                                  :member-name "versionName")
                                 (definition-zip :target-type
                                  smithy/sdk/smithy-types:blob :member-name
                                  "definitionZip")
                                 (definition-uri :target-type
                                  workflow-definition :member-name
                                  "definitionUri")
                                 (accelerators :target-type accelerators
                                  :member-name "accelerators")
                                 (description :target-type
                                  workflow-version-description :member-name
                                  "description")
                                 (engine :target-type workflow-engine
                                  :member-name "engine")
                                 (main :target-type workflow-main :member-name
                                  "main")
                                 (parameter-template :target-type
                                  workflow-parameter-template :member-name
                                  "parameterTemplate")
                                 (request-id :target-type workflow-request-id
                                  :required common-lisp:t :member-name
                                  "requestId")
                                 (storage-type :target-type storage-type
                                  :member-name "storageType")
                                 (storage-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "storageCapacity")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (workflow-bucket-owner-id :target-type
                                  workflow-bucket-owner-id :member-name
                                  "workflowBucketOwnerId")
                                 (readme-markdown :target-type readme-markdown
                                  :member-name "readmeMarkdown")
                                 (parameter-template-path :target-type
                                  parameter-template-path :member-name
                                  "parameterTemplatePath")
                                 (readme-path :target-type readme-path
                                  :member-name "readmePath")
                                 (definition-repository :target-type
                                  definition-repository :member-name
                                  "definitionRepository")
                                 (readme-uri :target-type s3uri-for-object
                                  :member-name "readmeUri"))
                                (:shape-name "CreateWorkflowVersionRequest"))

(smithy/sdk/shapes:define-output create-workflow-version-response
                                 common-lisp:nil
                                 ((arn :target-type workflow-version-arn
                                   :member-name "arn")
                                  (workflow-id :target-type workflow-id
                                   :member-name "workflowId")
                                  (version-name :target-type
                                   workflow-version-name :member-name
                                   "versionName")
                                  (status :target-type workflow-status
                                   :member-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (uuid :target-type workflow-uuid :member-name
                                   "uuid"))
                                 (:shape-name "CreateWorkflowVersionResponse"))

(smithy/sdk/shapes:define-type creation-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type creation-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure definition-repository common-lisp:nil
                                    ((connection-arn :target-type
                                      connection-arn :required common-lisp:t
                                      :member-name "connectionArn")
                                     (full-repository-id :target-type
                                      full-repository-id :required
                                      common-lisp:t :member-name
                                      "fullRepositoryId")
                                     (source-reference :target-type
                                      source-reference :member-name
                                      "sourceReference")
                                     (exclude-file-patterns :target-type
                                      exclude-file-pattern-list :member-name
                                      "excludeFilePatterns"))
                                    (:shape-name "DefinitionRepository"))

(smithy/sdk/shapes:define-structure definition-repository-details
                                    common-lisp:nil
                                    ((connection-arn :target-type
                                      connection-arn :member-name
                                      "connectionArn")
                                     (full-repository-id :target-type
                                      full-repository-id :member-name
                                      "fullRepositoryId")
                                     (source-reference :target-type
                                      source-reference :member-name
                                      "sourceReference")
                                     (provider-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "providerType")
                                     (provider-endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "providerEndpoint"))
                                    (:shape-name "DefinitionRepositoryDetails"))

(smithy/sdk/shapes:define-input delete-annotation-store-request common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (force :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "force" :http-query "force"))
                                (:shape-name "DeleteAnnotationStoreRequest"))

(smithy/sdk/shapes:define-output delete-annotation-store-response
                                 common-lisp:nil
                                 ((status :target-type store-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "DeleteAnnotationStoreResponse"))

(smithy/sdk/shapes:define-input delete-annotation-store-versions-request
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (versions :target-type version-list :required
                                  common-lisp:t :member-name "versions")
                                 (force :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "force" :http-query "force"))
                                (:shape-name
                                 "DeleteAnnotationStoreVersionsRequest"))

(smithy/sdk/shapes:define-output delete-annotation-store-versions-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   version-delete-error-list :member-name
                                   "errors"))
                                 (:shape-name
                                  "DeleteAnnotationStoreVersionsResponse"))

(smithy/sdk/shapes:define-input delete-reference-request common-lisp:nil
                                ((id :target-type reference-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteReferenceRequest"))

(smithy/sdk/shapes:define-output delete-reference-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteReferenceResponse"))

(smithy/sdk/shapes:define-input delete-reference-store-request common-lisp:nil
                                ((id :target-type reference-store-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteReferenceStoreRequest"))

(smithy/sdk/shapes:define-output delete-reference-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteReferenceStoreResponse"))

(smithy/sdk/shapes:define-input delete-run-cache-request common-lisp:nil
                                ((id :target-type run-cache-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRunCacheRequest"))

(smithy/sdk/shapes:define-input delete-run-group-request common-lisp:nil
                                ((id :target-type run-group-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRunGroupRequest"))

(smithy/sdk/shapes:define-input delete-run-request common-lisp:nil
                                ((id :target-type run-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRunRequest"))

(smithy/sdk/shapes:define-input delete-s3access-policy-request common-lisp:nil
                                ((s3access-point-arn :target-type
                                  s3access-point-arn :required common-lisp:t
                                  :member-name "s3AccessPointArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteS3AccessPolicyRequest"))

(smithy/sdk/shapes:define-output delete-s3access-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteS3AccessPolicyResponse"))

(smithy/sdk/shapes:define-input delete-sequence-store-request common-lisp:nil
                                ((id :target-type sequence-store-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSequenceStoreRequest"))

(smithy/sdk/shapes:define-output delete-sequence-store-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSequenceStoreResponse"))

(smithy/sdk/shapes:define-input delete-share-request common-lisp:nil
                                ((share-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "shareId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteShareRequest"))

(smithy/sdk/shapes:define-output delete-share-response common-lisp:nil
                                 ((status :target-type share-status
                                   :member-name "status"))
                                 (:shape-name "DeleteShareResponse"))

(smithy/sdk/shapes:define-input delete-variant-store-request common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (force :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "force" :http-query "force"))
                                (:shape-name "DeleteVariantStoreRequest"))

(smithy/sdk/shapes:define-output delete-variant-store-response common-lisp:nil
                                 ((status :target-type store-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "DeleteVariantStoreResponse"))

(smithy/sdk/shapes:define-input delete-workflow-request common-lisp:nil
                                ((id :target-type workflow-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteWorkflowRequest"))

(smithy/sdk/shapes:define-input delete-workflow-version-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId" :http-label common-lisp:t)
                                 (version-name :target-type
                                  workflow-version-name :required common-lisp:t
                                  :member-name "versionName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteWorkflowVersionRequest"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure etag common-lisp:nil
                                    ((algorithm :target-type etag-algorithm
                                      :member-name "algorithm")
                                     (source1 :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "source1")
                                     (source2 :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "source2"))
                                    (:shape-name "ETag"))

(smithy/sdk/shapes:define-type etag-algorithm smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type etag-algorithm-family
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encoding smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encryption-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engine-log-stream smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type engine-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type escape-char smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type escape-quotes smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list exclude-file-pattern-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-read-set common-lisp:nil
                                    ((read-set-id :target-type read-set-id
                                      :required common-lisp:t :member-name
                                      "readSetId"))
                                    (:shape-name "ExportReadSet"))

(smithy/sdk/shapes:define-structure export-read-set-detail common-lisp:nil
                                    ((id :target-type read-set-id :required
                                      common-lisp:t :member-name "id")
                                     (status :target-type
                                      read-set-export-job-item-status :required
                                      common-lisp:t :member-name "status")
                                     (status-message :target-type
                                      job-status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "ExportReadSetDetail"))

(smithy/sdk/shapes:define-list export-read-set-detail-list :member
                               export-read-set-detail)

(smithy/sdk/shapes:define-structure export-read-set-filter common-lisp:nil
                                    ((status :target-type
                                      read-set-export-job-status :member-name
                                      "status")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ExportReadSetFilter"))

(smithy/sdk/shapes:define-structure export-read-set-job-detail common-lisp:nil
                                    ((id :target-type export-job-id :required
                                      common-lisp:t :member-name "id")
                                     (sequence-store-id :target-type
                                      sequence-store-id :required common-lisp:t
                                      :member-name "sequenceStoreId")
                                     (destination :target-type s3destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (status :target-type
                                      read-set-export-job-status :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (completion-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completionTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ExportReadSetJobDetail"))

(smithy/sdk/shapes:define-list export-read-set-job-detail-list :member
                               export-read-set-job-detail)

(smithy/sdk/shapes:define-list export-read-set-list :member export-read-set)

(smithy/sdk/shapes:define-type fallback-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-information common-lisp:nil
                                    ((total-parts :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalParts")
                                     (part-size :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "partSize")
                                     (content-length :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "contentLength")
                                     (s3access :target-type read-set-s3access
                                      :member-name "s3Access"))
                                    (:shape-name "FileInformation"))

(smithy/sdk/shapes:define-type file-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((resource-arns :target-type arn-list
                                      :member-name "resourceArns")
                                     (status :target-type status-list
                                      :member-name "status")
                                     (type :target-type type-list :member-name
                                      "type"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-union format-options common-lisp:nil
                                ((tsv-options :target-type tsv-options
                                  :member-name "tsvOptions")
                                 (vcf-options :target-type vcf-options
                                  :member-name "vcfOptions"))
                                (:shape-name "FormatOptions"))

(smithy/sdk/shapes:define-map format-to-header :key format-to-header-key :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type format-to-header-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type full-repository-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generated-from smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-annotation-import-request common-lisp:nil
                                ((job-id :target-type resource-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAnnotationImportRequest"))

(smithy/sdk/shapes:define-output get-annotation-import-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (destination-name :target-type store-name
                                   :required common-lisp:t :member-name
                                   "destinationName")
                                  (version-name :target-type version-name
                                   :required common-lisp:t :member-name
                                   "versionName")
                                  (role-arn :target-type arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-message :target-type job-status-msg
                                   :required common-lisp:t :member-name
                                   "statusMessage")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime")
                                  (completion-time :target-type completion-time
                                   :required common-lisp:t :member-name
                                   "completionTime")
                                  (items :target-type
                                   annotation-import-item-details :required
                                   common-lisp:t :member-name "items")
                                  (run-left-normalization :target-type
                                   run-left-normalization :required
                                   common-lisp:t :member-name
                                   "runLeftNormalization")
                                  (format-options :target-type format-options
                                   :required common-lisp:t :member-name
                                   "formatOptions")
                                  (annotation-fields :target-type
                                   annotation-field-map :member-name
                                   "annotationFields"))
                                 (:shape-name "GetAnnotationImportResponse"))

(smithy/sdk/shapes:define-input get-annotation-store-request common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAnnotationStoreRequest"))

(smithy/sdk/shapes:define-output get-annotation-store-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (reference :target-type reference-item
                                   :required common-lisp:t :member-name
                                   "reference")
                                  (status :target-type store-status :required
                                   common-lisp:t :member-name "status")
                                  (store-arn :target-type arn :required
                                   common-lisp:t :member-name "storeArn")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (sse-config :target-type sse-config :required
                                   common-lisp:t :member-name "sseConfig")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime")
                                  (tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags")
                                  (store-options :target-type store-options
                                   :member-name "storeOptions")
                                  (store-format :target-type store-format
                                   :member-name "storeFormat")
                                  (status-message :target-type status-message
                                   :required common-lisp:t :member-name
                                   "statusMessage")
                                  (store-size-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name "storeSizeBytes")
                                  (num-versions :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "numVersions"))
                                 (:shape-name "GetAnnotationStoreResponse"))

(smithy/sdk/shapes:define-input get-annotation-store-version-request
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "versionName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetAnnotationStoreVersionRequest"))

(smithy/sdk/shapes:define-output get-annotation-store-version-response
                                 common-lisp:nil
                                 ((store-id :target-type resource-id :required
                                   common-lisp:t :member-name "storeId")
                                  (id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type version-status :required
                                   common-lisp:t :member-name "status")
                                  (version-arn :target-type arn :required
                                   common-lisp:t :member-name "versionArn")
                                  (name :target-type store-name :required
                                   common-lisp:t :member-name "name")
                                  (version-name :target-type version-name
                                   :required common-lisp:t :member-name
                                   "versionName")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime")
                                  (tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags")
                                  (version-options :target-type version-options
                                   :member-name "versionOptions")
                                  (status-message :target-type status-message
                                   :required common-lisp:t :member-name
                                   "statusMessage")
                                  (version-size-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "versionSizeBytes"))
                                 (:shape-name
                                  "GetAnnotationStoreVersionResponse"))

(smithy/sdk/shapes:define-input get-read-set-activation-job-request
                                common-lisp:nil
                                ((id :target-type activation-job-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReadSetActivationJobRequest"))

(smithy/sdk/shapes:define-output get-read-set-activation-job-response
                                 common-lisp:nil
                                 ((id :target-type activation-job-id :required
                                   common-lisp:t :member-name "id")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (status :target-type
                                   read-set-activation-job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-message :target-type
                                   job-status-message :member-name
                                   "statusMessage")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (completion-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "completionTime"
                                   :timestamp-format "date-time")
                                  (sources :target-type
                                   activate-read-set-source-list :member-name
                                   "sources"))
                                 (:shape-name
                                  "GetReadSetActivationJobResponse"))

(smithy/sdk/shapes:define-input get-read-set-export-job-request common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (id :target-type export-job-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReadSetExportJobRequest"))

(smithy/sdk/shapes:define-output get-read-set-export-job-response
                                 common-lisp:nil
                                 ((id :target-type export-job-id :required
                                   common-lisp:t :member-name "id")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (destination :target-type s3destination
                                   :required common-lisp:t :member-name
                                   "destination")
                                  (status :target-type
                                   read-set-export-job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-message :target-type
                                   job-status-message :member-name
                                   "statusMessage")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (completion-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "completionTime"
                                   :timestamp-format "date-time")
                                  (read-sets :target-type
                                   export-read-set-detail-list :member-name
                                   "readSets"))
                                 (:shape-name "GetReadSetExportJobResponse"))

(smithy/sdk/shapes:define-input get-read-set-import-job-request common-lisp:nil
                                ((id :target-type import-job-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReadSetImportJobRequest"))

(smithy/sdk/shapes:define-output get-read-set-import-job-response
                                 common-lisp:nil
                                 ((id :target-type import-job-id :required
                                   common-lisp:t :member-name "id")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type
                                   read-set-import-job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-message :target-type
                                   job-status-message :member-name
                                   "statusMessage")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (completion-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "completionTime"
                                   :timestamp-format "date-time")
                                  (sources :target-type
                                   import-read-set-source-list :required
                                   common-lisp:t :member-name "sources"))
                                 (:shape-name "GetReadSetImportJobResponse"))

(smithy/sdk/shapes:define-input get-read-set-metadata-request common-lisp:nil
                                ((id :target-type read-set-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReadSetMetadataRequest"))

(smithy/sdk/shapes:define-output get-read-set-metadata-response common-lisp:nil
                                 ((id :target-type read-set-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type read-set-arn :required
                                   common-lisp:t :member-name "arn")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (subject-id :target-type subject-id
                                   :member-name "subjectId")
                                  (sample-id :target-type sample-id
                                   :member-name "sampleId")
                                  (status :target-type read-set-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (name :target-type read-set-name :member-name
                                   "name")
                                  (description :target-type
                                   read-set-description :member-name
                                   "description")
                                  (file-type :target-type file-type :required
                                   common-lisp:t :member-name "fileType")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (sequence-information :target-type
                                   sequence-information :member-name
                                   "sequenceInformation")
                                  (reference-arn :target-type reference-arn
                                   :member-name "referenceArn")
                                  (files :target-type read-set-files
                                   :member-name "files")
                                  (status-message :target-type
                                   read-set-status-message :member-name
                                   "statusMessage")
                                  (creation-type :target-type creation-type
                                   :member-name "creationType")
                                  (etag :target-type etag :member-name "etag")
                                  (creation-job-id :target-type creation-job-id
                                   :member-name "creationJobId"))
                                 (:shape-name "GetReadSetMetadataResponse"))

(smithy/sdk/shapes:define-input get-read-set-request common-lisp:nil
                                ((id :target-type read-set-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (file :target-type read-set-file :member-name
                                  "file" :http-query "file")
                                 (part-number :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "partNumber"
                                  :http-query "partNumber"))
                                (:shape-name "GetReadSetRequest"))

(smithy/sdk/shapes:define-output get-read-set-response common-lisp:nil
                                 ((payload :target-type read-set-streaming-blob
                                   :member-name "payload" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetReadSetResponse"))

(smithy/sdk/shapes:define-input get-reference-import-job-request
                                common-lisp:nil
                                ((id :target-type import-job-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReferenceImportJobRequest"))

(smithy/sdk/shapes:define-output get-reference-import-job-response
                                 common-lisp:nil
                                 ((id :target-type import-job-id :required
                                   common-lisp:t :member-name "id")
                                  (reference-store-id :target-type
                                   reference-store-id :required common-lisp:t
                                   :member-name "referenceStoreId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type
                                   reference-import-job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-message :target-type
                                   job-status-message :member-name
                                   "statusMessage")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (completion-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "completionTime"
                                   :timestamp-format "date-time")
                                  (sources :target-type
                                   import-reference-source-list :required
                                   common-lisp:t :member-name "sources"))
                                 (:shape-name "GetReferenceImportJobResponse"))

(smithy/sdk/shapes:define-input get-reference-metadata-request common-lisp:nil
                                ((id :target-type reference-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReferenceMetadataRequest"))

(smithy/sdk/shapes:define-output get-reference-metadata-response
                                 common-lisp:nil
                                 ((id :target-type reference-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type reference-arn :required
                                   common-lisp:t :member-name "arn")
                                  (reference-store-id :target-type
                                   reference-store-id :required common-lisp:t
                                   :member-name "referenceStoreId")
                                  (md5 :target-type md5 :required common-lisp:t
                                   :member-name "md5")
                                  (status :target-type reference-status
                                   :member-name "status")
                                  (name :target-type reference-name
                                   :member-name "name")
                                  (description :target-type
                                   reference-description :member-name
                                   "description")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updateTime"
                                   :timestamp-format "date-time")
                                  (files :target-type reference-files
                                   :member-name "files")
                                  (creation-type :target-type
                                   reference-creation-type :member-name
                                   "creationType")
                                  (creation-job-id :target-type creation-job-id
                                   :member-name "creationJobId"))
                                 (:shape-name "GetReferenceMetadataResponse"))

(smithy/sdk/shapes:define-input get-reference-request common-lisp:nil
                                ((id :target-type reference-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t)
                                 (range :target-type range :member-name "range"
                                  :http-header "Range")
                                 (part-number :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "partNumber"
                                  :http-query "partNumber")
                                 (file :target-type reference-file :member-name
                                  "file" :http-query "file"))
                                (:shape-name "GetReferenceRequest"))

(smithy/sdk/shapes:define-output get-reference-response common-lisp:nil
                                 ((payload :target-type
                                   reference-streaming-blob :member-name
                                   "payload" :http-payload common-lisp:t))
                                 (:shape-name "GetReferenceResponse"))

(smithy/sdk/shapes:define-input get-reference-store-request common-lisp:nil
                                ((id :target-type reference-store-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReferenceStoreRequest"))

(smithy/sdk/shapes:define-output get-reference-store-response common-lisp:nil
                                 ((id :target-type reference-store-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type reference-store-arn
                                   :required common-lisp:t :member-name "arn")
                                  (name :target-type reference-store-name
                                   :member-name "name")
                                  (description :target-type
                                   reference-store-description :member-name
                                   "description")
                                  (sse-config :target-type sse-config
                                   :member-name "sseConfig")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name "GetReferenceStoreResponse"))

(smithy/sdk/shapes:define-input get-run-cache-request common-lisp:nil
                                ((id :target-type run-cache-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRunCacheRequest"))

(smithy/sdk/shapes:define-output get-run-cache-response common-lisp:nil
                                 ((arn :target-type run-cache-arn :member-name
                                   "arn")
                                  (cache-behavior :target-type cache-behavior
                                   :member-name "cacheBehavior")
                                  (cache-bucket-owner-id :target-type
                                   aws-account-id :member-name
                                   "cacheBucketOwnerId")
                                  (cache-s3uri :target-type
                                   s3uri-for-bucket-or-object :member-name
                                   "cacheS3Uri")
                                  (creation-time :target-type
                                   run-cache-timestamp :member-name
                                   "creationTime")
                                  (description :target-type
                                   user-custom-description :member-name
                                   "description")
                                  (id :target-type run-cache-id :member-name
                                   "id")
                                  (name :target-type user-custom-name
                                   :member-name "name")
                                  (status :target-type run-cache-status
                                   :member-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetRunCacheResponse"))

(smithy/sdk/shapes:define-input get-run-group-request common-lisp:nil
                                ((id :target-type run-group-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRunGroupRequest"))

(smithy/sdk/shapes:define-output get-run-group-response common-lisp:nil
                                 ((arn :target-type run-group-arn :member-name
                                   "arn")
                                  (id :target-type run-group-id :member-name
                                   "id")
                                  (name :target-type run-group-name
                                   :member-name "name")
                                  (max-cpus :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "maxCpus")
                                  (max-runs :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "maxRuns")
                                  (max-duration :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "maxDuration")
                                  (creation-time :target-type
                                   run-group-timestamp :member-name
                                   "creationTime")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (max-gpus :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "maxGpus"))
                                 (:shape-name "GetRunGroupResponse"))

(smithy/sdk/shapes:define-input get-run-request common-lisp:nil
                                ((id :target-type run-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (export :target-type run-export-list
                                  :member-name "export" :http-query "export"))
                                (:shape-name "GetRunRequest"))

(smithy/sdk/shapes:define-output get-run-response common-lisp:nil
                                 ((arn :target-type run-arn :member-name "arn")
                                  (id :target-type run-id :member-name "id")
                                  (cache-id :target-type numeric-id-in-arn
                                   :member-name "cacheId")
                                  (cache-behavior :target-type cache-behavior
                                   :member-name "cacheBehavior")
                                  (engine-version :target-type engine-version
                                   :member-name "engineVersion")
                                  (status :target-type run-status :member-name
                                   "status")
                                  (workflow-id :target-type workflow-id
                                   :member-name "workflowId")
                                  (workflow-type :target-type workflow-type
                                   :member-name "workflowType")
                                  (run-id :target-type run-id :member-name
                                   "runId")
                                  (role-arn :target-type run-role-arn
                                   :member-name "roleArn")
                                  (name :target-type run-name :member-name
                                   "name")
                                  (run-group-id :target-type run-group-id
                                   :member-name "runGroupId")
                                  (priority :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "priority")
                                  (definition :target-type workflow-definition
                                   :member-name "definition")
                                  (digest :target-type workflow-digest
                                   :member-name "digest")
                                  (parameters :target-type run-parameters
                                   :member-name "parameters")
                                  (storage-capacity :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "storageCapacity")
                                  (output-uri :target-type run-output-uri
                                   :member-name "outputUri")
                                  (log-level :target-type run-log-level
                                   :member-name "logLevel")
                                  (resource-digests :target-type
                                   run-resource-digests :member-name
                                   "resourceDigests")
                                  (started-by :target-type run-started-by
                                   :member-name "startedBy")
                                  (creation-time :target-type run-timestamp
                                   :member-name "creationTime")
                                  (start-time :target-type run-timestamp
                                   :member-name "startTime")
                                  (stop-time :target-type run-timestamp
                                   :member-name "stopTime")
                                  (status-message :target-type
                                   run-status-message :member-name
                                   "statusMessage")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (accelerators :target-type accelerators
                                   :member-name "accelerators")
                                  (retention-mode :target-type
                                   run-retention-mode :member-name
                                   "retentionMode")
                                  (failure-reason :target-type
                                   run-failure-reason :member-name
                                   "failureReason")
                                  (log-location :target-type run-log-location
                                   :member-name "logLocation")
                                  (uuid :target-type run-uuid :member-name
                                   "uuid")
                                  (run-output-uri :target-type run-output-uri
                                   :member-name "runOutputUri")
                                  (storage-type :target-type storage-type
                                   :member-name "storageType")
                                  (workflow-owner-id :target-type
                                   workflow-owner-id :member-name
                                   "workflowOwnerId")
                                  (workflow-version-name :target-type
                                   workflow-version-name :member-name
                                   "workflowVersionName")
                                  (workflow-uuid :target-type workflow-uuid
                                   :member-name "workflowUuid"))
                                 (:shape-name "GetRunResponse"))

(smithy/sdk/shapes:define-input get-run-task-request common-lisp:nil
                                ((id :target-type run-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRunTaskRequest"))

(smithy/sdk/shapes:define-output get-run-task-response common-lisp:nil
                                 ((task-id :target-type task-id :member-name
                                   "taskId")
                                  (status :target-type task-status :member-name
                                   "status")
                                  (name :target-type task-name :member-name
                                   "name")
                                  (cpus :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "cpus")
                                  (cache-hit :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "cacheHit")
                                  (cache-s3uri :target-type
                                   s3uri-for-bucket-or-object :member-name
                                   "cacheS3Uri")
                                  (memory :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "memory")
                                  (creation-time :target-type task-timestamp
                                   :member-name "creationTime")
                                  (start-time :target-type task-timestamp
                                   :member-name "startTime")
                                  (stop-time :target-type task-timestamp
                                   :member-name "stopTime")
                                  (status-message :target-type
                                   task-status-message :member-name
                                   "statusMessage")
                                  (log-stream :target-type task-log-stream
                                   :member-name "logStream")
                                  (gpus :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "gpus")
                                  (instance-type :target-type
                                   task-instance-type :member-name
                                   "instanceType")
                                  (failure-reason :target-type
                                   task-failure-reason :member-name
                                   "failureReason"))
                                 (:shape-name "GetRunTaskResponse"))

(smithy/sdk/shapes:define-input get-s3access-policy-request common-lisp:nil
                                ((s3access-point-arn :target-type
                                  s3access-point-arn :required common-lisp:t
                                  :member-name "s3AccessPointArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetS3AccessPolicyRequest"))

(smithy/sdk/shapes:define-output get-s3access-policy-response common-lisp:nil
                                 ((s3access-point-arn :target-type
                                   s3access-point-arn :member-name
                                   "s3AccessPointArn")
                                  (store-id :target-type store-id :member-name
                                   "storeId")
                                  (store-type :target-type store-type
                                   :member-name "storeType")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updateTime" :timestamp-format
                                   "date-time")
                                  (s3access-policy :target-type s3access-policy
                                   :required common-lisp:t :member-name
                                   "s3AccessPolicy"))
                                 (:shape-name "GetS3AccessPolicyResponse"))

(smithy/sdk/shapes:define-input get-sequence-store-request common-lisp:nil
                                ((id :target-type sequence-store-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSequenceStoreRequest"))

(smithy/sdk/shapes:define-output get-sequence-store-response common-lisp:nil
                                 ((id :target-type sequence-store-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type sequence-store-arn
                                   :required common-lisp:t :member-name "arn")
                                  (name :target-type sequence-store-name
                                   :member-name "name")
                                  (description :target-type
                                   sequence-store-description :member-name
                                   "description")
                                  (sse-config :target-type sse-config
                                   :member-name "sseConfig")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (fallback-location :target-type
                                   fallback-location :member-name
                                   "fallbackLocation")
                                  (s3access :target-type
                                   sequence-store-s3access :member-name
                                   "s3Access")
                                  (e-tag-algorithm-family :target-type
                                   etag-algorithm-family :member-name
                                   "eTagAlgorithmFamily")
                                  (status :target-type sequence-store-status
                                   :member-name "status")
                                  (status-message :target-type
                                   sequence-store-status-message :member-name
                                   "statusMessage")
                                  (propagated-set-level-tags :target-type
                                   propagated-set-level-tags :member-name
                                   "propagatedSetLevelTags")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updateTime" :timestamp-format
                                   "date-time"))
                                 (:shape-name "GetSequenceStoreResponse"))

(smithy/sdk/shapes:define-input get-share-request common-lisp:nil
                                ((share-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "shareId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetShareRequest"))

(smithy/sdk/shapes:define-output get-share-response common-lisp:nil
                                 ((share :target-type share-details
                                   :member-name "share"))
                                 (:shape-name "GetShareResponse"))

(smithy/sdk/shapes:define-input get-variant-import-request common-lisp:nil
                                ((job-id :target-type resource-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVariantImportRequest"))

(smithy/sdk/shapes:define-output get-variant-import-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (destination-name :target-type store-name
                                   :required common-lisp:t :member-name
                                   "destinationName")
                                  (role-arn :target-type arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type job-status :required
                                   common-lisp:t :member-name "status")
                                  (status-message :target-type job-status-msg
                                   :required common-lisp:t :member-name
                                   "statusMessage")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime")
                                  (completion-time :target-type completion-time
                                   :member-name "completionTime")
                                  (items :target-type
                                   variant-import-item-details :required
                                   common-lisp:t :member-name "items")
                                  (run-left-normalization :target-type
                                   run-left-normalization :required
                                   common-lisp:t :member-name
                                   "runLeftNormalization")
                                  (annotation-fields :target-type
                                   annotation-field-map :member-name
                                   "annotationFields"))
                                 (:shape-name "GetVariantImportResponse"))

(smithy/sdk/shapes:define-input get-variant-store-request common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetVariantStoreRequest"))

(smithy/sdk/shapes:define-output get-variant-store-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (reference :target-type reference-item
                                   :required common-lisp:t :member-name
                                   "reference")
                                  (status :target-type store-status :required
                                   common-lisp:t :member-name "status")
                                  (store-arn :target-type arn :required
                                   common-lisp:t :member-name "storeArn")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (sse-config :target-type sse-config :required
                                   common-lisp:t :member-name "sseConfig")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime")
                                  (tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags")
                                  (status-message :target-type status-message
                                   :required common-lisp:t :member-name
                                   "statusMessage")
                                  (store-size-bytes :target-type
                                   smithy/sdk/smithy-types:long :required
                                   common-lisp:t :member-name
                                   "storeSizeBytes"))
                                 (:shape-name "GetVariantStoreResponse"))

(smithy/sdk/shapes:define-input get-workflow-request common-lisp:nil
                                ((id :target-type workflow-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (type :target-type workflow-type :member-name
                                  "type" :http-query "type")
                                 (export :target-type workflow-export-list
                                  :member-name "export" :http-query "export")
                                 (workflow-owner-id :target-type
                                  workflow-owner-id :member-name
                                  "workflowOwnerId" :http-query
                                  "workflowOwnerId"))
                                (:shape-name "GetWorkflowRequest"))

(smithy/sdk/shapes:define-output get-workflow-response common-lisp:nil
                                 ((arn :target-type workflow-arn :member-name
                                   "arn")
                                  (id :target-type workflow-id :member-name
                                   "id")
                                  (status :target-type workflow-status
                                   :member-name "status")
                                  (type :target-type workflow-type :member-name
                                   "type")
                                  (name :target-type workflow-name :member-name
                                   "name")
                                  (description :target-type
                                   workflow-description :member-name
                                   "description")
                                  (engine :target-type workflow-engine
                                   :member-name "engine")
                                  (definition :target-type workflow-definition
                                   :member-name "definition")
                                  (main :target-type workflow-main :member-name
                                   "main")
                                  (digest :target-type workflow-digest
                                   :member-name "digest")
                                  (parameter-template :target-type
                                   workflow-parameter-template :member-name
                                   "parameterTemplate")
                                  (storage-capacity :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "storageCapacity")
                                  (creation-time :target-type
                                   workflow-timestamp :member-name
                                   "creationTime")
                                  (status-message :target-type
                                   workflow-status-message :member-name
                                   "statusMessage")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (metadata :target-type workflow-metadata
                                   :member-name "metadata")
                                  (accelerators :target-type accelerators
                                   :member-name "accelerators")
                                  (storage-type :target-type storage-type
                                   :member-name "storageType")
                                  (uuid :target-type workflow-uuid :member-name
                                   "uuid")
                                  (readme :target-type readme-s3presigned-url
                                   :member-name "readme")
                                  (definition-repository-details :target-type
                                   definition-repository-details :member-name
                                   "definitionRepositoryDetails")
                                  (readme-path :target-type readme-path
                                   :member-name "readmePath"))
                                 (:shape-name "GetWorkflowResponse"))

(smithy/sdk/shapes:define-input get-workflow-version-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId" :http-label common-lisp:t)
                                 (version-name :target-type
                                  workflow-version-name :required common-lisp:t
                                  :member-name "versionName" :http-label
                                  common-lisp:t)
                                 (type :target-type workflow-type :member-name
                                  "type" :http-query "type")
                                 (export :target-type workflow-export-list
                                  :member-name "export" :http-query "export")
                                 (workflow-owner-id :target-type
                                  workflow-owner-id :member-name
                                  "workflowOwnerId" :http-query
                                  "workflowOwnerId"))
                                (:shape-name "GetWorkflowVersionRequest"))

(smithy/sdk/shapes:define-output get-workflow-version-response common-lisp:nil
                                 ((arn :target-type workflow-version-arn
                                   :member-name "arn")
                                  (workflow-id :target-type workflow-id
                                   :member-name "workflowId")
                                  (version-name :target-type
                                   workflow-version-name :member-name
                                   "versionName")
                                  (accelerators :target-type accelerators
                                   :member-name "accelerators")
                                  (creation-time :target-type
                                   workflow-timestamp :member-name
                                   "creationTime")
                                  (description :target-type
                                   workflow-version-description :member-name
                                   "description")
                                  (definition :target-type workflow-definition
                                   :member-name "definition")
                                  (digest :target-type workflow-digest
                                   :member-name "digest")
                                  (engine :target-type workflow-engine
                                   :member-name "engine")
                                  (main :target-type workflow-main :member-name
                                   "main")
                                  (metadata :target-type workflow-metadata
                                   :member-name "metadata")
                                  (parameter-template :target-type
                                   workflow-parameter-template :member-name
                                   "parameterTemplate")
                                  (status :target-type workflow-status
                                   :member-name "status")
                                  (status-message :target-type
                                   workflow-status-message :member-name
                                   "statusMessage")
                                  (storage-type :target-type storage-type
                                   :member-name "storageType")
                                  (storage-capacity :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "storageCapacity")
                                  (type :target-type workflow-type :member-name
                                   "type")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (uuid :target-type workflow-uuid :member-name
                                   "uuid")
                                  (workflow-bucket-owner-id :target-type
                                   workflow-bucket-owner-id :member-name
                                   "workflowBucketOwnerId")
                                  (readme :target-type readme-s3presigned-url
                                   :member-name "readme")
                                  (definition-repository-details :target-type
                                   definition-repository-details :member-name
                                   "definitionRepositoryDetails")
                                  (readme-path :target-type readme-path
                                   :member-name "readmePath"))
                                 (:shape-name "GetWorkflowVersionResponse"))

(smithy/sdk/shapes:define-type header smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list id-list :member resource-identifier)

(smithy/sdk/shapes:define-type import-job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-read-set-filter common-lisp:nil
                                    ((status :target-type
                                      read-set-import-job-status :member-name
                                      "status")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ImportReadSetFilter"))

(smithy/sdk/shapes:define-structure import-read-set-job-item common-lisp:nil
                                    ((id :target-type import-job-id :required
                                      common-lisp:t :member-name "id")
                                     (sequence-store-id :target-type
                                      sequence-store-id :required common-lisp:t
                                      :member-name "sequenceStoreId")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (status :target-type
                                      read-set-import-job-status :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (completion-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completionTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ImportReadSetJobItem"))

(smithy/sdk/shapes:define-list import-read-set-job-list :member
                               import-read-set-job-item)

(smithy/sdk/shapes:define-structure import-read-set-source-item common-lisp:nil
                                    ((source-files :target-type source-files
                                      :required common-lisp:t :member-name
                                      "sourceFiles")
                                     (source-file-type :target-type file-type
                                      :required common-lisp:t :member-name
                                      "sourceFileType")
                                     (status :target-type
                                      read-set-import-job-item-status :required
                                      common-lisp:t :member-name "status")
                                     (status-message :target-type
                                      job-status-message :member-name
                                      "statusMessage")
                                     (subject-id :target-type subject-id
                                      :required common-lisp:t :member-name
                                      "subjectId")
                                     (sample-id :target-type sample-id
                                      :required common-lisp:t :member-name
                                      "sampleId")
                                     (generated-from :target-type
                                      generated-from :member-name
                                      "generatedFrom")
                                     (reference-arn :target-type reference-arn
                                      :member-name "referenceArn")
                                     (name :target-type read-set-name
                                      :member-name "name")
                                     (description :target-type
                                      read-set-description :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (read-set-id :target-type read-set-id
                                      :member-name "readSetId"))
                                    (:shape-name "ImportReadSetSourceItem"))

(smithy/sdk/shapes:define-list import-read-set-source-list :member
                               import-read-set-source-item)

(smithy/sdk/shapes:define-structure import-reference-filter common-lisp:nil
                                    ((status :target-type
                                      reference-import-job-status :member-name
                                      "status")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ImportReferenceFilter"))

(smithy/sdk/shapes:define-structure import-reference-job-item common-lisp:nil
                                    ((id :target-type import-job-id :required
                                      common-lisp:t :member-name "id")
                                     (reference-store-id :target-type
                                      reference-store-id :required
                                      common-lisp:t :member-name
                                      "referenceStoreId")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (status :target-type
                                      reference-import-job-status :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (completion-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completionTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ImportReferenceJobItem"))

(smithy/sdk/shapes:define-list import-reference-job-list :member
                               import-reference-job-item)

(smithy/sdk/shapes:define-structure import-reference-source-item
                                    common-lisp:nil
                                    ((source-file :target-type s3uri
                                      :member-name "sourceFile")
                                     (status :target-type
                                      reference-import-job-item-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-message :target-type
                                      job-status-message :member-name
                                      "statusMessage")
                                     (name :target-type reference-name
                                      :member-name "name")
                                     (description :target-type
                                      reference-description :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (reference-id :target-type reference-id
                                      :member-name "referenceId"))
                                    (:shape-name "ImportReferenceSourceItem"))

(smithy/sdk/shapes:define-list import-reference-source-list :member
                               import-reference-source-item)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type job-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-status-msg smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type line-sep smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-annotation-import-jobs-filter
                                    common-lisp:nil
                                    ((status :target-type job-status
                                      :member-name "status")
                                     (store-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storeName"))
                                    (:shape-name
                                     "ListAnnotationImportJobsFilter"))

(smithy/sdk/shapes:define-input list-annotation-import-jobs-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (ids :target-type id-list :member-name "ids")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (filter :target-type
                                  list-annotation-import-jobs-filter
                                  :member-name "filter"))
                                (:shape-name "ListAnnotationImportJobsRequest"))

(smithy/sdk/shapes:define-output list-annotation-import-jobs-response
                                 common-lisp:nil
                                 ((annotation-import-jobs :target-type
                                   annotation-import-job-items :member-name
                                   "annotationImportJobs")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListAnnotationImportJobsResponse"))

(smithy/sdk/shapes:define-structure list-annotation-store-versions-filter
                                    common-lisp:nil
                                    ((status :target-type version-status
                                      :member-name "status"))
                                    (:shape-name
                                     "ListAnnotationStoreVersionsFilter"))

(smithy/sdk/shapes:define-input list-annotation-store-versions-request
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (filter :target-type
                                  list-annotation-store-versions-filter
                                  :member-name "filter"))
                                (:shape-name
                                 "ListAnnotationStoreVersionsRequest"))

(smithy/sdk/shapes:define-output list-annotation-store-versions-response
                                 common-lisp:nil
                                 ((annotation-store-versions :target-type
                                   annotation-store-version-items :member-name
                                   "annotationStoreVersions")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListAnnotationStoreVersionsResponse"))

(smithy/sdk/shapes:define-structure list-annotation-stores-filter
                                    common-lisp:nil
                                    ((status :target-type store-status
                                      :member-name "status"))
                                    (:shape-name "ListAnnotationStoresFilter"))

(smithy/sdk/shapes:define-input list-annotation-stores-request common-lisp:nil
                                ((ids :target-type id-list :member-name "ids")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (filter :target-type
                                  list-annotation-stores-filter :member-name
                                  "filter"))
                                (:shape-name "ListAnnotationStoresRequest"))

(smithy/sdk/shapes:define-output list-annotation-stores-response
                                 common-lisp:nil
                                 ((annotation-stores :target-type
                                   annotation-store-items :member-name
                                   "annotationStores")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListAnnotationStoresResponse"))

(smithy/sdk/shapes:define-input list-multipart-read-set-uploads-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListMultipartReadSetUploadsRequest"))

(smithy/sdk/shapes:define-output list-multipart-read-set-uploads-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (uploads :target-type
                                   multipart-read-set-upload-list :member-name
                                   "uploads"))
                                 (:shape-name
                                  "ListMultipartReadSetUploadsResponse"))

(smithy/sdk/shapes:define-input list-read-set-activation-jobs-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type activate-read-set-filter
                                  :member-name "filter"))
                                (:shape-name
                                 "ListReadSetActivationJobsRequest"))

(smithy/sdk/shapes:define-output list-read-set-activation-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (activation-jobs :target-type
                                   activate-read-set-job-list :member-name
                                   "activationJobs"))
                                 (:shape-name
                                  "ListReadSetActivationJobsResponse"))

(smithy/sdk/shapes:define-input list-read-set-export-jobs-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type export-read-set-filter
                                  :member-name "filter"))
                                (:shape-name "ListReadSetExportJobsRequest"))

(smithy/sdk/shapes:define-output list-read-set-export-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (export-jobs :target-type
                                   export-read-set-job-detail-list :member-name
                                   "exportJobs"))
                                 (:shape-name "ListReadSetExportJobsResponse"))

(smithy/sdk/shapes:define-input list-read-set-import-jobs-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (filter :target-type import-read-set-filter
                                  :member-name "filter"))
                                (:shape-name "ListReadSetImportJobsRequest"))

(smithy/sdk/shapes:define-output list-read-set-import-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (import-jobs :target-type
                                   import-read-set-job-list :member-name
                                   "importJobs"))
                                 (:shape-name "ListReadSetImportJobsResponse"))

(smithy/sdk/shapes:define-input list-read-set-upload-parts-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (part-source :target-type read-set-part-source
                                  :required common-lisp:t :member-name
                                  "partSource")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type
                                  read-set-upload-part-list-filter :member-name
                                  "filter"))
                                (:shape-name "ListReadSetUploadPartsRequest"))

(smithy/sdk/shapes:define-output list-read-set-upload-parts-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (parts :target-type read-set-upload-part-list
                                   :member-name "parts"))
                                 (:shape-name "ListReadSetUploadPartsResponse"))

(smithy/sdk/shapes:define-input list-read-sets-request common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type read-set-filter
                                  :member-name "filter"))
                                (:shape-name "ListReadSetsRequest"))

(smithy/sdk/shapes:define-output list-read-sets-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (read-sets :target-type read-set-list
                                   :required common-lisp:t :member-name
                                   "readSets"))
                                 (:shape-name "ListReadSetsResponse"))

(smithy/sdk/shapes:define-input list-reference-import-jobs-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t)
                                 (filter :target-type import-reference-filter
                                  :member-name "filter"))
                                (:shape-name "ListReferenceImportJobsRequest"))

(smithy/sdk/shapes:define-output list-reference-import-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (import-jobs :target-type
                                   import-reference-job-list :member-name
                                   "importJobs"))
                                 (:shape-name
                                  "ListReferenceImportJobsResponse"))

(smithy/sdk/shapes:define-input list-reference-stores-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type reference-store-filter
                                  :member-name "filter"))
                                (:shape-name "ListReferenceStoresRequest"))

(smithy/sdk/shapes:define-output list-reference-stores-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (reference-stores :target-type
                                   reference-store-detail-list :required
                                   common-lisp:t :member-name
                                   "referenceStores"))
                                 (:shape-name "ListReferenceStoresResponse"))

(smithy/sdk/shapes:define-input list-references-request common-lisp:nil
                                ((reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type reference-filter
                                  :member-name "filter"))
                                (:shape-name "ListReferencesRequest"))

(smithy/sdk/shapes:define-output list-references-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (references :target-type reference-list
                                   :required common-lisp:t :member-name
                                   "references"))
                                 (:shape-name "ListReferencesResponse"))

(smithy/sdk/shapes:define-input list-run-caches-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (starting-token :target-type list-token
                                  :member-name "startingToken" :http-query
                                  "startingToken"))
                                (:shape-name "ListRunCachesRequest"))

(smithy/sdk/shapes:define-output list-run-caches-response common-lisp:nil
                                 ((items :target-type run-cache-list
                                   :member-name "items")
                                  (next-token :target-type list-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRunCachesResponse"))

(smithy/sdk/shapes:define-input list-run-groups-request common-lisp:nil
                                ((name :target-type run-group-name :member-name
                                  "name" :http-query "name")
                                 (starting-token :target-type
                                  run-group-list-token :member-name
                                  "startingToken" :http-query "startingToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListRunGroupsRequest"))

(smithy/sdk/shapes:define-output list-run-groups-response common-lisp:nil
                                 ((items :target-type run-group-list
                                   :member-name "items")
                                  (next-token :target-type run-group-list-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRunGroupsResponse"))

(smithy/sdk/shapes:define-input list-run-tasks-request common-lisp:nil
                                ((id :target-type run-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (status :target-type task-status :member-name
                                  "status" :http-query "status")
                                 (starting-token :target-type task-list-token
                                  :member-name "startingToken" :http-query
                                  "startingToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListRunTasksRequest"))

(smithy/sdk/shapes:define-output list-run-tasks-response common-lisp:nil
                                 ((items :target-type task-list :member-name
                                   "items")
                                  (next-token :target-type task-list-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRunTasksResponse"))

(smithy/sdk/shapes:define-input list-runs-request common-lisp:nil
                                ((name :target-type run-name :member-name
                                  "name" :http-query "name")
                                 (run-group-id :target-type run-group-id
                                  :member-name "runGroupId" :http-query
                                  "runGroupId")
                                 (starting-token :target-type run-list-token
                                  :member-name "startingToken" :http-query
                                  "startingToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (status :target-type run-status :member-name
                                  "status" :http-query "status"))
                                (:shape-name "ListRunsRequest"))

(smithy/sdk/shapes:define-output list-runs-response common-lisp:nil
                                 ((items :target-type run-list :member-name
                                   "items")
                                  (next-token :target-type run-list-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRunsResponse"))

(smithy/sdk/shapes:define-input list-sequence-stores-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (filter :target-type sequence-store-filter
                                  :member-name "filter"))
                                (:shape-name "ListSequenceStoresRequest"))

(smithy/sdk/shapes:define-output list-sequence-stores-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (sequence-stores :target-type
                                   sequence-store-detail-list :required
                                   common-lisp:t :member-name
                                   "sequenceStores"))
                                 (:shape-name "ListSequenceStoresResponse"))

(smithy/sdk/shapes:define-input list-shares-request common-lisp:nil
                                ((resource-owner :target-type resource-owner
                                  :required common-lisp:t :member-name
                                  "resourceOwner")
                                 (filter :target-type filter :member-name
                                  "filter")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListSharesRequest"))

(smithy/sdk/shapes:define-output list-shares-response common-lisp:nil
                                 ((shares :target-type share-details-list
                                   :required common-lisp:t :member-name
                                   "shares")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSharesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type list-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-variant-import-jobs-filter
                                    common-lisp:nil
                                    ((status :target-type job-status
                                      :member-name "status")
                                     (store-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storeName"))
                                    (:shape-name "ListVariantImportJobsFilter"))

(smithy/sdk/shapes:define-input list-variant-import-jobs-request
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (ids :target-type id-list :member-name "ids")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (filter :target-type
                                  list-variant-import-jobs-filter :member-name
                                  "filter"))
                                (:shape-name "ListVariantImportJobsRequest"))

(smithy/sdk/shapes:define-output list-variant-import-jobs-response
                                 common-lisp:nil
                                 ((variant-import-jobs :target-type
                                   variant-import-job-items :member-name
                                   "variantImportJobs")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListVariantImportJobsResponse"))

(smithy/sdk/shapes:define-structure list-variant-stores-filter common-lisp:nil
                                    ((status :target-type store-status
                                      :member-name "status"))
                                    (:shape-name "ListVariantStoresFilter"))

(smithy/sdk/shapes:define-input list-variant-stores-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (ids :target-type id-list :member-name "ids")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (filter :target-type
                                  list-variant-stores-filter :member-name
                                  "filter"))
                                (:shape-name "ListVariantStoresRequest"))

(smithy/sdk/shapes:define-output list-variant-stores-response common-lisp:nil
                                 ((variant-stores :target-type
                                   variant-store-items :member-name
                                   "variantStores")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListVariantStoresResponse"))

(smithy/sdk/shapes:define-input list-workflow-versions-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId" :http-label common-lisp:t)
                                 (type :target-type workflow-type :member-name
                                  "type" :http-query "type")
                                 (workflow-owner-id :target-type
                                  workflow-owner-id :member-name
                                  "workflowOwnerId" :http-query
                                  "workflowOwnerId")
                                 (starting-token :target-type
                                  workflow-version-list-token :member-name
                                  "startingToken" :http-query "startingToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListWorkflowVersionsRequest"))

(smithy/sdk/shapes:define-output list-workflow-versions-response
                                 common-lisp:nil
                                 ((items :target-type workflow-version-list
                                   :member-name "items")
                                  (next-token :target-type
                                   workflow-version-list-token :member-name
                                   "nextToken"))
                                 (:shape-name "ListWorkflowVersionsResponse"))

(smithy/sdk/shapes:define-input list-workflows-request common-lisp:nil
                                ((type :target-type workflow-type :member-name
                                  "type" :http-query "type")
                                 (name :target-type workflow-name :member-name
                                  "name" :http-query "name")
                                 (starting-token :target-type
                                  workflow-list-token :member-name
                                  "startingToken" :http-query "startingToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListWorkflowsRequest"))

(smithy/sdk/shapes:define-output list-workflows-response common-lisp:nil
                                 ((items :target-type workflow-list
                                   :member-name "items")
                                  (next-token :target-type workflow-list-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorkflowsResponse"))

(smithy/sdk/shapes:define-type md5 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list multipart-read-set-upload-list :member
                               multipart-read-set-upload-list-item)

(smithy/sdk/shapes:define-structure multipart-read-set-upload-list-item
                                    common-lisp:nil
                                    ((sequence-store-id :target-type
                                      sequence-store-id :required common-lisp:t
                                      :member-name "sequenceStoreId")
                                     (upload-id :target-type upload-id
                                      :required common-lisp:t :member-name
                                      "uploadId")
                                     (source-file-type :target-type file-type
                                      :required common-lisp:t :member-name
                                      "sourceFileType")
                                     (subject-id :target-type subject-id
                                      :required common-lisp:t :member-name
                                      "subjectId")
                                     (sample-id :target-type sample-id
                                      :required common-lisp:t :member-name
                                      "sampleId")
                                     (generated-from :target-type
                                      generated-from :required common-lisp:t
                                      :member-name "generatedFrom")
                                     (reference-arn :target-type reference-arn
                                      :required common-lisp:t :member-name
                                      "referenceArn")
                                     (name :target-type read-set-name
                                      :member-name "name")
                                     (description :target-type
                                      read-set-description :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name
                                     "MultipartReadSetUploadListItem"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-supported-operation-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "NotSupportedOperationException")
                                (:error-code 405))

(smithy/sdk/shapes:define-type numeric-id-in-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-template-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list propagated-set-level-tags :member tag-key)

(smithy/sdk/shapes:define-input put-s3access-policy-request common-lisp:nil
                                ((s3access-point-arn :target-type
                                  s3access-point-arn :required common-lisp:t
                                  :member-name "s3AccessPointArn" :http-label
                                  common-lisp:t)
                                 (s3access-policy :target-type s3access-policy
                                  :required common-lisp:t :member-name
                                  "s3AccessPolicy"))
                                (:shape-name "PutS3AccessPolicyRequest"))

(smithy/sdk/shapes:define-output put-s3access-policy-response common-lisp:nil
                                 ((s3access-point-arn :target-type
                                   s3access-point-arn :member-name
                                   "s3AccessPointArn")
                                  (store-id :target-type store-id :member-name
                                   "storeId")
                                  (store-type :target-type store-type
                                   :member-name "storeType"))
                                 (:shape-name "PutS3AccessPolicyResponse"))

(smithy/sdk/shapes:define-type quote smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quote-all smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error range-not-satisfiable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "RangeNotSatisfiableException")
                                (:error-code 416))

(smithy/sdk/shapes:define-structure read-options common-lisp:nil
                                    ((sep :target-type separator :member-name
                                      "sep")
                                     (encoding :target-type encoding
                                      :member-name "encoding")
                                     (quote :target-type quote :member-name
                                      "quote")
                                     (quote-all :target-type quote-all
                                      :member-name "quoteAll")
                                     (escape :target-type escape-char
                                      :member-name "escape")
                                     (escape-quotes :target-type escape-quotes
                                      :member-name "escapeQuotes")
                                     (comment :target-type comment-char
                                      :member-name "comment")
                                     (header :target-type header :member-name
                                      "header")
                                     (line-sep :target-type line-sep
                                      :member-name "lineSep"))
                                    (:shape-name "ReadOptions"))

(smithy/sdk/shapes:define-type read-set-activation-job-item-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-activation-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure read-set-batch-error common-lisp:nil
                                    ((id :target-type read-set-id :required
                                      common-lisp:t :member-name "id")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ReadSetBatchError"))

(smithy/sdk/shapes:define-list read-set-batch-error-list :member
                               read-set-batch-error)

(smithy/sdk/shapes:define-type read-set-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-export-job-item-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-export-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-file smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure read-set-files common-lisp:nil
                                    ((source1 :target-type file-information
                                      :member-name "source1")
                                     (source2 :target-type file-information
                                      :member-name "source2")
                                     (index :target-type file-information
                                      :member-name "index"))
                                    (:shape-name "ReadSetFiles"))

(smithy/sdk/shapes:define-structure read-set-filter common-lisp:nil
                                    ((name :target-type read-set-name
                                      :member-name "name")
                                     (status :target-type read-set-status
                                      :member-name "status")
                                     (reference-arn :target-type
                                      reference-arn-filter :member-name
                                      "referenceArn")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time")
                                     (sample-id :target-type sample-id
                                      :member-name "sampleId")
                                     (subject-id :target-type subject-id
                                      :member-name "subjectId")
                                     (generated-from :target-type
                                      generated-from :member-name
                                      "generatedFrom")
                                     (creation-type :target-type creation-type
                                      :member-name "creationType"))
                                    (:shape-name "ReadSetFilter"))

(smithy/sdk/shapes:define-type read-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list read-set-id-list :member read-set-id)

(smithy/sdk/shapes:define-type read-set-import-job-item-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-import-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list read-set-list :member read-set-list-item)

(smithy/sdk/shapes:define-structure read-set-list-item common-lisp:nil
                                    ((id :target-type read-set-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type read-set-arn :required
                                      common-lisp:t :member-name "arn")
                                     (sequence-store-id :target-type
                                      sequence-store-id :required common-lisp:t
                                      :member-name "sequenceStoreId")
                                     (subject-id :target-type subject-id
                                      :member-name "subjectId")
                                     (sample-id :target-type sample-id
                                      :member-name "sampleId")
                                     (status :target-type read-set-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (name :target-type read-set-name
                                      :member-name "name")
                                     (description :target-type
                                      read-set-description :member-name
                                      "description")
                                     (reference-arn :target-type reference-arn
                                      :member-name "referenceArn")
                                     (file-type :target-type file-type
                                      :required common-lisp:t :member-name
                                      "fileType")
                                     (sequence-information :target-type
                                      sequence-information :member-name
                                      "sequenceInformation")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (status-message :target-type
                                      read-set-status-message :member-name
                                      "statusMessage")
                                     (creation-type :target-type creation-type
                                      :member-name "creationType")
                                     (etag :target-type etag :member-name
                                      "etag"))
                                    (:shape-name "ReadSetListItem"))

(smithy/sdk/shapes:define-type read-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-part-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-part-streaming-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

common-lisp:nil

(smithy/sdk/shapes:define-structure read-set-s3access common-lisp:nil
                                    ((s3uri :target-type s3uri :member-name
                                      "s3Uri"))
                                    (:shape-name "ReadSetS3Access"))

(smithy/sdk/shapes:define-type read-set-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type read-set-streaming-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-list read-set-upload-part-list :member
                               read-set-upload-part-list-item)

(smithy/sdk/shapes:define-structure read-set-upload-part-list-filter
                                    common-lisp:nil
                                    ((created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ReadSetUploadPartListFilter"))

(smithy/sdk/shapes:define-structure read-set-upload-part-list-item
                                    common-lisp:nil
                                    ((part-number :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "partNumber")
                                     (part-size :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "partSize")
                                     (part-source :target-type
                                      read-set-part-source :required
                                      common-lisp:t :member-name "partSource")
                                     (checksum :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "checksum")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime"
                                      :timestamp-format "date-time")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastUpdatedTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ReadSetUploadPartListItem"))

(smithy/sdk/shapes:define-type readme-markdown smithy/sdk/smithy-types:string
                               :media-type "text/markdown")

(smithy/sdk/shapes:define-type readme-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type readme-s3presigned-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-arn-filter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-creation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-file smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reference-files common-lisp:nil
                                    ((source :target-type file-information
                                      :member-name "source")
                                     (index :target-type file-information
                                      :member-name "index"))
                                    (:shape-name "ReferenceFiles"))

(smithy/sdk/shapes:define-structure reference-filter common-lisp:nil
                                    ((name :target-type reference-name
                                      :member-name "name")
                                     (md5 :target-type md5 :member-name "md5")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ReferenceFilter"))

(smithy/sdk/shapes:define-type reference-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-import-job-item-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-import-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union reference-item common-lisp:nil
                                ((reference-arn :target-type reference-arn
                                  :member-name "referenceArn"))
                                (:shape-name "ReferenceItem"))

(smithy/sdk/shapes:define-list reference-list :member reference-list-item)

(smithy/sdk/shapes:define-structure reference-list-item common-lisp:nil
                                    ((id :target-type reference-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type reference-arn :required
                                      common-lisp:t :member-name "arn")
                                     (reference-store-id :target-type
                                      reference-store-id :required
                                      common-lisp:t :member-name
                                      "referenceStoreId")
                                     (md5 :target-type md5 :required
                                      common-lisp:t :member-name "md5")
                                     (status :target-type reference-status
                                      :member-name "status")
                                     (name :target-type reference-name
                                      :member-name "name")
                                     (description :target-type
                                      reference-description :member-name
                                      "description")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name "ReferenceListItem"))

(smithy/sdk/shapes:define-type reference-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type reference-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-store-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-store-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reference-store-detail common-lisp:nil
                                    ((arn :target-type reference-store-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (id :target-type reference-store-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type reference-store-name
                                      :member-name "name")
                                     (description :target-type
                                      reference-store-description :member-name
                                      "description")
                                     (sse-config :target-type sse-config
                                      :member-name "sseConfig")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time"))
                                    (:shape-name "ReferenceStoreDetail"))

(smithy/sdk/shapes:define-list reference-store-detail-list :member
                               reference-store-detail)

(smithy/sdk/shapes:define-structure reference-store-filter common-lisp:nil
                                    ((name :target-type reference-store-name
                                      :member-name "name")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "ReferenceStoreFilter"))

(smithy/sdk/shapes:define-type reference-store-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reference-store-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type reference-streaming-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-error request-timeout-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "RequestTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-cache-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-cache-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list run-cache-list :member run-cache-list-item)

(smithy/sdk/shapes:define-structure run-cache-list-item common-lisp:nil
                                    ((arn :target-type run-cache-arn
                                      :member-name "arn")
                                     (cache-behavior :target-type
                                      cache-behavior :member-name
                                      "cacheBehavior")
                                     (cache-s3uri :target-type
                                      s3uri-for-bucket-or-object :member-name
                                      "cacheS3Uri")
                                     (creation-time :target-type
                                      run-cache-timestamp :member-name
                                      "creationTime")
                                     (id :target-type run-cache-id :member-name
                                      "id")
                                     (name :target-type user-custom-name
                                      :member-name "name")
                                     (status :target-type run-cache-status
                                      :member-name "status"))
                                    (:shape-name "RunCacheListItem"))

(smithy/sdk/shapes:define-type run-cache-request-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type run-cache-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-cache-timestamp
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type run-export smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list run-export-list :member run-export)

(smithy/sdk/shapes:define-type run-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list run-group-list :member run-group-list-item)

(smithy/sdk/shapes:define-structure run-group-list-item common-lisp:nil
                                    ((arn :target-type run-group-arn
                                      :member-name "arn")
                                     (id :target-type run-group-id :member-name
                                      "id")
                                     (name :target-type run-group-name
                                      :member-name "name")
                                     (max-cpus :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxCpus")
                                     (max-runs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxRuns")
                                     (max-duration :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxDuration")
                                     (creation-time :target-type
                                      run-group-timestamp :member-name
                                      "creationTime")
                                     (max-gpus :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxGpus"))
                                    (:shape-name "RunGroupListItem"))

(smithy/sdk/shapes:define-type run-group-list-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-group-request-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type run-group-timestamp
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type run-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-left-normalization
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list run-list :member run-list-item)

(smithy/sdk/shapes:define-structure run-list-item common-lisp:nil
                                    ((arn :target-type run-arn :member-name
                                      "arn")
                                     (id :target-type run-id :member-name "id")
                                     (status :target-type run-status
                                      :member-name "status")
                                     (workflow-id :target-type workflow-id
                                      :member-name "workflowId")
                                     (name :target-type run-name :member-name
                                      "name")
                                     (priority :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "priority")
                                     (storage-capacity :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "storageCapacity")
                                     (creation-time :target-type run-timestamp
                                      :member-name "creationTime")
                                     (start-time :target-type run-timestamp
                                      :member-name "startTime")
                                     (stop-time :target-type run-timestamp
                                      :member-name "stopTime")
                                     (storage-type :target-type storage-type
                                      :member-name "storageType")
                                     (workflow-version-name :target-type
                                      workflow-version-name :member-name
                                      "workflowVersionName"))
                                    (:shape-name "RunListItem"))

(smithy/sdk/shapes:define-type run-list-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-log-level smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure run-log-location common-lisp:nil
                                    ((engine-log-stream :target-type
                                      engine-log-stream :member-name
                                      "engineLogStream")
                                     (run-log-stream :target-type
                                      run-log-stream :member-name
                                      "runLogStream"))
                                    (:shape-name "RunLogLocation"))

(smithy/sdk/shapes:define-type run-log-stream smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-output-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-parameters smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type run-request-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type run-resource-digest
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-resource-digest-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map run-resource-digests :key run-resource-digest-key
                              :value run-resource-digest)

(smithy/sdk/shapes:define-type run-retention-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-started-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type run-timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type run-uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3access-config common-lisp:nil
                                    ((access-log-location :target-type
                                      access-log-location :member-name
                                      "accessLogLocation"))
                                    (:shape-name "S3AccessConfig"))

(smithy/sdk/shapes:define-type s3access-point-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3access-policy smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-type s3destination smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3uri-for-bucket-or-object
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3uri-for-object smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sample-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list schema :member schema-item)

(smithy/sdk/shapes:define-map schema-item :key smithy/sdk/smithy-types:string
                              :value schema-value-type)

(smithy/sdk/shapes:define-type schema-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type separator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sequence-information common-lisp:nil
                                    ((total-read-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalReadCount")
                                     (total-base-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalBaseCount")
                                     (generated-from :target-type
                                      generated-from :member-name
                                      "generatedFrom")
                                     (alignment :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "alignment"))
                                    (:shape-name "SequenceInformation"))

(smithy/sdk/shapes:define-type sequence-store-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sequence-store-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sequence-store-detail common-lisp:nil
                                    ((arn :target-type sequence-store-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (id :target-type sequence-store-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type sequence-store-name
                                      :member-name "name")
                                     (description :target-type
                                      sequence-store-description :member-name
                                      "description")
                                     (sse-config :target-type sse-config
                                      :member-name "sseConfig")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "creationTime" :timestamp-format
                                      "date-time")
                                     (fallback-location :target-type
                                      fallback-location :member-name
                                      "fallbackLocation")
                                     (e-tag-algorithm-family :target-type
                                      etag-algorithm-family :member-name
                                      "eTagAlgorithmFamily")
                                     (status :target-type sequence-store-status
                                      :member-name "status")
                                     (status-message :target-type
                                      sequence-store-status-message
                                      :member-name "statusMessage")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updateTime"
                                      :timestamp-format "date-time"))
                                    (:shape-name "SequenceStoreDetail"))

(smithy/sdk/shapes:define-list sequence-store-detail-list :member
                               sequence-store-detail)

(smithy/sdk/shapes:define-structure sequence-store-filter common-lisp:nil
                                    ((name :target-type sequence-store-name
                                      :member-name "name")
                                     (created-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAfter"
                                      :timestamp-format "date-time")
                                     (created-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdBefore"
                                      :timestamp-format "date-time")
                                     (status :target-type sequence-store-status
                                      :member-name "status")
                                     (updated-after :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAfter"
                                      :timestamp-format "date-time")
                                     (updated-before :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedBefore"
                                      :timestamp-format "date-time"))
                                    (:shape-name "SequenceStoreFilter"))

(smithy/sdk/shapes:define-type sequence-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sequence-store-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure sequence-store-s3access common-lisp:nil
                                    ((s3uri :target-type s3uri :member-name
                                      "s3Uri")
                                     (s3access-point-arn :target-type
                                      s3access-point-arn :member-name
                                      "s3AccessPointArn")
                                     (access-log-location :target-type
                                      access-log-location :member-name
                                      "accessLogLocation"))
                                    (:shape-name "SequenceStoreS3Access"))

(smithy/sdk/shapes:define-type sequence-store-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sequence-store-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

common-lisp:nil

(smithy/sdk/shapes:define-structure share-details common-lisp:nil
                                    ((share-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shareId")
                                     (resource-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceArn")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceId")
                                     (principal-subscriber :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "principalSubscriber")
                                     (owner-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ownerId")
                                     (status :target-type share-status
                                      :member-name "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (share-name :target-type share-name
                                      :member-name "shareName")
                                     (creation-time :target-type creation-time
                                      :member-name "creationTime")
                                     (update-time :target-type update-time
                                      :member-name "updateTime"))
                                    (:shape-name "ShareDetails"))

(smithy/sdk/shapes:define-list share-details-list :member share-details)

(smithy/sdk/shapes:define-type share-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type share-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type share-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-files common-lisp:nil
                                    ((source1 :target-type s3uri :required
                                      common-lisp:t :member-name "source1")
                                     (source2 :target-type s3uri :member-name
                                      "source2"))
                                    (:shape-name "SourceFiles"))

(smithy/sdk/shapes:define-structure source-reference common-lisp:nil
                                    ((type :target-type source-reference-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (value :target-type source-reference-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "SourceReference"))

(smithy/sdk/shapes:define-type source-reference-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-reference-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sse-config common-lisp:nil
                                    ((type :target-type encryption-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (key-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "keyArn"))
                                    (:shape-name "SseConfig"))

(smithy/sdk/shapes:define-input start-annotation-import-request common-lisp:nil
                                ((destination-name :target-type store-name
                                  :required common-lisp:t :member-name
                                  "destinationName")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (items :target-type
                                  annotation-import-item-sources :required
                                  common-lisp:t :member-name "items")
                                 (version-name :target-type version-name
                                  :member-name "versionName")
                                 (format-options :target-type format-options
                                  :member-name "formatOptions")
                                 (run-left-normalization :target-type
                                  run-left-normalization :member-name
                                  "runLeftNormalization")
                                 (annotation-fields :target-type
                                  annotation-field-map :member-name
                                  "annotationFields"))
                                (:shape-name "StartAnnotationImportRequest"))

(smithy/sdk/shapes:define-output start-annotation-import-response
                                 common-lisp:nil
                                 ((job-id :target-type resource-id :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name "StartAnnotationImportResponse"))

(smithy/sdk/shapes:define-input start-read-set-activation-job-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (sources :target-type
                                  start-read-set-activation-job-source-list
                                  :required common-lisp:t :member-name
                                  "sources"))
                                (:shape-name
                                 "StartReadSetActivationJobRequest"))

(smithy/sdk/shapes:define-output start-read-set-activation-job-response
                                 common-lisp:nil
                                 ((id :target-type activation-job-id :required
                                   common-lisp:t :member-name "id")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (status :target-type
                                   read-set-activation-job-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name
                                  "StartReadSetActivationJobResponse"))

(smithy/sdk/shapes:define-structure start-read-set-activation-job-source-item
                                    common-lisp:nil
                                    ((read-set-id :target-type read-set-id
                                      :required common-lisp:t :member-name
                                      "readSetId"))
                                    (:shape-name
                                     "StartReadSetActivationJobSourceItem"))

(smithy/sdk/shapes:define-list start-read-set-activation-job-source-list
                               :member
                               start-read-set-activation-job-source-item)

(smithy/sdk/shapes:define-input start-read-set-export-job-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (destination :target-type s3destination
                                  :required common-lisp:t :member-name
                                  "destination")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (sources :target-type export-read-set-list
                                  :required common-lisp:t :member-name
                                  "sources"))
                                (:shape-name "StartReadSetExportJobRequest"))

(smithy/sdk/shapes:define-output start-read-set-export-job-response
                                 common-lisp:nil
                                 ((id :target-type export-job-id :required
                                   common-lisp:t :member-name "id")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (destination :target-type s3destination
                                   :required common-lisp:t :member-name
                                   "destination")
                                  (status :target-type
                                   read-set-export-job-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name "StartReadSetExportJobResponse"))

(smithy/sdk/shapes:define-input start-read-set-import-job-request
                                common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (sources :target-type
                                  start-read-set-import-job-source-list
                                  :required common-lisp:t :member-name
                                  "sources"))
                                (:shape-name "StartReadSetImportJobRequest"))

(smithy/sdk/shapes:define-output start-read-set-import-job-response
                                 common-lisp:nil
                                 ((id :target-type import-job-id :required
                                   common-lisp:t :member-name "id")
                                  (sequence-store-id :target-type
                                   sequence-store-id :required common-lisp:t
                                   :member-name "sequenceStoreId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type
                                   read-set-import-job-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name "StartReadSetImportJobResponse"))

(smithy/sdk/shapes:define-structure start-read-set-import-job-source-item
                                    common-lisp:nil
                                    ((source-files :target-type source-files
                                      :required common-lisp:t :member-name
                                      "sourceFiles")
                                     (source-file-type :target-type file-type
                                      :required common-lisp:t :member-name
                                      "sourceFileType")
                                     (subject-id :target-type subject-id
                                      :required common-lisp:t :member-name
                                      "subjectId")
                                     (sample-id :target-type sample-id
                                      :required common-lisp:t :member-name
                                      "sampleId")
                                     (generated-from :target-type
                                      generated-from :member-name
                                      "generatedFrom")
                                     (reference-arn :target-type reference-arn
                                      :member-name "referenceArn")
                                     (name :target-type read-set-name
                                      :member-name "name")
                                     (description :target-type
                                      read-set-description :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "StartReadSetImportJobSourceItem"))

(smithy/sdk/shapes:define-list start-read-set-import-job-source-list :member
                               start-read-set-import-job-source-item)

(smithy/sdk/shapes:define-input start-reference-import-job-request
                                common-lisp:nil
                                ((reference-store-id :target-type
                                  reference-store-id :required common-lisp:t
                                  :member-name "referenceStoreId" :http-label
                                  common-lisp:t)
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (sources :target-type
                                  start-reference-import-job-source-list
                                  :required common-lisp:t :member-name
                                  "sources"))
                                (:shape-name "StartReferenceImportJobRequest"))

(smithy/sdk/shapes:define-output start-reference-import-job-response
                                 common-lisp:nil
                                 ((id :target-type import-job-id :required
                                   common-lisp:t :member-name "id")
                                  (reference-store-id :target-type
                                   reference-store-id :required common-lisp:t
                                   :member-name "referenceStoreId")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (status :target-type
                                   reference-import-job-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time"))
                                 (:shape-name
                                  "StartReferenceImportJobResponse"))

(smithy/sdk/shapes:define-structure start-reference-import-job-source-item
                                    common-lisp:nil
                                    ((source-file :target-type s3uri :required
                                      common-lisp:t :member-name "sourceFile")
                                     (name :target-type reference-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      reference-description :member-name
                                      "description")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "StartReferenceImportJobSourceItem"))

(smithy/sdk/shapes:define-list start-reference-import-job-source-list :member
                               start-reference-import-job-source-item)

(smithy/sdk/shapes:define-input start-run-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :member-name "workflowId")
                                 (workflow-type :target-type workflow-type
                                  :member-name "workflowType")
                                 (run-id :target-type run-id :member-name
                                  "runId")
                                 (role-arn :target-type run-role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (name :target-type run-name :member-name
                                  "name")
                                 (cache-id :target-type numeric-id-in-arn
                                  :member-name "cacheId")
                                 (cache-behavior :target-type cache-behavior
                                  :member-name "cacheBehavior")
                                 (run-group-id :target-type run-group-id
                                  :member-name "runGroupId")
                                 (priority :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "priority")
                                 (parameters :target-type run-parameters
                                  :member-name "parameters")
                                 (storage-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "storageCapacity")
                                 (output-uri :target-type run-output-uri
                                  :member-name "outputUri")
                                 (log-level :target-type run-log-level
                                  :member-name "logLevel")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (request-id :target-type run-request-id
                                  :required common-lisp:t :member-name
                                  "requestId")
                                 (retention-mode :target-type
                                  run-retention-mode :member-name
                                  "retentionMode")
                                 (storage-type :target-type storage-type
                                  :member-name "storageType")
                                 (workflow-owner-id :target-type
                                  workflow-owner-id :member-name
                                  "workflowOwnerId")
                                 (workflow-version-name :target-type
                                  workflow-version-name :member-name
                                  "workflowVersionName"))
                                (:shape-name "StartRunRequest"))

(smithy/sdk/shapes:define-output start-run-response common-lisp:nil
                                 ((arn :target-type run-arn :member-name "arn")
                                  (id :target-type run-id :member-name "id")
                                  (status :target-type run-status :member-name
                                   "status")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (uuid :target-type run-uuid :member-name
                                   "uuid")
                                  (run-output-uri :target-type run-output-uri
                                   :member-name "runOutputUri"))
                                 (:shape-name "StartRunResponse"))

(smithy/sdk/shapes:define-input start-variant-import-request common-lisp:nil
                                ((destination-name :target-type store-name
                                  :required common-lisp:t :member-name
                                  "destinationName")
                                 (role-arn :target-type arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (items :target-type
                                  variant-import-item-sources :required
                                  common-lisp:t :member-name "items")
                                 (run-left-normalization :target-type
                                  run-left-normalization :member-name
                                  "runLeftNormalization")
                                 (annotation-fields :target-type
                                  annotation-field-map :member-name
                                  "annotationFields"))
                                (:shape-name "StartVariantImportRequest"))

(smithy/sdk/shapes:define-output start-variant-import-response common-lisp:nil
                                 ((job-id :target-type resource-id :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name "StartVariantImportResponse"))

(smithy/sdk/shapes:define-list status-list :member share-status)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type storage-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type store-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type store-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union store-options common-lisp:nil
                                ((tsv-store-options :target-type
                                  tsv-store-options :member-name
                                  "tsvStoreOptions"))
                                (:shape-name "StoreOptions"))

(smithy/sdk/shapes:define-type store-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum store-type
    common-lisp:nil
  (:sequence-store "SEQUENCE_STORE")
  (:reference-store "REFERENCE_STORE"))

(smithy/sdk/shapes:define-type subject-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type task-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list task-list :member task-list-item)

(smithy/sdk/shapes:define-structure task-list-item common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (status :target-type task-status
                                      :member-name "status")
                                     (name :target-type task-name :member-name
                                      "name")
                                     (cpus :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpus")
                                     (cache-hit :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "cacheHit")
                                     (cache-s3uri :target-type
                                      s3uri-for-bucket-or-object :member-name
                                      "cacheS3Uri")
                                     (memory :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memory")
                                     (creation-time :target-type task-timestamp
                                      :member-name "creationTime")
                                     (start-time :target-type task-timestamp
                                      :member-name "startTime")
                                     (stop-time :target-type task-timestamp
                                      :member-name "stopTime")
                                     (gpus :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "gpus")
                                     (instance-type :target-type
                                      task-instance-type :member-name
                                      "instanceType"))
                                    (:shape-name "TaskListItem"))

(smithy/sdk/shapes:define-type task-list-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-log-stream smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type task-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tsv-options common-lisp:nil
                                    ((read-options :target-type read-options
                                      :member-name "readOptions"))
                                    (:shape-name "TsvOptions"))

(smithy/sdk/shapes:define-structure tsv-store-options common-lisp:nil
                                    ((annotation-type :target-type
                                      annotation-type :member-name
                                      "annotationType")
                                     (format-to-header :target-type
                                      format-to-header :member-name
                                      "formatToHeader")
                                     (schema :target-type schema :member-name
                                      "schema"))
                                    (:shape-name "TsvStoreOptions"))

(smithy/sdk/shapes:define-structure tsv-version-options common-lisp:nil
                                    ((annotation-type :target-type
                                      annotation-type :member-name
                                      "annotationType")
                                     (format-to-header :target-type
                                      format-to-header :member-name
                                      "formatToHeader")
                                     (schema :target-type schema :member-name
                                      "schema"))
                                    (:shape-name "TsvVersionOptions"))

(smithy/sdk/shapes:define-list type-list :member share-resource-type)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-annotation-store-request common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateAnnotationStoreRequest"))

(smithy/sdk/shapes:define-output update-annotation-store-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (reference :target-type reference-item
                                   :required common-lisp:t :member-name
                                   "reference")
                                  (status :target-type store-status :required
                                   common-lisp:t :member-name "status")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime")
                                  (store-options :target-type store-options
                                   :member-name "storeOptions")
                                  (store-format :target-type store-format
                                   :member-name "storeFormat"))
                                 (:shape-name "UpdateAnnotationStoreResponse"))

(smithy/sdk/shapes:define-input update-annotation-store-version-request
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (version-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "versionName"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name
                                 "UpdateAnnotationStoreVersionRequest"))

(smithy/sdk/shapes:define-output update-annotation-store-version-response
                                 common-lisp:nil
                                 ((store-id :target-type resource-id :required
                                   common-lisp:t :member-name "storeId")
                                  (id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (status :target-type version-status :required
                                   common-lisp:t :member-name "status")
                                  (name :target-type store-name :required
                                   common-lisp:t :member-name "name")
                                  (version-name :target-type version-name
                                   :required common-lisp:t :member-name
                                   "versionName")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime"))
                                 (:shape-name
                                  "UpdateAnnotationStoreVersionResponse"))

(smithy/sdk/shapes:define-input update-run-cache-request common-lisp:nil
                                ((cache-behavior :target-type cache-behavior
                                  :member-name "cacheBehavior")
                                 (description :target-type
                                  user-custom-description :member-name
                                  "description")
                                 (id :target-type run-cache-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type user-custom-name
                                  :member-name "name"))
                                (:shape-name "UpdateRunCacheRequest"))

(smithy/sdk/shapes:define-input update-run-group-request common-lisp:nil
                                ((id :target-type run-group-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type run-group-name :member-name
                                  "name")
                                 (max-cpus :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxCpus")
                                 (max-runs :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxRuns")
                                 (max-duration :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxDuration")
                                 (max-gpus :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxGpus"))
                                (:shape-name "UpdateRunGroupRequest"))

(smithy/sdk/shapes:define-input update-sequence-store-request common-lisp:nil
                                ((id :target-type sequence-store-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type sequence-store-name
                                  :member-name "name")
                                 (description :target-type
                                  sequence-store-description :member-name
                                  "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (fallback-location :target-type
                                  fallback-location :member-name
                                  "fallbackLocation")
                                 (propagated-set-level-tags :target-type
                                  propagated-set-level-tags :member-name
                                  "propagatedSetLevelTags")
                                 (s3access-config :target-type s3access-config
                                  :member-name "s3AccessConfig"))
                                (:shape-name "UpdateSequenceStoreRequest"))

(smithy/sdk/shapes:define-output update-sequence-store-response common-lisp:nil
                                 ((id :target-type sequence-store-id :required
                                   common-lisp:t :member-name "id")
                                  (arn :target-type sequence-store-arn
                                   :required common-lisp:t :member-name "arn")
                                  (name :target-type sequence-store-name
                                   :member-name "name")
                                  (description :target-type
                                   sequence-store-description :member-name
                                   "description")
                                  (sse-config :target-type sse-config
                                   :member-name "sseConfig")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "creationTime"
                                   :timestamp-format "date-time")
                                  (update-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updateTime" :timestamp-format
                                   "date-time")
                                  (propagated-set-level-tags :target-type
                                   propagated-set-level-tags :member-name
                                   "propagatedSetLevelTags")
                                  (status :target-type sequence-store-status
                                   :member-name "status")
                                  (status-message :target-type
                                   sequence-store-status-message :member-name
                                   "statusMessage")
                                  (fallback-location :target-type
                                   fallback-location :member-name
                                   "fallbackLocation")
                                  (s3access :target-type
                                   sequence-store-s3access :member-name
                                   "s3Access")
                                  (e-tag-algorithm-family :target-type
                                   etag-algorithm-family :member-name
                                   "eTagAlgorithmFamily"))
                                 (:shape-name "UpdateSequenceStoreResponse"))

(smithy/sdk/shapes:define-type update-time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input update-variant-store-request common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateVariantStoreRequest"))

(smithy/sdk/shapes:define-output update-variant-store-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (reference :target-type reference-item
                                   :required common-lisp:t :member-name
                                   "reference")
                                  (status :target-type store-status :required
                                   common-lisp:t :member-name "status")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (update-time :target-type update-time
                                   :required common-lisp:t :member-name
                                   "updateTime"))
                                 (:shape-name "UpdateVariantStoreResponse"))

(smithy/sdk/shapes:define-input update-workflow-request common-lisp:nil
                                ((id :target-type workflow-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type workflow-name :member-name
                                  "name")
                                 (description :target-type workflow-description
                                  :member-name "description")
                                 (storage-type :target-type storage-type
                                  :member-name "storageType")
                                 (storage-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "storageCapacity")
                                 (readme-markdown :target-type readme-markdown
                                  :member-name "readmeMarkdown"))
                                (:shape-name "UpdateWorkflowRequest"))

(smithy/sdk/shapes:define-input update-workflow-version-request common-lisp:nil
                                ((workflow-id :target-type workflow-id
                                  :required common-lisp:t :member-name
                                  "workflowId" :http-label common-lisp:t)
                                 (version-name :target-type
                                  workflow-version-name :required common-lisp:t
                                  :member-name "versionName" :http-label
                                  common-lisp:t)
                                 (description :target-type
                                  workflow-version-description :member-name
                                  "description")
                                 (storage-type :target-type storage-type
                                  :member-name "storageType")
                                 (storage-capacity :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "storageCapacity")
                                 (readme-markdown :target-type readme-markdown
                                  :member-name "readmeMarkdown"))
                                (:shape-name "UpdateWorkflowVersionRequest"))

(smithy/sdk/shapes:define-type upload-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input upload-read-set-part-request common-lisp:nil
                                ((sequence-store-id :target-type
                                  sequence-store-id :required common-lisp:t
                                  :member-name "sequenceStoreId" :http-label
                                  common-lisp:t)
                                 (upload-id :target-type upload-id :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (part-source :target-type read-set-part-source
                                  :required common-lisp:t :member-name
                                  "partSource" :http-query "partSource")
                                 (part-number :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "partNumber"
                                  :http-query "partNumber")
                                 (payload :target-type
                                  read-set-part-streaming-blob :required
                                  common-lisp:t :member-name "payload"
                                  :http-payload common-lisp:t))
                                (:shape-name "UploadReadSetPartRequest"))

(smithy/sdk/shapes:define-output upload-read-set-part-response common-lisp:nil
                                 ((checksum :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "checksum"))
                                 (:shape-name "UploadReadSetPartResponse"))

(smithy/sdk/shapes:define-type user-custom-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-custom-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure variant-import-item-detail common-lisp:nil
                                    ((source :target-type s3uri :required
                                      common-lisp:t :member-name "source")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "jobStatus")
                                     (status-message :target-type
                                      job-status-msg :member-name
                                      "statusMessage"))
                                    (:shape-name "VariantImportItemDetail"))

(smithy/sdk/shapes:define-list variant-import-item-details :member
                               variant-import-item-detail)

(smithy/sdk/shapes:define-structure variant-import-item-source common-lisp:nil
                                    ((source :target-type s3uri :required
                                      common-lisp:t :member-name "source"))
                                    (:shape-name "VariantImportItemSource"))

(smithy/sdk/shapes:define-list variant-import-item-sources :member
                               variant-import-item-source)

common-lisp:nil

(smithy/sdk/shapes:define-structure variant-import-job-item common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (destination-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "destinationName")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (completion-time :target-type
                                      completion-time :member-name
                                      "completionTime")
                                     (run-left-normalization :target-type
                                      run-left-normalization :member-name
                                      "runLeftNormalization")
                                     (annotation-fields :target-type
                                      annotation-field-map :member-name
                                      "annotationFields"))
                                    (:shape-name "VariantImportJobItem"))

(smithy/sdk/shapes:define-list variant-import-job-items :member
                               variant-import-job-item)

common-lisp:nil

(smithy/sdk/shapes:define-structure variant-store-item common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (reference :target-type reference-item
                                      :required common-lisp:t :member-name
                                      "reference")
                                     (status :target-type store-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (store-arn :target-type arn :required
                                      common-lisp:t :member-name "storeArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (sse-config :target-type sse-config
                                      :required common-lisp:t :member-name
                                      "sseConfig")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (status-message :target-type
                                      status-message :required common-lisp:t
                                      :member-name "statusMessage")
                                     (store-size-bytes :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name
                                      "storeSizeBytes"))
                                    (:shape-name "VariantStoreItem"))

(smithy/sdk/shapes:define-list variant-store-items :member variant-store-item)

(smithy/sdk/shapes:define-structure vcf-options common-lisp:nil
                                    ((ignore-qual-field :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ignoreQualField")
                                     (ignore-filter-field :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ignoreFilterField"))
                                    (:shape-name "VcfOptions"))

(smithy/sdk/shapes:define-structure version-delete-error common-lisp:nil
                                    ((version-name :target-type version-name
                                      :required common-lisp:t :member-name
                                      "versionName")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "VersionDeleteError"))

(smithy/sdk/shapes:define-list version-delete-error-list :member
                               version-delete-error)

(smithy/sdk/shapes:define-list version-list :member version-name)

(smithy/sdk/shapes:define-type version-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union version-options common-lisp:nil
                                ((tsv-version-options :target-type
                                  tsv-version-options :member-name
                                  "tsvVersionOptions"))
                                (:shape-name "VersionOptions"))

(smithy/sdk/shapes:define-type version-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-bucket-owner-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-digest smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-engine smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-export smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-export-list :member workflow-export)

(smithy/sdk/shapes:define-type workflow-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-list :member workflow-list-item)

(smithy/sdk/shapes:define-structure workflow-list-item common-lisp:nil
                                    ((arn :target-type workflow-arn
                                      :member-name "arn")
                                     (id :target-type workflow-id :member-name
                                      "id")
                                     (name :target-type workflow-name
                                      :member-name "name")
                                     (status :target-type workflow-status
                                      :member-name "status")
                                     (type :target-type workflow-type
                                      :member-name "type")
                                     (digest :target-type workflow-digest
                                      :member-name "digest")
                                     (creation-time :target-type
                                      workflow-timestamp :member-name
                                      "creationTime")
                                     (metadata :target-type workflow-metadata
                                      :member-name "metadata"))
                                    (:shape-name "WorkflowListItem"))

(smithy/sdk/shapes:define-type workflow-list-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-main smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map workflow-metadata :key workflow-metadata-key
                              :value workflow-metadata-value)

(smithy/sdk/shapes:define-type workflow-metadata-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-metadata-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-parameter common-lisp:nil
                                    ((description :target-type
                                      workflow-parameter-description
                                      :member-name "description")
                                     (optional :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "optional"))
                                    (:shape-name "WorkflowParameter"))

(smithy/sdk/shapes:define-type workflow-parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map workflow-parameter-template :key
                              workflow-parameter-name :value workflow-parameter)

(smithy/sdk/shapes:define-type workflow-request-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type workflow-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-timestamp
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type workflow-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-uuid smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type workflow-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-version-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-version-list :member
                               workflow-version-list-item)

(smithy/sdk/shapes:define-structure workflow-version-list-item common-lisp:nil
                                    ((arn :target-type workflow-version-arn
                                      :member-name "arn")
                                     (workflow-id :target-type workflow-id
                                      :member-name "workflowId")
                                     (version-name :target-type
                                      workflow-version-name :member-name
                                      "versionName")
                                     (description :target-type
                                      workflow-version-description :member-name
                                      "description")
                                     (status :target-type workflow-status
                                      :member-name "status")
                                     (type :target-type workflow-type
                                      :member-name "type")
                                     (digest :target-type workflow-digest
                                      :member-name "digest")
                                     (creation-time :target-type
                                      workflow-timestamp :member-name
                                      "creationTime")
                                     (metadata :target-type workflow-metadata
                                      :member-name "metadata"))
                                    (:shape-name "WorkflowVersionListItem"))

(smithy/sdk/shapes:define-type workflow-version-list-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-version-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation abort-multipart-read-set-upload
                                       :shape-name
                                       "AbortMultipartReadSetUpload" :input
                                       abort-multipart-read-set-upload-request
                                       :output
                                       abort-multipart-read-set-upload-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/sequencestore/{sequenceStoreId}/upload/{uploadId}/abort"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation accept-share :shape-name "AcceptShare"
                                       :input accept-share-request :output
                                       accept-share-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/share/{shareId}"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation batch-delete-read-set :shape-name
                                       "BatchDeleteReadSet" :input
                                       batch-delete-read-set-request :output
                                       batch-delete-read-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/readset/batch/delete"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation cancel-annotation-import-job :shape-name
                                       "CancelAnnotationImportJob" :input
                                       cancel-annotation-import-request :output
                                       cancel-annotation-import-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/import/annotation/{jobId}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation cancel-run :shape-name "CancelRun"
                                       :input cancel-run-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/run/{id}/cancel"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation cancel-variant-import-job :shape-name
                                       "CancelVariantImportJob" :input
                                       cancel-variant-import-request :output
                                       cancel-variant-import-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/import/variant/{jobId}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation complete-multipart-read-set-upload
                                       :shape-name
                                       "CompleteMultipartReadSetUpload" :input
                                       complete-multipart-read-set-upload-request
                                       :output
                                       complete-multipart-read-set-upload-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/upload/{uploadId}/complete"
                                       :endpoint-host-prefix "storage-")

(smithy/sdk/operation:define-operation create-annotation-store :shape-name
                                       "CreateAnnotationStore" :input
                                       create-annotation-store-request :output
                                       create-annotation-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/annotationStore"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation create-annotation-store-version
                                       :shape-name
                                       "CreateAnnotationStoreVersion" :input
                                       create-annotation-store-version-request
                                       :output
                                       create-annotation-store-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/annotationStore/{name}/version" :code
                                       200 :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation create-multipart-read-set-upload
                                       :shape-name
                                       "CreateMultipartReadSetUpload" :input
                                       create-multipart-read-set-upload-request
                                       :output
                                       create-multipart-read-set-upload-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/upload"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation create-reference-store :shape-name
                                       "CreateReferenceStore" :input
                                       create-reference-store-request :output
                                       create-reference-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/referencestore"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation create-run-cache :shape-name
                                       "CreateRunCache" :input
                                       create-run-cache-request :output
                                       create-run-cache-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/runCache" :code
                                       201 :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation create-run-group :shape-name
                                       "CreateRunGroup" :input
                                       create-run-group-request :output
                                       create-run-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/runGroup" :code
                                       201 :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation create-sequence-store :shape-name
                                       "CreateSequenceStore" :input
                                       create-sequence-store-request :output
                                       create-sequence-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sequencestore"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation create-share :shape-name "CreateShare"
                                       :input create-share-request :output
                                       create-share-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/share" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation create-variant-store :shape-name
                                       "CreateVariantStore" :input
                                       create-variant-store-request :output
                                       create-variant-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/variantStore"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation create-workflow :shape-name
                                       "CreateWorkflow" :input
                                       create-workflow-request :output
                                       create-workflow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workflow" :code
                                       201 :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation create-workflow-version :shape-name
                                       "CreateWorkflowVersion" :input
                                       create-workflow-version-request :output
                                       create-workflow-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workflow/{workflowId}/version" :code
                                       201 :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation delete-annotation-store :shape-name
                                       "DeleteAnnotationStore" :input
                                       delete-annotation-store-request :output
                                       delete-annotation-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/annotationStore/{name}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation delete-annotation-store-versions
                                       :shape-name
                                       "DeleteAnnotationStoreVersions" :input
                                       delete-annotation-store-versions-request
                                       :output
                                       delete-annotation-store-versions-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/annotationStore/{name}/versions/delete"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation delete-reference :shape-name
                                       "DeleteReference" :input
                                       delete-reference-request :output
                                       delete-reference-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/referencestore/{referenceStoreId}/reference/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation delete-reference-store :shape-name
                                       "DeleteReferenceStore" :input
                                       delete-reference-store-request :output
                                       delete-reference-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/referencestore/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation delete-run :shape-name "DeleteRun"
                                       :input delete-run-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/run/{id}" :code
                                       202 :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation delete-run-cache :shape-name
                                       "DeleteRunCache" :input
                                       delete-run-cache-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/runCache/{id}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation delete-run-group :shape-name
                                       "DeleteRunGroup" :input
                                       delete-run-group-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/runGroup/{id}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation delete-s3access-policy :shape-name
                                       "DeleteS3AccessPolicy" :input
                                       delete-s3access-policy-request :output
                                       delete-s3access-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/s3accesspolicy/{s3AccessPointArn}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation delete-sequence-store :shape-name
                                       "DeleteSequenceStore" :input
                                       delete-sequence-store-request :output
                                       delete-sequence-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/sequencestore/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation delete-share :shape-name "DeleteShare"
                                       :input delete-share-request :output
                                       delete-share-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/share/{shareId}"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation delete-variant-store :shape-name
                                       "DeleteVariantStore" :input
                                       delete-variant-store-request :output
                                       delete-variant-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/variantStore/{name}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation delete-workflow :shape-name
                                       "DeleteWorkflow" :input
                                       delete-workflow-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/workflow/{id}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation delete-workflow-version :shape-name
                                       "DeleteWorkflowVersion" :input
                                       delete-workflow-version-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workflow/{workflowId}/version/{versionName}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation get-annotation-import-job :shape-name
                                       "GetAnnotationImportJob" :input
                                       get-annotation-import-request :output
                                       get-annotation-import-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/import/annotation/{jobId}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation get-annotation-store :shape-name
                                       "GetAnnotationStore" :input
                                       get-annotation-store-request :output
                                       get-annotation-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/annotationStore/{name}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation get-annotation-store-version :shape-name
                                       "GetAnnotationStoreVersion" :input
                                       get-annotation-store-version-request
                                       :output
                                       get-annotation-store-version-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/annotationStore/{name}/version/{versionName}"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation get-read-set :shape-name "GetReadSet"
                                       :input get-read-set-request :output
                                       get-read-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        range-not-satisfiable-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sequencestore/{sequenceStoreId}/readset/{id}"
                                       :endpoint-host-prefix "storage-")

(smithy/sdk/operation:define-operation get-read-set-activation-job :shape-name
                                       "GetReadSetActivationJob" :input
                                       get-read-set-activation-job-request
                                       :output
                                       get-read-set-activation-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sequencestore/{sequenceStoreId}/activationjob/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-read-set-export-job :shape-name
                                       "GetReadSetExportJob" :input
                                       get-read-set-export-job-request :output
                                       get-read-set-export-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sequencestore/{sequenceStoreId}/exportjob/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-read-set-import-job :shape-name
                                       "GetReadSetImportJob" :input
                                       get-read-set-import-job-request :output
                                       get-read-set-import-job-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sequencestore/{sequenceStoreId}/importjob/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-read-set-metadata :shape-name
                                       "GetReadSetMetadata" :input
                                       get-read-set-metadata-request :output
                                       get-read-set-metadata-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sequencestore/{sequenceStoreId}/readset/{id}/metadata"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-reference :shape-name "GetReference"
                                       :input get-reference-request :output
                                       get-reference-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        range-not-satisfiable-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/referencestore/{referenceStoreId}/reference/{id}"
                                       :endpoint-host-prefix "storage-")

(smithy/sdk/operation:define-operation get-reference-import-job :shape-name
                                       "GetReferenceImportJob" :input
                                       get-reference-import-job-request :output
                                       get-reference-import-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/referencestore/{referenceStoreId}/importjob/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-reference-metadata :shape-name
                                       "GetReferenceMetadata" :input
                                       get-reference-metadata-request :output
                                       get-reference-metadata-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/referencestore/{referenceStoreId}/reference/{id}/metadata"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-reference-store :shape-name
                                       "GetReferenceStore" :input
                                       get-reference-store-request :output
                                       get-reference-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/referencestore/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-run :shape-name "GetRun" :input
                                       get-run-request :output get-run-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/run/{id}" :code 200
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation get-run-cache :shape-name "GetRunCache"
                                       :input get-run-cache-request :output
                                       get-run-cache-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/runCache/{id}"
                                       :code 200 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation get-run-group :shape-name "GetRunGroup"
                                       :input get-run-group-request :output
                                       get-run-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/runGroup/{id}"
                                       :code 200 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation get-run-task :shape-name "GetRunTask"
                                       :input get-run-task-request :output
                                       get-run-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/run/{id}/task/{taskId}" :code 200
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation get-s3access-policy :shape-name
                                       "GetS3AccessPolicy" :input
                                       get-s3access-policy-request :output
                                       get-s3access-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/s3accesspolicy/{s3AccessPointArn}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-sequence-store :shape-name
                                       "GetSequenceStore" :input
                                       get-sequence-store-request :output
                                       get-sequence-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/sequencestore/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation get-share :shape-name "GetShare" :input
                                       get-share-request :output
                                       get-share-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/share/{shareId}"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation get-variant-import-job :shape-name
                                       "GetVariantImportJob" :input
                                       get-variant-import-request :output
                                       get-variant-import-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/import/variant/{jobId}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation get-variant-store :shape-name
                                       "GetVariantStore" :input
                                       get-variant-store-request :output
                                       get-variant-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/variantStore/{name}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation get-workflow :shape-name "GetWorkflow"
                                       :input get-workflow-request :output
                                       get-workflow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/workflow/{id}"
                                       :code 200 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation get-workflow-version :shape-name
                                       "GetWorkflowVersion" :input
                                       get-workflow-version-request :output
                                       get-workflow-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workflow/{workflowId}/version/{versionName}"
                                       :code 200 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation list-annotation-import-jobs :shape-name
                                       "ListAnnotationImportJobs" :input
                                       list-annotation-import-jobs-request
                                       :output
                                       list-annotation-import-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/import/annotations" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation list-annotation-store-versions
                                       :shape-name
                                       "ListAnnotationStoreVersions" :input
                                       list-annotation-store-versions-request
                                       :output
                                       list-annotation-store-versions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/annotationStore/{name}/versions" :code
                                       200 :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation list-annotation-stores :shape-name
                                       "ListAnnotationStores" :input
                                       list-annotation-stores-request :output
                                       list-annotation-stores-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/annotationStores"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation list-multipart-read-set-uploads
                                       :shape-name
                                       "ListMultipartReadSetUploads" :input
                                       list-multipart-read-set-uploads-request
                                       :output
                                       list-multipart-read-set-uploads-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/uploads"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-read-set-activation-jobs
                                       :shape-name "ListReadSetActivationJobs"
                                       :input
                                       list-read-set-activation-jobs-request
                                       :output
                                       list-read-set-activation-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/activationjobs"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-read-set-export-jobs :shape-name
                                       "ListReadSetExportJobs" :input
                                       list-read-set-export-jobs-request
                                       :output
                                       list-read-set-export-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/exportjobs"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-read-set-import-jobs :shape-name
                                       "ListReadSetImportJobs" :input
                                       list-read-set-import-jobs-request
                                       :output
                                       list-read-set-import-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/importjobs"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-read-set-upload-parts :shape-name
                                       "ListReadSetUploadParts" :input
                                       list-read-set-upload-parts-request
                                       :output
                                       list-read-set-upload-parts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/upload/{uploadId}/parts"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-read-sets :shape-name
                                       "ListReadSets" :input
                                       list-read-sets-request :output
                                       list-read-sets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/readsets"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-reference-import-jobs :shape-name
                                       "ListReferenceImportJobs" :input
                                       list-reference-import-jobs-request
                                       :output
                                       list-reference-import-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/referencestore/{referenceStoreId}/importjobs"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-reference-stores :shape-name
                                       "ListReferenceStores" :input
                                       list-reference-stores-request :output
                                       list-reference-stores-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/referencestores"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-references :shape-name
                                       "ListReferences" :input
                                       list-references-request :output
                                       list-references-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/referencestore/{referenceStoreId}/references"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-run-caches :shape-name
                                       "ListRunCaches" :input
                                       list-run-caches-request :output
                                       list-run-caches-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/runCache" :code 200
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation list-run-groups :shape-name
                                       "ListRunGroups" :input
                                       list-run-groups-request :output
                                       list-run-groups-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/runGroup" :code 200
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation list-run-tasks :shape-name
                                       "ListRunTasks" :input
                                       list-run-tasks-request :output
                                       list-run-tasks-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/run/{id}/task"
                                       :code 200 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation list-runs :shape-name "ListRuns" :input
                                       list-runs-request :output
                                       list-runs-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/run" :code 200
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation list-sequence-stores :shape-name
                                       "ListSequenceStores" :input
                                       list-sequence-stores-request :output
                                       list-sequence-stores-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sequencestores"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation list-shares :shape-name "ListShares"
                                       :input list-shares-request :output
                                       list-shares-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/shares" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200 :endpoint-host-prefix "tags-")

(smithy/sdk/operation:define-operation list-variant-import-jobs :shape-name
                                       "ListVariantImportJobs" :input
                                       list-variant-import-jobs-request :output
                                       list-variant-import-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/import/variants"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation list-variant-stores :shape-name
                                       "ListVariantStores" :input
                                       list-variant-stores-request :output
                                       list-variant-stores-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/variantStores"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation list-workflow-versions :shape-name
                                       "ListWorkflowVersions" :input
                                       list-workflow-versions-request :output
                                       list-workflow-versions-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workflow/{workflowId}/version" :code
                                       200 :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation list-workflows :shape-name
                                       "ListWorkflows" :input
                                       list-workflows-request :output
                                       list-workflows-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/workflow" :code 200
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation put-s3access-policy :shape-name
                                       "PutS3AccessPolicy" :input
                                       put-s3access-policy-request :output
                                       put-s3access-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/s3accesspolicy/{s3AccessPointArn}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation start-annotation-import-job :shape-name
                                       "StartAnnotationImportJob" :input
                                       start-annotation-import-request :output
                                       start-annotation-import-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/import/annotation"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation start-read-set-activation-job
                                       :shape-name "StartReadSetActivationJob"
                                       :input
                                       start-read-set-activation-job-request
                                       :output
                                       start-read-set-activation-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/activationjob"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation start-read-set-export-job :shape-name
                                       "StartReadSetExportJob" :input
                                       start-read-set-export-job-request
                                       :output
                                       start-read-set-export-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/exportjob"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation start-read-set-import-job :shape-name
                                       "StartReadSetImportJob" :input
                                       start-read-set-import-job-request
                                       :output
                                       start-read-set-import-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sequencestore/{sequenceStoreId}/importjob"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation start-reference-import-job :shape-name
                                       "StartReferenceImportJob" :input
                                       start-reference-import-job-request
                                       :output
                                       start-reference-import-job-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/referencestore/{referenceStoreId}/importjob"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation start-run :shape-name "StartRun" :input
                                       start-run-request :output
                                       start-run-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/run" :code 201
                                       :endpoint-host-prefix "workflows-")

(smithy/sdk/operation:define-operation start-variant-import-job :shape-name
                                       "StartVariantImportJob" :input
                                       start-variant-import-request :output
                                       start-variant-import-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/import/variant"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204
                                       :endpoint-host-prefix "tags-")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204
                                       :endpoint-host-prefix "tags-")

(smithy/sdk/operation:define-operation update-annotation-store :shape-name
                                       "UpdateAnnotationStore" :input
                                       update-annotation-store-request :output
                                       update-annotation-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/annotationStore/{name}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation update-annotation-store-version
                                       :shape-name
                                       "UpdateAnnotationStoreVersion" :input
                                       update-annotation-store-version-request
                                       :output
                                       update-annotation-store-version-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/annotationStore/{name}/version/{versionName}"
                                       :code 200 :endpoint-host-prefix
                                       "analytics-")

(smithy/sdk/operation:define-operation update-run-cache :shape-name
                                       "UpdateRunCache" :input
                                       update-run-cache-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/runCache/{id}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation update-run-group :shape-name
                                       "UpdateRunGroup" :input
                                       update-run-group-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/runGroup/{id}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation update-sequence-store :shape-name
                                       "UpdateSequenceStore" :input
                                       update-sequence-store-request :output
                                       update-sequence-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/sequencestore/{id}"
                                       :endpoint-host-prefix "control-storage-")

(smithy/sdk/operation:define-operation update-variant-store :shape-name
                                       "UpdateVariantStore" :input
                                       update-variant-store-request :output
                                       update-variant-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/variantStore/{name}" :code 200
                                       :endpoint-host-prefix "analytics-")

(smithy/sdk/operation:define-operation update-workflow :shape-name
                                       "UpdateWorkflow" :input
                                       update-workflow-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workflow/{id}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation update-workflow-version :shape-name
                                       "UpdateWorkflowVersion" :input
                                       update-workflow-version-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workflow/{workflowId}/version/{versionName}"
                                       :code 202 :endpoint-host-prefix
                                       "workflows-")

(smithy/sdk/operation:define-operation upload-read-set-part :shape-name
                                       "UploadReadSetPart" :input
                                       upload-read-set-part-request :output
                                       upload-read-set-part-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-supported-operation-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sequencestore/{sequenceStoreId}/upload/{uploadId}/part"
                                       :endpoint-host-prefix "storage-")
