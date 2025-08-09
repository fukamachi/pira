(uiop/package:define-package #:pira/workdocs (:use)
                             (:export #:awsgorilla-boy-service
                              #:abort-document-version-upload
                              #:abort-document-version-upload-request
                              #:activate-user #:activate-user-request
                              #:activate-user-response #:activity
                              #:activity-names-filter-type #:activity-type
                              #:add-resource-permissions
                              #:add-resource-permissions-request
                              #:add-resource-permissions-response
                              #:additional-response-field-type
                              #:additional-response-fields-list
                              #:authentication-header-type #:boolean-enum-type
                              #:boolean-type #:comment #:comment-id-type
                              #:comment-list #:comment-metadata
                              #:comment-status-type #:comment-text-type
                              #:comment-visibility-type
                              #:concurrent-modification-exception
                              #:conflicting-operation-exception
                              #:content-category-type #:create-comment
                              #:create-comment-request
                              #:create-comment-response
                              #:create-custom-metadata
                              #:create-custom-metadata-request
                              #:create-custom-metadata-response #:create-folder
                              #:create-folder-request #:create-folder-response
                              #:create-labels #:create-labels-request
                              #:create-labels-response
                              #:create-notification-subscription
                              #:create-notification-subscription-request
                              #:create-notification-subscription-response
                              #:create-user #:create-user-request
                              #:create-user-response #:custom-metadata-key-list
                              #:custom-metadata-key-type
                              #:custom-metadata-limit-exceeded-exception
                              #:custom-metadata-map
                              #:custom-metadata-value-type #:date-range-type
                              #:deactivate-user #:deactivate-user-request
                              #:deactivating-last-system-user-exception
                              #:delete-comment #:delete-comment-request
                              #:delete-custom-metadata
                              #:delete-custom-metadata-request
                              #:delete-custom-metadata-response
                              #:delete-document #:delete-document-request
                              #:delete-document-version
                              #:delete-document-version-request #:delete-folder
                              #:delete-folder-contents
                              #:delete-folder-contents-request
                              #:delete-folder-request #:delete-labels
                              #:delete-labels-request #:delete-labels-response
                              #:delete-notification-subscription
                              #:delete-notification-subscription-request
                              #:delete-user #:delete-user-request
                              #:describe-activities
                              #:describe-activities-request
                              #:describe-activities-response
                              #:describe-comments #:describe-comments-request
                              #:describe-comments-response
                              #:describe-document-versions
                              #:describe-document-versions-request
                              #:describe-document-versions-response
                              #:describe-folder-contents
                              #:describe-folder-contents-request
                              #:describe-folder-contents-response
                              #:describe-groups #:describe-groups-request
                              #:describe-groups-response
                              #:describe-notification-subscriptions
                              #:describe-notification-subscriptions-request
                              #:describe-notification-subscriptions-response
                              #:describe-resource-permissions
                              #:describe-resource-permissions-request
                              #:describe-resource-permissions-response
                              #:describe-root-folders
                              #:describe-root-folders-request
                              #:describe-root-folders-response #:describe-users
                              #:describe-users-request
                              #:describe-users-response #:document-content-type
                              #:document-locked-for-comments-exception
                              #:document-metadata #:document-metadata-list
                              #:document-source-type #:document-source-url-map
                              #:document-status-type #:document-thumbnail-type
                              #:document-thumbnail-url-map
                              #:document-version-id-type
                              #:document-version-metadata
                              #:document-version-metadata-list
                              #:document-version-status
                              #:draft-upload-out-of-sync-exception
                              #:email-address-type
                              #:entity-already-exists-exception
                              #:entity-id-list #:entity-not-exists-exception
                              #:error-message-type #:exception-code-type
                              #:failed-dependency-exception #:field-names-type
                              #:filters #:folder-content-type #:folder-metadata
                              #:folder-metadata-list #:get-current-user
                              #:get-current-user-request
                              #:get-current-user-response #:get-document
                              #:get-document-path #:get-document-path-request
                              #:get-document-path-response
                              #:get-document-request #:get-document-response
                              #:get-document-version
                              #:get-document-version-request
                              #:get-document-version-response #:get-folder
                              #:get-folder-path #:get-folder-path-request
                              #:get-folder-path-response #:get-folder-request
                              #:get-folder-response #:get-resources
                              #:get-resources-request #:get-resources-response
                              #:group-metadata #:group-metadata-list
                              #:group-name-type #:hash-type #:header-name-type
                              #:header-value-type #:id-type
                              #:illegal-user-state-exception
                              #:initiate-document-version-upload
                              #:initiate-document-version-upload-request
                              #:initiate-document-version-upload-response
                              #:invalid-argument-exception
                              #:invalid-comment-operation-exception
                              #:invalid-operation-exception
                              #:invalid-password-exception #:language-code-type
                              #:limit-exceeded-exception #:limit-type
                              #:locale-type #:long-range-type #:long-type
                              #:marker-type #:message-type #:next-marker-type
                              #:notification-options #:order-by-field-type
                              #:order-type #:organization-user-list
                              #:page-marker-type #:participants #:password-type
                              #:permission-info #:permission-info-list
                              #:positive-integer-type #:positive-size-type
                              #:principal #:principal-list
                              #:principal-role-type #:principal-type
                              #:prohibited-state-exception
                              #:remove-all-resource-permissions
                              #:remove-all-resource-permissions-request
                              #:remove-resource-permission
                              #:remove-resource-permission-request
                              #:requested-entity-too-large-exception
                              #:resource-already-checked-out-exception
                              #:resource-collection-type #:resource-id-type
                              #:resource-metadata #:resource-name-type
                              #:resource-path #:resource-path-component
                              #:resource-path-component-list
                              #:resource-sort-type #:resource-state-type
                              #:resource-type #:response-item
                              #:response-item-type #:response-item-web-url
                              #:response-items-list #:restore-document-versions
                              #:restore-document-versions-request
                              #:role-permission-type #:role-type
                              #:search-ancestor-id #:search-ancestor-id-list
                              #:search-collection-type
                              #:search-collection-type-list
                              #:search-content-category-type-list
                              #:search-label #:search-label-list
                              #:search-marker-type #:search-principal-role-list
                              #:search-principal-type
                              #:search-principal-type-list
                              #:search-query-scope-type
                              #:search-query-scope-type-list
                              #:search-query-type #:search-resource-type
                              #:search-resource-type-list #:search-resources
                              #:search-resources-request
                              #:search-resources-response
                              #:search-result-sort-list
                              #:search-results-limit-type #:search-sort-result
                              #:service-unavailable-exception #:share-principal
                              #:share-principal-list #:share-result
                              #:share-results-list #:share-status-type
                              #:shared-label #:shared-labels
                              #:signed-header-map #:size-type #:sort-order
                              #:storage-limit-exceeded-exception
                              #:storage-limit-will-exceed-exception
                              #:storage-rule-type #:storage-type #:subscription
                              #:subscription-end-point-type #:subscription-list
                              #:subscription-protocol-type #:subscription-type
                              #:text-locale-type-list #:time-zone-id-type
                              #:timestamp-type #:too-many-labels-exception
                              #:too-many-subscriptions-exception
                              #:unauthorized-operation-exception
                              #:unauthorized-resource-access-exception
                              #:update-document #:update-document-request
                              #:update-document-version
                              #:update-document-version-request #:update-folder
                              #:update-folder-request #:update-user
                              #:update-user-request #:update-user-response
                              #:upload-metadata #:url-type #:user
                              #:user-activities #:user-attribute-value-type
                              #:user-filter-type #:user-ids-type
                              #:user-metadata #:user-metadata-list
                              #:user-sort-type #:user-status-type
                              #:user-storage-metadata #:user-type
                              #:username-type))
(common-lisp:in-package #:pira/workdocs)

(smithy/sdk/service:define-service awsgorilla-boy-service :shape-name
                                   "AWSGorillaBoyService" :version "2016-05-01"
                                   :title "Amazon WorkDocs" :xml-namespace
                                   '(:uri "https://aws.amazon.com/api/v1/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "WorkDocs")
                                      ("arnNamespace" . "workdocs")
                                      ("cloudFormationName" . "WorkDocs")
                                      ("cloudTrailEventSource"
                                       . "workdocs.amazonaws.com")
                                      ("endpointPrefix" . "workdocs"))
                                     ("aws.auth#sigv4" ("name" . "workdocs"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input abort-document-version-upload-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "AbortDocumentVersionUploadRequest"))

(smithy/sdk/shapes:define-input activate-user-request common-lisp:nil
                                ((user-id :target-type id-type :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t)
                                 (authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication"))
                                (:shape-name "ActivateUserRequest"))

(smithy/sdk/shapes:define-output activate-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "ActivateUserResponse"))

(smithy/sdk/shapes:define-structure activity common-lisp:nil
                                    ((type :target-type activity-type
                                      :member-name "Type")
                                     (time-stamp :target-type timestamp-type
                                      :member-name "TimeStamp")
                                     (is-indirect-activity :target-type
                                      boolean-type :member-name
                                      "IsIndirectActivity")
                                     (organization-id :target-type id-type
                                      :member-name "OrganizationId")
                                     (initiator :target-type user-metadata
                                      :member-name "Initiator")
                                     (participants :target-type participants
                                      :member-name "Participants")
                                     (resource-metadata :target-type
                                      resource-metadata :member-name
                                      "ResourceMetadata")
                                     (original-parent :target-type
                                      resource-metadata :member-name
                                      "OriginalParent")
                                     (comment-metadata :target-type
                                      comment-metadata :member-name
                                      "CommentMetadata"))
                                    (:shape-name "Activity"))

(smithy/sdk/shapes:define-type activity-names-filter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum activity-type
    common-lisp:nil
  (:document-checked-in "DOCUMENT_CHECKED_IN")
  (:document-checked-out "DOCUMENT_CHECKED_OUT")
  (:document-renamed "DOCUMENT_RENAMED")
  (:document-version-uploaded "DOCUMENT_VERSION_UPLOADED")
  (:document-version-deleted "DOCUMENT_VERSION_DELETED")
  (:document-version-viewed "DOCUMENT_VERSION_VIEWED")
  (:document-version-downloaded "DOCUMENT_VERSION_DOWNLOADED")
  (:document-recycled "DOCUMENT_RECYCLED")
  (:document-restored "DOCUMENT_RESTORED")
  (:document-reverted "DOCUMENT_REVERTED")
  (:document-shared "DOCUMENT_SHARED")
  (:document-unshared "DOCUMENT_UNSHARED")
  (:document-share-permission-changed "DOCUMENT_SHARE_PERMISSION_CHANGED")
  (:document-shareable-link-created "DOCUMENT_SHAREABLE_LINK_CREATED")
  (:document-shareable-link-removed "DOCUMENT_SHAREABLE_LINK_REMOVED")
  (:document-shareable-link-permission-changed
   "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED")
  (:document-moved "DOCUMENT_MOVED")
  (:document-comment-added "DOCUMENT_COMMENT_ADDED")
  (:document-comment-deleted "DOCUMENT_COMMENT_DELETED")
  (:document-annotation-added "DOCUMENT_ANNOTATION_ADDED")
  (:document-annotation-deleted "DOCUMENT_ANNOTATION_DELETED")
  (:folder-created "FOLDER_CREATED")
  (:folder-deleted "FOLDER_DELETED")
  (:folder-renamed "FOLDER_RENAMED")
  (:folder-recycled "FOLDER_RECYCLED")
  (:folder-restored "FOLDER_RESTORED")
  (:folder-shared "FOLDER_SHARED")
  (:folder-unshared "FOLDER_UNSHARED")
  (:folder-share-permission-changed "FOLDER_SHARE_PERMISSION_CHANGED")
  (:folder-shareable-link-created "FOLDER_SHAREABLE_LINK_CREATED")
  (:folder-shareable-link-removed "FOLDER_SHAREABLE_LINK_REMOVED")
  (:folder-shareable-link-permission-changed
   "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED")
  (:folder-moved "FOLDER_MOVED"))

(smithy/sdk/shapes:define-input add-resource-permissions-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (principals :target-type share-principal-list
                                  :required common-lisp:t :member-name
                                  "Principals")
                                 (notification-options :target-type
                                  notification-options :member-name
                                  "NotificationOptions"))
                                (:shape-name "AddResourcePermissionsRequest"))

(smithy/sdk/shapes:define-output add-resource-permissions-response
                                 common-lisp:nil
                                 ((share-results :target-type
                                   share-results-list :member-name
                                   "ShareResults"))
                                 (:shape-name "AddResourcePermissionsResponse"))

(smithy/sdk/shapes:define-enum additional-response-field-type
    common-lisp:nil
  (:weburl "WEBURL"))

(smithy/sdk/shapes:define-list additional-response-fields-list :member
                               additional-response-field-type)

(smithy/sdk/shapes:define-type authentication-header-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum boolean-enum-type
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE"))

(smithy/sdk/shapes:define-type boolean-type smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure comment common-lisp:nil
                                    ((comment-id :target-type comment-id-type
                                      :required common-lisp:t :member-name
                                      "CommentId")
                                     (parent-id :target-type comment-id-type
                                      :member-name "ParentId")
                                     (thread-id :target-type comment-id-type
                                      :member-name "ThreadId")
                                     (text :target-type comment-text-type
                                      :member-name "Text")
                                     (contributor :target-type user
                                      :member-name "Contributor")
                                     (created-timestamp :target-type
                                      timestamp-type :member-name
                                      "CreatedTimestamp")
                                     (status :target-type comment-status-type
                                      :member-name "Status")
                                     (visibility :target-type
                                      comment-visibility-type :member-name
                                      "Visibility")
                                     (recipient-id :target-type id-type
                                      :member-name "RecipientId"))
                                    (:shape-name "Comment"))

(smithy/sdk/shapes:define-type comment-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list comment-list :member comment)

(smithy/sdk/shapes:define-structure comment-metadata common-lisp:nil
                                    ((comment-id :target-type comment-id-type
                                      :member-name "CommentId")
                                     (contributor :target-type user
                                      :member-name "Contributor")
                                     (created-timestamp :target-type
                                      timestamp-type :member-name
                                      "CreatedTimestamp")
                                     (comment-status :target-type
                                      comment-status-type :member-name
                                      "CommentStatus")
                                     (recipient-id :target-type id-type
                                      :member-name "RecipientId")
                                     (contributor-id :target-type id-type
                                      :member-name "ContributorId"))
                                    (:shape-name "CommentMetadata"))

(smithy/sdk/shapes:define-enum comment-status-type
    common-lisp:nil
  (:draft "DRAFT")
  (:published "PUBLISHED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type comment-text-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum comment-visibility-type
    common-lisp:nil
  (:public "PUBLIC")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conflicting-operation-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "ConflictingOperationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum content-category-type
    common-lisp:nil
  (:image "IMAGE")
  (:document "DOCUMENT")
  (:pdf "PDF")
  (:spreadsheet "SPREADSHEET")
  (:presentation "PRESENTATION")
  (:audio "AUDIO")
  (:video "VIDEO")
  (:source-code "SOURCE_CODE")
  (:other "OTHER"))

(smithy/sdk/shapes:define-input create-comment-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t)
                                 (parent-id :target-type comment-id-type
                                  :member-name "ParentId")
                                 (thread-id :target-type comment-id-type
                                  :member-name "ThreadId")
                                 (text :target-type comment-text-type :required
                                  common-lisp:t :member-name "Text")
                                 (visibility :target-type
                                  comment-visibility-type :member-name
                                  "Visibility")
                                 (notify-collaborators :target-type
                                  boolean-type :member-name
                                  "NotifyCollaborators"))
                                (:shape-name "CreateCommentRequest"))

(smithy/sdk/shapes:define-output create-comment-response common-lisp:nil
                                 ((comment :target-type comment :member-name
                                   "Comment"))
                                 (:shape-name "CreateCommentResponse"))

(smithy/sdk/shapes:define-input create-custom-metadata-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :member-name
                                  "VersionId" :http-query "versionid")
                                 (custom-metadata :target-type
                                  custom-metadata-map :required common-lisp:t
                                  :member-name "CustomMetadata"))
                                (:shape-name "CreateCustomMetadataRequest"))

(smithy/sdk/shapes:define-output create-custom-metadata-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateCustomMetadataResponse"))

(smithy/sdk/shapes:define-input create-folder-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (name :target-type resource-name-type
                                  :member-name "Name")
                                 (parent-folder-id :target-type
                                  resource-id-type :required common-lisp:t
                                  :member-name "ParentFolderId"))
                                (:shape-name "CreateFolderRequest"))

(smithy/sdk/shapes:define-output create-folder-response common-lisp:nil
                                 ((metadata :target-type folder-metadata
                                   :member-name "Metadata"))
                                 (:shape-name "CreateFolderResponse"))

(smithy/sdk/shapes:define-input create-labels-request common-lisp:nil
                                ((resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (labels :target-type shared-labels :required
                                  common-lisp:t :member-name "Labels")
                                 (authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication"))
                                (:shape-name "CreateLabelsRequest"))

(smithy/sdk/shapes:define-output create-labels-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateLabelsResponse"))

(smithy/sdk/shapes:define-input create-notification-subscription-request
                                common-lisp:nil
                                ((organization-id :target-type id-type
                                  :required common-lisp:t :member-name
                                  "OrganizationId" :http-label common-lisp:t)
                                 (endpoint :target-type
                                  subscription-end-point-type :required
                                  common-lisp:t :member-name "Endpoint")
                                 (protocol :target-type
                                  subscription-protocol-type :required
                                  common-lisp:t :member-name "Protocol")
                                 (subscription-type :target-type
                                  subscription-type :required common-lisp:t
                                  :member-name "SubscriptionType"))
                                (:shape-name
                                 "CreateNotificationSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-notification-subscription-response
                                 common-lisp:nil
                                 ((subscription :target-type subscription
                                   :member-name "Subscription"))
                                 (:shape-name
                                  "CreateNotificationSubscriptionResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((organization-id :target-type id-type
                                  :member-name "OrganizationId")
                                 (username :target-type username-type :required
                                  common-lisp:t :member-name "Username")
                                 (email-address :target-type email-address-type
                                  :member-name "EmailAddress")
                                 (given-name :target-type
                                  user-attribute-value-type :required
                                  common-lisp:t :member-name "GivenName")
                                 (surname :target-type
                                  user-attribute-value-type :required
                                  common-lisp:t :member-name "Surname")
                                 (password :target-type password-type :required
                                  common-lisp:t :member-name "Password")
                                 (time-zone-id :target-type time-zone-id-type
                                  :member-name "TimeZoneId")
                                 (storage-rule :target-type storage-rule-type
                                  :member-name "StorageRule")
                                 (authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-list custom-metadata-key-list :member
                               custom-metadata-key-type)

(smithy/sdk/shapes:define-type custom-metadata-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error custom-metadata-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name
                                 "CustomMetadataLimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-map custom-metadata-map :key custom-metadata-key-type
                              :value custom-metadata-value-type)

(smithy/sdk/shapes:define-type custom-metadata-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure date-range-type common-lisp:nil
                                    ((start-value :target-type timestamp-type
                                      :member-name "StartValue")
                                     (end-value :target-type timestamp-type
                                      :member-name "EndValue"))
                                    (:shape-name "DateRangeType"))

(smithy/sdk/shapes:define-input deactivate-user-request common-lisp:nil
                                ((user-id :target-type id-type :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t)
                                 (authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication"))
                                (:shape-name "DeactivateUserRequest"))

(smithy/sdk/shapes:define-error deactivating-last-system-user-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message")
                                 (code :target-type exception-code-type
                                  :member-name "Code"))
                                (:shape-name
                                 "DeactivatingLastSystemUserException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input delete-comment-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t)
                                 (comment-id :target-type comment-id-type
                                  :required common-lisp:t :member-name
                                  "CommentId" :http-label common-lisp:t))
                                (:shape-name "DeleteCommentRequest"))

(smithy/sdk/shapes:define-input delete-custom-metadata-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :member-name
                                  "VersionId" :http-query "versionId")
                                 (keys :target-type custom-metadata-key-list
                                  :member-name "Keys" :http-query "keys")
                                 (delete-all :target-type boolean-type
                                  :member-name "DeleteAll" :http-query
                                  "deleteAll"))
                                (:shape-name "DeleteCustomMetadataRequest"))

(smithy/sdk/shapes:define-output delete-custom-metadata-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCustomMetadataResponse"))

(smithy/sdk/shapes:define-input delete-document-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t))
                                (:shape-name "DeleteDocumentRequest"))

(smithy/sdk/shapes:define-input delete-document-version-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t)
                                 (delete-prior-versions :target-type
                                  boolean-type :required common-lisp:t
                                  :member-name "DeletePriorVersions"
                                  :http-query "deletePriorVersions"))
                                (:shape-name "DeleteDocumentVersionRequest"))

(smithy/sdk/shapes:define-input delete-folder-contents-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (folder-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "FolderId" :http-label common-lisp:t))
                                (:shape-name "DeleteFolderContentsRequest"))

(smithy/sdk/shapes:define-input delete-folder-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (folder-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "FolderId" :http-label common-lisp:t))
                                (:shape-name "DeleteFolderRequest"))

(smithy/sdk/shapes:define-input delete-labels-request common-lisp:nil
                                ((resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (labels :target-type shared-labels
                                  :member-name "Labels" :http-query "labels")
                                 (delete-all :target-type boolean-type
                                  :member-name "DeleteAll" :http-query
                                  "deleteAll"))
                                (:shape-name "DeleteLabelsRequest"))

(smithy/sdk/shapes:define-output delete-labels-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLabelsResponse"))

(smithy/sdk/shapes:define-input delete-notification-subscription-request
                                common-lisp:nil
                                ((subscription-id :target-type id-type
                                  :required common-lisp:t :member-name
                                  "SubscriptionId" :http-label common-lisp:t)
                                 (organization-id :target-type id-type
                                  :required common-lisp:t :member-name
                                  "OrganizationId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteNotificationSubscriptionRequest"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (user-id :target-type id-type :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-input describe-activities-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (start-time :target-type timestamp-type
                                  :member-name "StartTime" :http-query
                                  "startTime")
                                 (end-time :target-type timestamp-type
                                  :member-name "EndTime" :http-query "endTime")
                                 (organization-id :target-type id-type
                                  :member-name "OrganizationId" :http-query
                                  "organizationId")
                                 (activity-types :target-type
                                  activity-names-filter-type :member-name
                                  "ActivityTypes" :http-query "activityTypes")
                                 (resource-id :target-type id-type :member-name
                                  "ResourceId" :http-query "resourceId")
                                 (user-id :target-type id-type :member-name
                                  "UserId" :http-query "userId")
                                 (include-indirect-activities :target-type
                                  boolean-type :member-name
                                  "IncludeIndirectActivities" :http-query
                                  "includeIndirectActivities")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (marker :target-type search-marker-type
                                  :member-name "Marker" :http-query "marker"))
                                (:shape-name "DescribeActivitiesRequest"))

(smithy/sdk/shapes:define-output describe-activities-response common-lisp:nil
                                 ((user-activities :target-type user-activities
                                   :member-name "UserActivities")
                                  (marker :target-type search-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "DescribeActivitiesResponse"))

(smithy/sdk/shapes:define-input describe-comments-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t)
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (marker :target-type marker-type :member-name
                                  "Marker" :http-query "marker"))
                                (:shape-name "DescribeCommentsRequest"))

(smithy/sdk/shapes:define-output describe-comments-response common-lisp:nil
                                 ((comments :target-type comment-list
                                   :member-name "Comments")
                                  (marker :target-type marker-type :member-name
                                   "Marker"))
                                 (:shape-name "DescribeCommentsResponse"))

(smithy/sdk/shapes:define-input describe-document-versions-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (include :target-type field-names-type
                                  :member-name "Include" :http-query "include")
                                 (fields :target-type field-names-type
                                  :member-name "Fields" :http-query "fields"))
                                (:shape-name "DescribeDocumentVersionsRequest"))

(smithy/sdk/shapes:define-output describe-document-versions-response
                                 common-lisp:nil
                                 ((document-versions :target-type
                                   document-version-metadata-list :member-name
                                   "DocumentVersions")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "DescribeDocumentVersionsResponse"))

(smithy/sdk/shapes:define-input describe-folder-contents-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (folder-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "FolderId" :http-label common-lisp:t)
                                 (sort :target-type resource-sort-type
                                  :member-name "Sort" :http-query "sort")
                                 (order :target-type order-type :member-name
                                  "Order" :http-query "order")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker")
                                 (type :target-type folder-content-type
                                  :member-name "Type" :http-query "type")
                                 (include :target-type field-names-type
                                  :member-name "Include" :http-query
                                  "include"))
                                (:shape-name "DescribeFolderContentsRequest"))

(smithy/sdk/shapes:define-output describe-folder-contents-response
                                 common-lisp:nil
                                 ((folders :target-type folder-metadata-list
                                   :member-name "Folders")
                                  (documents :target-type
                                   document-metadata-list :member-name
                                   "Documents")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "DescribeFolderContentsResponse"))

(smithy/sdk/shapes:define-input describe-groups-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (search-query :target-type search-query-type
                                  :required common-lisp:t :member-name
                                  "SearchQuery" :http-query "searchQuery")
                                 (organization-id :target-type id-type
                                  :member-name "OrganizationId" :http-query
                                  "organizationId")
                                 (marker :target-type marker-type :member-name
                                  "Marker" :http-query "marker")
                                 (limit :target-type positive-integer-type
                                  :member-name "Limit" :http-query "limit"))
                                (:shape-name "DescribeGroupsRequest"))

(smithy/sdk/shapes:define-output describe-groups-response common-lisp:nil
                                 ((groups :target-type group-metadata-list
                                   :member-name "Groups")
                                  (marker :target-type marker-type :member-name
                                   "Marker"))
                                 (:shape-name "DescribeGroupsResponse"))

(smithy/sdk/shapes:define-input describe-notification-subscriptions-request
                                common-lisp:nil
                                ((organization-id :target-type id-type
                                  :required common-lisp:t :member-name
                                  "OrganizationId" :http-label common-lisp:t)
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit"))
                                (:shape-name
                                 "DescribeNotificationSubscriptionsRequest"))

(smithy/sdk/shapes:define-output describe-notification-subscriptions-response
                                 common-lisp:nil
                                 ((subscriptions :target-type subscription-list
                                   :member-name "Subscriptions")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "DescribeNotificationSubscriptionsResponse"))

(smithy/sdk/shapes:define-input describe-resource-permissions-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (principal-id :target-type id-type
                                  :member-name "PrincipalId" :http-query
                                  "principalId")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker"))
                                (:shape-name
                                 "DescribeResourcePermissionsRequest"))

(smithy/sdk/shapes:define-output describe-resource-permissions-response
                                 common-lisp:nil
                                 ((principals :target-type principal-list
                                   :member-name "Principals")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name
                                  "DescribeResourcePermissionsResponse"))

(smithy/sdk/shapes:define-input describe-root-folders-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker"))
                                (:shape-name "DescribeRootFoldersRequest"))

(smithy/sdk/shapes:define-output describe-root-folders-response common-lisp:nil
                                 ((folders :target-type folder-metadata-list
                                   :member-name "Folders")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "DescribeRootFoldersResponse"))

(smithy/sdk/shapes:define-input describe-users-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (organization-id :target-type id-type
                                  :member-name "OrganizationId" :http-query
                                  "organizationId")
                                 (user-ids :target-type user-ids-type
                                  :member-name "UserIds" :http-query "userIds")
                                 (query :target-type search-query-type
                                  :member-name "Query" :http-query "query")
                                 (include :target-type user-filter-type
                                  :member-name "Include" :http-query "include")
                                 (order :target-type order-type :member-name
                                  "Order" :http-query "order")
                                 (sort :target-type user-sort-type :member-name
                                  "Sort" :http-query "sort")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (fields :target-type field-names-type
                                  :member-name "Fields" :http-query "fields"))
                                (:shape-name "DescribeUsersRequest"))

(smithy/sdk/shapes:define-output describe-users-response common-lisp:nil
                                 ((users :target-type organization-user-list
                                   :member-name "Users")
                                  (total-number-of-users :target-type size-type
                                   :member-name "TotalNumberOfUsers")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "DescribeUsersResponse"))

(smithy/sdk/shapes:define-type document-content-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error document-locked-for-comments-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name
                                 "DocumentLockedForCommentsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure document-metadata common-lisp:nil
                                    ((id :target-type resource-id-type
                                      :member-name "Id")
                                     (creator-id :target-type id-type
                                      :member-name "CreatorId")
                                     (parent-folder-id :target-type
                                      resource-id-type :member-name
                                      "ParentFolderId")
                                     (created-timestamp :target-type
                                      timestamp-type :member-name
                                      "CreatedTimestamp")
                                     (modified-timestamp :target-type
                                      timestamp-type :member-name
                                      "ModifiedTimestamp")
                                     (latest-version-metadata :target-type
                                      document-version-metadata :member-name
                                      "LatestVersionMetadata")
                                     (resource-state :target-type
                                      resource-state-type :member-name
                                      "ResourceState")
                                     (labels :target-type shared-labels
                                      :member-name "Labels"))
                                    (:shape-name "DocumentMetadata"))

(smithy/sdk/shapes:define-list document-metadata-list :member document-metadata)

(smithy/sdk/shapes:define-enum document-source-type
    common-lisp:nil
  (:original "ORIGINAL")
  (:with-comments "WITH_COMMENTS"))

(smithy/sdk/shapes:define-map document-source-url-map :key document-source-type
                              :value url-type)

(smithy/sdk/shapes:define-enum document-status-type
    common-lisp:nil
  (:initialized "INITIALIZED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-enum document-thumbnail-type
    common-lisp:nil
  (:small "SMALL")
  (:small-hq "SMALL_HQ")
  (:large "LARGE"))

(smithy/sdk/shapes:define-map document-thumbnail-url-map :key
                              document-thumbnail-type :value url-type)

(smithy/sdk/shapes:define-type document-version-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document-version-metadata common-lisp:nil
                                    ((id :target-type document-version-id-type
                                      :member-name "Id")
                                     (name :target-type resource-name-type
                                      :member-name "Name")
                                     (content-type :target-type
                                      document-content-type :member-name
                                      "ContentType")
                                     (size :target-type size-type :member-name
                                      "Size")
                                     (signature :target-type hash-type
                                      :member-name "Signature")
                                     (status :target-type document-status-type
                                      :member-name "Status")
                                     (created-timestamp :target-type
                                      timestamp-type :member-name
                                      "CreatedTimestamp")
                                     (modified-timestamp :target-type
                                      timestamp-type :member-name
                                      "ModifiedTimestamp")
                                     (content-created-timestamp :target-type
                                      timestamp-type :member-name
                                      "ContentCreatedTimestamp")
                                     (content-modified-timestamp :target-type
                                      timestamp-type :member-name
                                      "ContentModifiedTimestamp")
                                     (creator-id :target-type id-type
                                      :member-name "CreatorId")
                                     (thumbnail :target-type
                                      document-thumbnail-url-map :member-name
                                      "Thumbnail")
                                     (source :target-type
                                      document-source-url-map :member-name
                                      "Source"))
                                    (:shape-name "DocumentVersionMetadata"))

(smithy/sdk/shapes:define-list document-version-metadata-list :member
                               document-version-metadata)

(smithy/sdk/shapes:define-enum document-version-status
    common-lisp:nil
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-error draft-upload-out-of-sync-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "DraftUploadOutOfSyncException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type email-address-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error entity-already-exists-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "EntityAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-list entity-id-list :member id-type)

(smithy/sdk/shapes:define-error entity-not-exists-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message")
                                 (entity-ids :target-type entity-id-list
                                  :member-name "EntityIds"))
                                (:shape-name "EntityNotExistsException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type error-message-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-code-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error failed-dependency-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "FailedDependencyException")
                                (:error-code 424))

(smithy/sdk/shapes:define-type field-names-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filters common-lisp:nil
                                    ((text-locales :target-type
                                      text-locale-type-list :member-name
                                      "TextLocales")
                                     (content-categories :target-type
                                      search-content-category-type-list
                                      :member-name "ContentCategories")
                                     (resource-types :target-type
                                      search-resource-type-list :member-name
                                      "ResourceTypes")
                                     (labels :target-type search-label-list
                                      :member-name "Labels")
                                     (principals :target-type
                                      search-principal-type-list :member-name
                                      "Principals")
                                     (ancestor-ids :target-type
                                      search-ancestor-id-list :member-name
                                      "AncestorIds")
                                     (search-collection-types :target-type
                                      search-collection-type-list :member-name
                                      "SearchCollectionTypes")
                                     (size-range :target-type long-range-type
                                      :member-name "SizeRange")
                                     (created-range :target-type
                                      date-range-type :member-name
                                      "CreatedRange")
                                     (modified-range :target-type
                                      date-range-type :member-name
                                      "ModifiedRange"))
                                    (:shape-name "Filters"))

(smithy/sdk/shapes:define-enum folder-content-type
    common-lisp:nil
  (:all "ALL")
  (:document "DOCUMENT")
  (:folder "FOLDER"))

(smithy/sdk/shapes:define-structure folder-metadata common-lisp:nil
                                    ((id :target-type resource-id-type
                                      :member-name "Id")
                                     (name :target-type resource-name-type
                                      :member-name "Name")
                                     (creator-id :target-type id-type
                                      :member-name "CreatorId")
                                     (parent-folder-id :target-type
                                      resource-id-type :member-name
                                      "ParentFolderId")
                                     (created-timestamp :target-type
                                      timestamp-type :member-name
                                      "CreatedTimestamp")
                                     (modified-timestamp :target-type
                                      timestamp-type :member-name
                                      "ModifiedTimestamp")
                                     (resource-state :target-type
                                      resource-state-type :member-name
                                      "ResourceState")
                                     (signature :target-type hash-type
                                      :member-name "Signature")
                                     (labels :target-type shared-labels
                                      :member-name "Labels")
                                     (size :target-type size-type :member-name
                                      "Size")
                                     (latest-version-size :target-type
                                      size-type :member-name
                                      "LatestVersionSize"))
                                    (:shape-name "FolderMetadata"))

(smithy/sdk/shapes:define-list folder-metadata-list :member folder-metadata)

(smithy/sdk/shapes:define-input get-current-user-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :required
                                  common-lisp:t :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication"))
                                (:shape-name "GetCurrentUserRequest"))

(smithy/sdk/shapes:define-output get-current-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "GetCurrentUserResponse"))

(smithy/sdk/shapes:define-input get-document-path-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type id-type :required
                                  common-lisp:t :member-name "DocumentId"
                                  :http-label common-lisp:t)
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (fields :target-type field-names-type
                                  :member-name "Fields" :http-query "fields")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker"))
                                (:shape-name "GetDocumentPathRequest"))

