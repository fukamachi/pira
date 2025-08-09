(uiop/package:define-package #:pira/qapps (:use)
                             (:export #:action #:action-identifier
                              #:amazon-resource-name #:app-arn #:app-definition
                              #:app-definition-input
                              #:app-required-capabilities
                              #:app-required-capability #:app-status
                              #:app-version #:associate-library-item-review
                              #:associate-qapp-with-user #:attribute-filter
                              #:attribute-filters #:batch-create-category
                              #:batch-create-category-input-category
                              #:batch-create-category-input-category-list
                              #:batch-delete-category #:batch-update-category
                              #:card #:card-input #:card-list #:card-model-list
                              #:card-output-source #:card-status
                              #:card-status-map #:card-type #:card-value
                              #:card-value-list #:categories-list #:category
                              #:category-id-list #:category-input
                              #:category-list #:category-list-input
                              #:conversation-message #:create-library-item
                              #:create-presigned-url #:create-qapp #:default
                              #:delete-category-input-list
                              #:delete-library-item #:delete-qapp
                              #:dependency-list #:describe-qapp-permissions
                              #:description #:disassociate-library-item-review
                              #:disassociate-qapp-from-user
                              #:document-attribute #:document-attribute-key
                              #:document-attribute-string-list-value
                              #:document-attribute-string-value
                              #:document-attribute-value #:document-scope
                              #:execution-status #:export-qapp-session-data
                              #:file-upload-card #:file-upload-card-input
                              #:filename #:form-input-card
                              #:form-input-card-input
                              #:form-input-card-metadata
                              #:form-input-card-metadata-schema
                              #:get-library-item #:get-qapp #:get-qapp-session
                              #:get-qapp-session-metadata #:import-document
                              #:initial-prompt #:input-card-compute-mode
                              #:instance-id #:library-item-list
                              #:library-item-member #:library-item-status
                              #:list-categories #:list-library-items
                              #:list-qapp-session-data #:list-qapps
                              #:list-tags-for-resource #:long
                              #:memory-reference-list #:message-list
                              #:page-limit #:pagination-token
                              #:permission-input #:permission-output
                              #:permissions-input-list
                              #:permissions-output-list #:placeholder
                              #:plato-string #:plugin-id #:plugin-type
                              #:predict-app-definition #:predict-qapp
                              #:predict-qapp-input-options
                              #:presigned-url-fields #:principal-output
                              #:prompt #:qapp-session-data
                              #:qapp-session-data-list #:qapps-service
                              #:qapps-timestamp #:qplugin-card
                              #:qplugin-card-input #:qquery-card
                              #:qquery-card-input #:sender #:session-name
                              #:session-sharing-accept-responses
                              #:session-sharing-configuration
                              #:session-sharing-enabled
                              #:session-sharing-reveal-cards
                              #:start-qapp-session #:stop-qapp-session
                              #:submission #:submission-list
                              #:submission-mutation #:submission-mutation-kind
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-value #:tags #:text-input-card
                              #:text-input-card-input #:timestamp #:title
                              #:uuid #:untag-resource #:update-library-item
                              #:update-library-item-metadata #:update-qapp
                              #:update-qapp-permissions #:update-qapp-session
                              #:update-qapp-session-metadata #:user
                              #:user-app-item #:user-apps-list #:user-id
                              #:user-type))
(common-lisp:in-package #:pira/qapps)

(smithy/sdk/service:define-service qapps-service :shape-name "QAppsService"
                                   :version "2023-11-27" :title "QApps" :traits
                                   '(("aws.api#service" ("sdkId" . "QApps")
                                      ("arnNamespace" . "qapps")
                                      ("endpointPrefix" . "data.qapps"))
                                     ("aws.auth#sigv4" ("name" . "qapps"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum action
    common-lisp:nil
  (:read "read")
  (:write "write"))

(smithy/sdk/shapes:define-type action-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure app-definition common-lisp:nil
                                    ((app-definition-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "appDefinitionVersion")
                                     (cards :target-type card-model-list
                                      :required common-lisp:t :member-name
                                      "cards")
                                     (can-edit :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "canEdit"))
                                    (:shape-name "AppDefinition"))

(smithy/sdk/shapes:define-structure app-definition-input common-lisp:nil
                                    ((cards :target-type card-list :required
                                      common-lisp:t :member-name "cards")
                                     (initial-prompt :target-type
                                      initial-prompt :member-name
                                      "initialPrompt"))
                                    (:shape-name "AppDefinitionInput"))

(smithy/sdk/shapes:define-list app-required-capabilities :member
                               app-required-capability)

(smithy/sdk/shapes:define-enum app-required-capability
    common-lisp:nil
  (:file-upload "FileUpload")
  (:creator-mode "CreatorMode")
  (:retrieval-mode "RetrievalMode")
  (:plugin-mode "PluginMode"))

(smithy/sdk/shapes:define-enum app-status
    common-lisp:nil
  (:published "PUBLISHED")
  (:draft "DRAFT")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type app-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input associate-library-item-review-input
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (library-item-id :target-type uuid :required
                                  common-lisp:t :member-name "libraryItemId"))
                                (:shape-name "AssociateLibraryItemReviewInput"))

(smithy/sdk/shapes:define-input associate-qapp-with-user-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId"))
                                (:shape-name "AssociateQAppWithUserInput"))

(smithy/sdk/shapes:define-structure attribute-filter common-lisp:nil
                                    ((and-all-filters :target-type
                                      attribute-filters :member-name
                                      "andAllFilters")
                                     (or-all-filters :target-type
                                      attribute-filters :member-name
                                      "orAllFilters")
                                     (not-filter :target-type attribute-filter
                                      :member-name "notFilter")
                                     (equals-to :target-type document-attribute
                                      :member-name "equalsTo")
                                     (contains-all :target-type
                                      document-attribute :member-name
                                      "containsAll")
                                     (contains-any :target-type
                                      document-attribute :member-name
                                      "containsAny")
                                     (greater-than :target-type
                                      document-attribute :member-name
                                      "greaterThan")
                                     (greater-than-or-equals :target-type
                                      document-attribute :member-name
                                      "greaterThanOrEquals")
                                     (less-than :target-type document-attribute
                                      :member-name "lessThan")
                                     (less-than-or-equals :target-type
                                      document-attribute :member-name
                                      "lessThanOrEquals"))
                                    (:shape-name "AttributeFilter"))

(smithy/sdk/shapes:define-list attribute-filters :member attribute-filter)

(smithy/sdk/shapes:define-input batch-create-category-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (categories :target-type
                                  batch-create-category-input-category-list
                                  :required common-lisp:t :member-name
                                  "categories"))
                                (:shape-name "BatchCreateCategoryInput"))

(smithy/sdk/shapes:define-structure batch-create-category-input-category
                                    common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "title")
                                     (color :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "color"))
                                    (:shape-name
                                     "BatchCreateCategoryInputCategory"))

