(uiop/package:define-package #:pira/verifiedpermissions (:use)
                             (:export #:access-denied-exception #:action-id
                              #:action-identifier #:action-identifier-list
                              #:action-type #:amazon-resource-name
                              #:attribute-value #:audience #:audiences
                              #:batch-get-policy #:batch-get-policy-error-code
                              #:batch-get-policy-error-item
                              #:batch-get-policy-error-list
                              #:batch-get-policy-input-item
                              #:batch-get-policy-input-list
                              #:batch-get-policy-output-item
                              #:batch-get-policy-output-list
                              #:batch-is-authorized
                              #:batch-is-authorized-input-item
                              #:batch-is-authorized-input-list
                              #:batch-is-authorized-output-item
                              #:batch-is-authorized-output-list
                              #:batch-is-authorized-with-token
                              #:batch-is-authorized-with-token-input-item
                              #:batch-is-authorized-with-token-input-list
                              #:batch-is-authorized-with-token-output-item
                              #:batch-is-authorized-with-token-output-list
                              #:boolean-attribute #:cedar-json #:cedar-version
                              #:claim #:client-id #:client-ids
                              #:cognito-group-configuration
                              #:cognito-group-configuration-detail
                              #:cognito-group-configuration-item
                              #:cognito-user-pool-configuration
                              #:cognito-user-pool-configuration-detail
                              #:cognito-user-pool-configuration-item
                              #:configuration #:configuration-detail
                              #:configuration-item #:conflict-exception
                              #:context-definition #:context-map
                              #:create-identity-source #:create-policy
                              #:create-policy-store #:create-policy-template
                              #:decimal #:decision #:delete-identity-source
                              #:delete-policy #:delete-policy-store
                              #:delete-policy-template #:deletion-protection
                              #:determining-policy-item
                              #:determining-policy-list #:discovery-url
                              #:entities-definition #:entity-attributes
                              #:entity-id #:entity-id-prefix
                              #:entity-identifier #:entity-item #:entity-list
                              #:entity-reference #:entity-type
                              #:evaluation-error-item #:evaluation-error-list
                              #:get-identity-source #:get-policy
                              #:get-policy-store #:get-policy-template
                              #:get-schema #:group-entity-type
                              #:idempotency-token #:identity-source
                              #:identity-source-details
                              #:identity-source-filter
                              #:identity-source-filters #:identity-source-id
                              #:identity-source-item
                              #:identity-source-item-details #:identity-sources
                              #:internal-server-exception
                              #:invalid-state-exception #:ip-addr
                              #:is-authorized #:is-authorized-with-token
                              #:issuer #:list-identity-sources
                              #:list-identity-sources-max-results
                              #:list-policies #:list-policy-stores
                              #:list-policy-templates #:list-tags-for-resource
                              #:long-attribute #:max-results #:namespace
                              #:namespace-list #:next-token
                              #:open-id-connect-access-token-configuration
                              #:open-id-connect-access-token-configuration-detail
                              #:open-id-connect-access-token-configuration-item
                              #:open-id-connect-configuration
                              #:open-id-connect-configuration-detail
                              #:open-id-connect-configuration-item
                              #:open-id-connect-group-configuration
                              #:open-id-connect-group-configuration-detail
                              #:open-id-connect-group-configuration-item
                              #:open-id-connect-identity-token-configuration
                              #:open-id-connect-identity-token-configuration-detail
                              #:open-id-connect-identity-token-configuration-item
                              #:open-id-connect-token-selection
                              #:open-id-connect-token-selection-detail
                              #:open-id-connect-token-selection-item
                              #:open-id-issuer #:parent-list #:policy
                              #:policy-definition #:policy-definition-detail
                              #:policy-definition-item #:policy-effect
                              #:policy-filter #:policy-id #:policy-item
                              #:policy-list #:policy-statement #:policy-store
                              #:policy-store-description #:policy-store-id
                              #:policy-store-item #:policy-store-list
                              #:policy-template #:policy-template-description
                              #:policy-template-id #:policy-template-item
                              #:policy-templates-list #:policy-type
                              #:principal-entity-type #:put-schema
                              #:record-attribute #:resource-arn
                              #:resource-conflict #:resource-conflict-list
                              #:resource-not-found-exception #:resource-type
                              #:schema-definition #:schema-json
                              #:service-quota-exceeded-exception
                              #:set-attribute #:static-policy-definition
                              #:static-policy-definition-detail
                              #:static-policy-definition-item
                              #:static-policy-description #:string-attribute
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:template-linked-policy-definition
                              #:template-linked-policy-definition-detail
                              #:template-linked-policy-definition-item
                              #:throttling-exception #:timestamp-format #:token
                              #:too-many-tags-exception #:untag-resource
                              #:update-cognito-group-configuration
                              #:update-cognito-user-pool-configuration
                              #:update-configuration #:update-identity-source
                              #:update-open-id-connect-access-token-configuration
                              #:update-open-id-connect-configuration
                              #:update-open-id-connect-group-configuration
                              #:update-open-id-connect-identity-token-configuration
                              #:update-open-id-connect-token-selection
                              #:update-policy #:update-policy-definition
                              #:update-policy-store #:update-policy-template
                              #:update-static-policy-definition #:user-pool-arn
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-mode #:validation-settings
                              #:verified-permissions
                              #:verifiedpermissions-error))
(common-lisp:in-package #:pira/verifiedpermissions)

(common-lisp:define-condition verifiedpermissions-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service verified-permissions :shape-name
                                   "VerifiedPermissions" :version "2021-12-01"
                                   :title "Amazon Verified Permissions"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :errors
                                   '(access-denied-exception
                                     internal-server-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "VerifiedPermissions")
                                      ("arnNamespace" . "verifiedpermissions")
                                      ("endpointPrefix"
                                       . "verifiedpermissions"))
                                     ("aws.auth#sigv4"
                                      ("name" . "verifiedpermissions"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair of a resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair that is allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by a list of tag keys that are allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-identifier common-lisp:nil
                                    ((action-type :target-type action-type
                                      :required common-lisp:t :member-name
                                      "actionType")
                                     (action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionId"))
                                    (:shape-name "ActionIdentifier"))

(smithy/sdk/shapes:define-list action-identifier-list :member action-identifier)

(smithy/sdk/shapes:define-type action-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union attribute-value common-lisp:nil
                                ((boolean :target-type boolean-attribute
                                  :member-name "boolean")
                                 (entity-identifier :target-type
                                  entity-identifier :member-name
                                  "entityIdentifier")
                                 (long :target-type long-attribute :member-name
                                  "long")
                                 (string :target-type string-attribute
                                  :member-name "string")
                                 (set :target-type set-attribute :member-name
                                  "set")
                                 (record :target-type record-attribute
                                  :member-name "record")
                                 (ipaddr :target-type ip-addr :member-name
                                  "ipaddr")
                                 (decimal :target-type decimal :member-name
                                  "decimal"))
                                (:shape-name "AttributeValue"))

(smithy/sdk/shapes:define-type audience smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list audiences :member audience)

(smithy/sdk/shapes:define-enum batch-get-policy-error-code
    common-lisp:nil
  (:policy-store-not-found "POLICY_STORE_NOT_FOUND")
  (:policy-not-found "POLICY_NOT_FOUND"))

(smithy/sdk/shapes:define-structure batch-get-policy-error-item common-lisp:nil
                                    ((code :target-type
                                      batch-get-policy-error-code :required
                                      common-lisp:t :member-name "code")
                                     (policy-store-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "policyStoreId")
                                     (policy-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "policyId")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "BatchGetPolicyErrorItem"))

(smithy/sdk/shapes:define-list batch-get-policy-error-list :member
                               batch-get-policy-error-item)

(smithy/sdk/shapes:define-input batch-get-policy-input common-lisp:nil
                                ((requests :target-type
                                  batch-get-policy-input-list :required
                                  common-lisp:t :member-name "requests"))
                                (:shape-name "BatchGetPolicyInput"))

(smithy/sdk/shapes:define-structure batch-get-policy-input-item common-lisp:nil
                                    ((policy-store-id :target-type
                                      policy-store-id :required common-lisp:t
                                      :member-name "policyStoreId")
                                     (policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId"))
                                    (:shape-name "BatchGetPolicyInputItem"))

(smithy/sdk/shapes:define-list batch-get-policy-input-list :member
                               batch-get-policy-input-item)

(smithy/sdk/shapes:define-output batch-get-policy-output common-lisp:nil
                                 ((results :target-type
                                   batch-get-policy-output-list :required
                                   common-lisp:t :member-name "results")
                                  (errors :target-type
                                   batch-get-policy-error-list :required
                                   common-lisp:t :member-name "errors"))
                                 (:shape-name "BatchGetPolicyOutput"))

(smithy/sdk/shapes:define-structure batch-get-policy-output-item
                                    common-lisp:nil
                                    ((policy-store-id :target-type
                                      policy-store-id :required common-lisp:t
                                      :member-name "policyStoreId")
                                     (policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "policyType")
                                     (definition :target-type
                                      policy-definition-detail :required
                                      common-lisp:t :member-name "definition")
                                     (created-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "createdDate")
                                     (last-updated-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "lastUpdatedDate"))
                                    (:shape-name "BatchGetPolicyOutputItem"))

(smithy/sdk/shapes:define-list batch-get-policy-output-list :member
                               batch-get-policy-output-item)

(smithy/sdk/shapes:define-input batch-is-authorized-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (entities :target-type entities-definition
                                  :member-name "entities")
                                 (requests :target-type
                                  batch-is-authorized-input-list :required
                                  common-lisp:t :member-name "requests"))
                                (:shape-name "BatchIsAuthorizedInput"))

(smithy/sdk/shapes:define-structure batch-is-authorized-input-item
                                    common-lisp:nil
                                    ((principal :target-type entity-identifier
                                      :member-name "principal")
                                     (action :target-type action-identifier
                                      :member-name "action")
                                     (resource :target-type entity-identifier
                                      :member-name "resource")
                                     (context :target-type context-definition
                                      :member-name "context"))
                                    (:shape-name "BatchIsAuthorizedInputItem"))

(smithy/sdk/shapes:define-list batch-is-authorized-input-list :member
                               batch-is-authorized-input-item)

(smithy/sdk/shapes:define-output batch-is-authorized-output common-lisp:nil
                                 ((results :target-type
                                   batch-is-authorized-output-list :required
                                   common-lisp:t :member-name "results"))
                                 (:shape-name "BatchIsAuthorizedOutput"))

(smithy/sdk/shapes:define-structure batch-is-authorized-output-item
                                    common-lisp:nil
                                    ((request :target-type
                                      batch-is-authorized-input-item :required
                                      common-lisp:t :member-name "request")
                                     (decision :target-type decision :required
                                      common-lisp:t :member-name "decision")
                                     (determining-policies :target-type
                                      determining-policy-list :required
                                      common-lisp:t :member-name
                                      "determiningPolicies")
                                     (errors :target-type evaluation-error-list
                                      :required common-lisp:t :member-name
                                      "errors"))
                                    (:shape-name "BatchIsAuthorizedOutputItem"))

(smithy/sdk/shapes:define-list batch-is-authorized-output-list :member
                               batch-is-authorized-output-item)

(smithy/sdk/shapes:define-input batch-is-authorized-with-token-input
                                common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (identity-token :target-type token
                                  :member-name "identityToken")
                                 (access-token :target-type token :member-name
                                  "accessToken")
                                 (entities :target-type entities-definition
                                  :member-name "entities")
                                 (requests :target-type
                                  batch-is-authorized-with-token-input-list
                                  :required common-lisp:t :member-name
                                  "requests"))
                                (:shape-name "BatchIsAuthorizedWithTokenInput"))

(smithy/sdk/shapes:define-structure batch-is-authorized-with-token-input-item
                                    common-lisp:nil
                                    ((action :target-type action-identifier
                                      :member-name "action")
                                     (resource :target-type entity-identifier
                                      :member-name "resource")
                                     (context :target-type context-definition
                                      :member-name "context"))
                                    (:shape-name
                                     "BatchIsAuthorizedWithTokenInputItem"))

(smithy/sdk/shapes:define-list batch-is-authorized-with-token-input-list
                               :member
                               batch-is-authorized-with-token-input-item)

(smithy/sdk/shapes:define-output batch-is-authorized-with-token-output
                                 common-lisp:nil
                                 ((principal :target-type entity-identifier
                                   :member-name "principal")
                                  (results :target-type
                                   batch-is-authorized-with-token-output-list
                                   :required common-lisp:t :member-name
                                   "results"))
                                 (:shape-name
                                  "BatchIsAuthorizedWithTokenOutput"))

(smithy/sdk/shapes:define-structure batch-is-authorized-with-token-output-item
                                    common-lisp:nil
                                    ((request :target-type
                                      batch-is-authorized-with-token-input-item
                                      :required common-lisp:t :member-name
                                      "request")
                                     (decision :target-type decision :required
                                      common-lisp:t :member-name "decision")
                                     (determining-policies :target-type
                                      determining-policy-list :required
                                      common-lisp:t :member-name
                                      "determiningPolicies")
                                     (errors :target-type evaluation-error-list
                                      :required common-lisp:t :member-name
                                      "errors"))
                                    (:shape-name
                                     "BatchIsAuthorizedWithTokenOutputItem"))

(smithy/sdk/shapes:define-list batch-is-authorized-with-token-output-list
                               :member
                               batch-is-authorized-with-token-output-item)

(smithy/sdk/shapes:define-type boolean-attribute
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cedar-json smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cedar-version
    common-lisp:nil
  (:cedar-2 "CEDAR_2")
  (:cedar-4 "CEDAR_4"))

(smithy/sdk/shapes:define-type claim smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list client-ids :member client-id)

(smithy/sdk/shapes:define-structure cognito-group-configuration common-lisp:nil
                                    ((group-entity-type :target-type
                                      group-entity-type :required common-lisp:t
                                      :member-name "groupEntityType"))
                                    (:shape-name "CognitoGroupConfiguration"))

(smithy/sdk/shapes:define-structure cognito-group-configuration-detail
                                    common-lisp:nil
                                    ((group-entity-type :target-type
                                      group-entity-type :member-name
                                      "groupEntityType"))
                                    (:shape-name
                                     "CognitoGroupConfigurationDetail"))

(smithy/sdk/shapes:define-structure cognito-group-configuration-item
                                    common-lisp:nil
                                    ((group-entity-type :target-type
                                      group-entity-type :member-name
                                      "groupEntityType"))
                                    (:shape-name
                                     "CognitoGroupConfigurationItem"))

(smithy/sdk/shapes:define-structure cognito-user-pool-configuration
                                    common-lisp:nil
                                    ((user-pool-arn :target-type user-pool-arn
                                      :required common-lisp:t :member-name
                                      "userPoolArn")
                                     (client-ids :target-type client-ids
                                      :member-name "clientIds")
                                     (group-configuration :target-type
                                      cognito-group-configuration :member-name
                                      "groupConfiguration"))
                                    (:shape-name
                                     "CognitoUserPoolConfiguration"))

(smithy/sdk/shapes:define-structure cognito-user-pool-configuration-detail
                                    common-lisp:nil
                                    ((user-pool-arn :target-type user-pool-arn
                                      :required common-lisp:t :member-name
                                      "userPoolArn")
                                     (client-ids :target-type client-ids
                                      :required common-lisp:t :member-name
                                      "clientIds")
                                     (issuer :target-type issuer :required
                                      common-lisp:t :member-name "issuer")
                                     (group-configuration :target-type
                                      cognito-group-configuration-detail
                                      :member-name "groupConfiguration"))
                                    (:shape-name
                                     "CognitoUserPoolConfigurationDetail"))

(smithy/sdk/shapes:define-structure cognito-user-pool-configuration-item
                                    common-lisp:nil
                                    ((user-pool-arn :target-type user-pool-arn
                                      :required common-lisp:t :member-name
                                      "userPoolArn")
                                     (client-ids :target-type client-ids
                                      :required common-lisp:t :member-name
                                      "clientIds")
                                     (issuer :target-type issuer :required
                                      common-lisp:t :member-name "issuer")
                                     (group-configuration :target-type
                                      cognito-group-configuration-item
                                      :member-name "groupConfiguration"))
                                    (:shape-name
                                     "CognitoUserPoolConfigurationItem"))

(smithy/sdk/shapes:define-union configuration common-lisp:nil
                                ((cognito-user-pool-configuration :target-type
                                  cognito-user-pool-configuration :member-name
                                  "cognitoUserPoolConfiguration")
                                 (open-id-connect-configuration :target-type
                                  open-id-connect-configuration :member-name
                                  "openIdConnectConfiguration"))
                                (:shape-name "Configuration"))

(smithy/sdk/shapes:define-union configuration-detail common-lisp:nil
                                ((cognito-user-pool-configuration :target-type
                                  cognito-user-pool-configuration-detail
                                  :member-name "cognitoUserPoolConfiguration")
                                 (open-id-connect-configuration :target-type
                                  open-id-connect-configuration-detail
                                  :member-name "openIdConnectConfiguration"))
                                (:shape-name "ConfigurationDetail"))

(smithy/sdk/shapes:define-union configuration-item common-lisp:nil
                                ((cognito-user-pool-configuration :target-type
                                  cognito-user-pool-configuration-item
                                  :member-name "cognitoUserPoolConfiguration")
                                 (open-id-connect-configuration :target-type
                                  open-id-connect-configuration-item
                                  :member-name "openIdConnectConfiguration"))
                                (:shape-name "ConfigurationItem"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resources :target-type resource-conflict-list
                                  :required common-lisp:t :member-name
                                  "resources"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-union context-definition common-lisp:nil
                                ((context-map :target-type context-map
                                  :member-name "contextMap")
                                 (cedar-json :target-type cedar-json
                                  :member-name "cedarJson"))
                                (:shape-name "ContextDefinition"))

(smithy/sdk/shapes:define-map context-map :key smithy/sdk/smithy-types:string
                              :value attribute-value)

(smithy/sdk/shapes:define-input create-identity-source-input common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (configuration :target-type configuration
                                  :required common-lisp:t :member-name
                                  "configuration")
                                 (principal-entity-type :target-type
                                  principal-entity-type :member-name
                                  "principalEntityType"))
                                (:shape-name "CreateIdentitySourceInput"))

(smithy/sdk/shapes:define-output create-identity-source-output common-lisp:nil
                                 ((created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (identity-source-id :target-type
                                   identity-source-id :required common-lisp:t
                                   :member-name "identitySourceId")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId"))
                                 (:shape-name "CreateIdentitySourceOutput"))

(smithy/sdk/shapes:define-input create-policy-input common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (definition :target-type policy-definition
                                  :required common-lisp:t :member-name
                                  "definition"))
                                (:shape-name "CreatePolicyInput"))

(smithy/sdk/shapes:define-output create-policy-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (policy-id :target-type policy-id :required
                                   common-lisp:t :member-name "policyId")
                                  (policy-type :target-type policy-type
                                   :required common-lisp:t :member-name
                                   "policyType")
                                  (principal :target-type entity-identifier
                                   :member-name "principal")
                                  (resource :target-type entity-identifier
                                   :member-name "resource")
                                  (actions :target-type action-identifier-list
                                   :member-name "actions")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (effect :target-type policy-effect
                                   :member-name "effect"))
                                 (:shape-name "CreatePolicyOutput"))

(smithy/sdk/shapes:define-input create-policy-store-input common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (validation-settings :target-type
                                  validation-settings :required common-lisp:t
                                  :member-name "validationSettings")
                                 (description :target-type
                                  policy-store-description :member-name
                                  "description")
                                 (deletion-protection :target-type
                                  deletion-protection :member-name
                                  "deletionProtection")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreatePolicyStoreInput"))

(smithy/sdk/shapes:define-output create-policy-store-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (arn :target-type resource-arn :required
                                   common-lisp:t :member-name "arn")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate"))
                                 (:shape-name "CreatePolicyStoreOutput"))

(smithy/sdk/shapes:define-input create-policy-template-input common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "clientToken")
                                 (policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (description :target-type
                                  policy-template-description :member-name
                                  "description")
                                 (statement :target-type policy-statement
                                  :required common-lisp:t :member-name
                                  "statement"))
                                (:shape-name "CreatePolicyTemplateInput"))

(smithy/sdk/shapes:define-output create-policy-template-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (policy-template-id :target-type
                                   policy-template-id :required common-lisp:t
                                   :member-name "policyTemplateId")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate"))
                                 (:shape-name "CreatePolicyTemplateOutput"))

(smithy/sdk/shapes:define-type decimal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum decision
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-input delete-identity-source-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (identity-source-id :target-type
                                  identity-source-id :required common-lisp:t
                                  :member-name "identitySourceId"))
                                (:shape-name "DeleteIdentitySourceInput"))

(smithy/sdk/shapes:define-output delete-identity-source-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIdentitySourceOutput"))

(smithy/sdk/shapes:define-input delete-policy-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "policyId"))
                                (:shape-name "DeletePolicyInput"))

(smithy/sdk/shapes:define-output delete-policy-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePolicyOutput"))

(smithy/sdk/shapes:define-input delete-policy-store-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId"))
                                (:shape-name "DeletePolicyStoreInput"))

(smithy/sdk/shapes:define-output delete-policy-store-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePolicyStoreOutput"))

(smithy/sdk/shapes:define-input delete-policy-template-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (policy-template-id :target-type
                                  policy-template-id :required common-lisp:t
                                  :member-name "policyTemplateId"))
                                (:shape-name "DeletePolicyTemplateInput"))

(smithy/sdk/shapes:define-output delete-policy-template-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePolicyTemplateOutput"))

(smithy/sdk/shapes:define-enum deletion-protection
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure determining-policy-item common-lisp:nil
                                    ((policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId"))
                                    (:shape-name "DeterminingPolicyItem"))

(smithy/sdk/shapes:define-list determining-policy-list :member
                               determining-policy-item)

(smithy/sdk/shapes:define-type discovery-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union entities-definition common-lisp:nil
                                ((entity-list :target-type entity-list
                                  :member-name "entityList")
                                 (cedar-json :target-type cedar-json
                                  :member-name "cedarJson"))
                                (:shape-name "EntitiesDefinition"))

(smithy/sdk/shapes:define-map entity-attributes :key
                              smithy/sdk/smithy-types:string :value
                              attribute-value)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-id-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-identifier common-lisp:nil
                                    ((entity-type :target-type entity-type
                                      :required common-lisp:t :member-name
                                      "entityType")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "entityId"))
                                    (:shape-name "EntityIdentifier"))

(smithy/sdk/shapes:define-structure entity-item common-lisp:nil
                                    ((identifier :target-type entity-identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (attributes :target-type entity-attributes
                                      :member-name "attributes")
                                     (parents :target-type parent-list
                                      :member-name "parents"))
                                    (:shape-name "EntityItem"))

(smithy/sdk/shapes:define-list entity-list :member entity-item)

(smithy/sdk/shapes:define-union entity-reference common-lisp:nil
                                ((unspecified :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "unspecified")
                                 (identifier :target-type entity-identifier
                                  :member-name "identifier"))
                                (:shape-name "EntityReference"))

(smithy/sdk/shapes:define-type entity-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluation-error-item common-lisp:nil
                                    ((error-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "errorDescription"))
                                    (:shape-name "EvaluationErrorItem"))

(smithy/sdk/shapes:define-list evaluation-error-list :member
                               evaluation-error-item)

(smithy/sdk/shapes:define-input get-identity-source-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (identity-source-id :target-type
                                  identity-source-id :required common-lisp:t
                                  :member-name "identitySourceId"))
                                (:shape-name "GetIdentitySourceInput"))

(smithy/sdk/shapes:define-output get-identity-source-output common-lisp:nil
                                 ((created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (details :target-type identity-source-details
                                   :member-name "details")
                                  (identity-source-id :target-type
                                   identity-source-id :required common-lisp:t
                                   :member-name "identitySourceId")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (principal-entity-type :target-type
                                   principal-entity-type :required
                                   common-lisp:t :member-name
                                   "principalEntityType")
                                  (configuration :target-type
                                   configuration-detail :member-name
                                   "configuration"))
                                 (:shape-name "GetIdentitySourceOutput"))

(smithy/sdk/shapes:define-input get-policy-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "policyId"))
                                (:shape-name "GetPolicyInput"))

(smithy/sdk/shapes:define-output get-policy-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (policy-id :target-type policy-id :required
                                   common-lisp:t :member-name "policyId")
                                  (policy-type :target-type policy-type
                                   :required common-lisp:t :member-name
                                   "policyType")
                                  (principal :target-type entity-identifier
                                   :member-name "principal")
                                  (resource :target-type entity-identifier
                                   :member-name "resource")
                                  (actions :target-type action-identifier-list
                                   :member-name "actions")
                                  (definition :target-type
                                   policy-definition-detail :required
                                   common-lisp:t :member-name "definition")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (effect :target-type policy-effect
                                   :member-name "effect"))
                                 (:shape-name "GetPolicyOutput"))

(smithy/sdk/shapes:define-input get-policy-store-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (tags :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "tags"))
                                (:shape-name "GetPolicyStoreInput"))

(smithy/sdk/shapes:define-output get-policy-store-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (arn :target-type resource-arn :required
                                   common-lisp:t :member-name "arn")
                                  (validation-settings :target-type
                                   validation-settings :required common-lisp:t
                                   :member-name "validationSettings")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (description :target-type
                                   policy-store-description :member-name
                                   "description")
                                  (deletion-protection :target-type
                                   deletion-protection :member-name
                                   "deletionProtection")
                                  (cedar-version :target-type cedar-version
                                   :member-name "cedarVersion")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetPolicyStoreOutput"))

(smithy/sdk/shapes:define-input get-policy-template-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (policy-template-id :target-type
                                  policy-template-id :required common-lisp:t
                                  :member-name "policyTemplateId"))
                                (:shape-name "GetPolicyTemplateInput"))

(smithy/sdk/shapes:define-output get-policy-template-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (policy-template-id :target-type
                                   policy-template-id :required common-lisp:t
                                   :member-name "policyTemplateId")
                                  (description :target-type
                                   policy-template-description :member-name
                                   "description")
                                  (statement :target-type policy-statement
                                   :required common-lisp:t :member-name
                                   "statement")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate"))
                                 (:shape-name "GetPolicyTemplateOutput"))

(smithy/sdk/shapes:define-input get-schema-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId"))
                                (:shape-name "GetSchemaInput"))

(smithy/sdk/shapes:define-output get-schema-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (schema :target-type schema-json :required
                                   common-lisp:t :member-name "schema")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (namespaces :target-type namespace-list
                                   :member-name "namespaces"))
                                 (:shape-name "GetSchemaOutput"))

(smithy/sdk/shapes:define-type group-entity-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure identity-source-details common-lisp:nil
                                    ((client-ids :target-type client-ids
                                      :member-name "clientIds")
                                     (user-pool-arn :target-type user-pool-arn
                                      :member-name "userPoolArn")
                                     (discovery-url :target-type discovery-url
                                      :member-name "discoveryUrl")
                                     (open-id-issuer :target-type
                                      open-id-issuer :member-name
                                      "openIdIssuer"))
                                    (:shape-name "IdentitySourceDetails"))

(smithy/sdk/shapes:define-structure identity-source-filter common-lisp:nil
                                    ((principal-entity-type :target-type
                                      principal-entity-type :member-name
                                      "principalEntityType"))
                                    (:shape-name "IdentitySourceFilter"))

(smithy/sdk/shapes:define-list identity-source-filters :member
                               identity-source-filter)

(smithy/sdk/shapes:define-type identity-source-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-source-item common-lisp:nil
                                    ((created-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "createdDate")
                                     (details :target-type
                                      identity-source-item-details :member-name
                                      "details")
                                     (identity-source-id :target-type
                                      identity-source-id :required
                                      common-lisp:t :member-name
                                      "identitySourceId")
                                     (last-updated-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "lastUpdatedDate")
                                     (policy-store-id :target-type
                                      policy-store-id :required common-lisp:t
                                      :member-name "policyStoreId")
                                     (principal-entity-type :target-type
                                      principal-entity-type :required
                                      common-lisp:t :member-name
                                      "principalEntityType")
                                     (configuration :target-type
                                      configuration-item :member-name
                                      "configuration"))
                                    (:shape-name "IdentitySourceItem"))

(smithy/sdk/shapes:define-structure identity-source-item-details
                                    common-lisp:nil
                                    ((client-ids :target-type client-ids
                                      :member-name "clientIds")
                                     (user-pool-arn :target-type user-pool-arn
                                      :member-name "userPoolArn")
                                     (discovery-url :target-type discovery-url
                                      :member-name "discoveryUrl")
                                     (open-id-issuer :target-type
                                      open-id-issuer :member-name
                                      "openIdIssuer"))
                                    (:shape-name "IdentitySourceItemDetails"))

(smithy/sdk/shapes:define-list identity-sources :member identity-source-item)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 406)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-type ip-addr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input is-authorized-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (principal :target-type entity-identifier
                                  :member-name "principal")
                                 (action :target-type action-identifier
                                  :member-name "action")
                                 (resource :target-type entity-identifier
                                  :member-name "resource")
                                 (context :target-type context-definition
                                  :member-name "context")
                                 (entities :target-type entities-definition
                                  :member-name "entities"))
                                (:shape-name "IsAuthorizedInput"))