(smithy/sdk/shapes:define-output get-document-path-response common-lisp:nil
                                 ((path :target-type resource-path :member-name
                                   "Path"))
                                 (:shape-name "GetDocumentPathResponse"))

(smithy/sdk/shapes:define-input get-document-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (include-custom-metadata :target-type
                                  boolean-type :member-name
                                  "IncludeCustomMetadata" :http-query
                                  "includeCustomMetadata"))
                                (:shape-name "GetDocumentRequest"))

(smithy/sdk/shapes:define-output get-document-response common-lisp:nil
                                 ((metadata :target-type document-metadata
                                   :member-name "Metadata")
                                  (custom-metadata :target-type
                                   custom-metadata-map :member-name
                                   "CustomMetadata"))
                                 (:shape-name "GetDocumentResponse"))

(smithy/sdk/shapes:define-input get-document-version-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t)
                                 (fields :target-type field-names-type
                                  :member-name "Fields" :http-query "fields")
                                 (include-custom-metadata :target-type
                                  boolean-type :member-name
                                  "IncludeCustomMetadata" :http-query
                                  "includeCustomMetadata"))
                                (:shape-name "GetDocumentVersionRequest"))

(smithy/sdk/shapes:define-output get-document-version-response common-lisp:nil
                                 ((metadata :target-type
                                   document-version-metadata :member-name
                                   "Metadata")
                                  (custom-metadata :target-type
                                   custom-metadata-map :member-name
                                   "CustomMetadata"))
                                 (:shape-name "GetDocumentVersionResponse"))