(smithy/sdk/shapes:define-list batch-create-category-input-category-list
                               :member batch-create-category-input-category)

(smithy/sdk/shapes:define-input batch-delete-category-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (categories :target-type
                                  delete-category-input-list :required
                                  common-lisp:t :member-name "categories"))
                                (:shape-name "BatchDeleteCategoryInput"))

(smithy/sdk/shapes:define-input batch-update-category-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (categories :target-type category-list-input
                                  :required common-lisp:t :member-name
                                  "categories"))
                                (:shape-name "BatchUpdateCategoryInput"))

(smithy/sdk/shapes:define-union card common-lisp:nil
                                ((text-input :target-type text-input-card
                                  :member-name "textInput")
                                 (q-query :target-type qquery-card :member-name
                                  "qQuery")
                                 (q-plugin :target-type qplugin-card
                                  :member-name "qPlugin")
                                 (file-upload :target-type file-upload-card
                                  :member-name "fileUpload")
                                 (form-input :target-type form-input-card
                                  :member-name "formInput"))
                                (:shape-name "Card"))

(smithy/sdk/shapes:define-union card-input common-lisp:nil
                                ((text-input :target-type text-input-card-input
                                  :member-name "textInput")
                                 (q-query :target-type qquery-card-input
                                  :member-name "qQuery")
                                 (q-plugin :target-type qplugin-card-input
                                  :member-name "qPlugin")
                                 (file-upload :target-type
                                  file-upload-card-input :member-name
                                  "fileUpload")
                                 (form-input :target-type form-input-card-input
                                  :member-name "formInput"))
                                (:shape-name "CardInput"))

(smithy/sdk/shapes:define-list card-list :member card-input)

(smithy/sdk/shapes:define-list card-model-list :member card)

(smithy/sdk/shapes:define-enum card-output-source
    common-lisp:nil
  (:approved-sources "approved-sources")
  (:llm "llm"))

(smithy/sdk/shapes:define-structure card-status common-lisp:nil
                                    ((current-state :target-type
                                      execution-status :required common-lisp:t
                                      :member-name "currentState")
                                     (current-value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "currentValue")
                                     (submissions :target-type submission-list
                                      :member-name "submissions"))
                                    (:shape-name "CardStatus"))

(smithy/sdk/shapes:define-map card-status-map :key uuid :value card-status)

(smithy/sdk/shapes:define-enum card-type
    common-lisp:nil
  (:text-input "text-input")
  (:q-query "q-query")
  (:file-upload "file-upload")
  (:q-plugin "q-plugin")
  (:form-input "form-input"))

(smithy/sdk/shapes:define-structure card-value common-lisp:nil
                                    ((card-id :target-type uuid :required
                                      common-lisp:t :member-name "cardId")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value")
                                     (submission-mutation :target-type
                                      submission-mutation :member-name
                                      "submissionMutation"))
                                    (:shape-name "CardValue"))

(smithy/sdk/shapes:define-list card-value-list :member card-value)

(smithy/sdk/shapes:define-list categories-list :member category)

(smithy/sdk/shapes:define-structure category common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "title")
                                     (color :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "color")
                                     (app-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "appCount"))
                                    (:shape-name "Category"))

(smithy/sdk/shapes:define-list category-id-list :member uuid)

(smithy/sdk/shapes:define-structure category-input common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "title")
                                     (color :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "color"))
                                    (:shape-name "CategoryInput"))

(smithy/sdk/shapes:define-list category-list :member category)

(smithy/sdk/shapes:define-list category-list-input :member category-input)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error content-too-large-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ContentTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-structure conversation-message common-lisp:nil
                                    ((body :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "body")
                                     (type :target-type sender :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "ConversationMessage"))

(smithy/sdk/shapes:define-input create-library-item-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId")
                                 (app-version :target-type app-version
                                  :required common-lisp:t :member-name
                                  "appVersion")
                                 (categories :target-type category-id-list
                                  :required common-lisp:t :member-name
                                  "categories"))
                                (:shape-name "CreateLibraryItemInput"))