(smithy/sdk/shapes:define-output is-authorized-output common-lisp:nil
                                 ((decision :target-type decision :required
                                   common-lisp:t :member-name "decision")
                                  (determining-policies :target-type
                                   determining-policy-list :required
                                   common-lisp:t :member-name
                                   "determiningPolicies")
                                  (errors :target-type evaluation-error-list
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name "IsAuthorizedOutput"))

(smithy/sdk/shapes:define-input is-authorized-with-token-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (identity-token :target-type token
                                  :member-name "identityToken")
                                 (access-token :target-type token :member-name
                                  "accessToken")
                                 (action :target-type action-identifier
                                  :member-name "action")
                                 (resource :target-type entity-identifier
                                  :member-name "resource")
                                 (context :target-type context-definition
                                  :member-name "context")
                                 (entities :target-type entities-definition
                                  :member-name "entities"))
                                (:shape-name "IsAuthorizedWithTokenInput"))

(smithy/sdk/shapes:define-output is-authorized-with-token-output
                                 common-lisp:nil
                                 ((decision :target-type decision :required
                                   common-lisp:t :member-name "decision")
                                  (determining-policies :target-type
                                   determining-policy-list :required
                                   common-lisp:t :member-name
                                   "determiningPolicies")
                                  (errors :target-type evaluation-error-list
                                   :required common-lisp:t :member-name
                                   "errors")
                                  (principal :target-type entity-identifier
                                   :member-name "principal"))
                                 (:shape-name "IsAuthorizedWithTokenOutput"))