(smithy/sdk/shapes:define-input get-folder-path-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (folder-id :target-type id-type :required
                                  common-lisp:t :member-name "FolderId"
                                  :http-label common-lisp:t)
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (fields :target-type field-names-type
                                  :member-name "Fields" :http-query "fields")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker"))
                                (:shape-name "GetFolderPathRequest"))

(smithy/sdk/shapes:define-output get-folder-path-response common-lisp:nil
                                 ((path :target-type resource-path :member-name
                                   "Path"))
                                 (:shape-name "GetFolderPathResponse"))

(smithy/sdk/shapes:define-input get-folder-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (folder-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "FolderId" :http-label common-lisp:t)
                                 (include-custom-metadata :target-type
                                  boolean-type :member-name
                                  "IncludeCustomMetadata" :http-query
                                  "includeCustomMetadata"))
                                (:shape-name "GetFolderRequest"))

(smithy/sdk/shapes:define-output get-folder-response common-lisp:nil
                                 ((metadata :target-type folder-metadata
                                   :member-name "Metadata")
                                  (custom-metadata :target-type
                                   custom-metadata-map :member-name
                                   "CustomMetadata"))
                                 (:shape-name "GetFolderResponse"))

(smithy/sdk/shapes:define-input get-resources-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (user-id :target-type id-type :member-name
                                  "UserId" :http-query "userId")
                                 (collection-type :target-type
                                  resource-collection-type :member-name
                                  "CollectionType" :http-query
                                  "collectionType")
                                 (limit :target-type limit-type :member-name
                                  "Limit" :http-query "limit")
                                 (marker :target-type page-marker-type
                                  :member-name "Marker" :http-query "marker"))
                                (:shape-name "GetResourcesRequest"))