(smithy/sdk/shapes:define-output create-library-item-output common-lisp:nil
                                 ((library-item-id :target-type uuid :required
                                   common-lisp:t :member-name "libraryItemId")
                                  (status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type qapps-timestamp
                                   :member-name "updatedAt")
                                  (updated-by :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "updatedBy")
                                  (rating-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ratingCount")
                                  (is-verified :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "isVerified"))
                                 (:shape-name "CreateLibraryItemOutput"))

(smithy/sdk/shapes:define-input create-presigned-url-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (card-id :target-type uuid :required
                                  common-lisp:t :member-name "cardId")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId")
                                 (file-contents-sha256 :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "fileContentsSha256")
                                 (file-name :target-type filename :required
                                  common-lisp:t :member-name "fileName")
                                 (scope :target-type document-scope :required
                                  common-lisp:t :member-name "scope")
                                 (session-id :target-type uuid :member-name
                                  "sessionId"))
                                (:shape-name "CreatePresignedUrlInput"))

(smithy/sdk/shapes:define-output create-presigned-url-output common-lisp:nil
                                 ((file-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "fileId")
                                  (presigned-url :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "presignedUrl")
                                  (presigned-url-fields :target-type
                                   presigned-url-fields :required common-lisp:t
                                   :member-name "presignedUrlFields")
                                  (presigned-url-expiration :target-type
                                   qapps-timestamp :required common-lisp:t
                                   :member-name "presignedUrlExpiration"))
                                 (:shape-name "CreatePresignedUrlOutput"))

(smithy/sdk/shapes:define-input create-qapp-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (title :target-type title :required
                                  common-lisp:t :member-name "title")
                                 (description :target-type description
                                  :member-name "description")
                                 (app-definition :target-type
                                  app-definition-input :required common-lisp:t
                                  :member-name "appDefinition")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateQAppInput"))

(smithy/sdk/shapes:define-output create-qapp-output common-lisp:nil
                                 ((app-id :target-type uuid :required
                                   common-lisp:t :member-name "appId")
                                  (app-arn :target-type app-arn :required
                                   common-lisp:t :member-name "appArn")
                                  (title :target-type title :required
                                   common-lisp:t :member-name "title")
                                  (description :target-type description
                                   :member-name "description")
                                  (initial-prompt :target-type initial-prompt
                                   :member-name "initialPrompt")
                                  (app-version :target-type app-version
                                   :required common-lisp:t :member-name
                                   "appVersion")
                                  (status :target-type app-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (updated-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "updatedBy")
                                  (required-capabilities :target-type
                                   app-required-capabilities :member-name
                                   "requiredCapabilities"))
                                 (:shape-name "CreateQAppOutput"))

(smithy/sdk/shapes:define-type default smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list delete-category-input-list :member uuid)

(smithy/sdk/shapes:define-input delete-library-item-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (library-item-id :target-type uuid :required
                                  common-lisp:t :member-name "libraryItemId"))
                                (:shape-name "DeleteLibraryItemInput"))

(smithy/sdk/shapes:define-input delete-qapp-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId"))
                                (:shape-name "DeleteQAppInput"))

(smithy/sdk/shapes:define-list dependency-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-qapp-permissions-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId"
                                  :http-query "appId"))
                                (:shape-name "DescribeQAppPermissionsInput"))

(smithy/sdk/shapes:define-output describe-qapp-permissions-output
                                 common-lisp:nil
                                 ((resource-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "resourceArn")
                                  (app-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "appId")
                                  (permissions :target-type
                                   permissions-output-list :member-name
                                   "permissions"))
                                 (:shape-name "DescribeQAppPermissionsOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-library-item-review-input
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (library-item-id :target-type uuid :required
                                  common-lisp:t :member-name "libraryItemId"))
                                (:shape-name
                                 "DisassociateLibraryItemReviewInput"))

(smithy/sdk/shapes:define-input disassociate-qapp-from-user-input
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId"))
                                (:shape-name "DisassociateQAppFromUserInput"))

(smithy/sdk/shapes:define-structure document-attribute common-lisp:nil
                                    ((name :target-type document-attribute-key
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type
                                      document-attribute-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "DocumentAttribute"))

(smithy/sdk/shapes:define-type document-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-attribute-string-list-value :member
                               plato-string)

(smithy/sdk/shapes:define-type document-attribute-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union document-attribute-value common-lisp:nil
                                ((string-value :target-type
                                  document-attribute-string-value :member-name
                                  "stringValue")
                                 (string-list-value :target-type
                                  document-attribute-string-list-value
                                  :member-name "stringListValue")
                                 (long-value :target-type long :member-name
                                  "longValue")
                                 (date-value :target-type timestamp
                                  :member-name "dateValue"))
                                (:shape-name "DocumentAttributeValue"))

(smithy/sdk/shapes:define-enum document-scope
    common-lisp:nil
  (:application "APPLICATION")
  (:session "SESSION"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:waiting "WAITING")
  (:completed "COMPLETED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-input export-qapp-session-data-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId"))
                                (:shape-name "ExportQAppSessionDataInput"))

(smithy/sdk/shapes:define-output export-qapp-session-data-output
                                 common-lisp:nil
                                 ((csv-file-link :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "csvFileLink")
                                  (expires-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "expiresAt")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn"))
                                 (:shape-name "ExportQAppSessionDataOutput"))

(smithy/sdk/shapes:define-structure file-upload-card common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (dependencies :target-type dependency-list
                                      :required common-lisp:t :member-name
                                      "dependencies")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (filename :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "filename")
                                     (file-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "fileId")
                                     (allow-override :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "allowOverride"))
                                    (:shape-name "FileUploadCard"))

(smithy/sdk/shapes:define-structure file-upload-card-input common-lisp:nil
                                    ((title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (filename :target-type filename
                                      :member-name "filename")
                                     (file-id :target-type uuid :member-name
                                      "fileId")
                                     (allow-override :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "allowOverride"))
                                    (:shape-name "FileUploadCardInput"))

(smithy/sdk/shapes:define-type filename smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure form-input-card common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (dependencies :target-type dependency-list
                                      :required common-lisp:t :member-name
                                      "dependencies")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (metadata :target-type
                                      form-input-card-metadata :required
                                      common-lisp:t :member-name "metadata")
                                     (compute-mode :target-type
                                      input-card-compute-mode :member-name
                                      "computeMode"))
                                    (:shape-name "FormInputCard"))

