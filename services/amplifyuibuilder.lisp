(uiop/package:define-package #:pira/amplifyuibuilder (:use)
                             (:export #:action-parameters #:amplify-uibuilder
                              #:api-configuration #:app-id
                              #:associated-fields-list #:codegen-dependencies
                              #:codegen-dependency #:codegen-feature-flags
                              #:codegen-generic-data-enum
                              #:codegen-generic-data-enum-values-list
                              #:codegen-generic-data-enums
                              #:codegen-generic-data-field
                              #:codegen-generic-data-field-data-type
                              #:codegen-generic-data-fields
                              #:codegen-generic-data-model
                              #:codegen-generic-data-models
                              #:codegen-generic-data-non-model
                              #:codegen-generic-data-non-model-fields
                              #:codegen-generic-data-non-models
                              #:codegen-generic-data-relationship-type
                              #:codegen-job #:codegen-job-asset
                              #:codegen-job-generic-data-schema
                              #:codegen-job-generic-data-source-type
                              #:codegen-job-render-config
                              #:codegen-job-resource #:codegen-job-status
                              #:codegen-job-summary #:codegen-job-summary-list
                              #:codegen-primary-keys-list #:component
                              #:component-binding-properties
                              #:component-binding-properties-value
                              #:component-binding-properties-value-properties
                              #:component-child #:component-child-list
                              #:component-collection-properties
                              #:component-condition-property
                              #:component-data-configuration #:component-event
                              #:component-events #:component-list
                              #:component-name #:component-overrides
                              #:component-overrides-value
                              #:component-properties #:component-property
                              #:component-property-binding-properties
                              #:component-property-list #:component-resource
                              #:component-summary #:component-summary-list
                              #:component-type #:component-variant
                              #:component-variant-values #:component-variants
                              #:create-component #:create-component-data
                              #:create-component-request
                              #:create-component-response #:create-form
                              #:create-form-data #:create-form-request
                              #:create-form-response #:create-theme
                              #:create-theme-data #:create-theme-request
                              #:create-theme-response
                              #:data-store-render-config #:delete-component
                              #:delete-component-request #:delete-form
                              #:delete-form-request #:delete-theme
                              #:delete-theme-request #:exchange-code-for-token
                              #:exchange-code-for-token-request
                              #:exchange-code-for-token-request-body
                              #:exchange-code-for-token-response
                              #:export-components #:export-components-request
                              #:export-components-response #:export-forms
                              #:export-forms-request #:export-forms-response
                              #:export-themes #:export-themes-request
                              #:export-themes-response #:features-map
                              #:field-config #:field-input-config
                              #:field-position #:field-validation-configuration
                              #:fields-map #:file-uploader-field-config
                              #:fixed-position #:form #:form-action-type
                              #:form-binding-element #:form-bindings
                              #:form-button #:form-buttons-position #:form-cta
                              #:form-data-source-type #:form-data-type-config
                              #:form-input-binding-properties
                              #:form-input-binding-properties-value
                              #:form-input-binding-properties-value-properties
                              #:form-input-value-property
                              #:form-input-value-property-binding-properties
                              #:form-input-value-property-list #:form-list
                              #:form-name #:form-resource #:form-style
                              #:form-style-config #:form-summary
                              #:form-summary-list
                              #:generic-data-relationship-type
                              #:get-codegen-job #:get-codegen-job-request
                              #:get-codegen-job-response #:get-component
                              #:get-component-request #:get-component-response
                              #:get-form #:get-form-request #:get-form-response
                              #:get-metadata #:get-metadata-request
                              #:get-metadata-response #:get-theme
                              #:get-theme-request #:get-theme-response
                              #:graph-qlrender-config #:identifier-list
                              #:internal-server-exception
                              #:invalid-parameter-exception #:jsmodule
                              #:jsscript #:jstarget #:label-decorator
                              #:list-codegen-jobs #:list-codegen-jobs-limit
                              #:list-codegen-jobs-request
                              #:list-codegen-jobs-response #:list-components
                              #:list-components-request
                              #:list-components-response #:list-entity-limit
                              #:list-forms #:list-forms-request
                              #:list-forms-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:list-themes
                              #:list-themes-request #:list-themes-response
                              #:mutation-action-set-state-parameter
                              #:no-api-render-config #:num-values
                              #:operand-type #:predicate #:predicate-list
                              #:put-metadata-flag #:put-metadata-flag-body
                              #:put-metadata-flag-request
                              #:react-codegen-dependencies
                              #:react-start-codegen-job-data #:refresh-token
                              #:refresh-token-request
                              #:refresh-token-request-body
                              #:refresh-token-response
                              #:related-model-fields-list
                              #:resource-conflict-exception
                              #:resource-not-found-exception
                              #:sectional-element #:sectional-element-map
                              #:sensitive-string
                              #:service-quota-exceeded-exception
                              #:sort-direction #:sort-property
                              #:sort-property-list #:start-codegen-job
                              #:start-codegen-job-data
                              #:start-codegen-job-request
                              #:start-codegen-job-response
                              #:storage-access-level #:str-values #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:theme #:theme-list
                              #:theme-name #:theme-resource #:theme-summary
                              #:theme-summary-list #:theme-value #:theme-values
                              #:theme-values-list #:throttling-exception
                              #:token-providers #:unauthorized-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-component
                              #:update-component-data
                              #:update-component-request
                              #:update-component-response #:update-form
                              #:update-form-data #:update-form-request
                              #:update-form-response #:update-theme
                              #:update-theme-data #:update-theme-request
                              #:update-theme-response #:uuid #:validations-list
                              #:value-mapping #:value-mapping-list
                              #:value-mappings))
(common-lisp:in-package #:pira/amplifyuibuilder)

(smithy/sdk/service:define-service amplify-uibuilder :shape-name
                                   "AmplifyUIBuilder" :version "2021-08-11"
                                   :title "AWS Amplify UI Builder" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "AmplifyUIBuilder")
                                      ("arnNamespace" . "amplifyuibuilder")
                                      ("cloudFormationName"
                                       . "AmplifyUIBuilder")
                                      ("cloudTrailEventSource"
                                       . "amplifyuibuilder.amazonaws.com"))
                                     ("aws.api#tagEnabled"
                                      ("tagOnCreate" . common-lisp:t))
                                     ("aws.auth#sigv4"
                                      ("name" . "amplifyuibuilder"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access based on the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure action-parameters common-lisp:nil
                                    ((type :target-type component-property
                                      :member-name "type")
                                     (url :target-type component-property
                                      :member-name "url")
                                     (anchor :target-type component-property
                                      :member-name "anchor")
                                     (target :target-type component-property
                                      :member-name "target")
                                     (global :target-type component-property
                                      :member-name "global")
                                     (model :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "model")
                                     (id :target-type component-property
                                      :member-name "id")
                                     (fields :target-type component-properties
                                      :member-name "fields")
                                     (state :target-type
                                      mutation-action-set-state-parameter
                                      :member-name "state"))
                                    (:shape-name "ActionParameters"))

(smithy/sdk/shapes:define-union api-configuration common-lisp:nil
                                ((graph-qlconfig :target-type
                                  graph-qlrender-config :member-name
                                  "graphQLConfig")
                                 (data-store-config :target-type
                                  data-store-render-config :member-name
                                  "dataStoreConfig")
                                 (no-api-config :target-type
                                  no-api-render-config :member-name
                                  "noApiConfig"))
                                (:shape-name "ApiConfiguration"))

(smithy/sdk/shapes:define-type app-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list associated-fields-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list codegen-dependencies :member codegen-dependency)

(smithy/sdk/shapes:define-structure codegen-dependency common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (supported-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "supportedVersion")
                                     (is-sem-ver :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isSemVer")
                                     (reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reason"))
                                    (:shape-name "CodegenDependency"))

(smithy/sdk/shapes:define-structure codegen-feature-flags common-lisp:nil
                                    ((is-relationship-supported :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isRelationshipSupported")
                                     (is-non-model-supported :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isNonModelSupported"))
                                    (:shape-name "CodegenFeatureFlags"))

(smithy/sdk/shapes:define-structure codegen-generic-data-enum common-lisp:nil
                                    ((values :target-type
                                      codegen-generic-data-enum-values-list
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "CodegenGenericDataEnum"))

(smithy/sdk/shapes:define-list codegen-generic-data-enum-values-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map codegen-generic-data-enums :key
                              smithy/sdk/smithy-types:string :value
                              codegen-generic-data-enum)

(smithy/sdk/shapes:define-structure codegen-generic-data-field common-lisp:nil
                                    ((data-type :target-type
                                      codegen-generic-data-field-data-type
                                      :required common-lisp:t :member-name
                                      "dataType")
                                     (data-type-value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "dataTypeValue")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "required")
                                     (read-only :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "readOnly")
                                     (is-array :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "isArray")
                                     (relationship :target-type
                                      codegen-generic-data-relationship-type
                                      :member-name "relationship"))
                                    (:shape-name "CodegenGenericDataField"))

(smithy/sdk/shapes:define-enum codegen-generic-data-field-data-type
    common-lisp:nil
  (:id "ID")
  (:string "String")
  (:int "Int")
  (:float "Float")
  (:aws-date "AWSDate")
  (:aws-time "AWSTime")
  (:aws-date-time "AWSDateTime")
  (:aws-timestamp "AWSTimestamp")
  (:aws-email "AWSEmail")
  (:aws-url "AWSURL")
  (:aws-ip-address "AWSIPAddress")
  (:boolean "Boolean")
  (:aws-json "AWSJSON")
  (:aws-phone "AWSPhone")
  (:enum "Enum")
  (:model "Model")
  (:non-model "NonModel"))

(smithy/sdk/shapes:define-map codegen-generic-data-fields :key
                              smithy/sdk/smithy-types:string :value
                              codegen-generic-data-field)

(smithy/sdk/shapes:define-structure codegen-generic-data-model common-lisp:nil
                                    ((fields :target-type
                                      codegen-generic-data-fields :required
                                      common-lisp:t :member-name "fields")
                                     (is-join-table :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isJoinTable")
                                     (primary-keys :target-type
                                      codegen-primary-keys-list :required
                                      common-lisp:t :member-name
                                      "primaryKeys"))
                                    (:shape-name "CodegenGenericDataModel"))

(smithy/sdk/shapes:define-map codegen-generic-data-models :key
                              smithy/sdk/smithy-types:string :value
                              codegen-generic-data-model)

(smithy/sdk/shapes:define-structure codegen-generic-data-non-model
                                    common-lisp:nil
                                    ((fields :target-type
                                      codegen-generic-data-non-model-fields
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "CodegenGenericDataNonModel"))

(smithy/sdk/shapes:define-map codegen-generic-data-non-model-fields :key
                              smithy/sdk/smithy-types:string :value
                              codegen-generic-data-field)

(smithy/sdk/shapes:define-map codegen-generic-data-non-models :key
                              smithy/sdk/smithy-types:string :value
                              codegen-generic-data-non-model)

(smithy/sdk/shapes:define-structure codegen-generic-data-relationship-type
                                    common-lisp:nil
                                    ((type :target-type
                                      generic-data-relationship-type :required
                                      common-lisp:t :member-name "type")
                                     (related-model-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "relatedModelName")
                                     (related-model-fields :target-type
                                      related-model-fields-list :member-name
                                      "relatedModelFields")
                                     (can-unlink-associated-model :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "canUnlinkAssociatedModel")
                                     (related-join-field-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "relatedJoinFieldName")
                                     (related-join-table-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "relatedJoinTableName")
                                     (belongs-to-field-on-related-model
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "belongsToFieldOnRelatedModel")
                                     (associated-fields :target-type
                                      associated-fields-list :member-name
                                      "associatedFields")
                                     (is-has-many-index :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isHasManyIndex"))
                                    (:shape-name
                                     "CodegenGenericDataRelationshipType"))

(smithy/sdk/shapes:define-structure codegen-job common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (app-id :target-type app-id :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (render-config :target-type
                                      codegen-job-render-config :member-name
                                      "renderConfig")
                                     (generic-data-schema :target-type
                                      codegen-job-generic-data-schema
                                      :member-name "genericDataSchema")
                                     (auto-generate-forms :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoGenerateForms")
                                     (features :target-type
                                      codegen-feature-flags :member-name
                                      "features")
                                     (status :target-type codegen-job-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (asset :target-type codegen-job-asset
                                      :member-name "asset")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt"
                                      :timestamp-format "date-time")
                                     (dependencies :target-type
                                      codegen-dependencies :member-name
                                      "dependencies"))
                                    (:shape-name "CodegenJob"))

(smithy/sdk/shapes:define-structure codegen-job-asset common-lisp:nil
                                    ((download-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "downloadUrl"))
                                    (:shape-name "CodegenJobAsset"))

(smithy/sdk/shapes:define-structure codegen-job-generic-data-schema
                                    common-lisp:nil
                                    ((data-source-type :target-type
                                      codegen-job-generic-data-source-type
                                      :required common-lisp:t :member-name
                                      "dataSourceType")
                                     (models :target-type
                                      codegen-generic-data-models :required
                                      common-lisp:t :member-name "models")
                                     (enums :target-type
                                      codegen-generic-data-enums :required
                                      common-lisp:t :member-name "enums")
                                     (non-models :target-type
                                      codegen-generic-data-non-models :required
                                      common-lisp:t :member-name "nonModels"))
                                    (:shape-name "CodegenJobGenericDataSchema"))

(smithy/sdk/shapes:define-enum codegen-job-generic-data-source-type
    common-lisp:nil
  (:data-store "DataStore"))

(smithy/sdk/shapes:define-union codegen-job-render-config common-lisp:nil
                                ((react :target-type
                                  react-start-codegen-job-data :member-name
                                  "react"))
                                (:shape-name "CodegenJobRenderConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-enum codegen-job-status
    common-lisp:nil
  (:in-progress "in_progress")
  (:failed "failed")
  (:succeeded "succeeded"))

(smithy/sdk/shapes:define-structure codegen-job-summary common-lisp:nil
                                    ((app-id :target-type app-id :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "CodegenJobSummary"))

(smithy/sdk/shapes:define-list codegen-job-summary-list :member
                               codegen-job-summary)

(smithy/sdk/shapes:define-list codegen-primary-keys-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (source-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceId")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type component-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (component-type :target-type
                                      component-type :required common-lisp:t
                                      :member-name "componentType")
                                     (properties :target-type
                                      component-properties :required
                                      common-lisp:t :member-name "properties")
                                     (children :target-type
                                      component-child-list :member-name
                                      "children")
                                     (variants :target-type component-variants
                                      :required common-lisp:t :member-name
                                      "variants")
                                     (overrides :target-type
                                      component-overrides :required
                                      common-lisp:t :member-name "overrides")
                                     (binding-properties :target-type
                                      component-binding-properties :required
                                      common-lisp:t :member-name
                                      "bindingProperties")
                                     (collection-properties :target-type
                                      component-collection-properties
                                      :member-name "collectionProperties")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt"
                                      :timestamp-format "date-time")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (events :target-type component-events
                                      :member-name "events")
                                     (schema-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schemaVersion"))
                                    (:shape-name "Component"))

(smithy/sdk/shapes:define-map component-binding-properties :key
                              smithy/sdk/smithy-types:string :value
                              component-binding-properties-value)

(smithy/sdk/shapes:define-structure component-binding-properties-value
                                    common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (binding-properties :target-type
                                      component-binding-properties-value-properties
                                      :member-name "bindingProperties")
                                     (default-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultValue"))
                                    (:shape-name
                                     "ComponentBindingPropertiesValue"))

(smithy/sdk/shapes:define-structure
 component-binding-properties-value-properties common-lisp:nil
 ((model :target-type smithy/sdk/smithy-types:string :member-name "model")
  (field :target-type smithy/sdk/smithy-types:string :member-name "field")
  (predicates :target-type predicate-list :member-name "predicates")
  (user-attribute :target-type smithy/sdk/smithy-types:string :member-name
   "userAttribute")
  (bucket :target-type smithy/sdk/smithy-types:string :member-name "bucket")
  (key :target-type smithy/sdk/smithy-types:string :member-name "key")
  (default-value :target-type smithy/sdk/smithy-types:string :member-name
   "defaultValue")
  (slot-name :target-type smithy/sdk/smithy-types:string :member-name
   "slotName"))
 (:shape-name "ComponentBindingPropertiesValueProperties"))

(smithy/sdk/shapes:define-structure component-child common-lisp:nil
                                    ((component-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "componentType")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (properties :target-type
                                      component-properties :required
                                      common-lisp:t :member-name "properties")
                                     (children :target-type
                                      component-child-list :member-name
                                      "children")
                                     (events :target-type component-events
                                      :member-name "events")
                                     (source-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceId"))
                                    (:shape-name "ComponentChild"))

(smithy/sdk/shapes:define-list component-child-list :member component-child)

(smithy/sdk/shapes:define-map component-collection-properties :key
                              smithy/sdk/smithy-types:string :value
                              component-data-configuration)

(smithy/sdk/shapes:define-structure component-condition-property
                                    common-lisp:nil
                                    ((property :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "property")
                                     (field :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "field")
                                     (operator :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operator")
                                     (operand :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operand")
                                     (then :target-type component-property
                                      :member-name "then")
                                     (else :target-type component-property
                                      :member-name "else")
                                     (operand-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operandType"))
                                    (:shape-name "ComponentConditionProperty"))

(smithy/sdk/shapes:define-structure component-data-configuration
                                    common-lisp:nil
                                    ((model :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "model")
                                     (sort :target-type sort-property-list
                                      :member-name "sort")
                                     (predicate :target-type predicate
                                      :member-name "predicate")
                                     (identifiers :target-type identifier-list
                                      :member-name "identifiers"))
                                    (:shape-name "ComponentDataConfiguration"))

(smithy/sdk/shapes:define-structure component-event common-lisp:nil
                                    ((action :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "action")
                                     (parameters :target-type action-parameters
                                      :member-name "parameters")
                                     (binding-event :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "bindingEvent"))
                                    (:shape-name "ComponentEvent"))

(smithy/sdk/shapes:define-map component-events :key
                              smithy/sdk/smithy-types:string :value
                              component-event)

(smithy/sdk/shapes:define-list component-list :member component)

(smithy/sdk/shapes:define-type component-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map component-overrides :key
                              smithy/sdk/smithy-types:string :value
                              component-overrides-value)

(smithy/sdk/shapes:define-map component-overrides-value :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map component-properties :key
                              smithy/sdk/smithy-types:string :value
                              component-property)

(smithy/sdk/shapes:define-structure component-property common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (binding-properties :target-type
                                      component-property-binding-properties
                                      :member-name "bindingProperties")
                                     (collection-binding-properties
                                      :target-type
                                      component-property-binding-properties
                                      :member-name
                                      "collectionBindingProperties")
                                     (default-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultValue")
                                     (model :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "model")
                                     (bindings :target-type form-bindings
                                      :member-name "bindings")
                                     (event :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "event")
                                     (user-attribute :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userAttribute")
                                     (concat :target-type
                                      component-property-list :member-name
                                      "concat")
                                     (condition :target-type
                                      component-condition-property :member-name
                                      "condition")
                                     (configured :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "configured")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (imported-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "importedValue")
                                     (component-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "componentName")
                                     (property :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "property"))
                                    (:shape-name "ComponentProperty"))

(smithy/sdk/shapes:define-structure component-property-binding-properties
                                    common-lisp:nil
                                    ((property :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "property")
                                     (field :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "field"))
                                    (:shape-name
                                     "ComponentPropertyBindingProperties"))

(smithy/sdk/shapes:define-list component-property-list :member
                               component-property)

common-lisp:nil

(smithy/sdk/shapes:define-structure component-summary common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type component-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (component-type :target-type
                                      component-type :required common-lisp:t
                                      :member-name "componentType"))
                                    (:shape-name "ComponentSummary"))

(smithy/sdk/shapes:define-list component-summary-list :member component-summary)

(smithy/sdk/shapes:define-type component-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-variant common-lisp:nil
                                    ((variant-values :target-type
                                      component-variant-values :member-name
                                      "variantValues")
                                     (overrides :target-type
                                      component-overrides :member-name
                                      "overrides"))
                                    (:shape-name "ComponentVariant"))

(smithy/sdk/shapes:define-map component-variant-values :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-variants :member component-variant)

(smithy/sdk/shapes:define-structure create-component-data common-lisp:nil
                                    ((name :target-type component-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (source-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceId")
                                     (component-type :target-type
                                      component-type :required common-lisp:t
                                      :member-name "componentType")
                                     (properties :target-type
                                      component-properties :required
                                      common-lisp:t :member-name "properties")
                                     (children :target-type
                                      component-child-list :member-name
                                      "children")
                                     (variants :target-type component-variants
                                      :required common-lisp:t :member-name
                                      "variants")
                                     (overrides :target-type
                                      component-overrides :required
                                      common-lisp:t :member-name "overrides")
                                     (binding-properties :target-type
                                      component-binding-properties :required
                                      common-lisp:t :member-name
                                      "bindingProperties")
                                     (collection-properties :target-type
                                      component-collection-properties
                                      :member-name "collectionProperties")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (events :target-type component-events
                                      :member-name "events")
                                     (schema-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schemaVersion"))
                                    (:shape-name "CreateComponentData"))

(smithy/sdk/shapes:define-structure create-component-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken")
                                     (component-to-create :target-type
                                      create-component-data :required
                                      common-lisp:t :member-name
                                      "componentToCreate" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateComponentRequest"))

(smithy/sdk/shapes:define-structure create-component-response common-lisp:nil
                                    ((entity :target-type component
                                      :member-name "entity" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateComponentResponse"))

(smithy/sdk/shapes:define-structure create-form-data common-lisp:nil
                                    ((name :target-type form-name :required
                                      common-lisp:t :member-name "name")
                                     (data-type :target-type
                                      form-data-type-config :required
                                      common-lisp:t :member-name "dataType")
                                     (form-action-type :target-type
                                      form-action-type :required common-lisp:t
                                      :member-name "formActionType")
                                     (fields :target-type fields-map :required
                                      common-lisp:t :member-name "fields")
                                     (style :target-type form-style :required
                                      common-lisp:t :member-name "style")
                                     (sectional-elements :target-type
                                      sectional-element-map :required
                                      common-lisp:t :member-name
                                      "sectionalElements")
                                     (schema-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "schemaVersion")
                                     (cta :target-type form-cta :member-name
                                      "cta")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (label-decorator :target-type
                                      label-decorator :member-name
                                      "labelDecorator"))
                                    (:shape-name "CreateFormData"))

(smithy/sdk/shapes:define-structure create-form-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken")
                                     (form-to-create :target-type
                                      create-form-data :required common-lisp:t
                                      :member-name "formToCreate" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateFormRequest"))

(smithy/sdk/shapes:define-structure create-form-response common-lisp:nil
                                    ((entity :target-type form :member-name
                                      "entity" :http-payload common-lisp:t))
                                    (:shape-name "CreateFormResponse"))

(smithy/sdk/shapes:define-structure create-theme-data common-lisp:nil
                                    ((name :target-type theme-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type theme-values-list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (overrides :target-type theme-values-list
                                      :member-name "overrides")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "CreateThemeData"))

(smithy/sdk/shapes:define-structure create-theme-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken")
                                     (theme-to-create :target-type
                                      create-theme-data :required common-lisp:t
                                      :member-name "themeToCreate"
                                      :http-payload common-lisp:t))
                                    (:shape-name "CreateThemeRequest"))

(smithy/sdk/shapes:define-structure create-theme-response common-lisp:nil
                                    ((entity :target-type theme :member-name
                                      "entity" :http-payload common-lisp:t))
                                    (:shape-name "CreateThemeResponse"))

(smithy/sdk/shapes:define-structure data-store-render-config common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DataStoreRenderConfig"))

(smithy/sdk/shapes:define-structure delete-component-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "DeleteComponentRequest"))

(smithy/sdk/shapes:define-structure delete-form-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "DeleteFormRequest"))

(smithy/sdk/shapes:define-structure delete-theme-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "DeleteThemeRequest"))

(smithy/sdk/shapes:define-structure exchange-code-for-token-request
                                    common-lisp:nil
                                    ((provider :target-type token-providers
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (request :target-type
                                      exchange-code-for-token-request-body
                                      :required common-lisp:t :member-name
                                      "request" :http-payload common-lisp:t))
                                    (:shape-name "ExchangeCodeForTokenRequest"))

(smithy/sdk/shapes:define-structure exchange-code-for-token-request-body
                                    common-lisp:nil
                                    ((code :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "code")
                                     (redirect-uri :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "redirectUri")
                                     (client-id :target-type sensitive-string
                                      :member-name "clientId"))
                                    (:shape-name
                                     "ExchangeCodeForTokenRequestBody"))

(smithy/sdk/shapes:define-structure exchange-code-for-token-response
                                    common-lisp:nil
                                    ((access-token :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "accessToken")
                                     (expires-in :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "expiresIn")
                                     (refresh-token :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "refreshToken"))
                                    (:shape-name
                                     "ExchangeCodeForTokenResponse"))

(smithy/sdk/shapes:define-structure export-components-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ExportComponentsRequest"))

(smithy/sdk/shapes:define-structure export-components-response common-lisp:nil
                                    ((entities :target-type component-list
                                      :required common-lisp:t :member-name
                                      "entities")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ExportComponentsResponse"))

(smithy/sdk/shapes:define-structure export-forms-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ExportFormsRequest"))

(smithy/sdk/shapes:define-structure export-forms-response common-lisp:nil
                                    ((entities :target-type form-list :required
                                      common-lisp:t :member-name "entities")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ExportFormsResponse"))

(smithy/sdk/shapes:define-structure export-themes-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ExportThemesRequest"))

(smithy/sdk/shapes:define-structure export-themes-response common-lisp:nil
                                    ((entities :target-type theme-list
                                      :required common-lisp:t :member-name
                                      "entities")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ExportThemesResponse"))

(smithy/sdk/shapes:define-map features-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-config common-lisp:nil
                                    ((label :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "label")
                                     (position :target-type field-position
                                      :member-name "position")
                                     (excluded :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "excluded")
                                     (input-type :target-type
                                      field-input-config :member-name
                                      "inputType")
                                     (validations :target-type validations-list
                                      :member-name "validations"))
                                    (:shape-name "FieldConfig"))

(smithy/sdk/shapes:define-structure field-input-config common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required")
                                     (read-only :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "readOnly")
                                     (placeholder :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "placeholder")
                                     (default-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultValue")
                                     (descriptive-text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "descriptiveText")
                                     (default-checked :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "defaultChecked")
                                     (default-country-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultCountryCode")
                                     (value-mappings :target-type
                                      value-mappings :member-name
                                      "valueMappings")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (min-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "minValue")
                                     (max-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "maxValue")
                                     (step :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "step")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (is-array :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isArray")
                                     (file-uploader-config :target-type
                                      file-uploader-field-config :member-name
                                      "fileUploaderConfig"))
                                    (:shape-name "FieldInputConfig"))

(smithy/sdk/shapes:define-union field-position common-lisp:nil
                                ((fixed :target-type fixed-position
                                  :member-name "fixed")
                                 (right-of :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "rightOf")
                                 (below :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "below"))
                                (:shape-name "FieldPosition"))

(smithy/sdk/shapes:define-structure field-validation-configuration
                                    common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (str-values :target-type str-values
                                      :member-name "strValues")
                                     (num-values :target-type num-values
                                      :member-name "numValues")
                                     (validation-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "validationMessage"))
                                    (:shape-name
                                     "FieldValidationConfiguration"))

(smithy/sdk/shapes:define-map fields-map :key smithy/sdk/smithy-types:string
                              :value field-config)

(smithy/sdk/shapes:define-structure file-uploader-field-config common-lisp:nil
                                    ((access-level :target-type
                                      storage-access-level :required
                                      common-lisp:t :member-name "accessLevel")
                                     (accepted-file-types :target-type
                                      str-values :required common-lisp:t
                                      :member-name "acceptedFileTypes")
                                     (show-thumbnails :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "showThumbnails")
                                     (is-resumable :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isResumable")
                                     (max-file-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxFileCount")
                                     (max-size :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxSize"))
                                    (:shape-name "FileUploaderFieldConfig"))

(smithy/sdk/shapes:define-enum fixed-position
    common-lisp:nil
  (:first "first"))

(smithy/sdk/shapes:define-structure form common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type form-name :required
                                      common-lisp:t :member-name "name")
                                     (form-action-type :target-type
                                      form-action-type :required common-lisp:t
                                      :member-name "formActionType")
                                     (style :target-type form-style :required
                                      common-lisp:t :member-name "style")
                                     (data-type :target-type
                                      form-data-type-config :required
                                      common-lisp:t :member-name "dataType")
                                     (fields :target-type fields-map :required
                                      common-lisp:t :member-name "fields")
                                     (sectional-elements :target-type
                                      sectional-element-map :required
                                      common-lisp:t :member-name
                                      "sectionalElements")
                                     (schema-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "schemaVersion")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (cta :target-type form-cta :member-name
                                      "cta")
                                     (label-decorator :target-type
                                      label-decorator :member-name
                                      "labelDecorator"))
                                    (:shape-name "Form"))

(smithy/sdk/shapes:define-enum form-action-type
    common-lisp:nil
  (:create "create")
  (:update "update"))

(smithy/sdk/shapes:define-structure form-binding-element common-lisp:nil
                                    ((element :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "element")
                                     (property :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "property"))
                                    (:shape-name "FormBindingElement"))

(smithy/sdk/shapes:define-map form-bindings :key smithy/sdk/smithy-types:string
                              :value form-binding-element)

(smithy/sdk/shapes:define-structure form-button common-lisp:nil
                                    ((excluded :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "excluded")
                                     (children :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "children")
                                     (position :target-type field-position
                                      :member-name "position"))
                                    (:shape-name "FormButton"))

(smithy/sdk/shapes:define-enum form-buttons-position
    common-lisp:nil
  (:top "top")
  (:bottom "bottom")
  (:top-and-bottom "top_and_bottom"))

(smithy/sdk/shapes:define-structure form-cta common-lisp:nil
                                    ((position :target-type
                                      form-buttons-position :member-name
                                      "position")
                                     (clear :target-type form-button
                                      :member-name "clear")
                                     (cancel :target-type form-button
                                      :member-name "cancel")
                                     (submit :target-type form-button
                                      :member-name "submit"))
                                    (:shape-name "FormCTA"))

(smithy/sdk/shapes:define-type form-data-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure form-data-type-config common-lisp:nil
                                    ((data-source-type :target-type
                                      form-data-source-type :required
                                      common-lisp:t :member-name
                                      "dataSourceType")
                                     (data-type-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "dataTypeName"))
                                    (:shape-name "FormDataTypeConfig"))

(smithy/sdk/shapes:define-map form-input-binding-properties :key
                              smithy/sdk/smithy-types:string :value
                              form-input-binding-properties-value)

(smithy/sdk/shapes:define-structure form-input-binding-properties-value
                                    common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "type")
                                     (binding-properties :target-type
                                      form-input-binding-properties-value-properties
                                      :member-name "bindingProperties"))
                                    (:shape-name
                                     "FormInputBindingPropertiesValue"))

(smithy/sdk/shapes:define-structure
 form-input-binding-properties-value-properties common-lisp:nil
 ((model :target-type smithy/sdk/smithy-types:string :member-name "model"))
 (:shape-name "FormInputBindingPropertiesValueProperties"))

(smithy/sdk/shapes:define-structure form-input-value-property common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (binding-properties :target-type
                                      form-input-value-property-binding-properties
                                      :member-name "bindingProperties")
                                     (concat :target-type
                                      form-input-value-property-list
                                      :member-name "concat"))
                                    (:shape-name "FormInputValueProperty"))

(smithy/sdk/shapes:define-structure
 form-input-value-property-binding-properties common-lisp:nil
 ((property :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "property")
  (field :target-type smithy/sdk/smithy-types:string :member-name "field"))
 (:shape-name "FormInputValuePropertyBindingProperties"))

(smithy/sdk/shapes:define-list form-input-value-property-list :member
                               form-input-value-property)

(smithy/sdk/shapes:define-list form-list :member form)

(smithy/sdk/shapes:define-type form-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure form-style common-lisp:nil
                                    ((horizontal-gap :target-type
                                      form-style-config :member-name
                                      "horizontalGap")
                                     (vertical-gap :target-type
                                      form-style-config :member-name
                                      "verticalGap")
                                     (outer-padding :target-type
                                      form-style-config :member-name
                                      "outerPadding"))
                                    (:shape-name "FormStyle"))

(smithy/sdk/shapes:define-union form-style-config common-lisp:nil
                                ((token-reference :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "tokenReference")
                                 (value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "value"))
                                (:shape-name "FormStyleConfig"))

(smithy/sdk/shapes:define-structure form-summary common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (data-type :target-type
                                      form-data-type-config :required
                                      common-lisp:t :member-name "dataType")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (form-action-type :target-type
                                      form-action-type :required common-lisp:t
                                      :member-name "formActionType")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type form-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "FormSummary"))

(smithy/sdk/shapes:define-list form-summary-list :member form-summary)

(smithy/sdk/shapes:define-enum generic-data-relationship-type
    common-lisp:nil
  (:has-many "HAS_MANY")
  (:has-one "HAS_ONE")
  (:belongs-to "BELONGS_TO"))

(smithy/sdk/shapes:define-input get-codegen-job-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "environmentName"
                                  :http-label common-lisp:t)
                                 (id :target-type uuid :required common-lisp:t
                                  :member-name "id" :http-label common-lisp:t))
                                (:shape-name "GetCodegenJobRequest"))

(smithy/sdk/shapes:define-output get-codegen-job-response common-lisp:nil
                                 ((job :target-type codegen-job :member-name
                                   "job" :http-payload common-lisp:t))
                                 (:shape-name "GetCodegenJobResponse"))

(smithy/sdk/shapes:define-structure get-component-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GetComponentRequest"))

(smithy/sdk/shapes:define-structure get-component-response common-lisp:nil
                                    ((component :target-type component
                                      :member-name "component" :http-payload
                                      common-lisp:t))
                                    (:shape-name "GetComponentResponse"))

(smithy/sdk/shapes:define-structure get-form-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GetFormRequest"))

(smithy/sdk/shapes:define-structure get-form-response common-lisp:nil
                                    ((form :target-type form :member-name
                                      "form" :http-payload common-lisp:t))
                                    (:shape-name "GetFormResponse"))

(smithy/sdk/shapes:define-structure get-metadata-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName"))
                                    (:shape-name "GetMetadataRequest"))

(smithy/sdk/shapes:define-structure get-metadata-response common-lisp:nil
                                    ((features :target-type features-map
                                      :required common-lisp:t :member-name
                                      "features"))
                                    (:shape-name "GetMetadataResponse"))

(smithy/sdk/shapes:define-structure get-theme-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GetThemeRequest"))

(smithy/sdk/shapes:define-structure get-theme-response common-lisp:nil
                                    ((theme :target-type theme :member-name
                                      "theme" :http-payload common-lisp:t))
                                    (:shape-name "GetThemeResponse"))

(smithy/sdk/shapes:define-structure graph-qlrender-config common-lisp:nil
                                    ((types-file-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "typesFilePath")
                                     (queries-file-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "queriesFilePath")
                                     (mutations-file-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "mutationsFilePath")
                                     (subscriptions-file-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "subscriptionsFilePath")
                                     (fragments-file-path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "fragmentsFilePath"))
                                    (:shape-name "GraphQLRenderConfig"))

(smithy/sdk/shapes:define-list identifier-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum jsmodule
    common-lisp:nil
  (:es2020 "es2020")
  (:esnext "esnext"))

(smithy/sdk/shapes:define-enum jsscript
    common-lisp:nil
  (:jsx "jsx")
  (:tsx "tsx")
  (:js "js"))

(smithy/sdk/shapes:define-enum jstarget
    common-lisp:nil
  (:es2015 "es2015")
  (:es2020 "es2020"))

(smithy/sdk/shapes:define-type label-decorator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type list-codegen-jobs-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-codegen-jobs-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "environmentName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  list-codegen-jobs-limit :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListCodegenJobsRequest"))

(smithy/sdk/shapes:define-output list-codegen-jobs-response common-lisp:nil
                                 ((entities :target-type
                                   codegen-job-summary-list :required
                                   common-lisp:t :member-name "entities")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListCodegenJobsResponse"))

(smithy/sdk/shapes:define-structure list-components-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      list-entity-limit :member-name
                                      "maxResults" :http-query "maxResults"))
                                    (:shape-name "ListComponentsRequest"))

(smithy/sdk/shapes:define-structure list-components-response common-lisp:nil
                                    ((entities :target-type
                                      component-summary-list :required
                                      common-lisp:t :member-name "entities")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListComponentsResponse"))

(smithy/sdk/shapes:define-type list-entity-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-forms-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      list-entity-limit :member-name
                                      "maxResults" :http-query "maxResults"))
                                    (:shape-name "ListFormsRequest"))

(smithy/sdk/shapes:define-structure list-forms-response common-lisp:nil
                                    ((entities :target-type form-summary-list
                                      :required common-lisp:t :member-name
                                      "entities")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListFormsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-themes-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type
                                      list-entity-limit :member-name
                                      "maxResults" :http-query "maxResults"))
                                    (:shape-name "ListThemesRequest"))

(smithy/sdk/shapes:define-structure list-themes-response common-lisp:nil
                                    ((entities :target-type theme-summary-list
                                      :required common-lisp:t :member-name
                                      "entities")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListThemesResponse"))

(smithy/sdk/shapes:define-structure mutation-action-set-state-parameter
                                    common-lisp:nil
                                    ((component-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "componentName")
                                     (property :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "property")
                                     (set :target-type component-property
                                      :required common-lisp:t :member-name
                                      "set"))
                                    (:shape-name
                                     "MutationActionSetStateParameter"))

(smithy/sdk/shapes:define-structure no-api-render-config common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "NoApiRenderConfig"))

(smithy/sdk/shapes:define-list num-values :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type operand-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure predicate common-lisp:nil
                                    ((or :target-type predicate-list
                                      :member-name "or")
                                     (and :target-type predicate-list
                                      :member-name "and")
                                     (field :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "field")
                                     (operator :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operator")
                                     (operand :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operand")
                                     (operand-type :target-type operand-type
                                      :member-name "operandType"))
                                    (:shape-name "Predicate"))

(smithy/sdk/shapes:define-list predicate-list :member predicate)

(smithy/sdk/shapes:define-structure put-metadata-flag-body common-lisp:nil
                                    ((new-value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "newValue"))
                                    (:shape-name "PutMetadataFlagBody"))

(smithy/sdk/shapes:define-structure put-metadata-flag-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (feature-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "featureName")
                                     (body :target-type put-metadata-flag-body
                                      :required common-lisp:t :member-name
                                      "body" :http-payload common-lisp:t))
                                    (:shape-name "PutMetadataFlagRequest"))

(smithy/sdk/shapes:define-map react-codegen-dependencies :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure react-start-codegen-job-data
                                    common-lisp:nil
                                    ((module :target-type jsmodule :member-name
                                      "module")
                                     (target :target-type jstarget :member-name
                                      "target")
                                     (script :target-type jsscript :member-name
                                      "script")
                                     (render-type-declarations :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "renderTypeDeclarations")
                                     (inline-source-map :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "inlineSourceMap")
                                     (api-configuration :target-type
                                      api-configuration :member-name
                                      "apiConfiguration")
                                     (dependencies :target-type
                                      react-codegen-dependencies :member-name
                                      "dependencies"))
                                    (:shape-name "ReactStartCodegenJobData"))

(smithy/sdk/shapes:define-structure refresh-token-request common-lisp:nil
                                    ((provider :target-type token-providers
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (refresh-token-body :target-type
                                      refresh-token-request-body :required
                                      common-lisp:t :member-name
                                      "refreshTokenBody" :http-payload
                                      common-lisp:t))
                                    (:shape-name "RefreshTokenRequest"))

(smithy/sdk/shapes:define-structure refresh-token-request-body common-lisp:nil
                                    ((token :target-type sensitive-string
                                      :required common-lisp:t :member-name
                                      "token")
                                     (client-id :target-type sensitive-string
                                      :member-name "clientId"))
                                    (:shape-name "RefreshTokenRequestBody"))

(smithy/sdk/shapes:define-structure refresh-token-response common-lisp:nil
                                    ((access-token :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "accessToken")
                                     (expires-in :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "expiresIn"))
                                    (:shape-name "RefreshTokenResponse"))

(smithy/sdk/shapes:define-list related-model-fields-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure sectional-element common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (position :target-type field-position
                                      :member-name "position")
                                     (text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (level :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "level")
                                     (orientation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "orientation")
                                     (excluded :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "excluded"))
                                    (:shape-name "SectionalElement"))

(smithy/sdk/shapes:define-map sectional-element-map :key
                              smithy/sdk/smithy-types:string :value
                              sectional-element)

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum sort-direction
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-structure sort-property common-lisp:nil
                                    ((field :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "field")
                                     (direction :target-type sort-direction
                                      :required common-lisp:t :member-name
                                      "direction"))
                                    (:shape-name "SortProperty"))

(smithy/sdk/shapes:define-list sort-property-list :member sort-property)

(smithy/sdk/shapes:define-structure start-codegen-job-data common-lisp:nil
                                    ((render-config :target-type
                                      codegen-job-render-config :required
                                      common-lisp:t :member-name
                                      "renderConfig")
                                     (generic-data-schema :target-type
                                      codegen-job-generic-data-schema
                                      :member-name "genericDataSchema")
                                     (auto-generate-forms :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "autoGenerateForms")
                                     (features :target-type
                                      codegen-feature-flags :member-name
                                      "features")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "StartCodegenJobData"))

(smithy/sdk/shapes:define-input start-codegen-job-request common-lisp:nil
                                ((app-id :target-type app-id :required
                                  common-lisp:t :member-name "appId"
                                  :http-label common-lisp:t)
                                 (environment-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "environmentName"
                                  :http-label common-lisp:t)
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken" :http-query "clientToken")
                                 (codegen-job-to-create :target-type
                                  start-codegen-job-data :required
                                  common-lisp:t :member-name
                                  "codegenJobToCreate" :http-payload
                                  common-lisp:t))
                                (:shape-name "StartCodegenJobRequest"))

(smithy/sdk/shapes:define-output start-codegen-job-response common-lisp:nil
                                 ((entity :target-type codegen-job :member-name
                                   "entity" :http-payload common-lisp:t))
                                 (:shape-name "StartCodegenJobResponse"))

(smithy/sdk/shapes:define-enum storage-access-level
    common-lisp:nil
  (:public "public")
  (:protected "protected")
  (:private "private"))

(smithy/sdk/shapes:define-list str-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
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

(smithy/sdk/shapes:define-structure theme common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type theme-name :required
                                      common-lisp:t :member-name "name")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt" :timestamp-format
                                      "date-time")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt"
                                      :timestamp-format "date-time")
                                     (values :target-type theme-values-list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (overrides :target-type theme-values-list
                                      :member-name "overrides")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "Theme"))

(smithy/sdk/shapes:define-list theme-list :member theme)

(smithy/sdk/shapes:define-type theme-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure theme-summary common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type theme-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "ThemeSummary"))

(smithy/sdk/shapes:define-list theme-summary-list :member theme-summary)

(smithy/sdk/shapes:define-structure theme-value common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (children :target-type theme-values-list
                                      :member-name "children"))
                                    (:shape-name "ThemeValue"))

(smithy/sdk/shapes:define-structure theme-values common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "key")
                                     (value :target-type theme-value
                                      :member-name "value"))
                                    (:shape-name "ThemeValues"))

(smithy/sdk/shapes:define-list theme-values-list :member theme-values)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token-providers smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-component-data common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (name :target-type component-name
                                      :member-name "name")
                                     (source-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceId")
                                     (component-type :target-type
                                      component-type :member-name
                                      "componentType")
                                     (properties :target-type
                                      component-properties :member-name
                                      "properties")
                                     (children :target-type
                                      component-child-list :member-name
                                      "children")
                                     (variants :target-type component-variants
                                      :member-name "variants")
                                     (overrides :target-type
                                      component-overrides :member-name
                                      "overrides")
                                     (binding-properties :target-type
                                      component-binding-properties :member-name
                                      "bindingProperties")
                                     (collection-properties :target-type
                                      component-collection-properties
                                      :member-name "collectionProperties")
                                     (events :target-type component-events
                                      :member-name "events")
                                     (schema-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schemaVersion"))
                                    (:shape-name "UpdateComponentData"))

(smithy/sdk/shapes:define-structure update-component-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken")
                                     (updated-component :target-type
                                      update-component-data :required
                                      common-lisp:t :member-name
                                      "updatedComponent" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateComponentRequest"))

(smithy/sdk/shapes:define-structure update-component-response common-lisp:nil
                                    ((entity :target-type component
                                      :member-name "entity" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateComponentResponse"))

(smithy/sdk/shapes:define-structure update-form-data common-lisp:nil
                                    ((name :target-type form-name :member-name
                                      "name")
                                     (data-type :target-type
                                      form-data-type-config :member-name
                                      "dataType")
                                     (form-action-type :target-type
                                      form-action-type :member-name
                                      "formActionType")
                                     (fields :target-type fields-map
                                      :member-name "fields")
                                     (style :target-type form-style
                                      :member-name "style")
                                     (sectional-elements :target-type
                                      sectional-element-map :member-name
                                      "sectionalElements")
                                     (schema-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "schemaVersion")
                                     (cta :target-type form-cta :member-name
                                      "cta")
                                     (label-decorator :target-type
                                      label-decorator :member-name
                                      "labelDecorator"))
                                    (:shape-name "UpdateFormData"))

(smithy/sdk/shapes:define-structure update-form-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken")
                                     (updated-form :target-type
                                      update-form-data :required common-lisp:t
                                      :member-name "updatedForm" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateFormRequest"))

(smithy/sdk/shapes:define-structure update-form-response common-lisp:nil
                                    ((entity :target-type form :member-name
                                      "entity" :http-payload common-lisp:t))
                                    (:shape-name "UpdateFormResponse"))

(smithy/sdk/shapes:define-structure update-theme-data common-lisp:nil
                                    ((id :target-type uuid :member-name "id")
                                     (name :target-type theme-name :member-name
                                      "name")
                                     (values :target-type theme-values-list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (overrides :target-type theme-values-list
                                      :member-name "overrides"))
                                    (:shape-name "UpdateThemeData"))

(smithy/sdk/shapes:define-structure update-theme-request common-lisp:nil
                                    ((app-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "appId")
                                     (environment-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "environmentName")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken" :http-query
                                      "clientToken")
                                     (updated-theme :target-type
                                      update-theme-data :required common-lisp:t
                                      :member-name "updatedTheme" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateThemeRequest"))

(smithy/sdk/shapes:define-structure update-theme-response common-lisp:nil
                                    ((entity :target-type theme :member-name
                                      "entity" :http-payload common-lisp:t))
                                    (:shape-name "UpdateThemeResponse"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list validations-list :member
                               field-validation-configuration)

(smithy/sdk/shapes:define-structure value-mapping common-lisp:nil
                                    ((display-value :target-type
                                      form-input-value-property :member-name
                                      "displayValue")
                                     (value :target-type
                                      form-input-value-property :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "ValueMapping"))

(smithy/sdk/shapes:define-list value-mapping-list :member value-mapping)

(smithy/sdk/shapes:define-structure value-mappings common-lisp:nil
                                    ((values :target-type value-mapping-list
                                      :required common-lisp:t :member-name
                                      "values")
                                     (binding-properties :target-type
                                      form-input-binding-properties
                                      :member-name "bindingProperties"))
                                    (:shape-name "ValueMappings"))

(smithy/sdk/operation:define-operation create-component :shape-name
                                       "CreateComponent" :input
                                       create-component-request :output
                                       create-component-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-conflict-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/app/{appId}/environment/{environmentName}/components")

(smithy/sdk/operation:define-operation create-form :shape-name "CreateForm"
                                       :input create-form-request :output
                                       create-form-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-conflict-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/app/{appId}/environment/{environmentName}/forms")

(smithy/sdk/operation:define-operation create-theme :shape-name "CreateTheme"
                                       :input create-theme-request :output
                                       create-theme-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-conflict-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/app/{appId}/environment/{environmentName}/themes")

(smithy/sdk/operation:define-operation delete-component :shape-name
                                       "DeleteComponent" :input
                                       delete-component-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/app/{appId}/environment/{environmentName}/components/{id}")

(smithy/sdk/operation:define-operation delete-form :shape-name "DeleteForm"
                                       :input delete-form-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/app/{appId}/environment/{environmentName}/forms/{id}")

(smithy/sdk/operation:define-operation delete-theme :shape-name "DeleteTheme"
                                       :input delete-theme-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/app/{appId}/environment/{environmentName}/themes/{id}")

(smithy/sdk/operation:define-operation exchange-code-for-token :shape-name
                                       "ExchangeCodeForToken" :input
                                       exchange-code-for-token-request :output
                                       exchange-code-for-token-response :errors
                                       (invalid-parameter-exception) :method
                                       "POST" :uri "/tokens/{provider}")

(smithy/sdk/operation:define-operation export-components :shape-name
                                       "ExportComponents" :input
                                       export-components-request :output
                                       export-components-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "GET" :uri
                                       "/export/app/{appId}/environment/{environmentName}/components")

(smithy/sdk/operation:define-operation export-forms :shape-name "ExportForms"
                                       :input export-forms-request :output
                                       export-forms-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "GET" :uri
                                       "/export/app/{appId}/environment/{environmentName}/forms")

(smithy/sdk/operation:define-operation export-themes :shape-name "ExportThemes"
                                       :input export-themes-request :output
                                       export-themes-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "GET" :uri
                                       "/export/app/{appId}/environment/{environmentName}/themes")

(smithy/sdk/operation:define-operation get-codegen-job :shape-name
                                       "GetCodegenJob" :input
                                       get-codegen-job-request :output
                                       get-codegen-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/codegen-jobs/{id}")

(smithy/sdk/operation:define-operation get-component :shape-name "GetComponent"
                                       :input get-component-request :output
                                       get-component-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/components/{id}")

(smithy/sdk/operation:define-operation get-form :shape-name "GetForm" :input
                                       get-form-request :output
                                       get-form-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/forms/{id}")

(smithy/sdk/operation:define-operation get-metadata :shape-name "GetMetadata"
                                       :input get-metadata-request :output
                                       get-metadata-response :errors
                                       (invalid-parameter-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/metadata")

(smithy/sdk/operation:define-operation get-theme :shape-name "GetTheme" :input
                                       get-theme-request :output
                                       get-theme-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/themes/{id}")

(smithy/sdk/operation:define-operation list-codegen-jobs :shape-name
                                       "ListCodegenJobs" :input
                                       list-codegen-jobs-request :output
                                       list-codegen-jobs-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/codegen-jobs")

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-request :output
                                       list-components-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/components")

(smithy/sdk/operation:define-operation list-forms :shape-name "ListForms"
                                       :input list-forms-request :output
                                       list-forms-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/forms")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-themes :shape-name "ListThemes"
                                       :input list-themes-request :output
                                       list-themes-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception)
                                       :method "GET" :uri
                                       "/app/{appId}/environment/{environmentName}/themes")

(smithy/sdk/operation:define-operation put-metadata-flag :shape-name
                                       "PutMetadataFlag" :input
                                       put-metadata-flag-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}")

(smithy/sdk/operation:define-operation refresh-token :shape-name "RefreshToken"
                                       :input refresh-token-request :output
                                       refresh-token-response :errors
                                       (invalid-parameter-exception) :method
                                       "POST" :uri "/tokens/{provider}/refresh")

(smithy/sdk/operation:define-operation start-codegen-job :shape-name
                                       "StartCodegenJob" :input
                                       start-codegen-job-request :output
                                       start-codegen-job-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/app/{appId}/environment/{environmentName}/codegen-jobs")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-component :shape-name
                                       "UpdateComponent" :input
                                       update-component-request :output
                                       update-component-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-conflict-exception)
                                       :method "PATCH" :uri
                                       "/app/{appId}/environment/{environmentName}/components/{id}")

(smithy/sdk/operation:define-operation update-form :shape-name "UpdateForm"
                                       :input update-form-request :output
                                       update-form-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-conflict-exception)
                                       :method "PATCH" :uri
                                       "/app/{appId}/environment/{environmentName}/forms/{id}")

(smithy/sdk/operation:define-operation update-theme :shape-name "UpdateTheme"
                                       :input update-theme-request :output
                                       update-theme-response :errors
                                       (internal-server-exception
                                        invalid-parameter-exception
                                        resource-conflict-exception)
                                       :method "PATCH" :uri
                                       "/app/{appId}/environment/{environmentName}/themes/{id}")
