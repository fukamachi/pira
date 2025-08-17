(uiop/package:define-package #:pira/schemas (:use)
                             (:export #:body #:code-generation-status
                              #:create-discoverer #:create-registry
                              #:create-schema #:delete-discoverer
                              #:delete-registry #:delete-resource-policy
                              #:delete-schema #:delete-schema-version
                              #:describe-code-binding #:describe-discoverer
                              #:describe-registry #:describe-schema
                              #:discoverer-state #:discoverer-summary
                              #:export-schema #:get-code-binding-source
                              #:get-discovered-schema
                              #:get-discovered-schema-version-item-input
                              #:get-resource-policy #:list-discoverers
                              #:list-registries #:list-schema-versions
                              #:list-schemas #:list-tags-for-resource
                              #:put-code-binding #:put-resource-policy
                              #:registry-summary #:schema-summary
                              #:schema-version-summary #:search-schema-summary
                              #:search-schema-version-summary #:search-schemas
                              #:start-discoverer #:stop-discoverer
                              #:synthesized-json-string #:tag-resource #:tags
                              #:type #:untag-resource #:update-discoverer
                              #:update-registry #:update-schema #:boolean
                              #:integer #:list-of-discoverer-summary
                              #:list-of-get-discovered-schema-version-item-input
                              #:list-of-registry-summary
                              #:list-of-schema-summary
                              #:list-of-schema-version-summary
                              #:list-of-search-schema-summary
                              #:list-of-search-schema-version-summary
                              #:list-of-string #:long #:string
                              #:string-min0max256 #:string-min0max36
                              #:string-min1max100000 #:string-min20max1600
                              #:timestamp-iso8601 #:schemas))
(common-lisp:in-package #:pira/schemas)

(smithy/sdk/service:define-service schemas :shape-name "schemas" :version
                                   "2019-12-02" :title "Schemas" :operations
                                   '(create-discoverer create-registry
                                     create-schema delete-discoverer
                                     delete-registry delete-resource-policy
                                     delete-schema delete-schema-version
                                     describe-code-binding describe-discoverer
                                     describe-registry describe-schema
                                     export-schema get-code-binding-source
                                     get-discovered-schema get-resource-policy
                                     list-discoverers list-registries
                                     list-schemas list-schema-versions
                                     list-tags-for-resource put-code-binding
                                     put-resource-policy search-schemas
                                     start-discoverer stop-discoverer
                                     tag-resource untag-resource
                                     update-discoverer update-registry
                                     update-schema)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "schemas")
                                      ("arnNamespace" . "schemas")
                                      ("cloudFormationName" . "EventSchemas")
                                      ("cloudTrailEventSource"
                                       . "schemas.amazonaws.com")
                                      ("endpointPrefix" . "schemas"))
                                     ("aws.auth#sigv4" ("name" . "schemas"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum code-generation-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-discoverer-request common-lisp:nil
                                ((description :target-type string-min0max256
                                  :member-name "Description")
                                 (source-arn :target-type string-min20max1600
                                  :required common-lisp:t :member-name
                                  "SourceArn")
                                 (cross-account :target-type boolean
                                  :member-name "CrossAccount")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateDiscovererRequest"))

(smithy/sdk/shapes:define-output create-discoverer-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (discoverer-arn :target-type string
                                   :member-name "DiscovererArn")
                                  (discoverer-id :target-type string
                                   :member-name "DiscovererId")
                                  (source-arn :target-type string :member-name
                                   "SourceArn")
                                  (state :target-type discoverer-state
                                   :member-name "State")
                                  (cross-account :target-type boolean
                                   :member-name "CrossAccount")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateDiscovererResponse"))

(smithy/sdk/shapes:define-input create-registry-request common-lisp:nil
                                ((description :target-type string-min0max256
                                  :member-name "Description")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateRegistryRequest"))

(smithy/sdk/shapes:define-output create-registry-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (registry-arn :target-type string
                                   :member-name "RegistryArn")
                                  (registry-name :target-type string
                                   :member-name "RegistryName")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateRegistryResponse"))

(smithy/sdk/shapes:define-input create-schema-request common-lisp:nil
                                ((content :target-type string-min1max100000
                                  :required common-lisp:t :member-name
                                  "Content")
                                 (description :target-type string-min0max256
                                  :member-name "Description")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (type :target-type type :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "CreateSchemaRequest"))

(smithy/sdk/shapes:define-output create-schema-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (last-modified :target-type timestamp-iso8601
                                   :member-name "LastModified")
                                  (schema-arn :target-type string :member-name
                                   "SchemaArn")
                                  (schema-name :target-type string :member-name
                                   "SchemaName")
                                  (schema-version :target-type string
                                   :member-name "SchemaVersion")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (type :target-type string :member-name
                                   "Type")
                                  (version-created-date :target-type
                                   timestamp-iso8601 :member-name
                                   "VersionCreatedDate"))
                                 (:shape-name "CreateSchemaResponse"))

(smithy/sdk/shapes:define-input delete-discoverer-request common-lisp:nil
                                ((discoverer-id :target-type string :required
                                  common-lisp:t :member-name "DiscovererId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDiscovererRequest"))

(smithy/sdk/shapes:define-input delete-registry-request common-lisp:nil
                                ((registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRegistryRequest"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((registry-name :target-type string
                                  :member-name "RegistryName" :http-query
                                  "registryName"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-input delete-schema-request common-lisp:nil
                                ((registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSchemaRequest"))

(smithy/sdk/shapes:define-input delete-schema-version-request common-lisp:nil
                                ((registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (schema-version :target-type string :required
                                  common-lisp:t :member-name "SchemaVersion"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSchemaVersionRequest"))

(smithy/sdk/shapes:define-input describe-code-binding-request common-lisp:nil
                                ((language :target-type string :required
                                  common-lisp:t :member-name "Language"
                                  :http-label common-lisp:t)
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (schema-version :target-type string
                                  :member-name "SchemaVersion" :http-query
                                  "schemaVersion"))
                                (:shape-name "DescribeCodeBindingRequest"))

(smithy/sdk/shapes:define-output describe-code-binding-response common-lisp:nil
                                 ((creation-date :target-type timestamp-iso8601
                                   :member-name "CreationDate")
                                  (last-modified :target-type timestamp-iso8601
                                   :member-name "LastModified")
                                  (schema-version :target-type string
                                   :member-name "SchemaVersion")
                                  (status :target-type code-generation-status
                                   :member-name "Status"))
                                 (:shape-name "DescribeCodeBindingResponse"))

(smithy/sdk/shapes:define-input describe-discoverer-request common-lisp:nil
                                ((discoverer-id :target-type string :required
                                  common-lisp:t :member-name "DiscovererId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeDiscovererRequest"))

(smithy/sdk/shapes:define-output describe-discoverer-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (discoverer-arn :target-type string
                                   :member-name "DiscovererArn")
                                  (discoverer-id :target-type string
                                   :member-name "DiscovererId")
                                  (source-arn :target-type string :member-name
                                   "SourceArn")
                                  (state :target-type discoverer-state
                                   :member-name "State")
                                  (cross-account :target-type boolean
                                   :member-name "CrossAccount")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DescribeDiscovererResponse"))

(smithy/sdk/shapes:define-input describe-registry-request common-lisp:nil
                                ((registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeRegistryRequest"))

(smithy/sdk/shapes:define-output describe-registry-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (registry-arn :target-type string
                                   :member-name "RegistryArn")
                                  (registry-name :target-type string
                                   :member-name "RegistryName")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "DescribeRegistryResponse"))

(smithy/sdk/shapes:define-input describe-schema-request common-lisp:nil
                                ((registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (schema-version :target-type string
                                  :member-name "SchemaVersion" :http-query
                                  "schemaVersion"))
                                (:shape-name "DescribeSchemaRequest"))

(smithy/sdk/shapes:define-output describe-schema-response common-lisp:nil
                                 ((content :target-type string :member-name
                                   "Content")
                                  (description :target-type string :member-name
                                   "Description")
                                  (last-modified :target-type timestamp-iso8601
                                   :member-name "LastModified")
                                  (schema-arn :target-type string :member-name
                                   "SchemaArn")
                                  (schema-name :target-type string :member-name
                                   "SchemaName")
                                  (schema-version :target-type string
                                   :member-name "SchemaVersion")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (type :target-type string :member-name
                                   "Type")
                                  (version-created-date :target-type
                                   timestamp-iso8601 :member-name
                                   "VersionCreatedDate"))
                                 (:shape-name "DescribeSchemaResponse"))

(smithy/sdk/shapes:define-enum discoverer-state
    common-lisp:nil
  (:started "STARTED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure discoverer-summary common-lisp:nil
                                    ((discoverer-arn :target-type string
                                      :member-name "DiscovererArn")
                                     (discoverer-id :target-type string
                                      :member-name "DiscovererId")
                                     (source-arn :target-type string
                                      :member-name "SourceArn")
                                     (state :target-type discoverer-state
                                      :member-name "State")
                                     (cross-account :target-type boolean
                                      :member-name "CrossAccount")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "DiscovererSummary"))

(smithy/sdk/shapes:define-input export-schema-request common-lisp:nil
                                ((registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (schema-version :target-type string
                                  :member-name "SchemaVersion" :http-query
                                  "schemaVersion")
                                 (type :target-type string :required
                                  common-lisp:t :member-name "Type" :http-query
                                  "type"))
                                (:shape-name "ExportSchemaRequest"))

(smithy/sdk/shapes:define-output export-schema-response common-lisp:nil
                                 ((content :target-type string :member-name
                                   "Content")
                                  (schema-arn :target-type string :member-name
                                   "SchemaArn")
                                  (schema-name :target-type string :member-name
                                   "SchemaName")
                                  (schema-version :target-type string
                                   :member-name "SchemaVersion")
                                  (type :target-type string :member-name
                                   "Type"))
                                 (:shape-name "ExportSchemaResponse"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-code-binding-source-request common-lisp:nil
                                ((language :target-type string :required
                                  common-lisp:t :member-name "Language"
                                  :http-label common-lisp:t)
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (schema-version :target-type string
                                  :member-name "SchemaVersion" :http-query
                                  "schemaVersion"))
                                (:shape-name "GetCodeBindingSourceRequest"))

(smithy/sdk/shapes:define-output get-code-binding-source-response
                                 common-lisp:nil
                                 ((body :target-type body :member-name "Body"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetCodeBindingSourceResponse"))

(smithy/sdk/shapes:define-input get-discovered-schema-request common-lisp:nil
                                ((events :target-type
                                  list-of-get-discovered-schema-version-item-input
                                  :required common-lisp:t :member-name
                                  "Events")
                                 (type :target-type type :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "GetDiscoveredSchemaRequest"))

(smithy/sdk/shapes:define-output get-discovered-schema-response common-lisp:nil
                                 ((content :target-type string :member-name
                                   "Content"))
                                 (:shape-name "GetDiscoveredSchemaResponse"))

(smithy/sdk/shapes:define-type get-discovered-schema-version-item-input
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((registry-name :target-type string
                                  :member-name "RegistryName" :http-query
                                  "registryName"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((policy :target-type synthesized-json-string
                                   :member-name "Policy")
                                  (revision-id :target-type string :member-name
                                   "RevisionId"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-error gone-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "GoneException") (:error-code 410))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-discoverers-request common-lisp:nil
                                ((discoverer-id-prefix :target-type string
                                  :member-name "DiscovererIdPrefix" :http-query
                                  "discovererIdPrefix")
                                 (limit :target-type integer :member-name
                                  "Limit" :http-query "limit")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (source-arn-prefix :target-type string
                                  :member-name "SourceArnPrefix" :http-query
                                  "sourceArnPrefix"))
                                (:shape-name "ListDiscoverersRequest"))

(smithy/sdk/shapes:define-output list-discoverers-response common-lisp:nil
                                 ((discoverers :target-type
                                   list-of-discoverer-summary :member-name
                                   "Discoverers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListDiscoverersResponse"))

(smithy/sdk/shapes:define-input list-registries-request common-lisp:nil
                                ((limit :target-type integer :member-name
                                  "Limit" :http-query "limit")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (registry-name-prefix :target-type string
                                  :member-name "RegistryNamePrefix" :http-query
                                  "registryNamePrefix")
                                 (scope :target-type string :member-name
                                  "Scope" :http-query "scope"))
                                (:shape-name "ListRegistriesRequest"))

(smithy/sdk/shapes:define-output list-registries-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (registries :target-type
                                   list-of-registry-summary :member-name
                                   "Registries"))
                                 (:shape-name "ListRegistriesResponse"))

(smithy/sdk/shapes:define-input list-schema-versions-request common-lisp:nil
                                ((limit :target-type integer :member-name
                                  "Limit" :http-query "limit")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t))
                                (:shape-name "ListSchemaVersionsRequest"))

(smithy/sdk/shapes:define-output list-schema-versions-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (schema-versions :target-type
                                   list-of-schema-version-summary :member-name
                                   "SchemaVersions"))
                                 (:shape-name "ListSchemaVersionsResponse"))

(smithy/sdk/shapes:define-input list-schemas-request common-lisp:nil
                                ((limit :target-type integer :member-name
                                  "Limit" :http-query "limit")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name-prefix :target-type string
                                  :member-name "SchemaNamePrefix" :http-query
                                  "schemaNamePrefix"))
                                (:shape-name "ListSchemasRequest"))

(smithy/sdk/shapes:define-output list-schemas-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (schemas :target-type list-of-schema-summary
                                   :member-name "Schemas"))
                                 (:shape-name "ListSchemasResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412))

(smithy/sdk/shapes:define-input put-code-binding-request common-lisp:nil
                                ((language :target-type string :required
                                  common-lisp:t :member-name "Language"
                                  :http-label common-lisp:t)
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (schema-version :target-type string
                                  :member-name "SchemaVersion" :http-query
                                  "schemaVersion"))
                                (:shape-name "PutCodeBindingRequest"))

(smithy/sdk/shapes:define-output put-code-binding-response common-lisp:nil
                                 ((creation-date :target-type timestamp-iso8601
                                   :member-name "CreationDate")
                                  (last-modified :target-type timestamp-iso8601
                                   :member-name "LastModified")
                                  (schema-version :target-type string
                                   :member-name "SchemaVersion")
                                  (status :target-type code-generation-status
                                   :member-name "Status"))
                                 (:shape-name "PutCodeBindingResponse"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((policy :target-type synthesized-json-string
                                  :required common-lisp:t :member-name
                                  "Policy")
                                 (registry-name :target-type string
                                  :member-name "RegistryName" :http-query
                                  "registryName")
                                 (revision-id :target-type string :member-name
                                  "RevisionId"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((policy :target-type synthesized-json-string
                                   :member-name "Policy")
                                  (revision-id :target-type string :member-name
                                   "RevisionId"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure registry-summary common-lisp:nil
                                    ((registry-arn :target-type string
                                      :member-name "RegistryArn")
                                     (registry-name :target-type string
                                      :member-name "RegistryName")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "RegistrySummary"))

(smithy/sdk/shapes:define-structure schema-summary common-lisp:nil
                                    ((last-modified :target-type
                                      timestamp-iso8601 :member-name
                                      "LastModified")
                                     (schema-arn :target-type string
                                      :member-name "SchemaArn")
                                     (schema-name :target-type string
                                      :member-name "SchemaName")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (version-count :target-type long
                                      :member-name "VersionCount"))
                                    (:shape-name "SchemaSummary"))

(smithy/sdk/shapes:define-structure schema-version-summary common-lisp:nil
                                    ((schema-arn :target-type string
                                      :member-name "SchemaArn")
                                     (schema-name :target-type string
                                      :member-name "SchemaName")
                                     (schema-version :target-type string
                                      :member-name "SchemaVersion")
                                     (type :target-type type :member-name
                                      "Type"))
                                    (:shape-name "SchemaVersionSummary"))

(smithy/sdk/shapes:define-structure search-schema-summary common-lisp:nil
                                    ((registry-name :target-type string
                                      :member-name "RegistryName")
                                     (schema-arn :target-type string
                                      :member-name "SchemaArn")
                                     (schema-name :target-type string
                                      :member-name "SchemaName")
                                     (schema-versions :target-type
                                      list-of-search-schema-version-summary
                                      :member-name "SchemaVersions"))
                                    (:shape-name "SearchSchemaSummary"))

(smithy/sdk/shapes:define-structure search-schema-version-summary
                                    common-lisp:nil
                                    ((created-date :target-type
                                      timestamp-iso8601 :member-name
                                      "CreatedDate")
                                     (schema-version :target-type string
                                      :member-name "SchemaVersion")
                                     (type :target-type type :member-name
                                      "Type"))
                                    (:shape-name "SearchSchemaVersionSummary"))

(smithy/sdk/shapes:define-input search-schemas-request common-lisp:nil
                                ((keywords :target-type string :required
                                  common-lisp:t :member-name "Keywords"
                                  :http-query "keywords")
                                 (limit :target-type integer :member-name
                                  "Limit" :http-query "limit")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t))
                                (:shape-name "SearchSchemasRequest"))

(smithy/sdk/shapes:define-output search-schemas-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken")
                                  (schemas :target-type
                                   list-of-search-schema-summary :member-name
                                   "Schemas"))
                                 (:shape-name "SearchSchemasResponse"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-input start-discoverer-request common-lisp:nil
                                ((discoverer-id :target-type string :required
                                  common-lisp:t :member-name "DiscovererId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartDiscovererRequest"))

(smithy/sdk/shapes:define-output start-discoverer-response common-lisp:nil
                                 ((discoverer-id :target-type string
                                   :member-name "DiscovererId")
                                  (state :target-type discoverer-state
                                   :member-name "State"))
                                 (:shape-name "StartDiscovererResponse"))

(smithy/sdk/shapes:define-input stop-discoverer-request common-lisp:nil
                                ((discoverer-id :target-type string :required
                                  common-lisp:t :member-name "DiscovererId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopDiscovererRequest"))

(smithy/sdk/shapes:define-output stop-discoverer-response common-lisp:nil
                                 ((discoverer-id :target-type string
                                   :member-name "DiscovererId")
                                  (state :target-type discoverer-state
                                   :member-name "State"))
                                 (:shape-name "StopDiscovererResponse"))

(smithy/sdk/shapes:define-type synthesized-json-string
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-map tags :key string :value string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:open-api3 "OpenApi3")
  (:jsonschema-draft4 "JSONSchemaDraft4"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((code :target-type string :required
                                  common-lisp:t :member-name "Code")
                                 (message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-discoverer-request common-lisp:nil
                                ((description :target-type string-min0max256
                                  :member-name "Description")
                                 (discoverer-id :target-type string :required
                                  common-lisp:t :member-name "DiscovererId"
                                  :http-label common-lisp:t)
                                 (cross-account :target-type boolean
                                  :member-name "CrossAccount"))
                                (:shape-name "UpdateDiscovererRequest"))

(smithy/sdk/shapes:define-output update-discoverer-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (discoverer-arn :target-type string
                                   :member-name "DiscovererArn")
                                  (discoverer-id :target-type string
                                   :member-name "DiscovererId")
                                  (source-arn :target-type string :member-name
                                   "SourceArn")
                                  (state :target-type discoverer-state
                                   :member-name "State")
                                  (cross-account :target-type boolean
                                   :member-name "CrossAccount")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateDiscovererResponse"))

(smithy/sdk/shapes:define-input update-registry-request common-lisp:nil
                                ((description :target-type string-min0max256
                                  :member-name "Description")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateRegistryRequest"))

(smithy/sdk/shapes:define-output update-registry-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (registry-arn :target-type string
                                   :member-name "RegistryArn")
                                  (registry-name :target-type string
                                   :member-name "RegistryName")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateRegistryResponse"))

(smithy/sdk/shapes:define-input update-schema-request common-lisp:nil
                                ((client-token-id :target-type string-min0max36
                                  :member-name "ClientTokenId")
                                 (content :target-type string-min1max100000
                                  :member-name "Content")
                                 (description :target-type string-min0max256
                                  :member-name "Description")
                                 (registry-name :target-type string :required
                                  common-lisp:t :member-name "RegistryName"
                                  :http-label common-lisp:t)
                                 (schema-name :target-type string :required
                                  common-lisp:t :member-name "SchemaName"
                                  :http-label common-lisp:t)
                                 (type :target-type type :member-name "Type"))
                                (:shape-name "UpdateSchemaRequest"))

(smithy/sdk/shapes:define-output update-schema-response common-lisp:nil
                                 ((description :target-type string :member-name
                                   "Description")
                                  (last-modified :target-type timestamp-iso8601
                                   :member-name "LastModified")
                                  (schema-arn :target-type string :member-name
                                   "SchemaArn")
                                  (schema-name :target-type string :member-name
                                   "SchemaName")
                                  (schema-version :target-type string
                                   :member-name "SchemaVersion")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (type :target-type string :member-name
                                   "Type")
                                  (version-created-date :target-type
                                   timestamp-iso8601 :member-name
                                   "VersionCreatedDate"))
                                 (:shape-name "UpdateSchemaResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-discoverer-summary :member
                               discoverer-summary)

(smithy/sdk/shapes:define-list list-of-get-discovered-schema-version-item-input
                               :member get-discovered-schema-version-item-input)

(smithy/sdk/shapes:define-list list-of-registry-summary :member
                               registry-summary)

(smithy/sdk/shapes:define-list list-of-schema-summary :member schema-summary)

(smithy/sdk/shapes:define-list list-of-schema-version-summary :member
                               schema-version-summary)

(smithy/sdk/shapes:define-list list-of-search-schema-summary :member
                               search-schema-summary)

(smithy/sdk/shapes:define-list list-of-search-schema-version-summary :member
                               search-schema-version-summary)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0max36 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max100000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min20max1600
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation create-discoverer :shape-name
                                       "CreateDiscoverer" :input
                                       create-discoverer-request :output
                                       create-discoverer-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/discoverers"
                                       :code 201)

(smithy/sdk/operation:define-operation create-registry :shape-name
                                       "CreateRegistry" :input
                                       create-registry-request :output
                                       create-registry-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/registries/name/{RegistryName}"
                                       :code 201)

(smithy/sdk/operation:define-operation create-schema :shape-name "CreateSchema"
                                       :input create-schema-request :output
                                       create-schema-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-discoverer :shape-name
                                       "DeleteDiscoverer" :input
                                       delete-discoverer-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/discoverers/id/{DiscovererId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-registry :shape-name
                                       "DeleteRegistry" :input
                                       delete-registry-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/registries/name/{RegistryName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri "/v1/policy" :code
                                       204)

(smithy/sdk/operation:define-operation delete-schema :shape-name "DeleteSchema"
                                       :input delete-schema-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-schema-version :shape-name
                                       "DeleteSchemaVersion" :input
                                       delete-schema-version-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/version/{SchemaVersion}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-code-binding :shape-name
                                       "DescribeCodeBinding" :input
                                       describe-code-binding-request :output
                                       describe-code-binding-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-discoverer :shape-name
                                       "DescribeDiscoverer" :input
                                       describe-discoverer-request :output
                                       describe-discoverer-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/discoverers/id/{DiscovererId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-registry :shape-name
                                       "DescribeRegistry" :input
                                       describe-registry-request :output
                                       describe-registry-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-schema :shape-name
                                       "DescribeSchema" :input
                                       describe-schema-request :output
                                       describe-schema-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}"
                                       :code 200)

(smithy/sdk/operation:define-operation export-schema :shape-name "ExportSchema"
                                       :input export-schema-request :output
                                       export-schema-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/export"
                                       :code 200)

(smithy/sdk/operation:define-operation get-code-binding-source :shape-name
                                       "GetCodeBindingSource" :input
                                       get-code-binding-source-request :output
                                       get-code-binding-source-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}/source"
                                       :code 200)

(smithy/sdk/operation:define-operation get-discovered-schema :shape-name
                                       "GetDiscoveredSchema" :input
                                       get-discovered-schema-request :output
                                       get-discovered-schema-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/discover" :code
                                       200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/policy" :code
                                       200)

(smithy/sdk/operation:define-operation list-discoverers :shape-name
                                       "ListDiscoverers" :input
                                       list-discoverers-request :output
                                       list-discoverers-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/discoverers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-registries :shape-name
                                       "ListRegistries" :input
                                       list-registries-request :output
                                       list-registries-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/registries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-schema-versions :shape-name
                                       "ListSchemaVersions" :input
                                       list-schema-versions-request :output
                                       list-schema-versions-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-schemas :shape-name "ListSchemas"
                                       :input list-schemas-request :output
                                       list-schemas-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-code-binding :shape-name
                                       "PutCodeBinding" :input
                                       put-code-binding-request :output
                                       put-code-binding-response :errors
                                       (bad-request-exception
                                        forbidden-exception gone-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}"
                                       :code 202)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        precondition-failed-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri "/v1/policy" :code
                                       200)

(smithy/sdk/operation:define-operation search-schemas :shape-name
                                       "SearchSchemas" :input
                                       search-schemas-request :output
                                       search-schemas-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/search"
                                       :code 200)

(smithy/sdk/operation:define-operation start-discoverer :shape-name
                                       "StartDiscoverer" :input
                                       start-discoverer-request :output
                                       start-discoverer-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/discoverers/id/{DiscovererId}/start"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-discoverer :shape-name
                                       "StopDiscoverer" :input
                                       stop-discoverer-request :output
                                       stop-discoverer-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/discoverers/id/{DiscovererId}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-discoverer :shape-name
                                       "UpdateDiscoverer" :input
                                       update-discoverer-request :output
                                       update-discoverer-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/discoverers/id/{DiscovererId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-registry :shape-name
                                       "UpdateRegistry" :input
                                       update-registry-request :output
                                       update-registry-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/registries/name/{RegistryName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-schema :shape-name "UpdateSchema"
                                       :input update-schema-request :output
                                       update-schema-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}"
                                       :code 200)