(smithy/sdk/shapes:define-structure form-input-card-input common-lisp:nil
                                    ((title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (metadata :target-type
                                      form-input-card-metadata :required
                                      common-lisp:t :member-name "metadata")
                                     (compute-mode :target-type
                                      input-card-compute-mode :member-name
                                      "computeMode"))
                                    (:shape-name "FormInputCardInput"))

(smithy/sdk/shapes:define-structure form-input-card-metadata common-lisp:nil
                                    ((schema :target-type
                                      form-input-card-metadata-schema :required
                                      common-lisp:t :member-name "schema"))
                                    (:shape-name "FormInputCardMetadata"))

(smithy/sdk/shapes:define-type form-input-card-metadata-schema
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-input get-library-item-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (library-item-id :target-type uuid :required
                                  common-lisp:t :member-name "libraryItemId"
                                  :http-query "libraryItemId")
                                 (app-id :target-type uuid :member-name "appId"
                                  :http-query "appId"))
                                (:shape-name "GetLibraryItemInput"))

(smithy/sdk/shapes:define-output get-library-item-output common-lisp:nil
                                 ((library-item-id :target-type uuid :required
                                   common-lisp:t :member-name "libraryItemId")
                                  (app-id :target-type uuid :required
                                   common-lisp:t :member-name "appId")
                                  (app-version :target-type app-version
                                   :required common-lisp:t :member-name
                                   "appVersion")
                                  (categories :target-type category-list
                                   :required common-lisp:t :member-name
                                   "categories")
                                  (status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type qapps-timestamp
                                   :member-name "updatedAt")
                                  (updated-by :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "updatedBy")
                                  (rating-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ratingCount")
                                  (is-rated-by-user :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "isRatedByUser")
                                  (user-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "userCount")
                                  (is-verified :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "isVerified"))
                                 (:shape-name "GetLibraryItemOutput"))

(smithy/sdk/shapes:define-input get-qapp-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId"
                                  :http-query "appId")
                                 (app-version :target-type app-version
                                  :member-name "appVersion" :http-query
                                  "appVersion"))
                                (:shape-name "GetQAppInput"))

(smithy/sdk/shapes:define-output get-qapp-output common-lisp:nil
                                 ((app-id :target-type uuid :required
                                   common-lisp:t :member-name "appId")
                                  (app-arn :target-type app-arn :required
                                   common-lisp:t :member-name "appArn")
                                  (title :target-type title :required
                                   common-lisp:t :member-name "title")
                                  (description :target-type description
                                   :member-name "description")
                                  (initial-prompt :target-type initial-prompt
                                   :member-name "initialPrompt")
                                  (app-version :target-type app-version
                                   :required common-lisp:t :member-name
                                   "appVersion")
                                  (status :target-type app-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (updated-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "updatedBy")
                                  (required-capabilities :target-type
                                   app-required-capabilities :member-name
                                   "requiredCapabilities")
                                  (app-definition :target-type app-definition
                                   :required common-lisp:t :member-name
                                   "appDefinition"))
                                 (:shape-name "GetQAppOutput"))

(smithy/sdk/shapes:define-input get-qapp-session-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-query "sessionId"))
                                (:shape-name "GetQAppSessionInput"))

(smithy/sdk/shapes:define-input get-qapp-session-metadata-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-query "sessionId"))
                                (:shape-name "GetQAppSessionMetadataInput"))

(smithy/sdk/shapes:define-output get-qapp-session-metadata-output
                                 common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn")
                                  (session-name :target-type session-name
                                   :member-name "sessionName")
                                  (sharing-configuration :target-type
                                   session-sharing-configuration :required
                                   common-lisp:t :member-name
                                   "sharingConfiguration")
                                  (session-owner :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "sessionOwner"))
                                 (:shape-name "GetQAppSessionMetadataOutput"))