(smithy/sdk/shapes:define-type issuer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-identity-sources-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-identity-sources-max-results
                                  :member-name "maxResults")
                                 (filters :target-type identity-source-filters
                                  :member-name "filters"))
                                (:shape-name "ListIdentitySourcesInput"))

(smithy/sdk/shapes:define-type list-identity-sources-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-identity-sources-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (identity-sources :target-type
                                   identity-sources :required common-lisp:t
                                   :member-name "identitySources"))
                                 (:shape-name "ListIdentitySourcesOutput"))

(smithy/sdk/shapes:define-input list-policies-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (filter :target-type policy-filter
                                  :member-name "filter"))
                                (:shape-name "ListPoliciesInput"))

(smithy/sdk/shapes:define-output list-policies-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (policies :target-type policy-list :required
                                   common-lisp:t :member-name "policies"))
                                 (:shape-name "ListPoliciesOutput"))

(smithy/sdk/shapes:define-input list-policy-stores-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListPolicyStoresInput"))

(smithy/sdk/shapes:define-output list-policy-stores-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (policy-stores :target-type policy-store-list
                                   :required common-lisp:t :member-name
                                   "policyStores"))
                                 (:shape-name "ListPolicyStoresOutput"))

(smithy/sdk/shapes:define-input list-policy-templates-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListPolicyTemplatesInput"))

(smithy/sdk/shapes:define-output list-policy-templates-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (policy-templates :target-type
                                   policy-templates-list :required
                                   common-lisp:t :member-name
                                   "policyTemplates"))
                                 (:shape-name "ListPolicyTemplatesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type long-attribute smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list namespace-list :member namespace)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-id-connect-access-token-configuration
                                    common-lisp:nil
                                    ((principal-id-claim :target-type claim
                                      :member-name "principalIdClaim")
                                     (audiences :target-type audiences
                                      :member-name "audiences"))
                                    (:shape-name
                                     "OpenIdConnectAccessTokenConfiguration"))

(smithy/sdk/shapes:define-structure
 open-id-connect-access-token-configuration-detail common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (audiences :target-type audiences :member-name "audiences"))
 (:shape-name "OpenIdConnectAccessTokenConfigurationDetail"))

