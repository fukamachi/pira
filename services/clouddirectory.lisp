(uiop/package:define-package #:pira/clouddirectory (:use)
                             (:export #:add-facet-to-object
                              #:amazon-cloud-directory-20170111 #:apply-schema
                              #:arn #:arns #:attach-object #:attach-policy
                              #:attach-to-index #:attach-typed-link
                              #:attribute-key #:attribute-key-and-value
                              #:attribute-key-and-value-list
                              #:attribute-key-list #:attribute-name
                              #:attribute-name-and-value
                              #:attribute-name-and-value-list
                              #:attribute-name-list #:batch-add-facet-to-object
                              #:batch-add-facet-to-object-response
                              #:batch-attach-object
                              #:batch-attach-object-response
                              #:batch-attach-policy
                              #:batch-attach-policy-response
                              #:batch-attach-to-index
                              #:batch-attach-to-index-response
                              #:batch-attach-typed-link
                              #:batch-attach-typed-link-response
                              #:batch-create-index
                              #:batch-create-index-response
                              #:batch-create-object
                              #:batch-create-object-response
                              #:batch-delete-object
                              #:batch-delete-object-response
                              #:batch-detach-from-index
                              #:batch-detach-from-index-response
                              #:batch-detach-object
                              #:batch-detach-object-response
                              #:batch-detach-policy
                              #:batch-detach-policy-response
                              #:batch-detach-typed-link
                              #:batch-detach-typed-link-response
                              #:batch-get-link-attributes
                              #:batch-get-link-attributes-response
                              #:batch-get-object-attributes
                              #:batch-get-object-attributes-response
                              #:batch-get-object-information
                              #:batch-get-object-information-response
                              #:batch-list-attached-indices
                              #:batch-list-attached-indices-response
                              #:batch-list-incoming-typed-links
                              #:batch-list-incoming-typed-links-response
                              #:batch-list-index #:batch-list-index-response
                              #:batch-list-object-attributes
                              #:batch-list-object-attributes-response
                              #:batch-list-object-children
                              #:batch-list-object-children-response
                              #:batch-list-object-parent-paths
                              #:batch-list-object-parent-paths-response
                              #:batch-list-object-parents
                              #:batch-list-object-parents-response
                              #:batch-list-object-policies
                              #:batch-list-object-policies-response
                              #:batch-list-outgoing-typed-links
                              #:batch-list-outgoing-typed-links-response
                              #:batch-list-policy-attachments
                              #:batch-list-policy-attachments-response
                              #:batch-lookup-policy
                              #:batch-lookup-policy-response
                              #:batch-operation-index #:batch-read
                              #:batch-read-exception
                              #:batch-read-exception-type
                              #:batch-read-operation
                              #:batch-read-operation-list
                              #:batch-read-operation-response
                              #:batch-read-operation-response-list
                              #:batch-read-successful-response
                              #:batch-reference-name
                              #:batch-remove-facet-from-object
                              #:batch-remove-facet-from-object-response
                              #:batch-update-link-attributes
                              #:batch-update-link-attributes-response
                              #:batch-update-object-attributes
                              #:batch-update-object-attributes-response
                              #:batch-write #:batch-write-exception-type
                              #:batch-write-operation
                              #:batch-write-operation-list
                              #:batch-write-operation-response
                              #:batch-write-operation-response-list
                              #:binary-attribute-value #:bool
                              #:boolean-attribute-value #:consistency-level
                              #:create-directory #:create-facet #:create-index
                              #:create-object #:create-schema
                              #:create-typed-link-facet #:date
                              #:datetime-attribute-value #:delete-directory
                              #:delete-facet #:delete-object #:delete-schema
                              #:delete-typed-link-facet #:detach-from-index
                              #:detach-object #:detach-policy
                              #:detach-typed-link #:directory #:directory-arn
                              #:directory-list #:directory-name
                              #:directory-state #:disable-directory
                              #:enable-directory #:exception-message #:facet
                              #:facet-attribute #:facet-attribute-definition
                              #:facet-attribute-list
                              #:facet-attribute-reference
                              #:facet-attribute-type #:facet-attribute-update
                              #:facet-attribute-update-list #:facet-name
                              #:facet-name-list #:facet-style
                              #:get-applied-schema-version #:get-directory
                              #:get-facet #:get-link-attributes
                              #:get-object-attributes #:get-object-information
                              #:get-schema-as-json
                              #:get-typed-link-facet-information
                              #:index-attachment #:index-attachment-list
                              #:link-attribute-action #:link-attribute-update
                              #:link-attribute-update-list #:link-name
                              #:link-name-to-object-identifier-map
                              #:list-applied-schema-arns
                              #:list-attached-indices
                              #:list-development-schema-arns #:list-directories
                              #:list-facet-attributes #:list-facet-names
                              #:list-incoming-typed-links #:list-index
                              #:list-managed-schema-arns
                              #:list-object-attributes #:list-object-children
                              #:list-object-parent-paths #:list-object-parents
                              #:list-object-policies
                              #:list-outgoing-typed-links
                              #:list-policy-attachments
                              #:list-published-schema-arns
                              #:list-tags-for-resource
                              #:list-typed-link-facet-attributes
                              #:list-typed-link-facet-names #:lookup-policy
                              #:next-token #:number-attribute-value
                              #:number-results #:object-attribute-action
                              #:object-attribute-range
                              #:object-attribute-range-list
                              #:object-attribute-update
                              #:object-attribute-update-list
                              #:object-identifier
                              #:object-identifier-and-link-name-list
                              #:object-identifier-and-link-name-tuple
                              #:object-identifier-list
                              #:object-identifier-to-link-name-map
                              #:object-reference #:object-type #:path-string
                              #:path-to-object-identifiers
                              #:path-to-object-identifiers-list
                              #:policy-attachment #:policy-attachment-list
                              #:policy-to-path #:policy-to-path-list
                              #:policy-type #:publish-schema
                              #:put-schema-from-json #:range-mode
                              #:remove-facet-from-object
                              #:required-attribute-behavior #:rule #:rule-key
                              #:rule-map #:rule-parameter-key
                              #:rule-parameter-map #:rule-parameter-value
                              #:rule-type #:schema-facet #:schema-facet-list
                              #:schema-json-document #:schema-name
                              #:selector-object-reference
                              #:string-attribute-value #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:tags-number-results
                              #:typed-attribute-value
                              #:typed-attribute-value-range
                              #:typed-link-attribute-definition
                              #:typed-link-attribute-definition-list
                              #:typed-link-attribute-range
                              #:typed-link-attribute-range-list
                              #:typed-link-facet
                              #:typed-link-facet-attribute-update
                              #:typed-link-facet-attribute-update-list
                              #:typed-link-name #:typed-link-name-list
                              #:typed-link-schema-and-facet-name
                              #:typed-link-specifier
                              #:typed-link-specifier-list #:untag-resource
                              #:update-action-type #:update-facet
                              #:update-link-attributes
                              #:update-object-attributes #:update-schema
                              #:update-typed-link-facet
                              #:upgrade-applied-schema
                              #:upgrade-published-schema #:version))
(common-lisp:in-package #:pira/clouddirectory)

(smithy/sdk/service:define-service amazon-cloud-directory-20170111 :shape-name
                                   "AmazonCloudDirectory_20170111" :version
                                   "2017-01-11" :title "Amazon CloudDirectory"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudDirectory")
                                      ("arnNamespace" . "clouddirectory")
                                      ("cloudFormationName" . "CloudDirectory")
                                      ("cloudTrailEventSource"
                                       . "clouddirectory.amazonaws.com")
                                      ("endpointPrefix" . "clouddirectory"))
                                     ("aws.auth#sigv4"
                                      ("name" . "clouddirectory"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input add-facet-to-object-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (schema-facet :target-type schema-facet
                                  :required common-lisp:t :member-name
                                  "SchemaFacet")
                                 (object-attribute-list :target-type
                                  attribute-key-and-value-list :member-name
                                  "ObjectAttributeList")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference"))
                                (:shape-name "AddFacetToObjectRequest"))

(smithy/sdk/shapes:define-output add-facet-to-object-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddFacetToObjectResponse"))

(smithy/sdk/shapes:define-input apply-schema-request common-lisp:nil
                                ((published-schema-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "PublishedSchemaArn")
                                 (directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "ApplySchemaRequest"))

(smithy/sdk/shapes:define-output apply-schema-response common-lisp:nil
                                 ((applied-schema-arn :target-type arn
                                   :member-name "AppliedSchemaArn")
                                  (directory-arn :target-type arn :member-name
                                   "DirectoryArn"))
                                 (:shape-name "ApplySchemaResponse"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arns :member arn)

(smithy/sdk/shapes:define-input attach-object-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (parent-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ParentReference")
                                 (child-reference :target-type object-reference
                                  :required common-lisp:t :member-name
                                  "ChildReference")
                                 (link-name :target-type link-name :required
                                  common-lisp:t :member-name "LinkName"))
                                (:shape-name "AttachObjectRequest"))

(smithy/sdk/shapes:define-output attach-object-response common-lisp:nil
                                 ((attached-object-identifier :target-type
                                   object-identifier :member-name
                                   "AttachedObjectIdentifier"))
                                 (:shape-name "AttachObjectResponse"))

(smithy/sdk/shapes:define-input attach-policy-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (policy-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "PolicyReference")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference"))
                                (:shape-name "AttachPolicyRequest"))

(smithy/sdk/shapes:define-output attach-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AttachPolicyResponse"))

(smithy/sdk/shapes:define-input attach-to-index-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (index-reference :target-type object-reference
                                  :required common-lisp:t :member-name
                                  "IndexReference")
                                 (target-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "TargetReference"))
                                (:shape-name "AttachToIndexRequest"))

(smithy/sdk/shapes:define-output attach-to-index-response common-lisp:nil
                                 ((attached-object-identifier :target-type
                                   object-identifier :member-name
                                   "AttachedObjectIdentifier"))
                                 (:shape-name "AttachToIndexResponse"))

(smithy/sdk/shapes:define-input attach-typed-link-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (source-object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "SourceObjectReference")
                                 (target-object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "TargetObjectReference")
                                 (typed-link-facet :target-type
                                  typed-link-schema-and-facet-name :required
                                  common-lisp:t :member-name "TypedLinkFacet")
                                 (attributes :target-type
                                  attribute-name-and-value-list :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name "AttachTypedLinkRequest"))

(smithy/sdk/shapes:define-output attach-typed-link-response common-lisp:nil
                                 ((typed-link-specifier :target-type
                                   typed-link-specifier :member-name
                                   "TypedLinkSpecifier"))
                                 (:shape-name "AttachTypedLinkResponse"))

(smithy/sdk/shapes:define-structure attribute-key common-lisp:nil
                                    ((schema-arn :target-type arn :required
                                      common-lisp:t :member-name "SchemaArn")
                                     (facet-name :target-type facet-name
                                      :required common-lisp:t :member-name
                                      "FacetName")
                                     (name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "AttributeKey"))

(smithy/sdk/shapes:define-structure attribute-key-and-value common-lisp:nil
                                    ((key :target-type attribute-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type typed-attribute-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "AttributeKeyAndValue"))

(smithy/sdk/shapes:define-list attribute-key-and-value-list :member
                               attribute-key-and-value)

(smithy/sdk/shapes:define-list attribute-key-list :member attribute-key)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-name-and-value common-lisp:nil
                                    ((attribute-name :target-type
                                      attribute-name :required common-lisp:t
                                      :member-name "AttributeName")
                                     (value :target-type typed-attribute-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "AttributeNameAndValue"))

(smithy/sdk/shapes:define-list attribute-name-and-value-list :member
                               attribute-name-and-value)

(smithy/sdk/shapes:define-list attribute-name-list :member attribute-name)

(smithy/sdk/shapes:define-structure batch-add-facet-to-object common-lisp:nil
                                    ((schema-facet :target-type schema-facet
                                      :required common-lisp:t :member-name
                                      "SchemaFacet")
                                     (object-attribute-list :target-type
                                      attribute-key-and-value-list :required
                                      common-lisp:t :member-name
                                      "ObjectAttributeList")
                                     (object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference"))
                                    (:shape-name "BatchAddFacetToObject"))

(smithy/sdk/shapes:define-structure batch-add-facet-to-object-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "BatchAddFacetToObjectResponse"))

(smithy/sdk/shapes:define-structure batch-attach-object common-lisp:nil
                                    ((parent-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ParentReference")
                                     (child-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ChildReference")
                                     (link-name :target-type link-name
                                      :required common-lisp:t :member-name
                                      "LinkName"))
                                    (:shape-name "BatchAttachObject"))

(smithy/sdk/shapes:define-structure batch-attach-object-response
                                    common-lisp:nil
                                    ((attached-object-identifier :target-type
                                      object-identifier :member-name
                                      "attachedObjectIdentifier"))
                                    (:shape-name "BatchAttachObjectResponse"))

(smithy/sdk/shapes:define-structure batch-attach-policy common-lisp:nil
                                    ((policy-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "PolicyReference")
                                     (object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference"))
                                    (:shape-name "BatchAttachPolicy"))

(smithy/sdk/shapes:define-structure batch-attach-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "BatchAttachPolicyResponse"))

(smithy/sdk/shapes:define-structure batch-attach-to-index common-lisp:nil
                                    ((index-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "IndexReference")
                                     (target-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "TargetReference"))
                                    (:shape-name "BatchAttachToIndex"))

(smithy/sdk/shapes:define-structure batch-attach-to-index-response
                                    common-lisp:nil
                                    ((attached-object-identifier :target-type
                                      object-identifier :member-name
                                      "AttachedObjectIdentifier"))
                                    (:shape-name "BatchAttachToIndexResponse"))

(smithy/sdk/shapes:define-structure batch-attach-typed-link common-lisp:nil
                                    ((source-object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "SourceObjectReference")
                                     (target-object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "TargetObjectReference")
                                     (typed-link-facet :target-type
                                      typed-link-schema-and-facet-name
                                      :required common-lisp:t :member-name
                                      "TypedLinkFacet")
                                     (attributes :target-type
                                      attribute-name-and-value-list :required
                                      common-lisp:t :member-name "Attributes"))
                                    (:shape-name "BatchAttachTypedLink"))

(smithy/sdk/shapes:define-structure batch-attach-typed-link-response
                                    common-lisp:nil
                                    ((typed-link-specifier :target-type
                                      typed-link-specifier :member-name
                                      "TypedLinkSpecifier"))
                                    (:shape-name
                                     "BatchAttachTypedLinkResponse"))

(smithy/sdk/shapes:define-structure batch-create-index common-lisp:nil
                                    ((ordered-indexed-attribute-list
                                      :target-type attribute-key-list :required
                                      common-lisp:t :member-name
                                      "OrderedIndexedAttributeList")
                                     (is-unique :target-type bool :required
                                      common-lisp:t :member-name "IsUnique")
                                     (parent-reference :target-type
                                      object-reference :member-name
                                      "ParentReference")
                                     (link-name :target-type link-name
                                      :member-name "LinkName")
                                     (batch-reference-name :target-type
                                      batch-reference-name :member-name
                                      "BatchReferenceName"))
                                    (:shape-name "BatchCreateIndex"))

(smithy/sdk/shapes:define-structure batch-create-index-response common-lisp:nil
                                    ((object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier"))
                                    (:shape-name "BatchCreateIndexResponse"))

(smithy/sdk/shapes:define-structure batch-create-object common-lisp:nil
                                    ((schema-facet :target-type
                                      schema-facet-list :required common-lisp:t
                                      :member-name "SchemaFacet")
                                     (object-attribute-list :target-type
                                      attribute-key-and-value-list :required
                                      common-lisp:t :member-name
                                      "ObjectAttributeList")
                                     (parent-reference :target-type
                                      object-reference :member-name
                                      "ParentReference")
                                     (link-name :target-type link-name
                                      :member-name "LinkName")
                                     (batch-reference-name :target-type
                                      batch-reference-name :member-name
                                      "BatchReferenceName"))
                                    (:shape-name "BatchCreateObject"))

(smithy/sdk/shapes:define-structure batch-create-object-response
                                    common-lisp:nil
                                    ((object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier"))
                                    (:shape-name "BatchCreateObjectResponse"))

(smithy/sdk/shapes:define-structure batch-delete-object common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference"))
                                    (:shape-name "BatchDeleteObject"))

(smithy/sdk/shapes:define-structure batch-delete-object-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "BatchDeleteObjectResponse"))

(smithy/sdk/shapes:define-structure batch-detach-from-index common-lisp:nil
                                    ((index-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "IndexReference")
                                     (target-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "TargetReference"))
                                    (:shape-name "BatchDetachFromIndex"))

(smithy/sdk/shapes:define-structure batch-detach-from-index-response
                                    common-lisp:nil
                                    ((detached-object-identifier :target-type
                                      object-identifier :member-name
                                      "DetachedObjectIdentifier"))
                                    (:shape-name
                                     "BatchDetachFromIndexResponse"))

(smithy/sdk/shapes:define-structure batch-detach-object common-lisp:nil
                                    ((parent-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ParentReference")
                                     (link-name :target-type link-name
                                      :required common-lisp:t :member-name
                                      "LinkName")
                                     (batch-reference-name :target-type
                                      batch-reference-name :member-name
                                      "BatchReferenceName"))
                                    (:shape-name "BatchDetachObject"))

(smithy/sdk/shapes:define-structure batch-detach-object-response
                                    common-lisp:nil
                                    ((detached-object-identifier :target-type
                                      object-identifier :member-name
                                      "detachedObjectIdentifier"))
                                    (:shape-name "BatchDetachObjectResponse"))

(smithy/sdk/shapes:define-structure batch-detach-policy common-lisp:nil
                                    ((policy-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "PolicyReference")
                                     (object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference"))
                                    (:shape-name "BatchDetachPolicy"))

(smithy/sdk/shapes:define-structure batch-detach-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "BatchDetachPolicyResponse"))

(smithy/sdk/shapes:define-structure batch-detach-typed-link common-lisp:nil
                                    ((typed-link-specifier :target-type
                                      typed-link-specifier :required
                                      common-lisp:t :member-name
                                      "TypedLinkSpecifier"))
                                    (:shape-name "BatchDetachTypedLink"))

(smithy/sdk/shapes:define-structure batch-detach-typed-link-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "BatchDetachTypedLinkResponse"))

(smithy/sdk/shapes:define-structure batch-get-link-attributes common-lisp:nil
                                    ((typed-link-specifier :target-type
                                      typed-link-specifier :required
                                      common-lisp:t :member-name
                                      "TypedLinkSpecifier")
                                     (attribute-names :target-type
                                      attribute-name-list :required
                                      common-lisp:t :member-name
                                      "AttributeNames"))
                                    (:shape-name "BatchGetLinkAttributes"))

(smithy/sdk/shapes:define-structure batch-get-link-attributes-response
                                    common-lisp:nil
                                    ((attributes :target-type
                                      attribute-key-and-value-list :member-name
                                      "Attributes"))
                                    (:shape-name
                                     "BatchGetLinkAttributesResponse"))

(smithy/sdk/shapes:define-structure batch-get-object-attributes common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (schema-facet :target-type schema-facet
                                      :required common-lisp:t :member-name
                                      "SchemaFacet")
                                     (attribute-names :target-type
                                      attribute-name-list :required
                                      common-lisp:t :member-name
                                      "AttributeNames"))
                                    (:shape-name "BatchGetObjectAttributes"))

(smithy/sdk/shapes:define-structure batch-get-object-attributes-response
                                    common-lisp:nil
                                    ((attributes :target-type
                                      attribute-key-and-value-list :member-name
                                      "Attributes"))
                                    (:shape-name
                                     "BatchGetObjectAttributesResponse"))

(smithy/sdk/shapes:define-structure batch-get-object-information
                                    common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference"))
                                    (:shape-name "BatchGetObjectInformation"))

(smithy/sdk/shapes:define-structure batch-get-object-information-response
                                    common-lisp:nil
                                    ((schema-facets :target-type
                                      schema-facet-list :member-name
                                      "SchemaFacets")
                                     (object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier"))
                                    (:shape-name
                                     "BatchGetObjectInformationResponse"))

(smithy/sdk/shapes:define-structure batch-list-attached-indices common-lisp:nil
                                    ((target-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "TargetReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListAttachedIndices"))

(smithy/sdk/shapes:define-structure batch-list-attached-indices-response
                                    common-lisp:nil
                                    ((index-attachments :target-type
                                      index-attachment-list :member-name
                                      "IndexAttachments")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListAttachedIndicesResponse"))

(smithy/sdk/shapes:define-structure batch-list-incoming-typed-links
                                    common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (filter-attribute-ranges :target-type
                                      typed-link-attribute-range-list
                                      :member-name "FilterAttributeRanges")
                                     (filter-typed-link :target-type
                                      typed-link-schema-and-facet-name
                                      :member-name "FilterTypedLink")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListIncomingTypedLinks"))

(smithy/sdk/shapes:define-structure batch-list-incoming-typed-links-response
                                    common-lisp:nil
                                    ((link-specifiers :target-type
                                      typed-link-specifier-list :member-name
                                      "LinkSpecifiers")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListIncomingTypedLinksResponse"))

(smithy/sdk/shapes:define-structure batch-list-index common-lisp:nil
                                    ((ranges-on-indexed-values :target-type
                                      object-attribute-range-list :member-name
                                      "RangesOnIndexedValues")
                                     (index-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "IndexReference")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "BatchListIndex"))

(smithy/sdk/shapes:define-structure batch-list-index-response common-lisp:nil
                                    ((index-attachments :target-type
                                      index-attachment-list :member-name
                                      "IndexAttachments")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "BatchListIndexResponse"))

(smithy/sdk/shapes:define-structure batch-list-object-attributes
                                    common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults")
                                     (facet-filter :target-type schema-facet
                                      :member-name "FacetFilter"))
                                    (:shape-name "BatchListObjectAttributes"))

(smithy/sdk/shapes:define-structure batch-list-object-attributes-response
                                    common-lisp:nil
                                    ((attributes :target-type
                                      attribute-key-and-value-list :member-name
                                      "Attributes")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListObjectAttributesResponse"))

(smithy/sdk/shapes:define-structure batch-list-object-children common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListObjectChildren"))

(smithy/sdk/shapes:define-structure batch-list-object-children-response
                                    common-lisp:nil
                                    ((children :target-type
                                      link-name-to-object-identifier-map
                                      :member-name "Children")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListObjectChildrenResponse"))

(smithy/sdk/shapes:define-structure batch-list-object-parent-paths
                                    common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListObjectParentPaths"))

(smithy/sdk/shapes:define-structure batch-list-object-parent-paths-response
                                    common-lisp:nil
                                    ((path-to-object-identifiers-list
                                      :target-type
                                      path-to-object-identifiers-list
                                      :member-name
                                      "PathToObjectIdentifiersList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListObjectParentPathsResponse"))

(smithy/sdk/shapes:define-structure batch-list-object-parents common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListObjectParents"))

(smithy/sdk/shapes:define-structure batch-list-object-parents-response
                                    common-lisp:nil
                                    ((parent-links :target-type
                                      object-identifier-and-link-name-list
                                      :member-name "ParentLinks")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListObjectParentsResponse"))

(smithy/sdk/shapes:define-structure batch-list-object-policies common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListObjectPolicies"))

(smithy/sdk/shapes:define-structure batch-list-object-policies-response
                                    common-lisp:nil
                                    ((attached-policy-ids :target-type
                                      object-identifier-list :member-name
                                      "AttachedPolicyIds")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListObjectPoliciesResponse"))

(smithy/sdk/shapes:define-structure batch-list-outgoing-typed-links
                                    common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (filter-attribute-ranges :target-type
                                      typed-link-attribute-range-list
                                      :member-name "FilterAttributeRanges")
                                     (filter-typed-link :target-type
                                      typed-link-schema-and-facet-name
                                      :member-name "FilterTypedLink")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListOutgoingTypedLinks"))

(smithy/sdk/shapes:define-structure batch-list-outgoing-typed-links-response
                                    common-lisp:nil
                                    ((typed-link-specifiers :target-type
                                      typed-link-specifier-list :member-name
                                      "TypedLinkSpecifiers")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListOutgoingTypedLinksResponse"))

(smithy/sdk/shapes:define-structure batch-list-policy-attachments
                                    common-lisp:nil
                                    ((policy-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "PolicyReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchListPolicyAttachments"))

(smithy/sdk/shapes:define-structure batch-list-policy-attachments-response
                                    common-lisp:nil
                                    ((object-identifiers :target-type
                                      object-identifier-list :member-name
                                      "ObjectIdentifiers")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchListPolicyAttachmentsResponse"))

(smithy/sdk/shapes:define-structure batch-lookup-policy common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type number-results
                                      :member-name "MaxResults"))
                                    (:shape-name "BatchLookupPolicy"))

(smithy/sdk/shapes:define-structure batch-lookup-policy-response
                                    common-lisp:nil
                                    ((policy-to-path-list :target-type
                                      policy-to-path-list :member-name
                                      "PolicyToPathList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "BatchLookupPolicyResponse"))

(smithy/sdk/shapes:define-type batch-operation-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure batch-read-exception common-lisp:nil
                                    ((type :target-type
                                      batch-read-exception-type :member-name
                                      "Type")
                                     (message :target-type exception-message
                                      :member-name "Message"))
                                    (:shape-name "BatchReadException"))

(smithy/sdk/shapes:define-enum batch-read-exception-type
    common-lisp:nil
  (:validation-exception "ValidationException")
  (:invalid-arn-exception "InvalidArnException")
  (:resource-not-found-exception "ResourceNotFoundException")
  (:invalid-next-token-exception "InvalidNextTokenException")
  (:access-denied-exception "AccessDeniedException")
  (:not-node-exception "NotNodeException")
  (:facet-validation-exception "FacetValidationException")
  (:cannot-list-parent-of-root-exception "CannotListParentOfRootException")
  (:not-index-exception "NotIndexException")
  (:not-policy-exception "NotPolicyException")
  (:directory-not-enabled-exception "DirectoryNotEnabledException")
  (:limit-exceeded-exception "LimitExceededException")
  (:internal-service-exception "InternalServiceException"))

(smithy/sdk/shapes:define-structure batch-read-operation common-lisp:nil
                                    ((list-object-attributes :target-type
                                      batch-list-object-attributes :member-name
                                      "ListObjectAttributes")
                                     (list-object-children :target-type
                                      batch-list-object-children :member-name
                                      "ListObjectChildren")
                                     (list-attached-indices :target-type
                                      batch-list-attached-indices :member-name
                                      "ListAttachedIndices")
                                     (list-object-parent-paths :target-type
                                      batch-list-object-parent-paths
                                      :member-name "ListObjectParentPaths")
                                     (get-object-information :target-type
                                      batch-get-object-information :member-name
                                      "GetObjectInformation")
                                     (get-object-attributes :target-type
                                      batch-get-object-attributes :member-name
                                      "GetObjectAttributes")
                                     (list-object-parents :target-type
                                      batch-list-object-parents :member-name
                                      "ListObjectParents")
                                     (list-object-policies :target-type
                                      batch-list-object-policies :member-name
                                      "ListObjectPolicies")
                                     (list-policy-attachments :target-type
                                      batch-list-policy-attachments
                                      :member-name "ListPolicyAttachments")
                                     (lookup-policy :target-type
                                      batch-lookup-policy :member-name
                                      "LookupPolicy")
                                     (list-index :target-type batch-list-index
                                      :member-name "ListIndex")
                                     (list-outgoing-typed-links :target-type
                                      batch-list-outgoing-typed-links
                                      :member-name "ListOutgoingTypedLinks")
                                     (list-incoming-typed-links :target-type
                                      batch-list-incoming-typed-links
                                      :member-name "ListIncomingTypedLinks")
                                     (get-link-attributes :target-type
                                      batch-get-link-attributes :member-name
                                      "GetLinkAttributes"))
                                    (:shape-name "BatchReadOperation"))

(smithy/sdk/shapes:define-list batch-read-operation-list :member
                               batch-read-operation)

(smithy/sdk/shapes:define-structure batch-read-operation-response
                                    common-lisp:nil
                                    ((successful-response :target-type
                                      batch-read-successful-response
                                      :member-name "SuccessfulResponse")
                                     (exception-response :target-type
                                      batch-read-exception :member-name
                                      "ExceptionResponse"))
                                    (:shape-name "BatchReadOperationResponse"))

(smithy/sdk/shapes:define-list batch-read-operation-response-list :member
                               batch-read-operation-response)

(smithy/sdk/shapes:define-input batch-read-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (operations :target-type
                                  batch-read-operation-list :required
                                  common-lisp:t :member-name "Operations")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "BatchReadRequest"))

(smithy/sdk/shapes:define-output batch-read-response common-lisp:nil
                                 ((responses :target-type
                                   batch-read-operation-response-list
                                   :member-name "Responses"))
                                 (:shape-name "BatchReadResponse"))

(smithy/sdk/shapes:define-structure batch-read-successful-response
                                    common-lisp:nil
                                    ((list-object-attributes :target-type
                                      batch-list-object-attributes-response
                                      :member-name "ListObjectAttributes")
                                     (list-object-children :target-type
                                      batch-list-object-children-response
                                      :member-name "ListObjectChildren")
                                     (get-object-information :target-type
                                      batch-get-object-information-response
                                      :member-name "GetObjectInformation")
                                     (get-object-attributes :target-type
                                      batch-get-object-attributes-response
                                      :member-name "GetObjectAttributes")
                                     (list-attached-indices :target-type
                                      batch-list-attached-indices-response
                                      :member-name "ListAttachedIndices")
                                     (list-object-parent-paths :target-type
                                      batch-list-object-parent-paths-response
                                      :member-name "ListObjectParentPaths")
                                     (list-object-policies :target-type
                                      batch-list-object-policies-response
                                      :member-name "ListObjectPolicies")
                                     (list-policy-attachments :target-type
                                      batch-list-policy-attachments-response
                                      :member-name "ListPolicyAttachments")
                                     (lookup-policy :target-type
                                      batch-lookup-policy-response :member-name
                                      "LookupPolicy")
                                     (list-index :target-type
                                      batch-list-index-response :member-name
                                      "ListIndex")
                                     (list-outgoing-typed-links :target-type
                                      batch-list-outgoing-typed-links-response
                                      :member-name "ListOutgoingTypedLinks")
                                     (list-incoming-typed-links :target-type
                                      batch-list-incoming-typed-links-response
                                      :member-name "ListIncomingTypedLinks")
                                     (get-link-attributes :target-type
                                      batch-get-link-attributes-response
                                      :member-name "GetLinkAttributes")
                                     (list-object-parents :target-type
                                      batch-list-object-parents-response
                                      :member-name "ListObjectParents"))
                                    (:shape-name "BatchReadSuccessfulResponse"))

(smithy/sdk/shapes:define-type batch-reference-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-remove-facet-from-object
                                    common-lisp:nil
                                    ((schema-facet :target-type schema-facet
                                      :required common-lisp:t :member-name
                                      "SchemaFacet")
                                     (object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference"))
                                    (:shape-name "BatchRemoveFacetFromObject"))

(smithy/sdk/shapes:define-structure batch-remove-facet-from-object-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "BatchRemoveFacetFromObjectResponse"))

(smithy/sdk/shapes:define-structure batch-update-link-attributes
                                    common-lisp:nil
                                    ((typed-link-specifier :target-type
                                      typed-link-specifier :required
                                      common-lisp:t :member-name
                                      "TypedLinkSpecifier")
                                     (attribute-updates :target-type
                                      link-attribute-update-list :required
                                      common-lisp:t :member-name
                                      "AttributeUpdates"))
                                    (:shape-name "BatchUpdateLinkAttributes"))

(smithy/sdk/shapes:define-structure batch-update-link-attributes-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "BatchUpdateLinkAttributesResponse"))

(smithy/sdk/shapes:define-structure batch-update-object-attributes
                                    common-lisp:nil
                                    ((object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "ObjectReference")
                                     (attribute-updates :target-type
                                      object-attribute-update-list :required
                                      common-lisp:t :member-name
                                      "AttributeUpdates"))
                                    (:shape-name "BatchUpdateObjectAttributes"))

(smithy/sdk/shapes:define-structure batch-update-object-attributes-response
                                    common-lisp:nil
                                    ((object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier"))
                                    (:shape-name
                                     "BatchUpdateObjectAttributesResponse"))

(smithy/sdk/shapes:define-error batch-write-exception common-lisp:nil
                                ((index :target-type batch-operation-index
                                  :member-name "Index")
                                 (type :target-type batch-write-exception-type
                                  :member-name "Type")
                                 (message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "BatchWriteException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum batch-write-exception-type
    common-lisp:nil
  (:internal-service-exception "InternalServiceException")
  (:validation-exception "ValidationException")
  (:invalid-arn-exception "InvalidArnException")
  (:link-name-already-in-use-exception "LinkNameAlreadyInUseException")
  (:still-contains-links-exception "StillContainsLinksException")
  (:facet-validation-exception "FacetValidationException")
  (:object-not-detached-exception "ObjectNotDetachedException")
  (:resource-not-found-exception "ResourceNotFoundException")
  (:access-denied-exception "AccessDeniedException")
  (:invalid-attachment-exception "InvalidAttachmentException")
  (:not-index-exception "NotIndexException")
  (:not-node-exception "NotNodeException")
  (:indexed-attribute-missing-exception "IndexedAttributeMissingException")
  (:object-already-detached-exception "ObjectAlreadyDetachedException")
  (:not-policy-exception "NotPolicyException")
  (:directory-not-enabled-exception "DirectoryNotEnabledException")
  (:limit-exceeded-exception "LimitExceededException")
  (:unsupported-index-type-exception "UnsupportedIndexTypeException"))

(smithy/sdk/shapes:define-structure batch-write-operation common-lisp:nil
                                    ((create-object :target-type
                                      batch-create-object :member-name
                                      "CreateObject")
                                     (attach-object :target-type
                                      batch-attach-object :member-name
                                      "AttachObject")
                                     (detach-object :target-type
                                      batch-detach-object :member-name
                                      "DetachObject")
                                     (update-object-attributes :target-type
                                      batch-update-object-attributes
                                      :member-name "UpdateObjectAttributes")
                                     (delete-object :target-type
                                      batch-delete-object :member-name
                                      "DeleteObject")
                                     (add-facet-to-object :target-type
                                      batch-add-facet-to-object :member-name
                                      "AddFacetToObject")
                                     (remove-facet-from-object :target-type
                                      batch-remove-facet-from-object
                                      :member-name "RemoveFacetFromObject")
                                     (attach-policy :target-type
                                      batch-attach-policy :member-name
                                      "AttachPolicy")
                                     (detach-policy :target-type
                                      batch-detach-policy :member-name
                                      "DetachPolicy")
                                     (create-index :target-type
                                      batch-create-index :member-name
                                      "CreateIndex")
                                     (attach-to-index :target-type
                                      batch-attach-to-index :member-name
                                      "AttachToIndex")
                                     (detach-from-index :target-type
                                      batch-detach-from-index :member-name
                                      "DetachFromIndex")
                                     (attach-typed-link :target-type
                                      batch-attach-typed-link :member-name
                                      "AttachTypedLink")
                                     (detach-typed-link :target-type
                                      batch-detach-typed-link :member-name
                                      "DetachTypedLink")
                                     (update-link-attributes :target-type
                                      batch-update-link-attributes :member-name
                                      "UpdateLinkAttributes"))
                                    (:shape-name "BatchWriteOperation"))

(smithy/sdk/shapes:define-list batch-write-operation-list :member
                               batch-write-operation)

(smithy/sdk/shapes:define-structure batch-write-operation-response
                                    common-lisp:nil
                                    ((create-object :target-type
                                      batch-create-object-response :member-name
                                      "CreateObject")
                                     (attach-object :target-type
                                      batch-attach-object-response :member-name
                                      "AttachObject")
                                     (detach-object :target-type
                                      batch-detach-object-response :member-name
                                      "DetachObject")
                                     (update-object-attributes :target-type
                                      batch-update-object-attributes-response
                                      :member-name "UpdateObjectAttributes")
                                     (delete-object :target-type
                                      batch-delete-object-response :member-name
                                      "DeleteObject")
                                     (add-facet-to-object :target-type
                                      batch-add-facet-to-object-response
                                      :member-name "AddFacetToObject")
                                     (remove-facet-from-object :target-type
                                      batch-remove-facet-from-object-response
                                      :member-name "RemoveFacetFromObject")
                                     (attach-policy :target-type
                                      batch-attach-policy-response :member-name
                                      "AttachPolicy")
                                     (detach-policy :target-type
                                      batch-detach-policy-response :member-name
                                      "DetachPolicy")
                                     (create-index :target-type
                                      batch-create-index-response :member-name
                                      "CreateIndex")
                                     (attach-to-index :target-type
                                      batch-attach-to-index-response
                                      :member-name "AttachToIndex")
                                     (detach-from-index :target-type
                                      batch-detach-from-index-response
                                      :member-name "DetachFromIndex")
                                     (attach-typed-link :target-type
                                      batch-attach-typed-link-response
                                      :member-name "AttachTypedLink")
                                     (detach-typed-link :target-type
                                      batch-detach-typed-link-response
                                      :member-name "DetachTypedLink")
                                     (update-link-attributes :target-type
                                      batch-update-link-attributes-response
                                      :member-name "UpdateLinkAttributes"))
                                    (:shape-name "BatchWriteOperationResponse"))

(smithy/sdk/shapes:define-list batch-write-operation-response-list :member
                               batch-write-operation-response)

(smithy/sdk/shapes:define-input batch-write-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (operations :target-type
                                  batch-write-operation-list :required
                                  common-lisp:t :member-name "Operations"))
                                (:shape-name "BatchWriteRequest"))

(smithy/sdk/shapes:define-output batch-write-response common-lisp:nil
                                 ((responses :target-type
                                   batch-write-operation-response-list
                                   :member-name "Responses"))
                                 (:shape-name "BatchWriteResponse"))

(smithy/sdk/shapes:define-type binary-attribute-value
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type bool smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-attribute-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error cannot-list-parent-of-root-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "CannotListParentOfRootException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum consistency-level
    common-lisp:nil
  (:serializable "SERIALIZABLE")
  (:eventual "EVENTUAL"))

(smithy/sdk/shapes:define-input create-directory-request common-lisp:nil
                                ((name :target-type directory-name :required
                                  common-lisp:t :member-name "Name")
                                 (schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "CreateDirectoryRequest"))

(smithy/sdk/shapes:define-output create-directory-response common-lisp:nil
                                 ((directory-arn :target-type directory-arn
                                   :required common-lisp:t :member-name
                                   "DirectoryArn")
                                  (name :target-type directory-name :required
                                   common-lisp:t :member-name "Name")
                                  (object-identifier :target-type
                                   object-identifier :required common-lisp:t
                                   :member-name "ObjectIdentifier")
                                  (applied-schema-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "AppliedSchemaArn"))
                                 (:shape-name "CreateDirectoryResponse"))

(smithy/sdk/shapes:define-input create-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type facet-name :required
                                  common-lisp:t :member-name "Name")
                                 (attributes :target-type facet-attribute-list
                                  :member-name "Attributes")
                                 (object-type :target-type object-type
                                  :member-name "ObjectType")
                                 (facet-style :target-type facet-style
                                  :member-name "FacetStyle"))
                                (:shape-name "CreateFacetRequest"))

(smithy/sdk/shapes:define-output create-facet-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateFacetResponse"))

(smithy/sdk/shapes:define-input create-index-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (ordered-indexed-attribute-list :target-type
                                  attribute-key-list :required common-lisp:t
                                  :member-name "OrderedIndexedAttributeList")
                                 (is-unique :target-type bool :required
                                  common-lisp:t :member-name "IsUnique")
                                 (parent-reference :target-type
                                  object-reference :member-name
                                  "ParentReference")
                                 (link-name :target-type link-name :member-name
                                  "LinkName"))
                                (:shape-name "CreateIndexRequest"))

(smithy/sdk/shapes:define-output create-index-response common-lisp:nil
                                 ((object-identifier :target-type
                                   object-identifier :member-name
                                   "ObjectIdentifier"))
                                 (:shape-name "CreateIndexResponse"))

(smithy/sdk/shapes:define-input create-object-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (schema-facets :target-type schema-facet-list
                                  :required common-lisp:t :member-name
                                  "SchemaFacets")
                                 (object-attribute-list :target-type
                                  attribute-key-and-value-list :member-name
                                  "ObjectAttributeList")
                                 (parent-reference :target-type
                                  object-reference :member-name
                                  "ParentReference")
                                 (link-name :target-type link-name :member-name
                                  "LinkName"))
                                (:shape-name "CreateObjectRequest"))

(smithy/sdk/shapes:define-output create-object-response common-lisp:nil
                                 ((object-identifier :target-type
                                   object-identifier :member-name
                                   "ObjectIdentifier"))
                                 (:shape-name "CreateObjectResponse"))

(smithy/sdk/shapes:define-input create-schema-request common-lisp:nil
                                ((name :target-type schema-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "CreateSchemaRequest"))

(smithy/sdk/shapes:define-output create-schema-response common-lisp:nil
                                 ((schema-arn :target-type arn :member-name
                                   "SchemaArn"))
                                 (:shape-name "CreateSchemaResponse"))

(smithy/sdk/shapes:define-input create-typed-link-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (facet :target-type typed-link-facet :required
                                  common-lisp:t :member-name "Facet"))
                                (:shape-name "CreateTypedLinkFacetRequest"))

(smithy/sdk/shapes:define-output create-typed-link-facet-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateTypedLinkFacetResponse"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type datetime-attribute-value
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-directory-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "DeleteDirectoryRequest"))

(smithy/sdk/shapes:define-output delete-directory-response common-lisp:nil
                                 ((directory-arn :target-type arn :required
                                   common-lisp:t :member-name "DirectoryArn"))
                                 (:shape-name "DeleteDirectoryResponse"))

(smithy/sdk/shapes:define-input delete-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type facet-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteFacetRequest"))

(smithy/sdk/shapes:define-output delete-facet-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFacetResponse"))

(smithy/sdk/shapes:define-input delete-object-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference"))
                                (:shape-name "DeleteObjectRequest"))

(smithy/sdk/shapes:define-output delete-object-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteObjectResponse"))

(smithy/sdk/shapes:define-input delete-schema-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "DeleteSchemaRequest"))

(smithy/sdk/shapes:define-output delete-schema-response common-lisp:nil
                                 ((schema-arn :target-type arn :member-name
                                   "SchemaArn"))
                                 (:shape-name "DeleteSchemaResponse"))

(smithy/sdk/shapes:define-input delete-typed-link-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type typed-link-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteTypedLinkFacetRequest"))

(smithy/sdk/shapes:define-output delete-typed-link-facet-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteTypedLinkFacetResponse"))

(smithy/sdk/shapes:define-input detach-from-index-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (index-reference :target-type object-reference
                                  :required common-lisp:t :member-name
                                  "IndexReference")
                                 (target-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "TargetReference"))
                                (:shape-name "DetachFromIndexRequest"))

(smithy/sdk/shapes:define-output detach-from-index-response common-lisp:nil
                                 ((detached-object-identifier :target-type
                                   object-identifier :member-name
                                   "DetachedObjectIdentifier"))
                                 (:shape-name "DetachFromIndexResponse"))

(smithy/sdk/shapes:define-input detach-object-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (parent-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ParentReference")
                                 (link-name :target-type link-name :required
                                  common-lisp:t :member-name "LinkName"))
                                (:shape-name "DetachObjectRequest"))

(smithy/sdk/shapes:define-output detach-object-response common-lisp:nil
                                 ((detached-object-identifier :target-type
                                   object-identifier :member-name
                                   "DetachedObjectIdentifier"))
                                 (:shape-name "DetachObjectResponse"))

(smithy/sdk/shapes:define-input detach-policy-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (policy-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "PolicyReference")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference"))
                                (:shape-name "DetachPolicyRequest"))

(smithy/sdk/shapes:define-output detach-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DetachPolicyResponse"))

(smithy/sdk/shapes:define-input detach-typed-link-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (typed-link-specifier :target-type
                                  typed-link-specifier :required common-lisp:t
                                  :member-name "TypedLinkSpecifier"))
                                (:shape-name "DetachTypedLinkRequest"))

(smithy/sdk/shapes:define-structure directory common-lisp:nil
                                    ((name :target-type directory-name
                                      :member-name "Name")
                                     (directory-arn :target-type directory-arn
                                      :member-name "DirectoryArn")
                                     (state :target-type directory-state
                                      :member-name "State")
                                     (creation-date-time :target-type date
                                      :member-name "CreationDateTime"))
                                    (:shape-name "Directory"))

(smithy/sdk/shapes:define-error directory-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DirectoryAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type directory-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error directory-deleted-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DirectoryDeletedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list directory-list :member directory)

(smithy/sdk/shapes:define-type directory-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error directory-not-disabled-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DirectoryNotDisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error directory-not-enabled-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "DirectoryNotEnabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum directory-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-input disable-directory-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "DisableDirectoryRequest"))

(smithy/sdk/shapes:define-output disable-directory-response common-lisp:nil
                                 ((directory-arn :target-type arn :required
                                   common-lisp:t :member-name "DirectoryArn"))
                                 (:shape-name "DisableDirectoryResponse"))

(smithy/sdk/shapes:define-input enable-directory-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "EnableDirectoryRequest"))

(smithy/sdk/shapes:define-output enable-directory-response common-lisp:nil
                                 ((directory-arn :target-type arn :required
                                   common-lisp:t :member-name "DirectoryArn"))
                                 (:shape-name "EnableDirectoryResponse"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure facet common-lisp:nil
                                    ((name :target-type facet-name :member-name
                                      "Name")
                                     (object-type :target-type object-type
                                      :member-name "ObjectType")
                                     (facet-style :target-type facet-style
                                      :member-name "FacetStyle"))
                                    (:shape-name "Facet"))

(smithy/sdk/shapes:define-error facet-already-exists-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "FacetAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure facet-attribute common-lisp:nil
                                    ((name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (attribute-definition :target-type
                                      facet-attribute-definition :member-name
                                      "AttributeDefinition")
                                     (attribute-reference :target-type
                                      facet-attribute-reference :member-name
                                      "AttributeReference")
                                     (required-behavior :target-type
                                      required-attribute-behavior :member-name
                                      "RequiredBehavior"))
                                    (:shape-name "FacetAttribute"))

(smithy/sdk/shapes:define-structure facet-attribute-definition common-lisp:nil
                                    ((type :target-type facet-attribute-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (default-value :target-type
                                      typed-attribute-value :member-name
                                      "DefaultValue")
                                     (is-immutable :target-type bool
                                      :member-name "IsImmutable")
                                     (rules :target-type rule-map :member-name
                                      "Rules"))
                                    (:shape-name "FacetAttributeDefinition"))

(smithy/sdk/shapes:define-list facet-attribute-list :member facet-attribute)

(smithy/sdk/shapes:define-structure facet-attribute-reference common-lisp:nil
                                    ((target-facet-name :target-type facet-name
                                      :required common-lisp:t :member-name
                                      "TargetFacetName")
                                     (target-attribute-name :target-type
                                      attribute-name :required common-lisp:t
                                      :member-name "TargetAttributeName"))
                                    (:shape-name "FacetAttributeReference"))

(smithy/sdk/shapes:define-enum facet-attribute-type
    common-lisp:nil
  (:string "STRING")
  (:binary "BINARY")
  (:boolean "BOOLEAN")
  (:number "NUMBER")
  (:datetime "DATETIME")
  (:variant "VARIANT"))

(smithy/sdk/shapes:define-structure facet-attribute-update common-lisp:nil
                                    ((attribute :target-type facet-attribute
                                      :member-name "Attribute")
                                     (action :target-type update-action-type
                                      :member-name "Action"))
                                    (:shape-name "FacetAttributeUpdate"))

(smithy/sdk/shapes:define-list facet-attribute-update-list :member
                               facet-attribute-update)

(smithy/sdk/shapes:define-error facet-in-use-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "FacetInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type facet-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list facet-name-list :member facet-name)

(smithy/sdk/shapes:define-error facet-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "FacetNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum facet-style
    common-lisp:nil
  (:static "STATIC")
  (:dynamic "DYNAMIC"))

(smithy/sdk/shapes:define-error facet-validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "FacetValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input get-applied-schema-version-request
                                common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"))
                                (:shape-name "GetAppliedSchemaVersionRequest"))

(smithy/sdk/shapes:define-output get-applied-schema-version-response
                                 common-lisp:nil
                                 ((applied-schema-arn :target-type arn
                                   :member-name "AppliedSchemaArn"))
                                 (:shape-name
                                  "GetAppliedSchemaVersionResponse"))

(smithy/sdk/shapes:define-input get-directory-request common-lisp:nil
                                ((directory-arn :target-type directory-arn
                                  :required common-lisp:t :member-name
                                  "DirectoryArn" :http-header
                                  "x-amz-data-partition"))
                                (:shape-name "GetDirectoryRequest"))

(smithy/sdk/shapes:define-output get-directory-response common-lisp:nil
                                 ((directory :target-type directory :required
                                   common-lisp:t :member-name "Directory"))
                                 (:shape-name "GetDirectoryResponse"))

(smithy/sdk/shapes:define-input get-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type facet-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "GetFacetRequest"))

(smithy/sdk/shapes:define-output get-facet-response common-lisp:nil
                                 ((facet :target-type facet :member-name
                                   "Facet"))
                                 (:shape-name "GetFacetResponse"))

(smithy/sdk/shapes:define-input get-link-attributes-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (typed-link-specifier :target-type
                                  typed-link-specifier :required common-lisp:t
                                  :member-name "TypedLinkSpecifier")
                                 (attribute-names :target-type
                                  attribute-name-list :required common-lisp:t
                                  :member-name "AttributeNames")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel"))
                                (:shape-name "GetLinkAttributesRequest"))

(smithy/sdk/shapes:define-output get-link-attributes-response common-lisp:nil
                                 ((attributes :target-type
                                   attribute-key-and-value-list :member-name
                                   "Attributes"))
                                 (:shape-name "GetLinkAttributesResponse"))

(smithy/sdk/shapes:define-input get-object-attributes-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level")
                                 (schema-facet :target-type schema-facet
                                  :required common-lisp:t :member-name
                                  "SchemaFacet")
                                 (attribute-names :target-type
                                  attribute-name-list :required common-lisp:t
                                  :member-name "AttributeNames"))
                                (:shape-name "GetObjectAttributesRequest"))

(smithy/sdk/shapes:define-output get-object-attributes-response common-lisp:nil
                                 ((attributes :target-type
                                   attribute-key-and-value-list :member-name
                                   "Attributes"))
                                 (:shape-name "GetObjectAttributesResponse"))

(smithy/sdk/shapes:define-input get-object-information-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "GetObjectInformationRequest"))

(smithy/sdk/shapes:define-output get-object-information-response
                                 common-lisp:nil
                                 ((schema-facets :target-type schema-facet-list
                                   :member-name "SchemaFacets")
                                  (object-identifier :target-type
                                   object-identifier :member-name
                                   "ObjectIdentifier"))
                                 (:shape-name "GetObjectInformationResponse"))

(smithy/sdk/shapes:define-input get-schema-as-json-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition"))
                                (:shape-name "GetSchemaAsJsonRequest"))

(smithy/sdk/shapes:define-output get-schema-as-json-response common-lisp:nil
                                 ((name :target-type schema-name :member-name
                                   "Name")
                                  (document :target-type schema-json-document
                                   :member-name "Document"))
                                 (:shape-name "GetSchemaAsJsonResponse"))

(smithy/sdk/shapes:define-input get-typed-link-facet-information-request
                                common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type typed-link-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name
                                 "GetTypedLinkFacetInformationRequest"))

(smithy/sdk/shapes:define-output get-typed-link-facet-information-response
                                 common-lisp:nil
                                 ((identity-attribute-order :target-type
                                   attribute-name-list :member-name
                                   "IdentityAttributeOrder"))
                                 (:shape-name
                                  "GetTypedLinkFacetInformationResponse"))

(smithy/sdk/shapes:define-error incompatible-schema-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "IncompatibleSchemaException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure index-attachment common-lisp:nil
                                    ((indexed-attributes :target-type
                                      attribute-key-and-value-list :member-name
                                      "IndexedAttributes")
                                     (object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier"))
                                    (:shape-name "IndexAttachment"))

(smithy/sdk/shapes:define-list index-attachment-list :member index-attachment)

(smithy/sdk/shapes:define-error indexed-attribute-missing-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name
                                 "IndexedAttributeMissingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-arn-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArnException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-attachment-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidAttachmentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-facet-update-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidFacetUpdateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-rule-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRuleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-schema-doc-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidSchemaDocException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tagging-request-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTaggingRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure link-attribute-action common-lisp:nil
                                    ((attribute-action-type :target-type
                                      update-action-type :member-name
                                      "AttributeActionType")
                                     (attribute-update-value :target-type
                                      typed-attribute-value :member-name
                                      "AttributeUpdateValue"))
                                    (:shape-name "LinkAttributeAction"))

(smithy/sdk/shapes:define-structure link-attribute-update common-lisp:nil
                                    ((attribute-key :target-type attribute-key
                                      :member-name "AttributeKey")
                                     (attribute-action :target-type
                                      link-attribute-action :member-name
                                      "AttributeAction"))
                                    (:shape-name "LinkAttributeUpdate"))

(smithy/sdk/shapes:define-list link-attribute-update-list :member
                               link-attribute-update)

(smithy/sdk/shapes:define-type link-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error link-name-already-in-use-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "LinkNameAlreadyInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map link-name-to-object-identifier-map :key link-name
                              :value object-identifier)

(smithy/sdk/shapes:define-input list-applied-schema-arns-request
                                common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn")
                                 (schema-arn :target-type arn :member-name
                                  "SchemaArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAppliedSchemaArnsRequest"))

(smithy/sdk/shapes:define-output list-applied-schema-arns-response
                                 common-lisp:nil
                                 ((schema-arns :target-type arns :member-name
                                   "SchemaArns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAppliedSchemaArnsResponse"))

(smithy/sdk/shapes:define-input list-attached-indices-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (target-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "TargetReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "ListAttachedIndicesRequest"))

(smithy/sdk/shapes:define-output list-attached-indices-response common-lisp:nil
                                 ((index-attachments :target-type
                                   index-attachment-list :member-name
                                   "IndexAttachments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAttachedIndicesResponse"))

(smithy/sdk/shapes:define-input list-development-schema-arns-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDevelopmentSchemaArnsRequest"))

(smithy/sdk/shapes:define-output list-development-schema-arns-response
                                 common-lisp:nil
                                 ((schema-arns :target-type arns :member-name
                                   "SchemaArns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDevelopmentSchemaArnsResponse"))

(smithy/sdk/shapes:define-input list-directories-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (state :target-type directory-state
                                  :member-name "state"))
                                (:shape-name "ListDirectoriesRequest"))

(smithy/sdk/shapes:define-output list-directories-response common-lisp:nil
                                 ((directories :target-type directory-list
                                   :required common-lisp:t :member-name
                                   "Directories")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDirectoriesResponse"))

(smithy/sdk/shapes:define-input list-facet-attributes-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type facet-name :required
                                  common-lisp:t :member-name "Name")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListFacetAttributesRequest"))

(smithy/sdk/shapes:define-output list-facet-attributes-response common-lisp:nil
                                 ((attributes :target-type facet-attribute-list
                                   :member-name "Attributes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFacetAttributesResponse"))

(smithy/sdk/shapes:define-input list-facet-names-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListFacetNamesRequest"))

(smithy/sdk/shapes:define-output list-facet-names-response common-lisp:nil
                                 ((facet-names :target-type facet-name-list
                                   :member-name "FacetNames")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFacetNamesResponse"))

(smithy/sdk/shapes:define-input list-incoming-typed-links-request
                                common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (filter-attribute-ranges :target-type
                                  typed-link-attribute-range-list :member-name
                                  "FilterAttributeRanges")
                                 (filter-typed-link :target-type
                                  typed-link-schema-and-facet-name :member-name
                                  "FilterTypedLink")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel"))
                                (:shape-name "ListIncomingTypedLinksRequest"))

(smithy/sdk/shapes:define-output list-incoming-typed-links-response
                                 common-lisp:nil
                                 ((link-specifiers :target-type
                                   typed-link-specifier-list :member-name
                                   "LinkSpecifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListIncomingTypedLinksResponse"))

(smithy/sdk/shapes:define-input list-index-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (ranges-on-indexed-values :target-type
                                  object-attribute-range-list :member-name
                                  "RangesOnIndexedValues")
                                 (index-reference :target-type object-reference
                                  :required common-lisp:t :member-name
                                  "IndexReference")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "ListIndexRequest"))

(smithy/sdk/shapes:define-output list-index-response common-lisp:nil
                                 ((index-attachments :target-type
                                   index-attachment-list :member-name
                                   "IndexAttachments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListIndexResponse"))

(smithy/sdk/shapes:define-input list-managed-schema-arns-request
                                common-lisp:nil
                                ((schema-arn :target-type arn :member-name
                                  "SchemaArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListManagedSchemaArnsRequest"))

(smithy/sdk/shapes:define-output list-managed-schema-arns-response
                                 common-lisp:nil
                                 ((schema-arns :target-type arns :member-name
                                   "SchemaArns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListManagedSchemaArnsResponse"))

(smithy/sdk/shapes:define-input list-object-attributes-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level")
                                 (facet-filter :target-type schema-facet
                                  :member-name "FacetFilter"))
                                (:shape-name "ListObjectAttributesRequest"))

(smithy/sdk/shapes:define-output list-object-attributes-response
                                 common-lisp:nil
                                 ((attributes :target-type
                                   attribute-key-and-value-list :member-name
                                   "Attributes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListObjectAttributesResponse"))

(smithy/sdk/shapes:define-input list-object-children-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "ListObjectChildrenRequest"))

(smithy/sdk/shapes:define-output list-object-children-response common-lisp:nil
                                 ((children :target-type
                                   link-name-to-object-identifier-map
                                   :member-name "Children")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListObjectChildrenResponse"))

(smithy/sdk/shapes:define-input list-object-parent-paths-request
                                common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListObjectParentPathsRequest"))

(smithy/sdk/shapes:define-output list-object-parent-paths-response
                                 common-lisp:nil
                                 ((path-to-object-identifiers-list :target-type
                                   path-to-object-identifiers-list :member-name
                                   "PathToObjectIdentifiersList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListObjectParentPathsResponse"))

(smithy/sdk/shapes:define-input list-object-parents-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level")
                                 (include-all-links-to-each-parent :target-type
                                  bool :member-name
                                  "IncludeAllLinksToEachParent"))
                                (:shape-name "ListObjectParentsRequest"))

(smithy/sdk/shapes:define-output list-object-parents-response common-lisp:nil
                                 ((parents :target-type
                                   object-identifier-to-link-name-map
                                   :member-name "Parents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (parent-links :target-type
                                   object-identifier-and-link-name-list
                                   :member-name "ParentLinks"))
                                 (:shape-name "ListObjectParentsResponse"))

(smithy/sdk/shapes:define-input list-object-policies-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "ListObjectPoliciesRequest"))

(smithy/sdk/shapes:define-output list-object-policies-response common-lisp:nil
                                 ((attached-policy-ids :target-type
                                   object-identifier-list :member-name
                                   "AttachedPolicyIds")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListObjectPoliciesResponse"))

(smithy/sdk/shapes:define-input list-outgoing-typed-links-request
                                common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (filter-attribute-ranges :target-type
                                  typed-link-attribute-range-list :member-name
                                  "FilterAttributeRanges")
                                 (filter-typed-link :target-type
                                  typed-link-schema-and-facet-name :member-name
                                  "FilterTypedLink")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel"))
                                (:shape-name "ListOutgoingTypedLinksRequest"))

(smithy/sdk/shapes:define-output list-outgoing-typed-links-response
                                 common-lisp:nil
                                 ((typed-link-specifiers :target-type
                                   typed-link-specifier-list :member-name
                                   "TypedLinkSpecifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOutgoingTypedLinksResponse"))

(smithy/sdk/shapes:define-input list-policy-attachments-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (policy-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "PolicyReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults")
                                 (consistency-level :target-type
                                  consistency-level :member-name
                                  "ConsistencyLevel" :http-header
                                  "x-amz-consistency-level"))
                                (:shape-name "ListPolicyAttachmentsRequest"))

(smithy/sdk/shapes:define-output list-policy-attachments-response
                                 common-lisp:nil
                                 ((object-identifiers :target-type
                                   object-identifier-list :member-name
                                   "ObjectIdentifiers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPolicyAttachmentsResponse"))

(smithy/sdk/shapes:define-input list-published-schema-arns-request
                                common-lisp:nil
                                ((schema-arn :target-type arn :member-name
                                  "SchemaArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPublishedSchemaArnsRequest"))

(smithy/sdk/shapes:define-output list-published-schema-arns-response
                                 common-lisp:nil
                                 ((schema-arns :target-type arns :member-name
                                   "SchemaArns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPublishedSchemaArnsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type tags-number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-typed-link-facet-attributes-request
                                common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type typed-link-name :required
                                  common-lisp:t :member-name "Name")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListTypedLinkFacetAttributesRequest"))

(smithy/sdk/shapes:define-output list-typed-link-facet-attributes-response
                                 common-lisp:nil
                                 ((attributes :target-type
                                   typed-link-attribute-definition-list
                                   :member-name "Attributes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListTypedLinkFacetAttributesResponse"))

(smithy/sdk/shapes:define-input list-typed-link-facet-names-request
                                common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListTypedLinkFacetNamesRequest"))

(smithy/sdk/shapes:define-output list-typed-link-facet-names-response
                                 common-lisp:nil
                                 ((facet-names :target-type
                                   typed-link-name-list :member-name
                                   "FacetNames")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListTypedLinkFacetNamesResponse"))

(smithy/sdk/shapes:define-input lookup-policy-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type number-results
                                  :member-name "MaxResults"))
                                (:shape-name "LookupPolicyRequest"))

(smithy/sdk/shapes:define-output lookup-policy-response common-lisp:nil
                                 ((policy-to-path-list :target-type
                                   policy-to-path-list :member-name
                                   "PolicyToPathList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "LookupPolicyResponse"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-index-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "NotIndexException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-node-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "NotNodeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error not-policy-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "NotPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type number-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error object-already-detached-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ObjectAlreadyDetachedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure object-attribute-action common-lisp:nil
                                    ((object-attribute-action-type :target-type
                                      update-action-type :member-name
                                      "ObjectAttributeActionType")
                                     (object-attribute-update-value
                                      :target-type typed-attribute-value
                                      :member-name
                                      "ObjectAttributeUpdateValue"))
                                    (:shape-name "ObjectAttributeAction"))

(smithy/sdk/shapes:define-structure object-attribute-range common-lisp:nil
                                    ((attribute-key :target-type attribute-key
                                      :member-name "AttributeKey")
                                     (range :target-type
                                      typed-attribute-value-range :member-name
                                      "Range"))
                                    (:shape-name "ObjectAttributeRange"))

(smithy/sdk/shapes:define-list object-attribute-range-list :member
                               object-attribute-range)

(smithy/sdk/shapes:define-structure object-attribute-update common-lisp:nil
                                    ((object-attribute-key :target-type
                                      attribute-key :member-name
                                      "ObjectAttributeKey")
                                     (object-attribute-action :target-type
                                      object-attribute-action :member-name
                                      "ObjectAttributeAction"))
                                    (:shape-name "ObjectAttributeUpdate"))

(smithy/sdk/shapes:define-list object-attribute-update-list :member
                               object-attribute-update)

(smithy/sdk/shapes:define-type object-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list object-identifier-and-link-name-list :member
                               object-identifier-and-link-name-tuple)

(smithy/sdk/shapes:define-structure object-identifier-and-link-name-tuple
                                    common-lisp:nil
                                    ((object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier")
                                     (link-name :target-type link-name
                                      :member-name "LinkName"))
                                    (:shape-name
                                     "ObjectIdentifierAndLinkNameTuple"))

(smithy/sdk/shapes:define-list object-identifier-list :member object-identifier)

(smithy/sdk/shapes:define-map object-identifier-to-link-name-map :key
                              object-identifier :value link-name)

(smithy/sdk/shapes:define-error object-not-detached-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ObjectNotDetachedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure object-reference common-lisp:nil
                                    ((selector :target-type
                                      selector-object-reference :member-name
                                      "Selector"))
                                    (:shape-name "ObjectReference"))

(smithy/sdk/shapes:define-enum object-type
    common-lisp:nil
  (:node "NODE")
  (:leaf-node "LEAF_NODE")
  (:policy "POLICY")
  (:index "INDEX"))

(smithy/sdk/shapes:define-type path-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure path-to-object-identifiers common-lisp:nil
                                    ((path :target-type path-string
                                      :member-name "Path")
                                     (object-identifiers :target-type
                                      object-identifier-list :member-name
                                      "ObjectIdentifiers"))
                                    (:shape-name "PathToObjectIdentifiers"))

(smithy/sdk/shapes:define-list path-to-object-identifiers-list :member
                               path-to-object-identifiers)

(smithy/sdk/shapes:define-structure policy-attachment common-lisp:nil
                                    ((policy-id :target-type object-identifier
                                      :member-name "PolicyId")
                                     (object-identifier :target-type
                                      object-identifier :member-name
                                      "ObjectIdentifier")
                                     (policy-type :target-type policy-type
                                      :member-name "PolicyType"))
                                    (:shape-name "PolicyAttachment"))

(smithy/sdk/shapes:define-list policy-attachment-list :member policy-attachment)

(smithy/sdk/shapes:define-structure policy-to-path common-lisp:nil
                                    ((path :target-type path-string
                                      :member-name "Path")
                                     (policies :target-type
                                      policy-attachment-list :member-name
                                      "Policies"))
                                    (:shape-name "PolicyToPath"))

(smithy/sdk/shapes:define-list policy-to-path-list :member policy-to-path)

(smithy/sdk/shapes:define-type policy-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input publish-schema-request common-lisp:nil
                                ((development-schema-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "DevelopmentSchemaArn" :http-header
                                  "x-amz-data-partition")
                                 (version :target-type version :required
                                  common-lisp:t :member-name "Version")
                                 (minor-version :target-type version
                                  :member-name "MinorVersion")
                                 (name :target-type schema-name :member-name
                                  "Name"))
                                (:shape-name "PublishSchemaRequest"))

(smithy/sdk/shapes:define-output publish-schema-response common-lisp:nil
                                 ((published-schema-arn :target-type arn
                                   :member-name "PublishedSchemaArn"))
                                 (:shape-name "PublishSchemaResponse"))

(smithy/sdk/shapes:define-input put-schema-from-json-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (document :target-type schema-json-document
                                  :required common-lisp:t :member-name
                                  "Document"))
                                (:shape-name "PutSchemaFromJsonRequest"))

(smithy/sdk/shapes:define-output put-schema-from-json-response common-lisp:nil
                                 ((arn :target-type arn :member-name "Arn"))
                                 (:shape-name "PutSchemaFromJsonResponse"))

(smithy/sdk/shapes:define-enum range-mode
    common-lisp:nil
  (:first "FIRST")
  (:last "LAST")
  (:last-before-missing-values "LAST_BEFORE_MISSING_VALUES")
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE"))

(smithy/sdk/shapes:define-input remove-facet-from-object-request
                                common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (schema-facet :target-type schema-facet
                                  :required common-lisp:t :member-name
                                  "SchemaFacet")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference"))
                                (:shape-name "RemoveFacetFromObjectRequest"))

(smithy/sdk/shapes:define-output remove-facet-from-object-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RemoveFacetFromObjectResponse"))

(smithy/sdk/shapes:define-enum required-attribute-behavior
    common-lisp:nil
  (:required-always "REQUIRED_ALWAYS")
  (:not-required "NOT_REQUIRED"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error retryable-conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "RetryableConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((type :target-type rule-type :member-name
                                      "Type")
                                     (parameters :target-type
                                      rule-parameter-map :member-name
                                      "Parameters"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-type rule-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map rule-map :key rule-key :value rule)

(smithy/sdk/shapes:define-type rule-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map rule-parameter-map :key rule-parameter-key :value
                              rule-parameter-value)

(smithy/sdk/shapes:define-type rule-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-type
    common-lisp:nil
  (:binary-length "BINARY_LENGTH")
  (:number-comparison "NUMBER_COMPARISON")
  (:string-from-set "STRING_FROM_SET")
  (:string-length "STRING_LENGTH"))

(smithy/sdk/shapes:define-error schema-already-exists-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "SchemaAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error schema-already-published-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "SchemaAlreadyPublishedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure schema-facet common-lisp:nil
                                    ((schema-arn :target-type arn :member-name
                                      "SchemaArn")
                                     (facet-name :target-type facet-name
                                      :member-name "FacetName"))
                                    (:shape-name "SchemaFacet"))

(smithy/sdk/shapes:define-list schema-facet-list :member schema-facet)

(smithy/sdk/shapes:define-type schema-json-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type selector-object-reference
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error still-contains-links-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "StillContainsLinksException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type string-attribute-value
                               smithy/sdk/smithy-types:string)

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
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tags-number-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union typed-attribute-value common-lisp:nil
                                ((string-value :target-type
                                  string-attribute-value :member-name
                                  "StringValue")
                                 (binary-value :target-type
                                  binary-attribute-value :member-name
                                  "BinaryValue")
                                 (boolean-value :target-type
                                  boolean-attribute-value :member-name
                                  "BooleanValue")
                                 (number-value :target-type
                                  number-attribute-value :member-name
                                  "NumberValue")
                                 (datetime-value :target-type
                                  datetime-attribute-value :member-name
                                  "DatetimeValue"))
                                (:shape-name "TypedAttributeValue"))

(smithy/sdk/shapes:define-structure typed-attribute-value-range common-lisp:nil
                                    ((start-mode :target-type range-mode
                                      :required common-lisp:t :member-name
                                      "StartMode")
                                     (start-value :target-type
                                      typed-attribute-value :member-name
                                      "StartValue")
                                     (end-mode :target-type range-mode
                                      :required common-lisp:t :member-name
                                      "EndMode")
                                     (end-value :target-type
                                      typed-attribute-value :member-name
                                      "EndValue"))
                                    (:shape-name "TypedAttributeValueRange"))

(smithy/sdk/shapes:define-structure typed-link-attribute-definition
                                    common-lisp:nil
                                    ((name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type facet-attribute-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (default-value :target-type
                                      typed-attribute-value :member-name
                                      "DefaultValue")
                                     (is-immutable :target-type bool
                                      :member-name "IsImmutable")
                                     (rules :target-type rule-map :member-name
                                      "Rules")
                                     (required-behavior :target-type
                                      required-attribute-behavior :required
                                      common-lisp:t :member-name
                                      "RequiredBehavior"))
                                    (:shape-name
                                     "TypedLinkAttributeDefinition"))

(smithy/sdk/shapes:define-list typed-link-attribute-definition-list :member
                               typed-link-attribute-definition)

(smithy/sdk/shapes:define-structure typed-link-attribute-range common-lisp:nil
                                    ((attribute-name :target-type
                                      attribute-name :member-name
                                      "AttributeName")
                                     (range :target-type
                                      typed-attribute-value-range :required
                                      common-lisp:t :member-name "Range"))
                                    (:shape-name "TypedLinkAttributeRange"))

(smithy/sdk/shapes:define-list typed-link-attribute-range-list :member
                               typed-link-attribute-range)

(smithy/sdk/shapes:define-structure typed-link-facet common-lisp:nil
                                    ((name :target-type typed-link-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (attributes :target-type
                                      typed-link-attribute-definition-list
                                      :required common-lisp:t :member-name
                                      "Attributes")
                                     (identity-attribute-order :target-type
                                      attribute-name-list :required
                                      common-lisp:t :member-name
                                      "IdentityAttributeOrder"))
                                    (:shape-name "TypedLinkFacet"))

(smithy/sdk/shapes:define-structure typed-link-facet-attribute-update
                                    common-lisp:nil
                                    ((attribute :target-type
                                      typed-link-attribute-definition :required
                                      common-lisp:t :member-name "Attribute")
                                     (action :target-type update-action-type
                                      :required common-lisp:t :member-name
                                      "Action"))
                                    (:shape-name
                                     "TypedLinkFacetAttributeUpdate"))

(smithy/sdk/shapes:define-list typed-link-facet-attribute-update-list :member
                               typed-link-facet-attribute-update)

(smithy/sdk/shapes:define-type typed-link-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list typed-link-name-list :member typed-link-name)

(smithy/sdk/shapes:define-structure typed-link-schema-and-facet-name
                                    common-lisp:nil
                                    ((schema-arn :target-type arn :required
                                      common-lisp:t :member-name "SchemaArn")
                                     (typed-link-name :target-type
                                      typed-link-name :required common-lisp:t
                                      :member-name "TypedLinkName"))
                                    (:shape-name "TypedLinkSchemaAndFacetName"))

(smithy/sdk/shapes:define-structure typed-link-specifier common-lisp:nil
                                    ((typed-link-facet :target-type
                                      typed-link-schema-and-facet-name
                                      :required common-lisp:t :member-name
                                      "TypedLinkFacet")
                                     (source-object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "SourceObjectReference")
                                     (target-object-reference :target-type
                                      object-reference :required common-lisp:t
                                      :member-name "TargetObjectReference")
                                     (identity-attribute-values :target-type
                                      attribute-name-and-value-list :required
                                      common-lisp:t :member-name
                                      "IdentityAttributeValues"))
                                    (:shape-name "TypedLinkSpecifier"))

(smithy/sdk/shapes:define-list typed-link-specifier-list :member
                               typed-link-specifier)

(smithy/sdk/shapes:define-error unsupported-index-type-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedIndexTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-enum update-action-type
    common-lisp:nil
  (:create-or-update "CREATE_OR_UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-input update-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type facet-name :required
                                  common-lisp:t :member-name "Name")
                                 (attribute-updates :target-type
                                  facet-attribute-update-list :member-name
                                  "AttributeUpdates")
                                 (object-type :target-type object-type
                                  :member-name "ObjectType"))
                                (:shape-name "UpdateFacetRequest"))

(smithy/sdk/shapes:define-output update-facet-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateFacetResponse"))

(smithy/sdk/shapes:define-input update-link-attributes-request common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (typed-link-specifier :target-type
                                  typed-link-specifier :required common-lisp:t
                                  :member-name "TypedLinkSpecifier")
                                 (attribute-updates :target-type
                                  link-attribute-update-list :required
                                  common-lisp:t :member-name
                                  "AttributeUpdates"))
                                (:shape-name "UpdateLinkAttributesRequest"))

(smithy/sdk/shapes:define-output update-link-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateLinkAttributesResponse"))

(smithy/sdk/shapes:define-input update-object-attributes-request
                                common-lisp:nil
                                ((directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn"
                                  :http-header "x-amz-data-partition")
                                 (object-reference :target-type
                                  object-reference :required common-lisp:t
                                  :member-name "ObjectReference")
                                 (attribute-updates :target-type
                                  object-attribute-update-list :required
                                  common-lisp:t :member-name
                                  "AttributeUpdates"))
                                (:shape-name "UpdateObjectAttributesRequest"))

(smithy/sdk/shapes:define-output update-object-attributes-response
                                 common-lisp:nil
                                 ((object-identifier :target-type
                                   object-identifier :member-name
                                   "ObjectIdentifier"))
                                 (:shape-name "UpdateObjectAttributesResponse"))

(smithy/sdk/shapes:define-input update-schema-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type schema-name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "UpdateSchemaRequest"))

(smithy/sdk/shapes:define-output update-schema-response common-lisp:nil
                                 ((schema-arn :target-type arn :member-name
                                   "SchemaArn"))
                                 (:shape-name "UpdateSchemaResponse"))

(smithy/sdk/shapes:define-input update-typed-link-facet-request common-lisp:nil
                                ((schema-arn :target-type arn :required
                                  common-lisp:t :member-name "SchemaArn"
                                  :http-header "x-amz-data-partition")
                                 (name :target-type typed-link-name :required
                                  common-lisp:t :member-name "Name")
                                 (attribute-updates :target-type
                                  typed-link-facet-attribute-update-list
                                  :required common-lisp:t :member-name
                                  "AttributeUpdates")
                                 (identity-attribute-order :target-type
                                  attribute-name-list :required common-lisp:t
                                  :member-name "IdentityAttributeOrder"))
                                (:shape-name "UpdateTypedLinkFacetRequest"))

(smithy/sdk/shapes:define-output update-typed-link-facet-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateTypedLinkFacetResponse"))

(smithy/sdk/shapes:define-input upgrade-applied-schema-request common-lisp:nil
                                ((published-schema-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "PublishedSchemaArn")
                                 (directory-arn :target-type arn :required
                                  common-lisp:t :member-name "DirectoryArn")
                                 (dry-run :target-type bool :member-name
                                  "DryRun"))
                                (:shape-name "UpgradeAppliedSchemaRequest"))

(smithy/sdk/shapes:define-output upgrade-applied-schema-response
                                 common-lisp:nil
                                 ((upgraded-schema-arn :target-type arn
                                   :member-name "UpgradedSchemaArn")
                                  (directory-arn :target-type arn :member-name
                                   "DirectoryArn"))
                                 (:shape-name "UpgradeAppliedSchemaResponse"))

(smithy/sdk/shapes:define-input upgrade-published-schema-request
                                common-lisp:nil
                                ((development-schema-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "DevelopmentSchemaArn")
                                 (published-schema-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "PublishedSchemaArn")
                                 (minor-version :target-type version :required
                                  common-lisp:t :member-name "MinorVersion")
                                 (dry-run :target-type bool :member-name
                                  "DryRun"))
                                (:shape-name "UpgradePublishedSchemaRequest"))

(smithy/sdk/shapes:define-output upgrade-published-schema-response
                                 common-lisp:nil
                                 ((upgraded-schema-arn :target-type arn
                                   :member-name "UpgradedSchemaArn"))
                                 (:shape-name "UpgradePublishedSchemaResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-facet-to-object :shape-name
                                       "AddFacetToObject" :input
                                       add-facet-to-object-request :output
                                       add-facet-to-object-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object/facets"
                                       :code 200)

(smithy/sdk/operation:define-operation apply-schema :shape-name "ApplySchema"
                                       :input apply-schema-request :output
                                       apply-schema-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-attachment-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        schema-already-exists-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/apply"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-object :shape-name "AttachObject"
                                       :input attach-object-request :output
                                       attach-object-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-attachment-exception
                                        limit-exceeded-exception
                                        link-name-already-in-use-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object/attach"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-policy :shape-name "AttachPolicy"
                                       :input attach-policy-request :output
                                       attach-policy-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        not-policy-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/policy/attach"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-to-index :shape-name
                                       "AttachToIndex" :input
                                       attach-to-index-request :output
                                       attach-to-index-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        indexed-attribute-missing-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-attachment-exception
                                        limit-exceeded-exception
                                        link-name-already-in-use-exception
                                        not-index-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/index/attach"
                                       :code 200)

(smithy/sdk/operation:define-operation attach-typed-link :shape-name
                                       "AttachTypedLink" :input
                                       attach-typed-link-request :output
                                       attach-typed-link-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-attachment-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/attach"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-read :shape-name "BatchRead"
                                       :input batch-read-request :output
                                       batch-read-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/batchread"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-write :shape-name "BatchWrite"
                                       :input batch-write-request :output
                                       batch-write-response :errors
                                       (access-denied-exception
                                        batch-write-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/batchwrite"
                                       :code 200)

(smithy/sdk/operation:define-operation create-directory :shape-name
                                       "CreateDirectory" :input
                                       create-directory-request :output
                                       create-directory-response :errors
                                       (access-denied-exception
                                        directory-already-exists-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/directory/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-facet :shape-name "CreateFacet"
                                       :input create-facet-request :output
                                       create-facet-response :errors
                                       (access-denied-exception
                                        facet-already-exists-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-rule-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/facet/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-index :shape-name "CreateIndex"
                                       :input create-index-request :output
                                       create-index-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        link-name-already-in-use-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        unsupported-index-type-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/index"
                                       :code 200)

(smithy/sdk/operation:define-operation create-object :shape-name "CreateObject"
                                       :input create-object-request :output
                                       create-object-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        link-name-already-in-use-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        unsupported-index-type-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object"
                                       :code 200)

(smithy/sdk/operation:define-operation create-schema :shape-name "CreateSchema"
                                       :input create-schema-request :output
                                       create-schema-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        retryable-conflict-exception
                                        schema-already-exists-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-typed-link-facet :shape-name
                                       "CreateTypedLinkFacet" :input
                                       create-typed-link-facet-request :output
                                       create-typed-link-facet-response :errors
                                       (access-denied-exception
                                        facet-already-exists-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-rule-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/facet/create"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-directory :shape-name
                                       "DeleteDirectory" :input
                                       delete-directory-request :output
                                       delete-directory-response :errors
                                       (access-denied-exception
                                        directory-deleted-exception
                                        directory-not-disabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/directory"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-facet :shape-name "DeleteFacet"
                                       :input delete-facet-request :output
                                       delete-facet-response :errors
                                       (access-denied-exception
                                        facet-in-use-exception
                                        facet-not-found-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/facet/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-object :shape-name "DeleteObject"
                                       :input delete-object-request :output
                                       delete-object-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        object-not-detached-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-schema :shape-name "DeleteSchema"
                                       :input delete-schema-request :output
                                       delete-schema-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        still-contains-links-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-typed-link-facet :shape-name
                                       "DeleteTypedLinkFacet" :input
                                       delete-typed-link-facet-request :output
                                       delete-typed-link-facet-response :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/facet/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-from-index :shape-name
                                       "DetachFromIndex" :input
                                       detach-from-index-request :output
                                       detach-from-index-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        not-index-exception
                                        object-already-detached-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/index/detach"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-object :shape-name "DetachObject"
                                       :input detach-object-request :output
                                       detach-object-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        not-node-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object/detach"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-policy :shape-name "DetachPolicy"
                                       :input detach-policy-request :output
                                       detach-policy-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        not-policy-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/policy/detach"
                                       :code 200)

(smithy/sdk/operation:define-operation detach-typed-link :shape-name
                                       "DetachTypedLink" :input
                                       detach-typed-link-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/detach"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-directory :shape-name
                                       "DisableDirectory" :input
                                       disable-directory-request :output
                                       disable-directory-response :errors
                                       (access-denied-exception
                                        directory-deleted-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/directory/disable"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-directory :shape-name
                                       "EnableDirectory" :input
                                       enable-directory-request :output
                                       enable-directory-response :errors
                                       (access-denied-exception
                                        directory-deleted-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/directory/enable"
                                       :code 200)

(smithy/sdk/operation:define-operation get-applied-schema-version :shape-name
                                       "GetAppliedSchemaVersion" :input
                                       get-applied-schema-version-request
                                       :output
                                       get-applied-schema-version-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/getappliedschema"
                                       :code 200)

(smithy/sdk/operation:define-operation get-directory :shape-name "GetDirectory"
                                       :input get-directory-request :output
                                       get-directory-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/directory/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-facet :shape-name "GetFacet" :input
                                       get-facet-request :output
                                       get-facet-response :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/facet"
                                       :code 200)

(smithy/sdk/operation:define-operation get-link-attributes :shape-name
                                       "GetLinkAttributes" :input
                                       get-link-attributes-request :output
                                       get-link-attributes-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/attributes/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-object-attributes :shape-name
                                       "GetObjectAttributes" :input
                                       get-object-attributes-request :output
                                       get-object-attributes-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/attributes/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-object-information :shape-name
                                       "GetObjectInformation" :input
                                       get-object-information-request :output
                                       get-object-information-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/information"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schema-as-json :shape-name
                                       "GetSchemaAsJson" :input
                                       get-schema-as-json-request :output
                                       get-schema-as-json-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/json"
                                       :code 200)

(smithy/sdk/operation:define-operation get-typed-link-facet-information
                                       :shape-name
                                       "GetTypedLinkFacetInformation" :input
                                       get-typed-link-facet-information-request
                                       :output
                                       get-typed-link-facet-information-response
                                       :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/facet/get"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applied-schema-arns :shape-name
                                       "ListAppliedSchemaArns" :input
                                       list-applied-schema-arns-request :output
                                       list-applied-schema-arns-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/applied"
                                       :code 200)

(smithy/sdk/operation:define-operation list-attached-indices :shape-name
                                       "ListAttachedIndices" :input
                                       list-attached-indices-request :output
                                       list-attached-indices-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/indices"
                                       :code 200)

(smithy/sdk/operation:define-operation list-development-schema-arns :shape-name
                                       "ListDevelopmentSchemaArns" :input
                                       list-development-schema-arns-request
                                       :output
                                       list-development-schema-arns-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/development"
                                       :code 200)

(smithy/sdk/operation:define-operation list-directories :shape-name
                                       "ListDirectories" :input
                                       list-directories-request :output
                                       list-directories-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/directory/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-facet-attributes :shape-name
                                       "ListFacetAttributes" :input
                                       list-facet-attributes-request :output
                                       list-facet-attributes-response :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/facet/attributes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-facet-names :shape-name
                                       "ListFacetNames" :input
                                       list-facet-names-request :output
                                       list-facet-names-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/facet/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-incoming-typed-links :shape-name
                                       "ListIncomingTypedLinks" :input
                                       list-incoming-typed-links-request
                                       :output
                                       list-incoming-typed-links-response
                                       :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/incoming"
                                       :code 200)

(smithy/sdk/operation:define-operation list-index :shape-name "ListIndex"
                                       :input list-index-request :output
                                       list-index-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        not-index-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/index/targets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-managed-schema-arns :shape-name
                                       "ListManagedSchemaArns" :input
                                       list-managed-schema-arns-request :output
                                       list-managed-schema-arns-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/managed"
                                       :code 200)

(smithy/sdk/operation:define-operation list-object-attributes :shape-name
                                       "ListObjectAttributes" :input
                                       list-object-attributes-request :output
                                       list-object-attributes-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/attributes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-object-children :shape-name
                                       "ListObjectChildren" :input
                                       list-object-children-request :output
                                       list-object-children-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        not-node-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/children"
                                       :code 200)

(smithy/sdk/operation:define-operation list-object-parent-paths :shape-name
                                       "ListObjectParentPaths" :input
                                       list-object-parent-paths-request :output
                                       list-object-parent-paths-response
                                       :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/parentpaths"
                                       :code 200)

(smithy/sdk/operation:define-operation list-object-parents :shape-name
                                       "ListObjectParents" :input
                                       list-object-parents-request :output
                                       list-object-parents-response :errors
                                       (access-denied-exception
                                        cannot-list-parent-of-root-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/parent"
                                       :code 200)

(smithy/sdk/operation:define-operation list-object-policies :shape-name
                                       "ListObjectPolicies" :input
                                       list-object-policies-request :output
                                       list-object-policies-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/object/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-outgoing-typed-links :shape-name
                                       "ListOutgoingTypedLinks" :input
                                       list-outgoing-typed-links-request
                                       :output
                                       list-outgoing-typed-links-response
                                       :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/outgoing"
                                       :code 200)

(smithy/sdk/operation:define-operation list-policy-attachments :shape-name
                                       "ListPolicyAttachments" :input
                                       list-policy-attachments-request :output
                                       list-policy-attachments-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        not-policy-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/policy/attachment"
                                       :code 200)

(smithy/sdk/operation:define-operation list-published-schema-arns :shape-name
                                       "ListPublishedSchemaArns" :input
                                       list-published-schema-arns-request
                                       :output
                                       list-published-schema-arns-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/published"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-tagging-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation list-typed-link-facet-attributes
                                       :shape-name
                                       "ListTypedLinkFacetAttributes" :input
                                       list-typed-link-facet-attributes-request
                                       :output
                                       list-typed-link-facet-attributes-response
                                       :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-typed-link-facet-names :shape-name
                                       "ListTypedLinkFacetNames" :input
                                       list-typed-link-facet-names-request
                                       :output
                                       list-typed-link-facet-names-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/facet/list"
                                       :code 200)

(smithy/sdk/operation:define-operation lookup-policy :shape-name "LookupPolicy"
                                       :input lookup-policy-request :output
                                       lookup-policy-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-next-token-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/policy/lookup"
                                       :code 200)

(smithy/sdk/operation:define-operation publish-schema :shape-name
                                       "PublishSchema" :input
                                       publish-schema-request :output
                                       publish-schema-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        schema-already-published-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/publish"
                                       :code 200)

(smithy/sdk/operation:define-operation put-schema-from-json :shape-name
                                       "PutSchemaFromJson" :input
                                       put-schema-from-json-request :output
                                       put-schema-from-json-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-rule-exception
                                        invalid-schema-doc-exception
                                        limit-exceeded-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/json"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-facet-from-object :shape-name
                                       "RemoveFacetFromObject" :input
                                       remove-facet-from-object-request :output
                                       remove-facet-from-object-response
                                       :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object/facets/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-tagging-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/tags/add"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-tagging-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/tags/remove"
                                       :code 200)

(smithy/sdk/operation:define-operation update-facet :shape-name "UpdateFacet"
                                       :input update-facet-request :output
                                       update-facet-response :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-facet-update-exception
                                        invalid-rule-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/facet"
                                       :code 200)

(smithy/sdk/operation:define-operation update-link-attributes :shape-name
                                       "UpdateLinkAttributes" :input
                                       update-link-attributes-request :output
                                       update-link-attributes-response :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/attributes/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-object-attributes :shape-name
                                       "UpdateObjectAttributes" :input
                                       update-object-attributes-request :output
                                       update-object-attributes-response
                                       :errors
                                       (access-denied-exception
                                        directory-not-enabled-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        link-name-already-in-use-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/object/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-schema :shape-name "UpdateSchema"
                                       :input update-schema-request :output
                                       update-schema-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-typed-link-facet :shape-name
                                       "UpdateTypedLinkFacet" :input
                                       update-typed-link-facet-request :output
                                       update-typed-link-facet-response :errors
                                       (access-denied-exception
                                        facet-not-found-exception
                                        facet-validation-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-facet-update-exception
                                        invalid-rule-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/typedlink/facet"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-applied-schema :shape-name
                                       "UpgradeAppliedSchema" :input
                                       upgrade-applied-schema-request :output
                                       upgrade-applied-schema-response :errors
                                       (access-denied-exception
                                        incompatible-schema-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-attachment-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        schema-already-exists-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/upgradeapplied"
                                       :code 200)

(smithy/sdk/operation:define-operation upgrade-published-schema :shape-name
                                       "UpgradePublishedSchema" :input
                                       upgrade-published-schema-request :output
                                       upgrade-published-schema-response
                                       :errors
                                       (access-denied-exception
                                        incompatible-schema-exception
                                        internal-service-exception
                                        invalid-arn-exception
                                        invalid-attachment-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        retryable-conflict-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/amazonclouddirectory/2017-01-11/schema/upgradepublished"
                                       :code 200)