(smithy/sdk/shapes:define-output get-resources-response common-lisp:nil
                                 ((folders :target-type folder-metadata-list
                                   :member-name "Folders")
                                  (documents :target-type
                                   document-metadata-list :member-name
                                   "Documents")
                                  (marker :target-type page-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "GetResourcesResponse"))

(smithy/sdk/shapes:define-structure group-metadata common-lisp:nil
                                    ((id :target-type id-type :member-name
                                      "Id")
                                     (name :target-type group-name-type
                                      :member-name "Name"))
                                    (:shape-name "GroupMetadata"))

(smithy/sdk/shapes:define-list group-metadata-list :member group-metadata)

(smithy/sdk/shapes:define-type group-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hash-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-name-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-value-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error illegal-user-state-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "IllegalUserStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input initiate-document-version-upload-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (id :target-type resource-id-type :member-name
                                  "Id")
                                 (name :target-type resource-name-type
                                  :member-name "Name")
                                 (content-created-timestamp :target-type
                                  timestamp-type :member-name
                                  "ContentCreatedTimestamp")
                                 (content-modified-timestamp :target-type
                                  timestamp-type :member-name
                                  "ContentModifiedTimestamp")
                                 (content-type :target-type
                                  document-content-type :member-name
                                  "ContentType")
                                 (document-size-in-bytes :target-type size-type
                                  :member-name "DocumentSizeInBytes")
                                 (parent-folder-id :target-type
                                  resource-id-type :member-name
                                  "ParentFolderId"))
                                (:shape-name
                                 "InitiateDocumentVersionUploadRequest"))

