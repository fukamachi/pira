(uiop/package:define-package #:pira/resource-explorer-2 (:use)
                             (:export #:awsservice-access-status #:account-id
                              #:account-id-list #:associate-default-view
                              #:associate-default-view-input
                              #:associate-default-view-output #:batch-get-view
                              #:batch-get-view-error #:batch-get-view-errors
                              #:batch-get-view-input #:batch-get-view-output
                              #:cfn-index #:cfn-view #:create-index
                              #:create-index-input #:create-index-output
                              #:create-view #:create-view-input
                              #:create-view-output #:default-view-association
                              #:delete-index #:delete-index-input
                              #:delete-index-output #:delete-view
                              #:delete-view-input #:delete-view-output
                              #:disassociate-default-view
                              #:get-account-level-service-configuration
                              #:get-default-view #:get-default-view-output
                              #:get-index #:get-index-output #:get-managed-view
                              #:get-view #:get-view-input #:get-view-output
                              #:included-property #:included-property-list
                              #:index #:index-list #:index-state #:index-type
                              #:list-indexes #:list-indexes-for-members
                              #:list-indexes-input #:list-indexes-output
                              #:list-managed-views #:list-resources
                              #:list-supported-resource-types
                              #:list-supported-resource-types-input
                              #:list-supported-resource-types-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output #:list-views
                              #:list-views-input #:list-views-output
                              #:managed-view #:managed-view-arn-list
                              #:member-index #:member-index-list
                              #:org-configuration #:query-string #:region-list
                              #:resource #:resource-count #:resource-explorer
                              #:resource-list #:resource-property
                              #:resource-property-list #:resource-type-list
                              #:search #:search-filter #:search-input
                              #:search-output #:string-list
                              #:supported-resource-type #:tag-map
                              #:tag-resource #:tag-resource-input
                              #:tag-resource-output #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-index-type #:update-index-type-input
                              #:update-index-type-output #:update-view
                              #:update-view-input #:update-view-output
                              #:validation-exception-field
                              #:validation-exception-field-list #:view
                              #:view-arn-list #:view-list #:view-name))
(common-lisp:in-package #:pira/resource-explorer-2)

(smithy/sdk/service:define-service resource-explorer :shape-name
                                   "ResourceExplorer" :version "2022-07-28"
                                   :title "AWS Resource Explorer" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Resource Explorer 2")
                                      ("endpointPrefix"
                                       . "resource-explorer-2")
                                      ("arnNamespace" . "resource-explorer-2"))
                                     ("aws.auth#sigv4"
                                      ("name" . "resource-explorer-2"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type awsservice-access-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-list :member account-id)

(smithy/sdk/shapes:define-structure associate-default-view-input
                                    common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ViewArn"))
                                    (:shape-name "AssociateDefaultViewInput"))

(smithy/sdk/shapes:define-structure associate-default-view-output
                                    common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ViewArn"))
                                    (:shape-name "AssociateDefaultViewOutput"))

(smithy/sdk/shapes:define-structure batch-get-view-error common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ViewArn")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name "BatchGetViewError"))

(smithy/sdk/shapes:define-list batch-get-view-errors :member
                               batch-get-view-error)

(smithy/sdk/shapes:define-structure batch-get-view-input common-lisp:nil
                                    ((view-arns :target-type view-arn-list
                                      :member-name "ViewArns"))
                                    (:shape-name "BatchGetViewInput"))

(smithy/sdk/shapes:define-structure batch-get-view-output common-lisp:nil
                                    ((views :target-type view-list :member-name
                                      "Views")
                                     (errors :target-type batch-get-view-errors
                                      :member-name "Errors"))
                                    (:shape-name "BatchGetViewOutput"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-index-input common-lisp:nil
                                    ((client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ClientToken")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreateIndexInput"))

(smithy/sdk/shapes:define-structure create-index-output common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (state :target-type index-state
                                      :member-name "State")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "CreateIndexOutput"))

(smithy/sdk/shapes:define-structure create-view-input common-lisp:nil
                                    ((client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ClientToken")
                                     (view-name :target-type view-name
                                      :required common-lisp:t :member-name
                                      "ViewName")
                                     (included-properties :target-type
                                      included-property-list :member-name
                                      "IncludedProperties")
                                     (scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Scope")
                                     (filters :target-type search-filter
                                      :member-name "Filters")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreateViewInput"))

(smithy/sdk/shapes:define-structure create-view-output common-lisp:nil
                                    ((view :target-type view :member-name
                                      "View"))
                                    (:shape-name "CreateViewOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-structure delete-index-input common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "DeleteIndexInput"))

(smithy/sdk/shapes:define-structure delete-index-output common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (state :target-type index-state
                                      :member-name "State")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "DeleteIndexOutput"))

(smithy/sdk/shapes:define-structure delete-view-input common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ViewArn"))
                                    (:shape-name "DeleteViewInput"))

(smithy/sdk/shapes:define-structure delete-view-output common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ViewArn"))
                                    (:shape-name "DeleteViewOutput"))

(smithy/sdk/shapes:define-output get-account-level-service-configuration-output
                                 common-lisp:nil
                                 ((org-configuration :target-type
                                   org-configuration :member-name
                                   "OrgConfiguration"))
                                 (:shape-name
                                  "GetAccountLevelServiceConfigurationOutput"))

(smithy/sdk/shapes:define-structure get-default-view-output common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ViewArn"))
                                    (:shape-name "GetDefaultViewOutput"))

(smithy/sdk/shapes:define-structure get-index-output common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (type :target-type index-type :member-name
                                      "Type")
                                     (state :target-type index-state
                                      :member-name "State")
                                     (replicating-from :target-type region-list
                                      :member-name "ReplicatingFrom")
                                     (replicating-to :target-type region-list
                                      :member-name "ReplicatingTo")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "GetIndexOutput"))

(smithy/sdk/shapes:define-input get-managed-view-input common-lisp:nil
                                ((managed-view-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ManagedViewArn"))
                                (:shape-name "GetManagedViewInput"))

(smithy/sdk/shapes:define-output get-managed-view-output common-lisp:nil
                                 ((managed-view :target-type managed-view
                                   :member-name "ManagedView"))
                                 (:shape-name "GetManagedViewOutput"))

(smithy/sdk/shapes:define-structure get-view-input common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ViewArn"))
                                    (:shape-name "GetViewInput"))

(smithy/sdk/shapes:define-structure get-view-output common-lisp:nil
                                    ((view :target-type view :member-name
                                      "View")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "GetViewOutput"))

(smithy/sdk/shapes:define-structure included-property common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "IncludedProperty"))

(smithy/sdk/shapes:define-list included-property-list :member included-property)

(smithy/sdk/shapes:define-structure index common-lisp:nil
                                    ((region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (type :target-type index-type :member-name
                                      "Type"))
                                    (:shape-name "Index"))

(smithy/sdk/shapes:define-list index-list :member index)

(smithy/sdk/shapes:define-type index-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type index-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-indexes-for-members-input common-lisp:nil
                                ((account-id-list :target-type account-id-list
                                  :required common-lisp:t :member-name
                                  "AccountIdList")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListIndexesForMembersInput"))

(smithy/sdk/shapes:define-output list-indexes-for-members-output
                                 common-lisp:nil
                                 ((indexes :target-type member-index-list
                                   :member-name "Indexes")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListIndexesForMembersOutput"))

(smithy/sdk/shapes:define-structure list-indexes-input common-lisp:nil
                                    ((type :target-type index-type :member-name
                                      "Type")
                                     (regions :target-type region-list
                                      :member-name "Regions")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name "ListIndexesInput"))

(smithy/sdk/shapes:define-structure list-indexes-output common-lisp:nil
                                    ((indexes :target-type index-list
                                      :member-name "Indexes")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name "ListIndexesOutput"))

(smithy/sdk/shapes:define-input list-managed-views-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (service-principal :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ServicePrincipal"))
                                (:shape-name "ListManagedViewsInput"))

(smithy/sdk/shapes:define-output list-managed-views-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken")
                                  (managed-views :target-type
                                   managed-view-arn-list :member-name
                                   "ManagedViews"))
                                 (:shape-name "ListManagedViewsOutput"))

(smithy/sdk/shapes:define-input list-resources-input common-lisp:nil
                                ((filters :target-type search-filter
                                  :member-name "Filters")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (view-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ViewArn")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListResourcesInput"))

(smithy/sdk/shapes:define-output list-resources-output common-lisp:nil
                                 ((resources :target-type resource-list
                                   :member-name "Resources")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken")
                                  (view-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ViewArn"))
                                 (:shape-name "ListResourcesOutput"))

(smithy/sdk/shapes:define-structure list-supported-resource-types-input
                                    common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults"))
                                    (:shape-name
                                     "ListSupportedResourceTypesInput"))

(smithy/sdk/shapes:define-structure list-supported-resource-types-output
                                    common-lisp:nil
                                    ((resource-types :target-type
                                      resource-type-list :member-name
                                      "ResourceTypes")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListSupportedResourceTypesOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure list-views-input common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults"))
                                    (:shape-name "ListViewsInput"))

(smithy/sdk/shapes:define-structure list-views-output common-lisp:nil
                                    ((views :target-type view-arn-list
                                      :member-name "Views")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name "ListViewsOutput"))

(smithy/sdk/shapes:define-structure managed-view common-lisp:nil
                                    ((managed-view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ManagedViewArn")
                                     (managed-view-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ManagedViewName")
                                     (trusted-service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TrustedService")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (owner :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Owner")
                                     (scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Scope")
                                     (included-properties :target-type
                                      included-property-list :member-name
                                      "IncludedProperties")
                                     (filters :target-type search-filter
                                      :member-name "Filters")
                                     (resource-policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ResourcePolicy")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Version"))
                                    (:shape-name "ManagedView"))

(smithy/sdk/shapes:define-list managed-view-arn-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure member-index common-lisp:nil
                                    ((account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "AccountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (type :target-type index-type :member-name
                                      "Type"))
                                    (:shape-name "MemberIndex"))

(smithy/sdk/shapes:define-list member-index-list :member member-index)

(smithy/sdk/shapes:define-structure org-configuration common-lisp:nil
                                    ((awsservice-access-status :target-type
                                      awsservice-access-status :required
                                      common-lisp:t :member-name
                                      "AWSServiceAccessStatus")
                                     (service-linked-role :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ServiceLinkedRole"))
                                    (:shape-name "OrgConfiguration"))

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (owning-account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OwningAccountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (resource-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ResourceType")
                                     (service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Service")
                                     (last-reported-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastReportedAt"
                                      :timestamp-format "date-time")
                                     (properties :target-type
                                      resource-property-list :member-name
                                      "Properties"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-structure resource-count common-lisp:nil
                                    ((total-resources :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "TotalResources")
                                     (complete :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Complete"))
                                    (:shape-name "ResourceCount"))

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-property common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (last-reported-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastReportedAt"
                                      :timestamp-format "date-time")
                                     (data :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "Data"))
                                    (:shape-name "ResourceProperty"))

(smithy/sdk/shapes:define-list resource-property-list :member resource-property)

(smithy/sdk/shapes:define-list resource-type-list :member
                               supported-resource-type)

(smithy/sdk/shapes:define-structure search-filter common-lisp:nil
                                    ((filter-string :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "FilterString"))
                                    (:shape-name "SearchFilter"))

(smithy/sdk/shapes:define-structure search-input common-lisp:nil
                                    ((query-string :target-type query-string
                                      :required common-lisp:t :member-name
                                      "QueryString")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults")
                                     (view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ViewArn")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name "SearchInput"))

(smithy/sdk/shapes:define-structure search-output common-lisp:nil
                                    ((resources :target-type resource-list
                                      :member-name "Resources")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken")
                                     (view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ViewArn")
                                     (count :target-type resource-count
                                      :member-name "Count"))
                                    (:shape-name "SearchOutput"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Name")
                                 (value :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Value"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure supported-resource-type common-lisp:nil
                                    ((service :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Service")
                                     (resource-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ResourceType"))
                                    (:shape-name "SupportedResourceType"))

(smithy/sdk/shapes:define-map tag-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type string-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-index-type-input common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (type :target-type index-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "UpdateIndexTypeInput"))

(smithy/sdk/shapes:define-structure update-index-type-output common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Arn")
                                     (type :target-type index-type :member-name
                                      "Type")
                                     (state :target-type index-state
                                      :member-name "State")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "UpdateIndexTypeOutput"))

(smithy/sdk/shapes:define-structure update-view-input common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ViewArn")
                                     (included-properties :target-type
                                      included-property-list :member-name
                                      "IncludedProperties")
                                     (filters :target-type search-filter
                                      :member-name "Filters"))
                                    (:shape-name "UpdateViewInput"))

(smithy/sdk/shapes:define-structure update-view-output common-lisp:nil
                                    ((view :target-type view :member-name
                                      "View"))
                                    (:shape-name "UpdateViewOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "FieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (validation-issue :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ValidationIssue"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-structure view common-lisp:nil
                                    ((view-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ViewArn")
                                     (owner :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Owner")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedAt"
                                      :timestamp-format "date-time")
                                     (scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Scope")
                                     (included-properties :target-type
                                      included-property-list :member-name
                                      "IncludedProperties")
                                     (filters :target-type search-filter
                                      :member-name "Filters"))
                                    (:shape-name "View"))

(smithy/sdk/shapes:define-list view-arn-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list view-list :member view)

(smithy/sdk/shapes:define-type view-name smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-default-view :shape-name
                                       "AssociateDefaultView" :input
                                       associate-default-view-input :output
                                       associate-default-view-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/AssociateDefaultView")

(smithy/sdk/operation:define-operation batch-get-view :shape-name
                                       "BatchGetView" :input
                                       batch-get-view-input :output
                                       batch-get-view-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/BatchGetView")

(smithy/sdk/operation:define-operation create-index :shape-name "CreateIndex"
                                       :input create-index-input :output
                                       create-index-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateIndex")

(smithy/sdk/operation:define-operation create-view :shape-name "CreateView"
                                       :input create-view-input :output
                                       create-view-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/CreateView")

(smithy/sdk/operation:define-operation delete-index :shape-name "DeleteIndex"
                                       :input delete-index-input :output
                                       delete-index-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteIndex")

(smithy/sdk/operation:define-operation delete-view :shape-name "DeleteView"
                                       :input delete-view-input :output
                                       delete-view-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/DeleteView")

(smithy/sdk/operation:define-operation disassociate-default-view :shape-name
                                       "DisassociateDefaultView" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DisassociateDefaultView")

(smithy/sdk/operation:define-operation get-account-level-service-configuration
                                       :shape-name
                                       "GetAccountLevelServiceConfiguration"
                                       :input common-lisp:null :output
                                       get-account-level-service-configuration-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/GetAccountLevelServiceConfiguration")

(smithy/sdk/operation:define-operation get-default-view :shape-name
                                       "GetDefaultView" :input common-lisp:null
                                       :output get-default-view-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetDefaultView")

(smithy/sdk/operation:define-operation get-index :shape-name "GetIndex" :input
                                       common-lisp:null :output
                                       get-index-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetIndex")

(smithy/sdk/operation:define-operation get-managed-view :shape-name
                                       "GetManagedView" :input
                                       get-managed-view-input :output
                                       get-managed-view-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetManagedView")

(smithy/sdk/operation:define-operation get-view :shape-name "GetView" :input
                                       get-view-input :output get-view-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/GetView")

(smithy/sdk/operation:define-operation list-indexes :shape-name "ListIndexes"
                                       :input list-indexes-input :output
                                       list-indexes-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListIndexes")

(smithy/sdk/operation:define-operation list-indexes-for-members :shape-name
                                       "ListIndexesForMembers" :input
                                       list-indexes-for-members-input :output
                                       list-indexes-for-members-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListIndexesForMembers")

(smithy/sdk/operation:define-operation list-managed-views :shape-name
                                       "ListManagedViews" :input
                                       list-managed-views-input :output
                                       list-managed-views-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListManagedViews")

(smithy/sdk/operation:define-operation list-resources :shape-name
                                       "ListResources" :input
                                       list-resources-input :output
                                       list-resources-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListResources")

(smithy/sdk/operation:define-operation list-supported-resource-types
                                       :shape-name "ListSupportedResourceTypes"
                                       :input
                                       list-supported-resource-types-input
                                       :output
                                       list-supported-resource-types-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListSupportedResourceTypes")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-views :shape-name "ListViews"
                                       :input list-views-input :output
                                       list-views-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListViews")

(smithy/sdk/operation:define-operation search :shape-name "Search" :input
                                       search-input :output search-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/Search")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-index-type :shape-name
                                       "UpdateIndexType" :input
                                       update-index-type-input :output
                                       update-index-type-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateIndexType")

(smithy/sdk/operation:define-operation update-view :shape-name "UpdateView"
                                       :input update-view-input :output
                                       update-view-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/UpdateView")