(smithy/sdk/shapes:define-structure
 open-id-connect-access-token-configuration-item common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (audiences :target-type audiences :member-name "audiences"))
 (:shape-name "OpenIdConnectAccessTokenConfigurationItem"))

(smithy/sdk/shapes:define-structure open-id-connect-configuration
                                    common-lisp:nil
                                    ((issuer :target-type issuer :required
                                      common-lisp:t :member-name "issuer")
                                     (entity-id-prefix :target-type
                                      entity-id-prefix :member-name
                                      "entityIdPrefix")
                                     (group-configuration :target-type
                                      open-id-connect-group-configuration
                                      :member-name "groupConfiguration")
                                     (token-selection :target-type
                                      open-id-connect-token-selection :required
                                      common-lisp:t :member-name
                                      "tokenSelection"))
                                    (:shape-name "OpenIdConnectConfiguration"))

(smithy/sdk/shapes:define-structure open-id-connect-configuration-detail
                                    common-lisp:nil
                                    ((issuer :target-type issuer :required
                                      common-lisp:t :member-name "issuer")
                                     (entity-id-prefix :target-type
                                      entity-id-prefix :member-name
                                      "entityIdPrefix")
                                     (group-configuration :target-type
                                      open-id-connect-group-configuration-detail
                                      :member-name "groupConfiguration")
                                     (token-selection :target-type
                                      open-id-connect-token-selection-detail
                                      :required common-lisp:t :member-name
                                      "tokenSelection"))
                                    (:shape-name
                                     "OpenIdConnectConfigurationDetail"))