(smithy/sdk/shapes:define-output initiate-document-version-upload-response
                                 common-lisp:nil
                                 ((metadata :target-type document-metadata
                                   :member-name "Metadata")
                                  (upload-metadata :target-type upload-metadata
                                   :member-name "UploadMetadata"))
                                 (:shape-name
                                  "InitiateDocumentVersionUploadResponse"))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-comment-operation-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidCommentOperationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 405))

(smithy/sdk/shapes:define-error invalid-password-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "InvalidPasswordException")
                                (:error-code 401))

(smithy/sdk/shapes:define-enum language-code-type
    common-lisp:nil
  (:ar "AR")
  (:bg "BG")
  (:bn "BN")
  (:da "DA")
  (:de "DE")
  (:cs "CS")
  (:el "EL")
  (:en "EN")
  (:es "ES")
  (:fa "FA")
  (:fi "FI")
  (:fr "FR")
  (:hi "HI")
  (:hu "HU")
  (:id "ID")
  (:it "IT")
  (:ja "JA")
  (:ko "KO")
  (:lt "LT")
  (:lv "LV")
  (:nl "NL")
  (:no "NO")
  (:pt "PT")
  (:ro "RO")
  (:ru "RU")
  (:sv "SV")
  (:sw "SW")
  (:th "TH")
  (:tr "TR")
  (:zh "ZH")
  (:default "DEFAULT"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type limit-type smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum locale-type
    common-lisp:nil
  (:en "en")
  (:fr "fr")
  (:ko "ko")
  (:de "de")
  (:es "es")
  (:ja "ja")
  (:ru "ru")
  (:zh-cn "zh_CN")
  (:zh-tw "zh_TW")
  (:pt-br "pt_BR")
  (:default "default"))

(smithy/sdk/shapes:define-structure long-range-type common-lisp:nil
                                    ((start-value :target-type long-type
                                      :member-name "StartValue")
                                     (end-value :target-type long-type
                                      :member-name "EndValue"))
                                    (:shape-name "LongRangeType"))

(smithy/sdk/shapes:define-type long-type smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type marker-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-marker-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-options common-lisp:nil
                                    ((send-email :target-type boolean-type
                                      :member-name "SendEmail")
                                     (email-message :target-type message-type
                                      :member-name "EmailMessage"))
                                    (:shape-name "NotificationOptions"))

(smithy/sdk/shapes:define-enum order-by-field-type
    common-lisp:nil
  (:relevance "RELEVANCE")
  (:name "NAME")
  (:size "SIZE")
  (:created-timestamp "CREATED_TIMESTAMP")
  (:modified-timestamp "MODIFIED_TIMESTAMP"))

(smithy/sdk/shapes:define-enum order-type
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-list organization-user-list :member user)

(smithy/sdk/shapes:define-type page-marker-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participants common-lisp:nil
                                    ((users :target-type user-metadata-list
                                      :member-name "Users")
                                     (groups :target-type group-metadata-list
                                      :member-name "Groups"))
                                    (:shape-name "Participants"))

(smithy/sdk/shapes:define-type password-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-info common-lisp:nil
                                    ((role :target-type role-type :member-name
                                      "Role")
                                     (type :target-type role-permission-type
                                      :member-name "Type"))
                                    (:shape-name "PermissionInfo"))

(smithy/sdk/shapes:define-list permission-info-list :member permission-info)

(smithy/sdk/shapes:define-type positive-integer-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type positive-size-type smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure principal common-lisp:nil
                                    ((id :target-type id-type :member-name
                                      "Id")
                                     (type :target-type principal-type
                                      :member-name "Type")
                                     (roles :target-type permission-info-list
                                      :member-name "Roles"))
                                    (:shape-name "Principal"))

(smithy/sdk/shapes:define-list principal-list :member principal)

(smithy/sdk/shapes:define-enum principal-role-type
    common-lisp:nil
  (:viewer "VIEWER")
  (:contributor "CONTRIBUTOR")
  (:owner "OWNER")
  (:coowner "COOWNER"))

(smithy/sdk/shapes:define-enum principal-type
    common-lisp:nil
  (:user "USER")
  (:group "GROUP")
  (:invite "INVITE")
  (:anonymous "ANONYMOUS")
  (:organization "ORGANIZATION"))

(smithy/sdk/shapes:define-error prohibited-state-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "ProhibitedStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input remove-all-resource-permissions-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t))
                                (:shape-name
                                 "RemoveAllResourcePermissionsRequest"))

(smithy/sdk/shapes:define-input remove-resource-permission-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (resource-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (principal-id :target-type id-type :required
                                  common-lisp:t :member-name "PrincipalId"
                                  :http-label common-lisp:t)
                                 (principal-type :target-type principal-type
                                  :member-name "PrincipalType" :http-query
                                  "type"))
                                (:shape-name "RemoveResourcePermissionRequest"))

(smithy/sdk/shapes:define-error requested-entity-too-large-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name
                                 "RequestedEntityTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-error resource-already-checked-out-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name
                                 "ResourceAlreadyCheckedOutException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum resource-collection-type
    common-lisp:nil
  (:shared-with-me "SHARED_WITH_ME"))

(smithy/sdk/shapes:define-type resource-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-metadata common-lisp:nil
                                    ((type :target-type resource-type
                                      :member-name "Type")
                                     (name :target-type resource-name-type
                                      :member-name "Name")
                                     (original-name :target-type
                                      resource-name-type :member-name
                                      "OriginalName")
                                     (id :target-type resource-id-type
                                      :member-name "Id")
                                     (version-id :target-type
                                      document-version-id-type :member-name
                                      "VersionId")
                                     (owner :target-type user-metadata
                                      :member-name "Owner")
                                     (parent-id :target-type resource-id-type
                                      :member-name "ParentId"))
                                    (:shape-name "ResourceMetadata"))

(smithy/sdk/shapes:define-type resource-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-path common-lisp:nil
                                    ((components :target-type
                                      resource-path-component-list :member-name
                                      "Components"))
                                    (:shape-name "ResourcePath"))

(smithy/sdk/shapes:define-structure resource-path-component common-lisp:nil
                                    ((id :target-type id-type :member-name
                                      "Id")
                                     (name :target-type resource-name-type
                                      :member-name "Name"))
                                    (:shape-name "ResourcePathComponent"))

(smithy/sdk/shapes:define-list resource-path-component-list :member
                               resource-path-component)

(smithy/sdk/shapes:define-enum resource-sort-type
    common-lisp:nil
  (:date "DATE")
  (:name "NAME"))

(smithy/sdk/shapes:define-enum resource-state-type
    common-lisp:nil
  (:active "ACTIVE")
  (:restoring "RESTORING")
  (:recycling "RECYCLING")
  (:recycled "RECYCLED"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:folder "FOLDER")
  (:document "DOCUMENT"))

(smithy/sdk/shapes:define-structure response-item common-lisp:nil
                                    ((resource-type :target-type
                                      response-item-type :member-name
                                      "ResourceType")
                                     (web-url :target-type
                                      response-item-web-url :member-name
                                      "WebUrl")
                                     (document-metadata :target-type
                                      document-metadata :member-name
                                      "DocumentMetadata")
                                     (folder-metadata :target-type
                                      folder-metadata :member-name
                                      "FolderMetadata")
                                     (comment-metadata :target-type
                                      comment-metadata :member-name
                                      "CommentMetadata")
                                     (document-version-metadata :target-type
                                      document-version-metadata :member-name
                                      "DocumentVersionMetadata"))
                                    (:shape-name "ResponseItem"))

(smithy/sdk/shapes:define-enum response-item-type
    common-lisp:nil
  (:document "DOCUMENT")
  (:folder "FOLDER")
  (:comment "COMMENT")
  (:document-version "DOCUMENT_VERSION"))

(smithy/sdk/shapes:define-type response-item-web-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list response-items-list :member response-item)

(smithy/sdk/shapes:define-input restore-document-versions-request
                                common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t))
                                (:shape-name "RestoreDocumentVersionsRequest"))