(smithy/sdk/shapes:define-output get-qapp-session-output common-lisp:nil
                                 ((session-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn")
                                  (session-name :target-type session-name
                                   :member-name "sessionName")
                                  (app-version :target-type app-version
                                   :member-name "appVersion")
                                  (latest-published-app-version :target-type
                                   app-version :member-name
                                   "latestPublishedAppVersion")
                                  (status :target-type execution-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (card-status :target-type card-status-map
                                   :required common-lisp:t :member-name
                                   "cardStatus")
                                  (user-is-host :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "userIsHost"))
                                 (:shape-name "GetQAppSessionOutput"))

(smithy/sdk/shapes:define-input import-document-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (card-id :target-type uuid :required
                                  common-lisp:t :member-name "cardId")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId")
                                 (file-contents-base64 :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "fileContentsBase64")
                                 (file-name :target-type filename :required
                                  common-lisp:t :member-name "fileName")
                                 (scope :target-type document-scope :required
                                  common-lisp:t :member-name "scope")
                                 (session-id :target-type uuid :member-name
                                  "sessionId"))
                                (:shape-name "ImportDocumentInput"))

(smithy/sdk/shapes:define-output import-document-output common-lisp:nil
                                 ((file-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "fileId"))
                                 (:shape-name "ImportDocumentOutput"))

(smithy/sdk/shapes:define-type initial-prompt smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum input-card-compute-mode
    common-lisp:nil
  (:append "append")
  (:replace "replace"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list library-item-list :member library-item-member)

(smithy/sdk/shapes:define-structure library-item-member common-lisp:nil
                                    ((library-item-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "libraryItemId")
                                     (app-id :target-type uuid :required
                                      common-lisp:t :member-name "appId")
                                     (app-version :target-type app-version
                                      :required common-lisp:t :member-name
                                      "appVersion")
                                     (categories :target-type category-list
                                      :required common-lisp:t :member-name
                                      "categories")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type qapps-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "createdBy")
                                     (updated-at :target-type qapps-timestamp
                                      :member-name "updatedAt")
                                     (updated-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "updatedBy")
                                     (rating-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "ratingCount")
                                     (is-rated-by-user :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isRatedByUser")
                                     (user-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "userCount")
                                     (is-verified :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isVerified"))
                                    (:shape-name "LibraryItemMember"))

(smithy/sdk/shapes:define-enum library-item-status
    common-lisp:nil
  (:published "PUBLISHED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input list-categories-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id"))
                                (:shape-name "ListCategoriesInput"))

(smithy/sdk/shapes:define-output list-categories-output common-lisp:nil
                                 ((categories :target-type categories-list
                                   :member-name "categories"))
                                 (:shape-name "ListCategoriesOutput"))

(smithy/sdk/shapes:define-input list-library-items-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (limit :target-type page-limit :member-name
                                  "limit" :http-query "limit")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (category-id :target-type uuid :member-name
                                  "categoryId" :http-query "categoryId"))
                                (:shape-name "ListLibraryItemsInput"))

(smithy/sdk/shapes:define-output list-library-items-output common-lisp:nil
                                 ((library-items :target-type library-item-list
                                   :member-name "libraryItems")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListLibraryItemsOutput"))

(smithy/sdk/shapes:define-input list-qapp-session-data-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-query "sessionId"))
                                (:shape-name "ListQAppSessionDataInput"))

(smithy/sdk/shapes:define-output list-qapp-session-data-output common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn")
                                  (session-data :target-type
                                   qapp-session-data-list :member-name
                                   "sessionData")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListQAppSessionDataOutput"))

(smithy/sdk/shapes:define-input list-qapps-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (limit :target-type page-limit :member-name
                                  "limit" :http-query "limit")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListQAppsInput"))

(smithy/sdk/shapes:define-output list-qapps-output common-lisp:nil
                                 ((apps :target-type user-apps-list :required
                                   common-lisp:t :member-name "apps")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListQAppsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list memory-reference-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-list :member conversation-message)

(smithy/sdk/shapes:define-type page-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure permission-input common-lisp:nil
                                    ((action :target-type action :required
                                      common-lisp:t :member-name "action")
                                     (principal :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "principal"))
                                    (:shape-name "PermissionInput"))

(smithy/sdk/shapes:define-structure permission-output common-lisp:nil
                                    ((action :target-type action :required
                                      common-lisp:t :member-name "action")
                                     (principal :target-type principal-output
                                      :required common-lisp:t :member-name
                                      "principal"))
                                    (:shape-name "PermissionOutput"))

(smithy/sdk/shapes:define-list permissions-input-list :member permission-input)

(smithy/sdk/shapes:define-list permissions-output-list :member
                               permission-output)

(smithy/sdk/shapes:define-type placeholder smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plato-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum plugin-type
    common-lisp:nil
  (:service-now "SERVICE_NOW")
  (:salesforce "SALESFORCE")
  (:jira "JIRA")
  (:zendesk "ZENDESK")
  (:custom "CUSTOM")
  (:asana "ASANA")
  (:atlassian-confluence "ATLASSIAN_CONFLUENCE")
  (:google-calendar "GOOGLE_CALENDAR")
  (:jira-cloud "JIRA_CLOUD")
  (:microsoft-exchange "MICROSOFT_EXCHANGE")
  (:microsoft-teams "MICROSOFT_TEAMS")
  (:pagerduty-advance "PAGERDUTY_ADVANCE")
  (:salesforce-crm "SALESFORCE_CRM")
  (:servicenow-now-platform "SERVICENOW_NOW_PLATFORM")
  (:smartsheet "SMARTSHEET")
  (:zendesk-suite "ZENDESK_SUITE"))

(smithy/sdk/shapes:define-structure predict-app-definition common-lisp:nil
                                    ((title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (description :target-type description
                                      :member-name "description")
                                     (app-definition :target-type
                                      app-definition-input :required
                                      common-lisp:t :member-name
                                      "appDefinition"))
                                    (:shape-name "PredictAppDefinition"))

(smithy/sdk/shapes:define-input predict-qapp-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (options :target-type
                                  predict-qapp-input-options :member-name
                                  "options"))
                                (:shape-name "PredictQAppInput"))

(smithy/sdk/shapes:define-union predict-qapp-input-options common-lisp:nil
                                ((conversation :target-type message-list
                                  :member-name "conversation")
                                 (problem-statement :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "problemStatement"))
                                (:shape-name "PredictQAppInputOptions"))

(smithy/sdk/shapes:define-output predict-qapp-output common-lisp:nil
                                 ((app :target-type predict-app-definition
                                   :required common-lisp:t :member-name "app")
                                  (problem-statement :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "problemStatement"))
                                 (:shape-name "PredictQAppOutput"))

(smithy/sdk/shapes:define-map presigned-url-fields :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure principal-output common-lisp:nil
                                    ((user-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userId")
                                     (user-type :target-type user-type
                                      :member-name "userType")
                                     (email :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "email"))
                                    (:shape-name "PrincipalOutput"))

(smithy/sdk/shapes:define-type prompt smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure qapp-session-data common-lisp:nil
                                    ((card-id :target-type uuid :required
                                      common-lisp:t :member-name "cardId")
                                     (value :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "value")
                                     (user :target-type user :required
                                      common-lisp:t :member-name "user")
                                     (submission-id :target-type uuid
                                      :member-name "submissionId")
                                     (timestamp :target-type qapps-timestamp
                                      :member-name "timestamp"))
                                    (:shape-name "QAppSessionData"))

(smithy/sdk/shapes:define-list qapp-session-data-list :member qapp-session-data)

(smithy/sdk/shapes:define-type qapps-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure qplugin-card common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (dependencies :target-type dependency-list
                                      :required common-lisp:t :member-name
                                      "dependencies")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (prompt :target-type prompt :required
                                      common-lisp:t :member-name "prompt")
                                     (plugin-type :target-type plugin-type
                                      :required common-lisp:t :member-name
                                      "pluginType")
                                     (plugin-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "pluginId")
                                     (action-identifier :target-type
                                      action-identifier :member-name
                                      "actionIdentifier"))
                                    (:shape-name "QPluginCard"))

(smithy/sdk/shapes:define-structure qplugin-card-input common-lisp:nil
                                    ((title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (prompt :target-type prompt :required
                                      common-lisp:t :member-name "prompt")
                                     (plugin-id :target-type plugin-id
                                      :required common-lisp:t :member-name
                                      "pluginId")
                                     (action-identifier :target-type
                                      action-identifier :member-name
                                      "actionIdentifier"))
                                    (:shape-name "QPluginCardInput"))

(smithy/sdk/shapes:define-structure qquery-card common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (dependencies :target-type dependency-list
                                      :required common-lisp:t :member-name
                                      "dependencies")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (prompt :target-type prompt :required
                                      common-lisp:t :member-name "prompt")
                                     (output-source :target-type
                                      card-output-source :required
                                      common-lisp:t :member-name
                                      "outputSource")
                                     (attribute-filter :target-type
                                      attribute-filter :member-name
                                      "attributeFilter")
                                     (memory-references :target-type
                                      memory-reference-list :member-name
                                      "memoryReferences"))
                                    (:shape-name "QQueryCard"))

(smithy/sdk/shapes:define-structure qquery-card-input common-lisp:nil
                                    ((title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (prompt :target-type prompt :required
                                      common-lisp:t :member-name "prompt")
                                     (output-source :target-type
                                      card-output-source :member-name
                                      "outputSource")
                                     (attribute-filter :target-type
                                      attribute-filter :member-name
                                      "attributeFilter"))
                                    (:shape-name "QQueryCardInput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum sender
    common-lisp:nil
  (:user "USER")
  (:system "SYSTEM"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type session-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type session-sharing-accept-responses
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure session-sharing-configuration
                                    common-lisp:nil
                                    ((enabled :target-type
                                      session-sharing-enabled :required
                                      common-lisp:t :member-name "enabled")
                                     (accept-responses :target-type
                                      session-sharing-accept-responses
                                      :member-name "acceptResponses")
                                     (reveal-cards :target-type
                                      session-sharing-reveal-cards :member-name
                                      "revealCards"))
                                    (:shape-name "SessionSharingConfiguration"))

(smithy/sdk/shapes:define-type session-sharing-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type session-sharing-reveal-cards
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input start-qapp-session-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId")
                                 (app-version :target-type app-version
                                  :required common-lisp:t :member-name
                                  "appVersion")
                                 (initial-values :target-type card-value-list
                                  :member-name "initialValues")
                                 (session-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "sessionId")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "StartQAppSessionInput"))

(smithy/sdk/shapes:define-output start-qapp-session-output common-lisp:nil
                                 ((session-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn"))
                                 (:shape-name "StartQAppSessionOutput"))

(smithy/sdk/shapes:define-input stop-qapp-session-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId"))
                                (:shape-name "StopQAppSessionInput"))

(smithy/sdk/shapes:define-structure submission common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "value")
                                     (submission-id :target-type uuid
                                      :member-name "submissionId")
                                     (timestamp :target-type qapps-timestamp
                                      :member-name "timestamp"))
                                    (:shape-name "Submission"))

(smithy/sdk/shapes:define-list submission-list :member submission)

(smithy/sdk/shapes:define-structure submission-mutation common-lisp:nil
                                    ((submission-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "submissionId")
                                     (mutation-type :target-type
                                      submission-mutation-kind :required
                                      common-lisp:t :member-name
                                      "mutationType"))
                                    (:shape-name "SubmissionMutation"))

(smithy/sdk/shapes:define-enum submission-mutation-kind
    common-lisp:nil
  (:edit "edit")
  (:delete "delete")
  (:add "add"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure text-input-card common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (dependencies :target-type dependency-list
                                      :required common-lisp:t :member-name
                                      "dependencies")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (placeholder :target-type placeholder
                                      :member-name "placeholder")
                                     (default-value :target-type default
                                      :member-name "defaultValue"))
                                    (:shape-name "TextInputCard"))

(smithy/sdk/shapes:define-structure text-input-card-input common-lisp:nil
                                    ((title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type card-type :required
                                      common-lisp:t :member-name "type")
                                     (placeholder :target-type placeholder
                                      :member-name "placeholder")
                                     (default-value :target-type default
                                      :member-name "defaultValue"))
                                    (:shape-name "TextInputCardInput"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceARN" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-library-item-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (library-item-id :target-type uuid :required
                                  common-lisp:t :member-name "libraryItemId")
                                 (status :target-type library-item-status
                                  :member-name "status")
                                 (categories :target-type category-id-list
                                  :member-name "categories"))
                                (:shape-name "UpdateLibraryItemInput"))

(smithy/sdk/shapes:define-input update-library-item-metadata-input
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (library-item-id :target-type uuid :required
                                  common-lisp:t :member-name "libraryItemId")
                                 (is-verified :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isVerified"))
                                (:shape-name "UpdateLibraryItemMetadataInput"))

(smithy/sdk/shapes:define-output update-library-item-output common-lisp:nil
                                 ((library-item-id :target-type uuid :required
                                   common-lisp:t :member-name "libraryItemId")
                                  (app-id :target-type uuid :required
                                   common-lisp:t :member-name "appId")
                                  (app-version :target-type app-version
                                   :required common-lisp:t :member-name
                                   "appVersion")
                                  (categories :target-type category-list
                                   :required common-lisp:t :member-name
                                   "categories")
                                  (status :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type qapps-timestamp
                                   :member-name "updatedAt")
                                  (updated-by :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "updatedBy")
                                  (rating-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "ratingCount")
                                  (is-rated-by-user :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "isRatedByUser")
                                  (user-count :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "userCount")
                                  (is-verified :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "isVerified"))
                                 (:shape-name "UpdateLibraryItemOutput"))

(smithy/sdk/shapes:define-input update-qapp-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId")
                                 (title :target-type title :member-name
                                  "title")
                                 (description :target-type description
                                  :member-name "description")
                                 (app-definition :target-type
                                  app-definition-input :member-name
                                  "appDefinition"))
                                (:shape-name "UpdateQAppInput"))

(smithy/sdk/shapes:define-output update-qapp-output common-lisp:nil
                                 ((app-id :target-type uuid :required
                                   common-lisp:t :member-name "appId")
                                  (app-arn :target-type app-arn :required
                                   common-lisp:t :member-name "appArn")
                                  (title :target-type title :required
                                   common-lisp:t :member-name "title")
                                  (description :target-type description
                                   :member-name "description")
                                  (initial-prompt :target-type initial-prompt
                                   :member-name "initialPrompt")
                                  (app-version :target-type app-version
                                   :required common-lisp:t :member-name
                                   "appVersion")
                                  (status :target-type app-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (created-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "createdBy")
                                  (updated-at :target-type qapps-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (updated-by :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "updatedBy")
                                  (required-capabilities :target-type
                                   app-required-capabilities :member-name
                                   "requiredCapabilities"))
                                 (:shape-name "UpdateQAppOutput"))

(smithy/sdk/shapes:define-input update-qapp-permissions-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (app-id :target-type uuid :required
                                  common-lisp:t :member-name "appId")
                                 (grant-permissions :target-type
                                  permissions-input-list :member-name
                                  "grantPermissions")
                                 (revoke-permissions :target-type
                                  permissions-input-list :member-name
                                  "revokePermissions"))
                                (:shape-name "UpdateQAppPermissionsInput"))

(smithy/sdk/shapes:define-output update-qapp-permissions-output common-lisp:nil
                                 ((resource-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "resourceArn")
                                  (app-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "appId")
                                  (permissions :target-type
                                   permissions-output-list :member-name
                                   "permissions"))
                                 (:shape-name "UpdateQAppPermissionsOutput"))

(smithy/sdk/shapes:define-input update-qapp-session-input common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId")
                                 (values :target-type card-value-list
                                  :member-name "values"))
                                (:shape-name "UpdateQAppSessionInput"))

(smithy/sdk/shapes:define-input update-qapp-session-metadata-input
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "instanceId" :http-header "instance-id")
                                 (session-id :target-type uuid :required
                                  common-lisp:t :member-name "sessionId")
                                 (session-name :target-type session-name
                                  :member-name "sessionName")
                                 (sharing-configuration :target-type
                                  session-sharing-configuration :required
                                  common-lisp:t :member-name
                                  "sharingConfiguration"))
                                (:shape-name "UpdateQAppSessionMetadataInput"))

(smithy/sdk/shapes:define-output update-qapp-session-metadata-output
                                 common-lisp:nil
                                 ((session-id :target-type uuid :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn")
                                  (session-name :target-type session-name
                                   :member-name "sessionName")
                                  (sharing-configuration :target-type
                                   session-sharing-configuration :required
                                   common-lisp:t :member-name
                                   "sharingConfiguration"))
                                 (:shape-name
                                  "UpdateQAppSessionMetadataOutput"))

(smithy/sdk/shapes:define-output update-qapp-session-output common-lisp:nil
                                 ((session-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionId")
                                  (session-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "sessionArn"))
                                 (:shape-name "UpdateQAppSessionOutput"))

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-id :target-type user-id :member-name
                                      "userId"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-structure user-app-item common-lisp:nil
                                    ((app-id :target-type uuid :required
                                      common-lisp:t :member-name "appId")
                                     (app-arn :target-type app-arn :required
                                      common-lisp:t :member-name "appArn")
                                     (title :target-type title :required
                                      common-lisp:t :member-name "title")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type qapps-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (can-edit :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "canEdit")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "status")
                                     (is-verified :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isVerified"))
                                    (:shape-name "UserAppItem"))

(smithy/sdk/shapes:define-list user-apps-list :member user-app-item)

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum user-type
    common-lisp:nil
  (:owner "owner")
  (:user "user"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation associate-library-item-review
                                       :shape-name "AssociateLibraryItemReview"
                                       :input
                                       associate-library-item-review-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.associateItemRating")

(smithy/sdk/operation:define-operation associate-qapp-with-user :shape-name
                                       "AssociateQAppWithUser" :input
                                       associate-qapp-with-user-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/apps.install")

(smithy/sdk/operation:define-operation batch-create-category :shape-name
                                       "BatchCreateCategory" :input
                                       batch-create-category-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.createCategories")

(smithy/sdk/operation:define-operation batch-delete-category :shape-name
                                       "BatchDeleteCategory" :input
                                       batch-delete-category-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.deleteCategories")

(smithy/sdk/operation:define-operation batch-update-category :shape-name
                                       "BatchUpdateCategory" :input
                                       batch-update-category-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.updateCategories")

(smithy/sdk/operation:define-operation create-library-item :shape-name
                                       "CreateLibraryItem" :input
                                       create-library-item-input :output
                                       create-library-item-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.createItem")

(smithy/sdk/operation:define-operation create-presigned-url :shape-name
                                       "CreatePresignedUrl" :input
                                       create-presigned-url-input :output
                                       create-presigned-url-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/apps.createPresignedUrl")

(smithy/sdk/operation:define-operation create-qapp :shape-name "CreateQApp"
                                       :input create-qapp-input :output
                                       create-qapp-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        content-too-large-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/apps.create")

(smithy/sdk/operation:define-operation delete-library-item :shape-name
                                       "DeleteLibraryItem" :input
                                       delete-library-item-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.deleteItem")

(smithy/sdk/operation:define-operation delete-qapp :shape-name "DeleteQApp"
                                       :input delete-qapp-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/apps.delete")

(smithy/sdk/operation:define-operation describe-qapp-permissions :shape-name
                                       "DescribeQAppPermissions" :input
                                       describe-qapp-permissions-input :output
                                       describe-qapp-permissions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/apps.describeQAppPermissions")

(smithy/sdk/operation:define-operation disassociate-library-item-review
                                       :shape-name
                                       "DisassociateLibraryItemReview" :input
                                       disassociate-library-item-review-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.disassociateItemRating")

(smithy/sdk/operation:define-operation disassociate-qapp-from-user :shape-name
                                       "DisassociateQAppFromUser" :input
                                       disassociate-qapp-from-user-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/apps.uninstall")

(smithy/sdk/operation:define-operation export-qapp-session-data :shape-name
                                       "ExportQAppSessionData" :input
                                       export-qapp-session-data-input :output
                                       export-qapp-session-data-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtime.exportQAppSessionData")

(smithy/sdk/operation:define-operation get-library-item :shape-name
                                       "GetLibraryItem" :input
                                       get-library-item-input :output
                                       get-library-item-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/catalog.getItem")

(smithy/sdk/operation:define-operation get-qapp :shape-name "GetQApp" :input
                                       get-qapp-input :output get-qapp-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/apps.get")

(smithy/sdk/operation:define-operation get-qapp-session :shape-name
                                       "GetQAppSession" :input
                                       get-qapp-session-input :output
                                       get-qapp-session-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/runtime.getQAppSession")

(smithy/sdk/operation:define-operation get-qapp-session-metadata :shape-name
                                       "GetQAppSessionMetadata" :input
                                       get-qapp-session-metadata-input :output
                                       get-qapp-session-metadata-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/runtime.getQAppSessionMetadata")

(smithy/sdk/operation:define-operation import-document :shape-name
                                       "ImportDocument" :input
                                       import-document-input :output
                                       import-document-output :errors
                                       (access-denied-exception
                                        content-too-large-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/apps.importDocument")

(smithy/sdk/operation:define-operation list-categories :shape-name
                                       "ListCategories" :input
                                       list-categories-input :output
                                       list-categories-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/catalog.listCategories")

(smithy/sdk/operation:define-operation list-library-items :shape-name
                                       "ListLibraryItems" :input
                                       list-library-items-input :output
                                       list-library-items-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/catalog.list")

(smithy/sdk/operation:define-operation list-qapp-session-data :shape-name
                                       "ListQAppSessionData" :input
                                       list-qapp-session-data-input :output
                                       list-qapp-session-data-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/runtime.listQAppSessionData")

(smithy/sdk/operation:define-operation list-qapps :shape-name "ListQApps"
                                       :input list-qapps-input :output
                                       list-qapps-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/apps.list")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceARN}")

(smithy/sdk/operation:define-operation predict-qapp :shape-name "PredictQApp"
                                       :input predict-qapp-input :output
                                       predict-qapp-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/apps.predictQApp")

(smithy/sdk/operation:define-operation start-qapp-session :shape-name
                                       "StartQAppSession" :input
                                       start-qapp-session-input :output
                                       start-qapp-session-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtime.startQAppSession")

(smithy/sdk/operation:define-operation stop-qapp-session :shape-name
                                       "StopQAppSession" :input
                                       stop-qapp-session-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtime.deleteMiniAppRun")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceARN}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceARN}")

(smithy/sdk/operation:define-operation update-library-item :shape-name
                                       "UpdateLibraryItem" :input
                                       update-library-item-input :output
                                       update-library-item-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.updateItem")

(smithy/sdk/operation:define-operation update-library-item-metadata :shape-name
                                       "UpdateLibraryItemMetadata" :input
                                       update-library-item-metadata-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalog.updateItemMetadata")

(smithy/sdk/operation:define-operation update-qapp :shape-name "UpdateQApp"
                                       :input update-qapp-input :output
                                       update-qapp-output :errors
                                       (access-denied-exception
                                        content-too-large-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/apps.update")

(smithy/sdk/operation:define-operation update-qapp-permissions :shape-name
                                       "UpdateQAppPermissions" :input
                                       update-qapp-permissions-input :output
                                       update-qapp-permissions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/apps.updateQAppPermissions")

(smithy/sdk/operation:define-operation update-qapp-session :shape-name
                                       "UpdateQAppSession" :input
                                       update-qapp-session-input :output
                                       update-qapp-session-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtime.updateQAppSession")

(smithy/sdk/operation:define-operation update-qapp-session-metadata :shape-name
                                       "UpdateQAppSessionMetadata" :input
                                       update-qapp-session-metadata-input
                                       :output
                                       update-qapp-session-metadata-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtime.updateQAppSessionMetadata")