(smithy/sdk/shapes:define-structure open-id-connect-configuration-item
                                    common-lisp:nil
                                    ((issuer :target-type issuer :required
                                      common-lisp:t :member-name "issuer")
                                     (entity-id-prefix :target-type
                                      entity-id-prefix :member-name
                                      "entityIdPrefix")
                                     (group-configuration :target-type
                                      open-id-connect-group-configuration-item
                                      :member-name "groupConfiguration")
                                     (token-selection :target-type
                                      open-id-connect-token-selection-item
                                      :required common-lisp:t :member-name
                                      "tokenSelection"))
                                    (:shape-name
                                     "OpenIdConnectConfigurationItem"))

(smithy/sdk/shapes:define-structure open-id-connect-group-configuration
                                    common-lisp:nil
                                    ((group-claim :target-type claim :required
                                      common-lisp:t :member-name "groupClaim")
                                     (group-entity-type :target-type
                                      group-entity-type :required common-lisp:t
                                      :member-name "groupEntityType"))
                                    (:shape-name
                                     "OpenIdConnectGroupConfiguration"))

(smithy/sdk/shapes:define-structure open-id-connect-group-configuration-detail
                                    common-lisp:nil
                                    ((group-claim :target-type claim :required
                                      common-lisp:t :member-name "groupClaim")
                                     (group-entity-type :target-type
                                      group-entity-type :required common-lisp:t
                                      :member-name "groupEntityType"))
                                    (:shape-name
                                     "OpenIdConnectGroupConfigurationDetail"))