(smithy/sdk/shapes:define-enum role-permission-type
    common-lisp:nil
  (:direct "DIRECT")
  (:inherited "INHERITED"))

(smithy/sdk/shapes:define-enum role-type
    common-lisp:nil
  (:viewer "VIEWER")
  (:contributor "CONTRIBUTOR")
  (:owner "OWNER")
  (:coowner "COOWNER"))

(smithy/sdk/shapes:define-type search-ancestor-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-ancestor-id-list :member
                               search-ancestor-id)

(smithy/sdk/shapes:define-enum search-collection-type
    common-lisp:nil
  (:owned "OWNED")
  (:shared-with-me "SHARED_WITH_ME"))

(smithy/sdk/shapes:define-list search-collection-type-list :member
                               search-collection-type)

(smithy/sdk/shapes:define-list search-content-category-type-list :member
                               content-category-type)

(smithy/sdk/shapes:define-type search-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-label-list :member search-label)

(smithy/sdk/shapes:define-type search-marker-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-principal-role-list :member
                               principal-role-type)

(smithy/sdk/shapes:define-structure search-principal-type common-lisp:nil
                                    ((id :target-type id-type :required
                                      common-lisp:t :member-name "Id")
                                     (roles :target-type
                                      search-principal-role-list :member-name
                                      "Roles"))
                                    (:shape-name "SearchPrincipalType"))

(smithy/sdk/shapes:define-list search-principal-type-list :member
                               search-principal-type)

(smithy/sdk/shapes:define-enum search-query-scope-type
    common-lisp:nil
  (:name "NAME")
  (:content "CONTENT"))

(smithy/sdk/shapes:define-list search-query-scope-type-list :member
                               search-query-scope-type)

(smithy/sdk/shapes:define-type search-query-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum search-resource-type
    common-lisp:nil
  (:folder "FOLDER")
  (:document "DOCUMENT")
  (:comment "COMMENT")
  (:document-version "DOCUMENT_VERSION"))

(smithy/sdk/shapes:define-list search-resource-type-list :member
                               search-resource-type)

(smithy/sdk/shapes:define-input search-resources-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (query-text :target-type search-query-type
                                  :member-name "QueryText")
                                 (query-scopes :target-type
                                  search-query-scope-type-list :member-name
                                  "QueryScopes")
                                 (organization-id :target-type id-type
                                  :member-name "OrganizationId")
                                 (additional-response-fields :target-type
                                  additional-response-fields-list :member-name
                                  "AdditionalResponseFields")
                                 (filters :target-type filters :member-name
                                  "Filters")
                                 (order-by :target-type search-result-sort-list
                                  :member-name "OrderBy")
                                 (limit :target-type search-results-limit-type
                                  :member-name "Limit")
                                 (marker :target-type next-marker-type
                                  :member-name "Marker"))
                                (:shape-name "SearchResourcesRequest"))

(smithy/sdk/shapes:define-output search-resources-response common-lisp:nil
                                 ((items :target-type response-items-list
                                   :member-name "Items")
                                  (marker :target-type next-marker-type
                                   :member-name "Marker"))
                                 (:shape-name "SearchResourcesResponse"))

(smithy/sdk/shapes:define-list search-result-sort-list :member
                               search-sort-result)

(smithy/sdk/shapes:define-type search-results-limit-type
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure search-sort-result common-lisp:nil
                                    ((field :target-type order-by-field-type
                                      :member-name "Field")
                                     (order :target-type sort-order
                                      :member-name "Order"))
                                    (:shape-name "SearchSortResult"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure share-principal common-lisp:nil
                                    ((id :target-type id-type :required
                                      common-lisp:t :member-name "Id")
                                     (type :target-type principal-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (role :target-type role-type :required
                                      common-lisp:t :member-name "Role"))
                                    (:shape-name "SharePrincipal"))

(smithy/sdk/shapes:define-list share-principal-list :member share-principal)

(smithy/sdk/shapes:define-structure share-result common-lisp:nil
                                    ((principal-id :target-type id-type
                                      :member-name "PrincipalId")
                                     (invitee-principal-id :target-type id-type
                                      :member-name "InviteePrincipalId")
                                     (role :target-type role-type :member-name
                                      "Role")
                                     (status :target-type share-status-type
                                      :member-name "Status")
                                     (share-id :target-type resource-id-type
                                      :member-name "ShareId")
                                     (status-message :target-type message-type
                                      :member-name "StatusMessage"))
                                    (:shape-name "ShareResult"))

(smithy/sdk/shapes:define-list share-results-list :member share-result)

(smithy/sdk/shapes:define-enum share-status-type
    common-lisp:nil
  (:success "SUCCESS")
  (:failure "FAILURE"))

(smithy/sdk/shapes:define-type shared-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list shared-labels :member shared-label)

(smithy/sdk/shapes:define-map signed-header-map :key header-name-type :value
                              header-value-type)

(smithy/sdk/shapes:define-type size-type smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-error storage-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "StorageLimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error storage-limit-will-exceed-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "StorageLimitWillExceedException")
                                (:error-code 413))

(smithy/sdk/shapes:define-structure storage-rule-type common-lisp:nil
                                    ((storage-allocated-in-bytes :target-type
                                      positive-size-type :member-name
                                      "StorageAllocatedInBytes")
                                     (storage-type :target-type storage-type
                                      :member-name "StorageType"))
                                    (:shape-name "StorageRuleType"))

(smithy/sdk/shapes:define-enum storage-type
    common-lisp:nil
  (:unlimited "UNLIMITED")
  (:quota "QUOTA"))

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((subscription-id :target-type id-type
                                      :member-name "SubscriptionId")
                                     (end-point :target-type
                                      subscription-end-point-type :member-name
                                      "EndPoint")
                                     (protocol :target-type
                                      subscription-protocol-type :member-name
                                      "Protocol"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-type subscription-end-point-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subscription-list :member subscription)

(smithy/sdk/shapes:define-enum subscription-protocol-type
    common-lisp:nil
  (:https "HTTPS")
  (:sqs "SQS"))

(smithy/sdk/shapes:define-enum subscription-type
    common-lisp:nil
  (:all "ALL"))

(smithy/sdk/shapes:define-list text-locale-type-list :member language-code-type)

(smithy/sdk/shapes:define-type time-zone-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-labels-exception common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "TooManyLabelsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-subscriptions-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name "TooManySubscriptionsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unauthorized-operation-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message")
                                 (code :target-type exception-code-type
                                  :member-name "Code"))
                                (:shape-name "UnauthorizedOperationException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error unauthorized-resource-access-exception
                                common-lisp:nil
                                ((message :target-type error-message-type
                                  :member-name "Message"))
                                (:shape-name
                                 "UnauthorizedResourceAccessException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input update-document-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (name :target-type resource-name-type
                                  :member-name "Name")
                                 (parent-folder-id :target-type
                                  resource-id-type :member-name
                                  "ParentFolderId")
                                 (resource-state :target-type
                                  resource-state-type :member-name
                                  "ResourceState"))
                                (:shape-name "UpdateDocumentRequest"))

(smithy/sdk/shapes:define-input update-document-version-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (document-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "DocumentId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  document-version-id-type :required
                                  common-lisp:t :member-name "VersionId"
                                  :http-label common-lisp:t)
                                 (version-status :target-type
                                  document-version-status :member-name
                                  "VersionStatus"))
                                (:shape-name "UpdateDocumentVersionRequest"))

(smithy/sdk/shapes:define-input update-folder-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (folder-id :target-type resource-id-type
                                  :required common-lisp:t :member-name
                                  "FolderId" :http-label common-lisp:t)
                                 (name :target-type resource-name-type
                                  :member-name "Name")
                                 (parent-folder-id :target-type
                                  resource-id-type :member-name
                                  "ParentFolderId")
                                 (resource-state :target-type
                                  resource-state-type :member-name
                                  "ResourceState"))
                                (:shape-name "UpdateFolderRequest"))

