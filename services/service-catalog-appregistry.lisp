(uiop/package:define-package #:pira/service-catalog-appregistry (:use)
                             (:export #:aws242app-registry
                              #:app-registry-configuration #:application
                              #:application-arn #:application-id
                              #:application-specifier #:application-summaries
                              #:application-summary
                              #:application-tag-definition
                              #:application-tag-result #:application-tag-status
                              #:arn #:associate-attribute-group
                              #:associate-resource #:association-count
                              #:association-option #:attribute-group
                              #:attribute-group-arn #:attribute-group-details
                              #:attribute-group-details-list
                              #:attribute-group-id #:attribute-group-ids
                              #:attribute-group-specifier
                              #:attribute-group-summaries
                              #:attribute-group-summary #:attributes
                              #:client-token #:create-application
                              #:create-attribute-group #:created-by
                              #:delete-application #:delete-attribute-group
                              #:description #:disassociate-attribute-group
                              #:disassociate-resource #:get-application
                              #:get-associated-resource
                              #:get-associated-resource-filter
                              #:get-attribute-group #:get-configuration
                              #:integrations #:list-applications
                              #:list-associated-attribute-groups
                              #:list-associated-resources
                              #:list-attribute-groups
                              #:list-attribute-groups-for-application
                              #:list-tags-for-resource #:max-results #:name
                              #:next-token #:options #:put-configuration
                              #:resource #:resource-details #:resource-group
                              #:resource-group-state #:resource-info
                              #:resource-integrations #:resource-item-status
                              #:resource-item-type #:resource-specifier
                              #:resource-type #:resources #:resources-list
                              #:resources-list-item
                              #:resources-list-item-error-message #:string
                              #:sync-action #:sync-resource #:tag-key
                              #:tag-key-config #:tag-keys
                              #:tag-query-configuration #:tag-resource
                              #:tag-value #:tags #:timestamp #:untag-resource
                              #:update-application #:update-attribute-group))
(common-lisp:in-package #:pira/service-catalog-appregistry)

(smithy/sdk/service:define-service aws242app-registry :shape-name
                                   "AWS242AppRegistry" :version "2020-06-24"
                                   :title "AWS Service Catalog App Registry"
                                   :operations
                                   '(associate-attribute-group
                                     associate-resource create-application
                                     create-attribute-group delete-application
                                     delete-attribute-group
                                     disassociate-attribute-group
                                     disassociate-resource get-application
                                     get-associated-resource
                                     get-attribute-group get-configuration
                                     list-applications
                                     list-associated-attribute-groups
                                     list-associated-resources
                                     list-attribute-groups
                                     list-attribute-groups-for-application
                                     list-tags-for-resource put-configuration
                                     sync-resource tag-resource untag-resource
                                     update-application update-attribute-group)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Service Catalog AppRegistry")
                                      ("arnNamespace" . "servicecatalog")
                                      ("cloudFormationName"
                                       . "ServiceCatalogAppRegistry")
                                      ("cloudTrailEventSource"
                                       . "servicecatalogappregistry.amazonaws.com")
                                      ("docId"
                                       . "AWS242AppRegistry-2020-06-24")
                                      ("endpointPrefix"
                                       . "servicecatalog-appregistry"))
                                     ("aws.auth#sigv4"
                                      ("name" . "servicecatalog"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure app-registry-configuration common-lisp:nil
                                    ((tag-query-configuration :target-type
                                      tag-query-configuration :member-name
                                      "tagQueryConfiguration"))
                                    (:shape-name "AppRegistryConfiguration"))

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((id :target-type application-id
                                      :member-name "id")
                                     (arn :target-type application-arn
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (application-tag :target-type
                                      application-tag-definition :member-name
                                      "applicationTag"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-specifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-summaries :member
                               application-summary)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((id :target-type application-id
                                      :member-name "id")
                                     (arn :target-type application-arn
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-map application-tag-definition :key tag-key :value
                              tag-value)

(smithy/sdk/shapes:define-structure application-tag-result common-lisp:nil
                                    ((application-tag-status :target-type
                                      application-tag-status :member-name
                                      "applicationTagStatus")
                                     (error-message :target-type string
                                      :member-name "errorMessage")
                                     (resources :target-type resources-list
                                      :member-name "resources")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ApplicationTagResult"))

(smithy/sdk/shapes:define-enum application-tag-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:success "SUCCESS")
  (:failure "FAILURE"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-attribute-group-request
                                common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (attribute-group :target-type
                                  attribute-group-specifier :required
                                  common-lisp:t :member-name "attributeGroup"
                                  :http-label common-lisp:t))
                                (:shape-name "AssociateAttributeGroupRequest"))

(smithy/sdk/shapes:define-output associate-attribute-group-response
                                 common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "applicationArn")
                                  (attribute-group-arn :target-type
                                   attribute-group-arn :member-name
                                   "attributeGroupArn"))
                                 (:shape-name
                                  "AssociateAttributeGroupResponse"))

(smithy/sdk/shapes:define-input associate-resource-request common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType" :http-label common-lisp:t)
                                 (resource :target-type resource-specifier
                                  :required common-lisp:t :member-name
                                  "resource" :http-label common-lisp:t)
                                 (options :target-type options :member-name
                                  "options"))
                                (:shape-name "AssociateResourceRequest"))

(smithy/sdk/shapes:define-output associate-resource-response common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "applicationArn")
                                  (resource-arn :target-type arn :member-name
                                   "resourceArn")
                                  (options :target-type options :member-name
                                   "options"))
                                 (:shape-name "AssociateResourceResponse"))

(smithy/sdk/shapes:define-type association-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum association-option
    common-lisp:nil
  (:apply-application-tag "APPLY_APPLICATION_TAG")
  (:skip-application-tag "SKIP_APPLICATION_TAG"))

(smithy/sdk/shapes:define-structure attribute-group common-lisp:nil
                                    ((id :target-type attribute-group-id
                                      :member-name "id")
                                     (arn :target-type attribute-group-arn
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "AttributeGroup"))

(smithy/sdk/shapes:define-type attribute-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-group-details common-lisp:nil
                                    ((id :target-type attribute-group-id
                                      :member-name "id")
                                     (arn :target-type attribute-group-arn
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (created-by :target-type created-by
                                      :member-name "createdBy"))
                                    (:shape-name "AttributeGroupDetails"))

(smithy/sdk/shapes:define-list attribute-group-details-list :member
                               attribute-group-details)

(smithy/sdk/shapes:define-type attribute-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-group-ids :member attribute-group-id)

(smithy/sdk/shapes:define-type attribute-group-specifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-group-summaries :member
                               attribute-group-summary)

(smithy/sdk/shapes:define-structure attribute-group-summary common-lisp:nil
                                    ((id :target-type attribute-group-id
                                      :member-name "id")
                                     (arn :target-type attribute-group-arn
                                      :member-name "arn")
                                     (name :target-type name :member-name
                                      "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-time :target-type timestamp
                                      :member-name "creationTime")
                                     (last-update-time :target-type timestamp
                                      :member-name "lastUpdateTime")
                                     (created-by :target-type created-by
                                      :member-name "createdBy"))
                                    (:shape-name "AttributeGroupSummary"))

(smithy/sdk/shapes:define-type attributes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tags :member-name "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-response common-lisp:nil
                                 ((application :target-type application
                                   :member-name "application"))
                                 (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-input create-attribute-group-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (attributes :target-type attributes :required
                                  common-lisp:t :member-name "attributes")
                                 (tags :target-type tags :member-name "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateAttributeGroupRequest"))

(smithy/sdk/shapes:define-output create-attribute-group-response
                                 common-lisp:nil
                                 ((attribute-group :target-type attribute-group
                                   :member-name "attributeGroup"))
                                 (:shape-name "CreateAttributeGroupResponse"))

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-response common-lisp:nil
                                 ((application :target-type application-summary
                                   :member-name "application"))
                                 (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-attribute-group-request common-lisp:nil
                                ((attribute-group :target-type
                                  attribute-group-specifier :required
                                  common-lisp:t :member-name "attributeGroup"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAttributeGroupRequest"))

(smithy/sdk/shapes:define-output delete-attribute-group-response
                                 common-lisp:nil
                                 ((attribute-group :target-type
                                   attribute-group-summary :member-name
                                   "attributeGroup"))
                                 (:shape-name "DeleteAttributeGroupResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-attribute-group-request
                                common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (attribute-group :target-type
                                  attribute-group-specifier :required
                                  common-lisp:t :member-name "attributeGroup"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateAttributeGroupRequest"))

(smithy/sdk/shapes:define-output disassociate-attribute-group-response
                                 common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "applicationArn")
                                  (attribute-group-arn :target-type
                                   attribute-group-arn :member-name
                                   "attributeGroupArn"))
                                 (:shape-name
                                  "DisassociateAttributeGroupResponse"))

(smithy/sdk/shapes:define-input disassociate-resource-request common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType" :http-label common-lisp:t)
                                 (resource :target-type resource-specifier
                                  :required common-lisp:t :member-name
                                  "resource" :http-label common-lisp:t))
                                (:shape-name "DisassociateResourceRequest"))

(smithy/sdk/shapes:define-output disassociate-resource-response common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "applicationArn")
                                  (resource-arn :target-type arn :member-name
                                   "resourceArn"))
                                 (:shape-name "DisassociateResourceResponse"))

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-output get-application-response common-lisp:nil
                                 ((id :target-type application-id :member-name
                                   "id")
                                  (arn :target-type application-arn
                                   :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-update-time :target-type timestamp
                                   :member-name "lastUpdateTime")
                                  (associated-resource-count :target-type
                                   association-count :member-name
                                   "associatedResourceCount")
                                  (tags :target-type tags :member-name "tags")
                                  (integrations :target-type integrations
                                   :member-name "integrations")
                                  (application-tag :target-type
                                   application-tag-definition :member-name
                                   "applicationTag"))
                                 (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-list get-associated-resource-filter :member
                               resource-item-status)

(smithy/sdk/shapes:define-input get-associated-resource-request common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType" :http-label common-lisp:t)
                                 (resource :target-type resource-specifier
                                  :required common-lisp:t :member-name
                                  "resource" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (resource-tag-status :target-type
                                  get-associated-resource-filter :member-name
                                  "resourceTagStatus" :http-query
                                  "resourceTagStatus")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "GetAssociatedResourceRequest"))

(smithy/sdk/shapes:define-output get-associated-resource-response
                                 common-lisp:nil
                                 ((resource :target-type resource :member-name
                                   "resource")
                                  (options :target-type options :member-name
                                   "options")
                                  (application-tag-result :target-type
                                   application-tag-result :member-name
                                   "applicationTagResult"))
                                 (:shape-name "GetAssociatedResourceResponse"))

(smithy/sdk/shapes:define-input get-attribute-group-request common-lisp:nil
                                ((attribute-group :target-type
                                  attribute-group-specifier :required
                                  common-lisp:t :member-name "attributeGroup"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAttributeGroupRequest"))

(smithy/sdk/shapes:define-output get-attribute-group-response common-lisp:nil
                                 ((id :target-type attribute-group-id
                                   :member-name "id")
                                  (arn :target-type attribute-group-arn
                                   :member-name "arn")
                                  (name :target-type name :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (attributes :target-type attributes
                                   :member-name "attributes")
                                  (creation-time :target-type timestamp
                                   :member-name "creationTime")
                                  (last-update-time :target-type timestamp
                                   :member-name "lastUpdateTime")
                                  (tags :target-type tags :member-name "tags")
                                  (created-by :target-type created-by
                                   :member-name "createdBy"))
                                 (:shape-name "GetAttributeGroupResponse"))

(smithy/sdk/shapes:define-output get-configuration-response common-lisp:nil
                                 ((configuration :target-type
                                   app-registry-configuration :member-name
                                   "configuration"))
                                 (:shape-name "GetConfigurationResponse"))

(smithy/sdk/shapes:define-structure integrations common-lisp:nil
                                    ((resource-group :target-type
                                      resource-group :member-name
                                      "resourceGroup")
                                     (application-tag-resource-group
                                      :target-type resource-group :member-name
                                      "applicationTagResourceGroup"))
                                    (:shape-name "Integrations"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-output list-applications-response common-lisp:nil
                                 ((applications :target-type
                                   application-summaries :member-name
                                   "applications")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-associated-attribute-groups-request
                                common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListAssociatedAttributeGroupsRequest"))

(smithy/sdk/shapes:define-output list-associated-attribute-groups-response
                                 common-lisp:nil
                                 ((attribute-groups :target-type
                                   attribute-group-ids :member-name
                                   "attributeGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAssociatedAttributeGroupsResponse"))

(smithy/sdk/shapes:define-input list-associated-resources-request
                                common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAssociatedResourcesRequest"))

(smithy/sdk/shapes:define-output list-associated-resources-response
                                 common-lisp:nil
                                 ((resources :target-type resources
                                   :member-name "resources")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAssociatedResourcesResponse"))

(smithy/sdk/shapes:define-input list-attribute-groups-for-application-request
                                common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListAttributeGroupsForApplicationRequest"))

(smithy/sdk/shapes:define-output list-attribute-groups-for-application-response
                                 common-lisp:nil
                                 ((attribute-groups-details :target-type
                                   attribute-group-details-list :member-name
                                   "attributeGroupsDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAttributeGroupsForApplicationResponse"))

(smithy/sdk/shapes:define-input list-attribute-groups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListAttributeGroupsRequest"))

(smithy/sdk/shapes:define-output list-attribute-groups-response common-lisp:nil
                                 ((attribute-groups :target-type
                                   attribute-group-summaries :member-name
                                   "attributeGroups")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAttributeGroupsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list options :member association-option)

(smithy/sdk/shapes:define-input put-configuration-request common-lisp:nil
                                ((configuration :target-type
                                  app-registry-configuration :required
                                  common-lisp:t :member-name "configuration"))
                                (:shape-name "PutConfigurationRequest"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((name :target-type resource-specifier
                                      :member-name "name")
                                     (arn :target-type arn :member-name "arn")
                                     (association-time :target-type timestamp
                                      :member-name "associationTime")
                                     (integrations :target-type
                                      resource-integrations :member-name
                                      "integrations"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-structure resource-details common-lisp:nil
                                    ((tag-value :target-type tag-value
                                      :member-name "tagValue"))
                                    (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-structure resource-group common-lisp:nil
                                    ((state :target-type resource-group-state
                                      :member-name "state")
                                     (arn :target-type arn :member-name "arn")
                                     (error-message :target-type string
                                      :member-name "errorMessage"))
                                    (:shape-name "ResourceGroup"))

(smithy/sdk/shapes:define-enum resource-group-state
    common-lisp:nil
  (:creating "CREATING")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:updating "UPDATING")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure resource-info common-lisp:nil
                                    ((name :target-type resource-specifier
                                      :member-name "name")
                                     (arn :target-type arn :member-name "arn")
                                     (resource-type :target-type resource-type
                                      :member-name "resourceType")
                                     (resource-details :target-type
                                      resource-details :member-name
                                      "resourceDetails")
                                     (options :target-type options :member-name
                                      "options"))
                                    (:shape-name "ResourceInfo"))

(smithy/sdk/shapes:define-structure resource-integrations common-lisp:nil
                                    ((resource-group :target-type
                                      resource-group :member-name
                                      "resourceGroup"))
                                    (:shape-name "ResourceIntegrations"))

(smithy/sdk/shapes:define-enum resource-item-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-type resource-item-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-specifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:cfn-stack "CFN_STACK")
  (:resource-tag-value "RESOURCE_TAG_VALUE"))

(smithy/sdk/shapes:define-list resources :member resource-info)

(smithy/sdk/shapes:define-list resources-list :member resources-list-item)

(smithy/sdk/shapes:define-structure resources-list-item common-lisp:nil
                                    ((resource-arn :target-type arn
                                      :member-name "resourceArn")
                                     (error-message :target-type
                                      resources-list-item-error-message
                                      :member-name "errorMessage")
                                     (status :target-type string :member-name
                                      "status")
                                     (resource-type :target-type
                                      resource-item-type :member-name
                                      "resourceType"))
                                    (:shape-name "ResourcesListItem"))

(smithy/sdk/shapes:define-type resources-list-item-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sync-action
    common-lisp:nil
  (:start-sync "START_SYNC")
  (:no-action "NO_ACTION"))

(smithy/sdk/shapes:define-input sync-resource-request common-lisp:nil
                                ((resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType" :http-label common-lisp:t)
                                 (resource :target-type resource-specifier
                                  :required common-lisp:t :member-name
                                  "resource" :http-label common-lisp:t))
                                (:shape-name "SyncResourceRequest"))

(smithy/sdk/shapes:define-output sync-resource-response common-lisp:nil
                                 ((application-arn :target-type application-arn
                                   :member-name "applicationArn")
                                  (resource-arn :target-type arn :member-name
                                   "resourceArn")
                                  (action-taken :target-type sync-action
                                   :member-name "actionTaken"))
                                 (:shape-name "SyncResourceResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key-config smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-structure tag-query-configuration common-lisp:nil
                                    ((tag-key :target-type tag-key-config
                                      :member-name "tagKey"))
                                    (:shape-name "TagQueryConfiguration"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type string :member-name
                                  "serviceCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application :target-type
                                  application-specifier :required common-lisp:t
                                  :member-name "application" :http-label
                                  common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-response common-lisp:nil
                                 ((application :target-type application
                                   :member-name "application"))
                                 (:shape-name "UpdateApplicationResponse"))

(smithy/sdk/shapes:define-input update-attribute-group-request common-lisp:nil
                                ((attribute-group :target-type
                                  attribute-group-specifier :required
                                  common-lisp:t :member-name "attributeGroup"
                                  :http-label common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (attributes :target-type attributes
                                  :member-name "attributes"))
                                (:shape-name "UpdateAttributeGroupRequest"))

(smithy/sdk/shapes:define-output update-attribute-group-response
                                 common-lisp:nil
                                 ((attribute-group :target-type attribute-group
                                   :member-name "attributeGroup"))
                                 (:shape-name "UpdateAttributeGroupResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation associate-attribute-group :shape-name
                                       "AssociateAttributeGroup" :input
                                       associate-attribute-group-request
                                       :output
                                       associate-attribute-group-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{application}/attribute-groups/{attributeGroup}"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-resource :shape-name
                                       "AssociateResource" :input
                                       associate-resource-request :output
                                       associate-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/applications/{application}/resources/{resourceType}/{resource}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/applications"
                                       :code 201)

(smithy/sdk/operation:define-operation create-attribute-group :shape-name
                                       "CreateAttributeGroup" :input
                                       create-attribute-group-request :output
                                       create-attribute-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/attribute-groups"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{application}" :code 200)

(smithy/sdk/operation:define-operation delete-attribute-group :shape-name
                                       "DeleteAttributeGroup" :input
                                       delete-attribute-group-request :output
                                       delete-attribute-group-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/attribute-groups/{attributeGroup}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-attribute-group :shape-name
                                       "DisassociateAttributeGroup" :input
                                       disassociate-attribute-group-request
                                       :output
                                       disassociate-attribute-group-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{application}/attribute-groups/{attributeGroup}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-resource :shape-name
                                       "DisassociateResource" :input
                                       disassociate-resource-request :output
                                       disassociate-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/applications/{application}/resources/{resourceType}/{resource}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{application}" :code 200)

(smithy/sdk/operation:define-operation get-associated-resource :shape-name
                                       "GetAssociatedResource" :input
                                       get-associated-resource-request :output
                                       get-associated-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{application}/resources/{resourceType}/{resource}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-attribute-group :shape-name
                                       "GetAttributeGroup" :input
                                       get-attribute-group-request :output
                                       get-attribute-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/attribute-groups/{attributeGroup}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration :shape-name
                                       "GetConfiguration" :input
                                       common-lisp:null :output
                                       get-configuration-response :errors
                                       (internal-server-exception) :method
                                       "GET" :uri "/configuration" :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation list-associated-attribute-groups
                                       :shape-name
                                       "ListAssociatedAttributeGroups" :input
                                       list-associated-attribute-groups-request
                                       :output
                                       list-associated-attribute-groups-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{application}/attribute-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-associated-resources :shape-name
                                       "ListAssociatedResources" :input
                                       list-associated-resources-request
                                       :output
                                       list-associated-resources-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{application}/resources"
                                       :code 200)

(smithy/sdk/operation:define-operation list-attribute-groups :shape-name
                                       "ListAttributeGroups" :input
                                       list-attribute-groups-request :output
                                       list-attribute-groups-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/attribute-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-attribute-groups-for-application
                                       :shape-name
                                       "ListAttributeGroupsForApplication"
                                       :input
                                       list-attribute-groups-for-application-request
                                       :output
                                       list-attribute-groups-for-application-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/applications/{application}/attribute-group-details"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration :shape-name
                                       "PutConfiguration" :input
                                       put-configuration-request :output
                                       common-lisp:null :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "PUT" :uri "/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation sync-resource :shape-name "SyncResource"
                                       :input sync-resource-request :output
                                       sync-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sync/{resourceType}/{resource}" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/applications/{application}" :code 200)

(smithy/sdk/operation:define-operation update-attribute-group :shape-name
                                       "UpdateAttributeGroup" :input
                                       update-attribute-group-request :output
                                       update-attribute-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/attribute-groups/{attributeGroup}"
                                       :code 200)