(smithy/sdk/shapes:define-structure open-id-connect-group-configuration-item
                                    common-lisp:nil
                                    ((group-claim :target-type claim :required
                                      common-lisp:t :member-name "groupClaim")
                                     (group-entity-type :target-type
                                      group-entity-type :required common-lisp:t
                                      :member-name "groupEntityType"))
                                    (:shape-name
                                     "OpenIdConnectGroupConfigurationItem"))

(smithy/sdk/shapes:define-structure
 open-id-connect-identity-token-configuration common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (client-ids :target-type client-ids :member-name "clientIds"))
 (:shape-name "OpenIdConnectIdentityTokenConfiguration"))

(smithy/sdk/shapes:define-structure
 open-id-connect-identity-token-configuration-detail common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (client-ids :target-type client-ids :member-name "clientIds"))
 (:shape-name "OpenIdConnectIdentityTokenConfigurationDetail"))

(smithy/sdk/shapes:define-structure
 open-id-connect-identity-token-configuration-item common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (client-ids :target-type client-ids :member-name "clientIds"))
 (:shape-name "OpenIdConnectIdentityTokenConfigurationItem"))

(smithy/sdk/shapes:define-union open-id-connect-token-selection common-lisp:nil
                                ((access-token-only :target-type
                                  open-id-connect-access-token-configuration
                                  :member-name "accessTokenOnly")
                                 (identity-token-only :target-type
                                  open-id-connect-identity-token-configuration
                                  :member-name "identityTokenOnly"))
                                (:shape-name "OpenIdConnectTokenSelection"))

(smithy/sdk/shapes:define-union open-id-connect-token-selection-detail
                                common-lisp:nil
                                ((access-token-only :target-type
                                  open-id-connect-access-token-configuration-detail
                                  :member-name "accessTokenOnly")
                                 (identity-token-only :target-type
                                  open-id-connect-identity-token-configuration-detail
                                  :member-name "identityTokenOnly"))
                                (:shape-name
                                 "OpenIdConnectTokenSelectionDetail"))

(smithy/sdk/shapes:define-union open-id-connect-token-selection-item
                                common-lisp:nil
                                ((access-token-only :target-type
                                  open-id-connect-access-token-configuration-item
                                  :member-name "accessTokenOnly")
                                 (identity-token-only :target-type
                                  open-id-connect-identity-token-configuration-item
                                  :member-name "identityTokenOnly"))
                                (:shape-name "OpenIdConnectTokenSelectionItem"))

(smithy/sdk/shapes:define-enum open-id-issuer
    common-lisp:nil
  (:cognito "COGNITO"))

(smithy/sdk/shapes:define-list parent-list :member entity-identifier)

common-lisp:nil

(smithy/sdk/shapes:define-union policy-definition common-lisp:nil
                                ((static :target-type static-policy-definition
                                  :member-name "static")
                                 (template-linked :target-type
                                  template-linked-policy-definition
                                  :member-name "templateLinked"))
                                (:shape-name "PolicyDefinition"))

(smithy/sdk/shapes:define-union policy-definition-detail common-lisp:nil
                                ((static :target-type
                                  static-policy-definition-detail :member-name
                                  "static")
                                 (template-linked :target-type
                                  template-linked-policy-definition-detail
                                  :member-name "templateLinked"))
                                (:shape-name "PolicyDefinitionDetail"))

(smithy/sdk/shapes:define-union policy-definition-item common-lisp:nil
                                ((static :target-type
                                  static-policy-definition-item :member-name
                                  "static")
                                 (template-linked :target-type
                                  template-linked-policy-definition-item
                                  :member-name "templateLinked"))
                                (:shape-name "PolicyDefinitionItem"))

(smithy/sdk/shapes:define-enum policy-effect
    common-lisp:nil
  (:permit "Permit")
  (:forbid "Forbid"))

(smithy/sdk/shapes:define-structure policy-filter common-lisp:nil
                                    ((principal :target-type entity-reference
                                      :member-name "principal")
                                     (resource :target-type entity-reference
                                      :member-name "resource")
                                     (policy-type :target-type policy-type
                                      :member-name "policyType")
                                     (policy-template-id :target-type
                                      policy-template-id :member-name
                                      "policyTemplateId"))
                                    (:shape-name "PolicyFilter"))

(smithy/sdk/shapes:define-type policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-item common-lisp:nil
                                    ((policy-store-id :target-type
                                      policy-store-id :required common-lisp:t
                                      :member-name "policyStoreId")
                                     (policy-id :target-type policy-id
                                      :required common-lisp:t :member-name
                                      "policyId")
                                     (policy-type :target-type policy-type
                                      :required common-lisp:t :member-name
                                      "policyType")
                                     (principal :target-type entity-identifier
                                      :member-name "principal")
                                     (resource :target-type entity-identifier
                                      :member-name "resource")
                                     (actions :target-type
                                      action-identifier-list :member-name
                                      "actions")
                                     (definition :target-type
                                      policy-definition-item :required
                                      common-lisp:t :member-name "definition")
                                     (created-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "createdDate")
                                     (last-updated-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "lastUpdatedDate")
                                     (effect :target-type policy-effect
                                      :member-name "effect"))
                                    (:shape-name "PolicyItem"))

(smithy/sdk/shapes:define-list policy-list :member policy-item)

(smithy/sdk/shapes:define-type policy-statement smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type policy-store-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-store-item common-lisp:nil
                                    ((policy-store-id :target-type
                                      policy-store-id :required common-lisp:t
                                      :member-name "policyStoreId")
                                     (arn :target-type resource-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "createdDate")
                                     (last-updated-date :target-type
                                      timestamp-format :member-name
                                      "lastUpdatedDate")
                                     (description :target-type
                                      policy-store-description :member-name
                                      "description"))
                                    (:shape-name "PolicyStoreItem"))

(smithy/sdk/shapes:define-list policy-store-list :member policy-store-item)

common-lisp:nil

(smithy/sdk/shapes:define-type policy-template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-template-item common-lisp:nil
                                    ((policy-store-id :target-type
                                      policy-store-id :required common-lisp:t
                                      :member-name "policyStoreId")
                                     (policy-template-id :target-type
                                      policy-template-id :required
                                      common-lisp:t :member-name
                                      "policyTemplateId")
                                     (description :target-type
                                      policy-template-description :member-name
                                      "description")
                                     (created-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "createdDate")
                                     (last-updated-date :target-type
                                      timestamp-format :required common-lisp:t
                                      :member-name "lastUpdatedDate"))
                                    (:shape-name "PolicyTemplateItem"))

(smithy/sdk/shapes:define-list policy-templates-list :member
                               policy-template-item)

(smithy/sdk/shapes:define-enum policy-type
    common-lisp:nil
  (:static "STATIC")
  (:template-linked "TEMPLATE_LINKED"))

(smithy/sdk/shapes:define-type principal-entity-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-schema-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (definition :target-type schema-definition
                                  :required common-lisp:t :member-name
                                  "definition"))
                                (:shape-name "PutSchemaInput"))

(smithy/sdk/shapes:define-output put-schema-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (namespaces :target-type namespace-list
                                   :required common-lisp:t :member-name
                                   "namespaces")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate"))
                                 (:shape-name "PutSchemaOutput"))