(smithy/sdk/shapes:define-input update-user-request common-lisp:nil
                                ((authentication-token :target-type
                                  authentication-header-type :member-name
                                  "AuthenticationToken" :http-header
                                  "Authentication")
                                 (user-id :target-type id-type :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t)
                                 (given-name :target-type
                                  user-attribute-value-type :member-name
                                  "GivenName")
                                 (surname :target-type
                                  user-attribute-value-type :member-name
                                  "Surname")
                                 (type :target-type user-type :member-name
                                  "Type")
                                 (storage-rule :target-type storage-rule-type
                                  :member-name "StorageRule")
                                 (time-zone-id :target-type time-zone-id-type
                                  :member-name "TimeZoneId")
                                 (locale :target-type locale-type :member-name
                                  "Locale")
                                 (grant-poweruser-privileges :target-type
                                  boolean-enum-type :member-name
                                  "GrantPoweruserPrivileges"))
                                (:shape-name "UpdateUserRequest"))

(smithy/sdk/shapes:define-output update-user-response common-lisp:nil
                                 ((user :target-type user :member-name "User"))
                                 (:shape-name "UpdateUserResponse"))

(smithy/sdk/shapes:define-structure upload-metadata common-lisp:nil
                                    ((upload-url :target-type url-type
                                      :member-name "UploadUrl")
                                     (signed-headers :target-type
                                      signed-header-map :member-name
                                      "SignedHeaders"))
                                    (:shape-name "UploadMetadata"))

(smithy/sdk/shapes:define-type url-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((id :target-type id-type :member-name
                                      "Id")
                                     (username :target-type username-type
                                      :member-name "Username")
                                     (email-address :target-type
                                      email-address-type :member-name
                                      "EmailAddress")
                                     (given-name :target-type
                                      user-attribute-value-type :member-name
                                      "GivenName")
                                     (surname :target-type
                                      user-attribute-value-type :member-name
                                      "Surname")
                                     (organization-id :target-type id-type
                                      :member-name "OrganizationId")
                                     (root-folder-id :target-type
                                      resource-id-type :member-name
                                      "RootFolderId")
                                     (recycle-bin-folder-id :target-type
                                      resource-id-type :member-name
                                      "RecycleBinFolderId")
                                     (status :target-type user-status-type
                                      :member-name "Status")
                                     (type :target-type user-type :member-name
                                      "Type")
                                     (created-timestamp :target-type
                                      timestamp-type :member-name
                                      "CreatedTimestamp")
                                     (modified-timestamp :target-type
                                      timestamp-type :member-name
                                      "ModifiedTimestamp")
                                     (time-zone-id :target-type
                                      time-zone-id-type :member-name
                                      "TimeZoneId")
                                     (locale :target-type locale-type
                                      :member-name "Locale")
                                     (storage :target-type
                                      user-storage-metadata :member-name
                                      "Storage"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-list user-activities :member activity)

(smithy/sdk/shapes:define-type user-attribute-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum user-filter-type
    common-lisp:nil
  (:all "ALL")
  (:active-pending "ACTIVE_PENDING"))

(smithy/sdk/shapes:define-type user-ids-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-metadata common-lisp:nil
                                    ((id :target-type id-type :member-name
                                      "Id")
                                     (username :target-type username-type
                                      :member-name "Username")
                                     (given-name :target-type
                                      user-attribute-value-type :member-name
                                      "GivenName")
                                     (surname :target-type
                                      user-attribute-value-type :member-name
                                      "Surname")
                                     (email-address :target-type
                                      email-address-type :member-name
                                      "EmailAddress"))
                                    (:shape-name "UserMetadata"))

(smithy/sdk/shapes:define-list user-metadata-list :member user-metadata)

(smithy/sdk/shapes:define-enum user-sort-type
    common-lisp:nil
  (:user-name "USER_NAME")
  (:full-name "FULL_NAME")
  (:storage-limit "STORAGE_LIMIT")
  (:user-status "USER_STATUS")
  (:storage-used "STORAGE_USED"))

(smithy/sdk/shapes:define-enum user-status-type
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-structure user-storage-metadata common-lisp:nil
                                    ((storage-utilized-in-bytes :target-type
                                      size-type :member-name
                                      "StorageUtilizedInBytes")
                                     (storage-rule :target-type
                                      storage-rule-type :member-name
                                      "StorageRule"))
                                    (:shape-name "UserStorageMetadata"))

(smithy/sdk/shapes:define-enum user-type
    common-lisp:nil
  (:user "USER")
  (:admin "ADMIN")
  (:poweruser "POWERUSER")
  (:minimaluser "MINIMALUSER")
  (:workspacesuser "WORKSPACESUSER"))

(smithy/sdk/shapes:define-type username-type smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation abort-document-version-upload
                                       :shape-name "AbortDocumentVersionUpload"
                                       :input
                                       abort-document-version-upload-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/documents/{DocumentId}/versions/{VersionId}"
                                       :code 204)

(smithy/sdk/operation:define-operation activate-user :shape-name "ActivateUser"
                                       :input activate-user-request :output
                                       activate-user-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri
                                       "/api/v1/users/{UserId}/activation"
                                       :code 200)

(smithy/sdk/operation:define-operation add-resource-permissions :shape-name
                                       "AddResourcePermissions" :input
                                       add-resource-permissions-request :output
                                       add-resource-permissions-response
                                       :errors
                                       (failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri
                                       "/api/v1/resources/{ResourceId}/permissions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-comment :shape-name
                                       "CreateComment" :input
                                       create-comment-request :output
                                       create-comment-response :errors
                                       (document-locked-for-comments-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-comment-operation-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri
                                       "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment"
                                       :code 201)

(smithy/sdk/operation:define-operation create-custom-metadata :shape-name
                                       "CreateCustomMetadata" :input
                                       create-custom-metadata-request :output
                                       create-custom-metadata-response :errors
                                       (custom-metadata-limit-exceeded-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "PUT" :uri
                                       "/api/v1/resources/{ResourceId}/customMetadata"
                                       :code 200)

(smithy/sdk/operation:define-operation create-folder :shape-name "CreateFolder"
                                       :input create-folder-request :output
                                       create-folder-response :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-already-exists-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        limit-exceeded-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri "/api/v1/folders"
                                       :code 201)

(smithy/sdk/operation:define-operation create-labels :shape-name "CreateLabels"
                                       :input create-labels-request :output
                                       create-labels-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        too-many-labels-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "PUT" :uri
                                       "/api/v1/resources/{ResourceId}/labels"
                                       :code 200)

(smithy/sdk/operation:define-operation create-notification-subscription
                                       :shape-name
                                       "CreateNotificationSubscription" :input
                                       create-notification-subscription-request
                                       :output
                                       create-notification-subscription-response
                                       :errors
                                       (invalid-argument-exception
                                        service-unavailable-exception
                                        too-many-subscriptions-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri
                                       "/api/v1/organizations/{OrganizationId}/subscriptions"
                                       :code 200)

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (entity-already-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri "/api/v1/users"
                                       :code 201)

(smithy/sdk/operation:define-operation deactivate-user :shape-name
                                       "DeactivateUser" :input
                                       deactivate-user-request :output
                                       common-lisp:null :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/users/{UserId}/activation"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-comment :shape-name
                                       "DeleteComment" :input
                                       delete-comment-request :output
                                       common-lisp:null :errors
                                       (document-locked-for-comments-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/documents/{DocumentId}/versions/{VersionId}/comment/{CommentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-custom-metadata :shape-name
                                       "DeleteCustomMetadata" :input
                                       delete-custom-metadata-request :output
                                       delete-custom-metadata-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/resources/{ResourceId}/customMetadata"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-document :shape-name
                                       "DeleteDocument" :input
                                       delete-document-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        limit-exceeded-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/documents/{DocumentId}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-document-version :shape-name
                                       "DeleteDocumentVersion" :input
                                       delete-document-version-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-operation-exception
                                        prohibited-state-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/documentVersions/{DocumentId}/versions/{VersionId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-folder :shape-name "DeleteFolder"
                                       :input delete-folder-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        limit-exceeded-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/folders/{FolderId}" :code 204)

(smithy/sdk/operation:define-operation delete-folder-contents :shape-name
                                       "DeleteFolderContents" :input
                                       delete-folder-contents-request :output
                                       common-lisp:null :errors
                                       (conflicting-operation-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/folders/{FolderId}/contents"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-labels :shape-name "DeleteLabels"
                                       :input delete-labels-request :output
                                       delete-labels-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/resources/{ResourceId}/labels"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-notification-subscription
                                       :shape-name
                                       "DeleteNotificationSubscription" :input
                                       delete-notification-subscription-request
                                       :output common-lisp:null :errors
                                       (entity-not-exists-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       common-lisp:null :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/users/{UserId}" :code 204)

(smithy/sdk/operation:define-operation describe-activities :shape-name
                                       "DescribeActivities" :input
                                       describe-activities-request :output
                                       describe-activities-response :errors
                                       (failed-dependency-exception
                                        invalid-argument-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri "/api/v1/activities"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-comments :shape-name
                                       "DescribeComments" :input
                                       describe-comments-request :output
                                       describe-comments-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/documents/{DocumentId}/versions/{VersionId}/comments"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-document-versions :shape-name
                                       "DescribeDocumentVersions" :input
                                       describe-document-versions-request
                                       :output
                                       describe-document-versions-response
                                       :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-argument-exception
                                        invalid-password-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/documents/{DocumentId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-folder-contents :shape-name
                                       "DescribeFolderContents" :input
                                       describe-folder-contents-request :output
                                       describe-folder-contents-response
                                       :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-argument-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/folders/{FolderId}/contents"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-groups :shape-name
                                       "DescribeGroups" :input
                                       describe-groups-request :output
                                       describe-groups-response :errors
                                       (failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri "/api/v1/groups"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-notification-subscriptions
                                       :shape-name
                                       "DescribeNotificationSubscriptions"
                                       :input
                                       describe-notification-subscriptions-request
                                       :output
                                       describe-notification-subscriptions-response
                                       :errors
                                       (entity-not-exists-exception
                                        service-unavailable-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/organizations/{OrganizationId}/subscriptions"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-resource-permissions
                                       :shape-name
                                       "DescribeResourcePermissions" :input
                                       describe-resource-permissions-request
                                       :output
                                       describe-resource-permissions-response
                                       :errors
                                       (failed-dependency-exception
                                        invalid-argument-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/resources/{ResourceId}/permissions"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-root-folders :shape-name
                                       "DescribeRootFolders" :input
                                       describe-root-folders-request :output
                                       describe-root-folders-response :errors
                                       (failed-dependency-exception
                                        invalid-argument-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri "/api/v1/me/root"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-users :shape-name
                                       "DescribeUsers" :input
                                       describe-users-request :output
                                       describe-users-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-argument-exception
                                        requested-entity-too-large-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri "/api/v1/users" :code
                                       200)

(smithy/sdk/operation:define-operation get-current-user :shape-name
                                       "GetCurrentUser" :input
                                       get-current-user-request :output
                                       get-current-user-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri "/api/v1/me" :code
                                       200)

(smithy/sdk/operation:define-operation get-document :shape-name "GetDocument"
                                       :input get-document-request :output
                                       get-document-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-argument-exception
                                        invalid-password-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/documents/{DocumentId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-document-path :shape-name
                                       "GetDocumentPath" :input
                                       get-document-path-request :output
                                       get-document-path-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/documents/{DocumentId}/path"
                                       :code 200)

(smithy/sdk/operation:define-operation get-document-version :shape-name
                                       "GetDocumentVersion" :input
                                       get-document-version-request :output
                                       get-document-version-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-password-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/documents/{DocumentId}/versions/{VersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-folder :shape-name "GetFolder"
                                       :input get-folder-request :output
                                       get-folder-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-argument-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/folders/{FolderId}" :code 200)

(smithy/sdk/operation:define-operation get-folder-path :shape-name
                                       "GetFolderPath" :input
                                       get-folder-path-request :output
                                       get-folder-path-response :errors
                                       (entity-not-exists-exception
                                        failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri
                                       "/api/v1/folders/{FolderId}/path" :code
                                       200)

(smithy/sdk/operation:define-operation get-resources :shape-name "GetResources"
                                       :input get-resources-request :output
                                       get-resources-response :errors
                                       (failed-dependency-exception
                                        invalid-argument-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "GET" :uri "/api/v1/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation initiate-document-version-upload
                                       :shape-name
                                       "InitiateDocumentVersionUpload" :input
                                       initiate-document-version-upload-request
                                       :output
                                       initiate-document-version-upload-response
                                       :errors
                                       (draft-upload-out-of-sync-exception
                                        entity-already-exists-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-argument-exception
                                        invalid-password-exception
                                        limit-exceeded-exception
                                        prohibited-state-exception
                                        resource-already-checked-out-exception
                                        service-unavailable-exception
                                        storage-limit-exceeded-exception
                                        storage-limit-will-exceed-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri "/api/v1/documents"
                                       :code 201)

(smithy/sdk/operation:define-operation remove-all-resource-permissions
                                       :shape-name
                                       "RemoveAllResourcePermissions" :input
                                       remove-all-resource-permissions-request
                                       :output common-lisp:null :errors
                                       (failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/resources/{ResourceId}/permissions"
                                       :code 204)

(smithy/sdk/operation:define-operation remove-resource-permission :shape-name
                                       "RemoveResourcePermission" :input
                                       remove-resource-permission-request
                                       :output common-lisp:null :errors
                                       (failed-dependency-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "DELETE" :uri
                                       "/api/v1/resources/{ResourceId}/permissions/{PrincipalId}"
                                       :code 204)

(smithy/sdk/operation:define-operation restore-document-versions :shape-name
                                       "RestoreDocumentVersions" :input
                                       restore-document-versions-request
                                       :output common-lisp:null :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-operation-exception
                                        prohibited-state-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri
                                       "/api/v1/documentVersions/restore/{DocumentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation search-resources :shape-name
                                       "SearchResources" :input
                                       search-resources-request :output
                                       search-resources-response :errors
                                       (invalid-argument-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "POST" :uri "/api/v1/search"
                                       :code 200)

(smithy/sdk/operation:define-operation update-document :shape-name
                                       "UpdateDocument" :input
                                       update-document-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-already-exists-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        limit-exceeded-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "PATCH" :uri
                                       "/api/v1/documents/{DocumentId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-document-version :shape-name
                                       "UpdateDocumentVersion" :input
                                       update-document-version-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        invalid-operation-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "PATCH" :uri
                                       "/api/v1/documents/{DocumentId}/versions/{VersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-folder :shape-name "UpdateFolder"
                                       :input update-folder-request :output
                                       common-lisp:null :errors
                                       (concurrent-modification-exception
                                        conflicting-operation-exception
                                        entity-already-exists-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        limit-exceeded-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "PATCH" :uri
                                       "/api/v1/folders/{FolderId}" :code 200)

(smithy/sdk/operation:define-operation update-user :shape-name "UpdateUser"
                                       :input update-user-request :output
                                       update-user-response :errors
                                       (deactivating-last-system-user-exception
                                        entity-not-exists-exception
                                        failed-dependency-exception
                                        illegal-user-state-exception
                                        invalid-argument-exception
                                        prohibited-state-exception
                                        service-unavailable-exception
                                        unauthorized-operation-exception
                                        unauthorized-resource-access-exception)
                                       :method "PATCH" :uri
                                       "/api/v1/users/{UserId}" :code 200)