(smithy/sdk/shapes:define-map record-attribute :key
                              smithy/sdk/smithy-types:string :value
                              attribute-value)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-conflict common-lisp:nil
                                    ((resource-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceId")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "resourceType"))
                                    (:shape-name "ResourceConflict"))

(smithy/sdk/shapes:define-list resource-conflict-list :member resource-conflict)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:identity-source "IDENTITY_SOURCE")
  (:policy-store "POLICY_STORE")
  (:policy "POLICY")
  (:policy-template "POLICY_TEMPLATE")
  (:schema "SCHEMA"))

(smithy/sdk/shapes:define-union schema-definition common-lisp:nil
                                ((cedar-json :target-type schema-json
                                  :member-name "cedarJson"))
                                (:shape-name "SchemaDefinition"))

(smithy/sdk/shapes:define-type schema-json smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-list set-attribute :member attribute-value)

(smithy/sdk/shapes:define-structure static-policy-definition common-lisp:nil
                                    ((description :target-type
                                      static-policy-description :member-name
                                      "description")
                                     (statement :target-type policy-statement
                                      :required common-lisp:t :member-name
                                      "statement"))
                                    (:shape-name "StaticPolicyDefinition"))

(smithy/sdk/shapes:define-structure static-policy-definition-detail
                                    common-lisp:nil
                                    ((description :target-type
                                      static-policy-description :member-name
                                      "description")
                                     (statement :target-type policy-statement
                                      :required common-lisp:t :member-name
                                      "statement"))
                                    (:shape-name
                                     "StaticPolicyDefinitionDetail"))

(smithy/sdk/shapes:define-structure static-policy-definition-item
                                    common-lisp:nil
                                    ((description :target-type
                                      static-policy-description :member-name
                                      "description"))
                                    (:shape-name "StaticPolicyDefinitionItem"))

(smithy/sdk/shapes:define-type static-policy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-attribute smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-linked-policy-definition
                                    common-lisp:nil
                                    ((policy-template-id :target-type
                                      policy-template-id :required
                                      common-lisp:t :member-name
                                      "policyTemplateId")
                                     (principal :target-type entity-identifier
                                      :member-name "principal")
                                     (resource :target-type entity-identifier
                                      :member-name "resource"))
                                    (:shape-name
                                     "TemplateLinkedPolicyDefinition"))

(smithy/sdk/shapes:define-structure template-linked-policy-definition-detail
                                    common-lisp:nil
                                    ((policy-template-id :target-type
                                      policy-template-id :required
                                      common-lisp:t :member-name
                                      "policyTemplateId")
                                     (principal :target-type entity-identifier
                                      :member-name "principal")
                                     (resource :target-type entity-identifier
                                      :member-name "resource"))
                                    (:shape-name
                                     "TemplateLinkedPolicyDefinitionDetail"))

(smithy/sdk/shapes:define-structure template-linked-policy-definition-item
                                    common-lisp:nil
                                    ((policy-template-id :target-type
                                      policy-template-id :required
                                      common-lisp:t :member-name
                                      "policyTemplateId")
                                     (principal :target-type entity-identifier
                                      :member-name "principal")
                                     (resource :target-type entity-identifier
                                      :member-name "resource"))
                                    (:shape-name
                                     "TemplateLinkedPolicyDefinitionItem"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-type timestamp-format
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-cognito-group-configuration
                                    common-lisp:nil
                                    ((group-entity-type :target-type
                                      group-entity-type :required common-lisp:t
                                      :member-name "groupEntityType"))
                                    (:shape-name
                                     "UpdateCognitoGroupConfiguration"))

(smithy/sdk/shapes:define-structure update-cognito-user-pool-configuration
                                    common-lisp:nil
                                    ((user-pool-arn :target-type user-pool-arn
                                      :required common-lisp:t :member-name
                                      "userPoolArn")
                                     (client-ids :target-type client-ids
                                      :member-name "clientIds")
                                     (group-configuration :target-type
                                      update-cognito-group-configuration
                                      :member-name "groupConfiguration"))
                                    (:shape-name
                                     "UpdateCognitoUserPoolConfiguration"))

(smithy/sdk/shapes:define-union update-configuration common-lisp:nil
                                ((cognito-user-pool-configuration :target-type
                                  update-cognito-user-pool-configuration
                                  :member-name "cognitoUserPoolConfiguration")
                                 (open-id-connect-configuration :target-type
                                  update-open-id-connect-configuration
                                  :member-name "openIdConnectConfiguration"))
                                (:shape-name "UpdateConfiguration"))

(smithy/sdk/shapes:define-input update-identity-source-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (identity-source-id :target-type
                                  identity-source-id :required common-lisp:t
                                  :member-name "identitySourceId")
                                 (update-configuration :target-type
                                  update-configuration :required common-lisp:t
                                  :member-name "updateConfiguration")
                                 (principal-entity-type :target-type
                                  principal-entity-type :member-name
                                  "principalEntityType"))
                                (:shape-name "UpdateIdentitySourceInput"))

(smithy/sdk/shapes:define-output update-identity-source-output common-lisp:nil
                                 ((created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (identity-source-id :target-type
                                   identity-source-id :required common-lisp:t
                                   :member-name "identitySourceId")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId"))
                                 (:shape-name "UpdateIdentitySourceOutput"))

(smithy/sdk/shapes:define-structure
 update-open-id-connect-access-token-configuration common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (audiences :target-type audiences :member-name "audiences"))
 (:shape-name "UpdateOpenIdConnectAccessTokenConfiguration"))

(smithy/sdk/shapes:define-structure update-open-id-connect-configuration
                                    common-lisp:nil
                                    ((issuer :target-type issuer :required
                                      common-lisp:t :member-name "issuer")
                                     (entity-id-prefix :target-type
                                      entity-id-prefix :member-name
                                      "entityIdPrefix")
                                     (group-configuration :target-type
                                      update-open-id-connect-group-configuration
                                      :member-name "groupConfiguration")
                                     (token-selection :target-type
                                      update-open-id-connect-token-selection
                                      :required common-lisp:t :member-name
                                      "tokenSelection"))
                                    (:shape-name
                                     "UpdateOpenIdConnectConfiguration"))

(smithy/sdk/shapes:define-structure update-open-id-connect-group-configuration
                                    common-lisp:nil
                                    ((group-claim :target-type claim :required
                                      common-lisp:t :member-name "groupClaim")
                                     (group-entity-type :target-type
                                      group-entity-type :required common-lisp:t
                                      :member-name "groupEntityType"))
                                    (:shape-name
                                     "UpdateOpenIdConnectGroupConfiguration"))

(smithy/sdk/shapes:define-structure
 update-open-id-connect-identity-token-configuration common-lisp:nil
 ((principal-id-claim :target-type claim :member-name "principalIdClaim")
  (client-ids :target-type client-ids :member-name "clientIds"))
 (:shape-name "UpdateOpenIdConnectIdentityTokenConfiguration"))

(smithy/sdk/shapes:define-union update-open-id-connect-token-selection
                                common-lisp:nil
                                ((access-token-only :target-type
                                  update-open-id-connect-access-token-configuration
                                  :member-name "accessTokenOnly")
                                 (identity-token-only :target-type
                                  update-open-id-connect-identity-token-configuration
                                  :member-name "identityTokenOnly"))
                                (:shape-name
                                 "UpdateOpenIdConnectTokenSelection"))

(smithy/sdk/shapes:define-union update-policy-definition common-lisp:nil
                                ((static :target-type
                                  update-static-policy-definition :member-name
                                  "static"))
                                (:shape-name "UpdatePolicyDefinition"))

(smithy/sdk/shapes:define-input update-policy-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (policy-id :target-type policy-id :required
                                  common-lisp:t :member-name "policyId")
                                 (definition :target-type
                                  update-policy-definition :required
                                  common-lisp:t :member-name "definition"))
                                (:shape-name "UpdatePolicyInput"))

(smithy/sdk/shapes:define-output update-policy-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (policy-id :target-type policy-id :required
                                   common-lisp:t :member-name "policyId")
                                  (policy-type :target-type policy-type
                                   :required common-lisp:t :member-name
                                   "policyType")
                                  (principal :target-type entity-identifier
                                   :member-name "principal")
                                  (resource :target-type entity-identifier
                                   :member-name "resource")
                                  (actions :target-type action-identifier-list
                                   :member-name "actions")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate")
                                  (effect :target-type policy-effect
                                   :member-name "effect"))
                                 (:shape-name "UpdatePolicyOutput"))

(smithy/sdk/shapes:define-input update-policy-store-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (validation-settings :target-type
                                  validation-settings :required common-lisp:t
                                  :member-name "validationSettings")
                                 (deletion-protection :target-type
                                  deletion-protection :member-name
                                  "deletionProtection")
                                 (description :target-type
                                  policy-store-description :member-name
                                  "description"))
                                (:shape-name "UpdatePolicyStoreInput"))

(smithy/sdk/shapes:define-output update-policy-store-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (arn :target-type resource-arn :required
                                   common-lisp:t :member-name "arn")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate"))
                                 (:shape-name "UpdatePolicyStoreOutput"))

(smithy/sdk/shapes:define-input update-policy-template-input common-lisp:nil
                                ((policy-store-id :target-type policy-store-id
                                  :required common-lisp:t :member-name
                                  "policyStoreId")
                                 (policy-template-id :target-type
                                  policy-template-id :required common-lisp:t
                                  :member-name "policyTemplateId")
                                 (description :target-type
                                  policy-template-description :member-name
                                  "description")
                                 (statement :target-type policy-statement
                                  :required common-lisp:t :member-name
                                  "statement"))
                                (:shape-name "UpdatePolicyTemplateInput"))

(smithy/sdk/shapes:define-output update-policy-template-output common-lisp:nil
                                 ((policy-store-id :target-type policy-store-id
                                   :required common-lisp:t :member-name
                                   "policyStoreId")
                                  (policy-template-id :target-type
                                   policy-template-id :required common-lisp:t
                                   :member-name "policyTemplateId")
                                  (created-date :target-type timestamp-format
                                   :required common-lisp:t :member-name
                                   "createdDate")
                                  (last-updated-date :target-type
                                   timestamp-format :required common-lisp:t
                                   :member-name "lastUpdatedDate"))
                                 (:shape-name "UpdatePolicyTemplateOutput"))

(smithy/sdk/shapes:define-structure update-static-policy-definition
                                    common-lisp:nil
                                    ((description :target-type
                                      static-policy-description :member-name
                                      "description")
                                     (statement :target-type policy-statement
                                      :required common-lisp:t :member-name
                                      "statement"))
                                    (:shape-name
                                     "UpdateStaticPolicyDefinition"))

(smithy/sdk/shapes:define-type user-pool-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class verifiedpermissions-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "path")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-mode
    common-lisp:nil
  (:off "OFF")
  (:strict "STRICT"))

(smithy/sdk/shapes:define-structure validation-settings common-lisp:nil
                                    ((mode :target-type validation-mode
                                      :required common-lisp:t :member-name
                                      "mode"))
                                    (:shape-name "ValidationSettings"))

(smithy/sdk/operation:define-operation batch-get-policy :shape-name
                                       "BatchGetPolicy" :input
                                       batch-get-policy-input :output
                                       batch-get-policy-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation batch-is-authorized :shape-name
                                       "BatchIsAuthorized" :input
                                       batch-is-authorized-input :output
                                       batch-is-authorized-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation batch-is-authorized-with-token
                                       :shape-name "BatchIsAuthorizedWithToken"
                                       :input
                                       batch-is-authorized-with-token-input
                                       :output
                                       batch-is-authorized-with-token-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation create-identity-source :shape-name
                                       "CreateIdentitySource" :input
                                       create-identity-source-input :output
                                       create-identity-source-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-policy :shape-name "CreatePolicy"
                                       :input create-policy-input :output
                                       create-policy-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-policy-store :shape-name
                                       "CreatePolicyStore" :input
                                       create-policy-store-input :output
                                       create-policy-store-output :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-policy-template :shape-name
                                       "CreatePolicyTemplate" :input
                                       create-policy-template-input :output
                                       create-policy-template-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation delete-identity-source :shape-name
                                       "DeleteIdentitySource" :input
                                       delete-identity-source-input :output
                                       delete-identity-source-output :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-policy :shape-name "DeletePolicy"
                                       :input delete-policy-input :output
                                       delete-policy-output :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-policy-store :shape-name
                                       "DeletePolicyStore" :input
                                       delete-policy-store-input :output
                                       delete-policy-store-output :errors
                                       (invalid-state-exception))

(smithy/sdk/operation:define-operation delete-policy-template :shape-name
                                       "DeletePolicyTemplate" :input
                                       delete-policy-template-input :output
                                       delete-policy-template-output :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-identity-source :shape-name
                                       "GetIdentitySource" :input
                                       get-identity-source-input :output
                                       get-identity-source-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-input :output
                                       get-policy-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-policy-store :shape-name
                                       "GetPolicyStore" :input
                                       get-policy-store-input :output
                                       get-policy-store-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-policy-template :shape-name
                                       "GetPolicyTemplate" :input
                                       get-policy-template-input :output
                                       get-policy-template-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-schema :shape-name "GetSchema"
                                       :input get-schema-input :output
                                       get-schema-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation is-authorized :shape-name "IsAuthorized"
                                       :input is-authorized-input :output
                                       is-authorized-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation is-authorized-with-token :shape-name
                                       "IsAuthorizedWithToken" :input
                                       is-authorized-with-token-input :output
                                       is-authorized-with-token-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-identity-sources :shape-name
                                       "ListIdentitySources" :input
                                       list-identity-sources-input :output
                                       list-identity-sources-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-policies :shape-name "ListPolicies"
                                       :input list-policies-input :output
                                       list-policies-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-policy-stores :shape-name
                                       "ListPolicyStores" :input
                                       list-policy-stores-input :output
                                       list-policy-stores-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-policy-templates :shape-name
                                       "ListPolicyTemplates" :input
                                       list-policy-templates-input :output
                                       list-policy-templates-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation put-schema :shape-name "PutSchema"
                                       :input put-schema-input :output
                                       put-schema-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-identity-source :shape-name
                                       "UpdateIdentitySource" :input
                                       update-identity-source-input :output
                                       update-identity-source-output :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-policy :shape-name "UpdatePolicy"
                                       :input update-policy-input :output
                                       update-policy-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation update-policy-store :shape-name
                                       "UpdatePolicyStore" :input
                                       update-policy-store-input :output
                                       update-policy-store-output :errors
                                       (conflict-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-policy-template :shape-name
                                       "UpdatePolicyTemplate" :input
                                       update-policy-template-input :output
                                       update-policy-template-output :errors
                                       (conflict-exception
                                        resource-not-found-exception))
