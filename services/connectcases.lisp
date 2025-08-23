(uiop/package:define-package #:pira/connectcases (:use)
                             (:export #:amazon-connect-cases #:arn
                              #:association-time #:audit-event
                              #:audit-event-date-time #:audit-event-field
                              #:audit-event-field-id #:audit-event-field-list
                              #:audit-event-field-value-union #:audit-event-id
                              #:audit-event-performed-by #:audit-event-type
                              #:audit-events-list #:basic-layout
                              #:batch-get-case-rule
                              #:batch-get-case-rule-error-list
                              #:batch-get-case-rule-list #:batch-get-field
                              #:batch-get-field-error-list
                              #:batch-get-field-identifier-list
                              #:batch-get-field-list #:batch-get-field-request
                              #:batch-get-field-response
                              #:batch-put-field-options
                              #:batch-put-field-options-request
                              #:batch-put-field-options-response
                              #:boolean-condition #:boolean-condition-list
                              #:boolean-operands #:case #:case-arn
                              #:case-event-included-data #:case-filter
                              #:case-filter-list #:case-id #:case-rule
                              #:case-rule-arn #:case-rule-description
                              #:case-rule-details #:case-rule-error
                              #:case-rule-id #:case-rule-identifier
                              #:case-rule-identifier-list #:case-rule-name
                              #:case-rule-summary #:case-rule-summary-list
                              #:case-summary #:case-summary-list #:channel
                              #:channel-list #:comment-body
                              #:comment-body-text-type #:comment-content
                              #:comment-filter #:connected-to-system-time
                              #:contact #:contact-arn #:contact-content
                              #:contact-filter #:create-case
                              #:create-case-request #:create-case-response
                              #:create-case-rule #:create-domain
                              #:create-domain-request #:create-domain-response
                              #:create-field #:create-field-request
                              #:create-field-response #:create-layout
                              #:create-layout-request #:create-layout-response
                              #:create-related-item
                              #:create-related-item-request
                              #:create-related-item-response #:create-template
                              #:create-template-request
                              #:create-template-response #:created-time
                              #:custom-entity #:delete-case #:delete-case-rule
                              #:delete-domain #:delete-domain-request
                              #:delete-domain-response #:delete-field
                              #:delete-layout #:delete-related-item
                              #:delete-template #:deleted #:domain #:domain-arn
                              #:domain-id #:domain-name #:domain-status
                              #:domain-summary #:domain-summary-list
                              #:empty-field-value #:empty-operand-value
                              #:event-bridge-configuration
                              #:event-included-data #:field #:field-arn
                              #:field-description #:field-error #:field-filter
                              #:field-group #:field-id #:field-identifier
                              #:field-identifier-list #:field-item #:field-list
                              #:field-name #:field-namespace #:field-option
                              #:field-option-error #:field-option-error-list
                              #:field-option-name #:field-option-value
                              #:field-options-list #:field-summary
                              #:field-summary-list #:field-type #:field-value
                              #:field-value-list #:field-value-union #:file-arn
                              #:file-content #:file-filter #:get-case
                              #:get-case-audit-events
                              #:get-case-event-configuration
                              #:get-case-event-configuration-request
                              #:get-case-event-configuration-response
                              #:get-case-request #:get-case-response
                              #:get-case-rule-response #:get-domain
                              #:get-domain-request #:get-domain-response
                              #:get-field-response #:get-layout
                              #:get-layout-request #:get-layout-response
                              #:get-template #:get-template-request
                              #:get-template-response #:iam-principal-arn
                              #:last-modified-time #:layout #:layout-arn
                              #:layout-configuration #:layout-content
                              #:layout-id #:layout-name #:layout-sections
                              #:layout-summary #:layout-summary-list
                              #:list-case-rules #:list-cases-for-contact
                              #:list-cases-for-contact-request
                              #:list-cases-for-contact-response #:list-domains
                              #:list-domains-request #:list-domains-response
                              #:list-field-options #:list-field-options-request
                              #:list-field-options-response #:list-fields
                              #:list-fields-request #:list-fields-response
                              #:list-layouts #:list-layouts-request
                              #:list-layouts-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-templates #:list-templates-request
                              #:list-templates-response #:max-results
                              #:next-token #:operand-one #:operand-two #:order
                              #:put-case-event-configuration
                              #:put-case-event-configuration-request
                              #:put-case-event-configuration-response
                              #:related-item #:related-item-arn
                              #:related-item-content
                              #:related-item-event-included-data
                              #:related-item-filter-list #:related-item-id
                              #:related-item-input-content #:related-item-type
                              #:related-item-type-filter #:required-case-rule
                              #:required-field #:required-field-list
                              #:rule-type #:search-cases #:search-cases-request
                              #:search-cases-response
                              #:search-cases-response-item
                              #:search-cases-response-item-list
                              #:search-related-items
                              #:search-related-items-request
                              #:search-related-items-response
                              #:search-related-items-response-item
                              #:search-related-items-response-item-list
                              #:section #:sections-list #:sla-completion-time
                              #:sla-configuration #:sla-content
                              #:sla-field-value-union-list #:sla-filter
                              #:sla-input-configuration #:sla-input-content
                              #:sla-name #:sla-status #:sla-target-time
                              #:sla-type #:sort #:sort-list #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tags
                              #:target-sla-minutes #:template #:template-arn
                              #:template-case-rule-list #:template-description
                              #:template-id #:template-name #:template-rule
                              #:template-status #:template-status-filters
                              #:template-summary #:template-summary-list
                              #:untag-resource #:untag-resource-request
                              #:update-case #:update-case-request
                              #:update-case-response #:update-case-rule
                              #:update-field #:update-field-request
                              #:update-field-response #:update-layout
                              #:update-layout-request #:update-layout-response
                              #:update-template #:update-template-request
                              #:update-template-response #:user-arn
                              #:user-union #:value #:values-list))
(common-lisp:in-package #:pira/connectcases)

(smithy/sdk/service:define-service amazon-connect-cases :shape-name
                                   "AmazonConnectCases" :version "2022-10-03"
                                   :title "Amazon Connect Cases" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ConnectCases")
                                      ("arnNamespace" . "cases")
                                      ("cloudTrailEventSource"
                                       . "event-source-placeholder")
                                      ("endpointPrefix" . "cases"))
                                     ("aws.auth#sigv4" ("name" . "cases"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type association-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure audit-event common-lisp:nil
                                    ((event-id :target-type audit-event-id
                                      :required common-lisp:t :member-name
                                      "eventId")
                                     (type :target-type audit-event-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (related-item-type :target-type
                                      related-item-type :member-name
                                      "relatedItemType")
                                     (performed-time :target-type
                                      audit-event-date-time :required
                                      common-lisp:t :member-name
                                      "performedTime")
                                     (fields :target-type
                                      audit-event-field-list :required
                                      common-lisp:t :member-name "fields")
                                     (performed-by :target-type
                                      audit-event-performed-by :member-name
                                      "performedBy"))
                                    (:shape-name "AuditEvent"))

(smithy/sdk/shapes:define-type audit-event-date-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure audit-event-field common-lisp:nil
                                    ((event-field-id :target-type
                                      audit-event-field-id :required
                                      common-lisp:t :member-name
                                      "eventFieldId")
                                     (old-value :target-type
                                      audit-event-field-value-union
                                      :member-name "oldValue")
                                     (new-value :target-type
                                      audit-event-field-value-union :required
                                      common-lisp:t :member-name "newValue"))
                                    (:shape-name "AuditEventField"))

(smithy/sdk/shapes:define-type audit-event-field-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list audit-event-field-list :member audit-event-field)

(smithy/sdk/shapes:define-union audit-event-field-value-union common-lisp:nil
                                ((string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (double-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleValue")
                                 (boolean-value :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanValue")
                                 (empty-value :target-type empty-field-value
                                  :member-name "emptyValue")
                                 (user-arn-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "userArnValue"))
                                (:shape-name "AuditEventFieldValueUnion"))

(smithy/sdk/shapes:define-type audit-event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure audit-event-performed-by common-lisp:nil
                                    ((user :target-type user-union :member-name
                                      "user")
                                     (iam-principal-arn :target-type
                                      iam-principal-arn :required common-lisp:t
                                      :member-name "iamPrincipalArn"))
                                    (:shape-name "AuditEventPerformedBy"))

(smithy/sdk/shapes:define-type audit-event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list audit-events-list :member audit-event)

(smithy/sdk/shapes:define-structure basic-layout common-lisp:nil
                                    ((top-panel :target-type layout-sections
                                      :member-name "topPanel")
                                     (more-info :target-type layout-sections
                                      :member-name "moreInfo"))
                                    (:shape-name "BasicLayout"))

(smithy/sdk/shapes:define-list batch-get-case-rule-error-list :member
                               case-rule-error)

(smithy/sdk/shapes:define-list batch-get-case-rule-list :member
                               get-case-rule-response)

(smithy/sdk/shapes:define-input batch-get-case-rule-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-rules :target-type
                                  case-rule-identifier-list :required
                                  common-lisp:t :member-name "caseRules"))
                                (:shape-name "BatchGetCaseRuleRequest"))

(smithy/sdk/shapes:define-output batch-get-case-rule-response common-lisp:nil
                                 ((case-rules :target-type
                                   batch-get-case-rule-list :required
                                   common-lisp:t :member-name "caseRules")
                                  (errors :target-type
                                   batch-get-case-rule-error-list :required
                                   common-lisp:t :member-name "errors"))
                                 (:shape-name "BatchGetCaseRuleResponse"))

(smithy/sdk/shapes:define-list batch-get-field-error-list :member field-error)

(smithy/sdk/shapes:define-list batch-get-field-identifier-list :member
                               field-identifier)

(smithy/sdk/shapes:define-list batch-get-field-list :member get-field-response)

(smithy/sdk/shapes:define-input batch-get-field-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (fields :target-type
                                  batch-get-field-identifier-list :required
                                  common-lisp:t :member-name "fields"))
                                (:shape-name "BatchGetFieldRequest"))

(smithy/sdk/shapes:define-structure batch-get-field-response common-lisp:nil
                                    ((fields :target-type batch-get-field-list
                                      :required common-lisp:t :member-name
                                      "fields")
                                     (errors :target-type
                                      batch-get-field-error-list :required
                                      common-lisp:t :member-name "errors"))
                                    (:shape-name "BatchGetFieldResponse"))

(smithy/sdk/shapes:define-input batch-put-field-options-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (field-id :target-type field-id :required
                                  common-lisp:t :member-name "fieldId"
                                  :http-label common-lisp:t)
                                 (options :target-type field-options-list
                                  :required common-lisp:t :member-name
                                  "options"))
                                (:shape-name "BatchPutFieldOptionsRequest"))

(smithy/sdk/shapes:define-structure batch-put-field-options-response
                                    common-lisp:nil
                                    ((errors :target-type
                                      field-option-error-list :member-name
                                      "errors"))
                                    (:shape-name
                                     "BatchPutFieldOptionsResponse"))

(smithy/sdk/shapes:define-union boolean-condition common-lisp:nil
                                ((equal-to :target-type boolean-operands
                                  :member-name "equalTo")
                                 (not-equal-to :target-type boolean-operands
                                  :member-name "notEqualTo"))
                                (:shape-name "BooleanCondition"))

(smithy/sdk/shapes:define-list boolean-condition-list :member boolean-condition)

(smithy/sdk/shapes:define-structure boolean-operands common-lisp:nil
                                    ((operand-one :target-type operand-one
                                      :required common-lisp:t :member-name
                                      "operandOne")
                                     (operand-two :target-type operand-two
                                      :required common-lisp:t :member-name
                                      "operandTwo")
                                     (result :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "result"))
                                    (:shape-name "BooleanOperands"))

common-lisp:nil

(smithy/sdk/shapes:define-type case-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure case-event-included-data common-lisp:nil
                                    ((fields :target-type field-identifier-list
                                      :required common-lisp:t :member-name
                                      "fields"))
                                    (:shape-name "CaseEventIncludedData"))

(smithy/sdk/shapes:define-union case-filter common-lisp:nil
                                ((field :target-type field-filter :member-name
                                  "field")
                                 (not :target-type case-filter :member-name
                                  "not")
                                 (and-all :target-type case-filter-list
                                  :member-name "andAll")
                                 (or-all :target-type case-filter-list
                                  :member-name "orAll"))
                                (:shape-name "CaseFilter"))

(smithy/sdk/shapes:define-list case-filter-list :member case-filter)

(smithy/sdk/shapes:define-type case-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type case-rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type case-rule-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union case-rule-details common-lisp:nil
                                ((required :target-type required-case-rule
                                  :member-name "required"))
                                (:shape-name "CaseRuleDetails"))

(smithy/sdk/shapes:define-structure case-rule-error common-lisp:nil
                                    ((id :target-type case-rule-id :required
                                      common-lisp:t :member-name "id")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "errorCode")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "CaseRuleError"))

(smithy/sdk/shapes:define-type case-rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure case-rule-identifier common-lisp:nil
                                    ((id :target-type case-rule-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "CaseRuleIdentifier"))

(smithy/sdk/shapes:define-list case-rule-identifier-list :member
                               case-rule-identifier)

(smithy/sdk/shapes:define-type case-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure case-rule-summary common-lisp:nil
                                    ((case-rule-id :target-type case-rule-id
                                      :required common-lisp:t :member-name
                                      "caseRuleId")
                                     (name :target-type case-rule-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (case-rule-arn :target-type case-rule-arn
                                      :required common-lisp:t :member-name
                                      "caseRuleArn")
                                     (rule-type :target-type rule-type
                                      :required common-lisp:t :member-name
                                      "ruleType")
                                     (description :target-type
                                      case-rule-description :member-name
                                      "description"))
                                    (:shape-name "CaseRuleSummary"))

(smithy/sdk/shapes:define-list case-rule-summary-list :member case-rule-summary)

(smithy/sdk/shapes:define-structure case-summary common-lisp:nil
                                    ((case-id :target-type case-id :required
                                      common-lisp:t :member-name "caseId")
                                     (template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId"))
                                    (:shape-name "CaseSummary"))

(smithy/sdk/shapes:define-list case-summary-list :member case-summary)

(smithy/sdk/shapes:define-type channel smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channel-list :member channel)

(smithy/sdk/shapes:define-type comment-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type comment-body-text-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure comment-content common-lisp:nil
                                    ((body :target-type comment-body :required
                                      common-lisp:t :member-name "body")
                                     (content-type :target-type
                                      comment-body-text-type :required
                                      common-lisp:t :member-name
                                      "contentType"))
                                    (:shape-name "CommentContent"))

(smithy/sdk/shapes:define-structure comment-filter common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "CommentFilter"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type connected-to-system-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure contact common-lisp:nil
                                    ((contact-arn :target-type contact-arn
                                      :required common-lisp:t :member-name
                                      "contactArn"))
                                    (:shape-name "Contact"))

(smithy/sdk/shapes:define-type contact-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure contact-content common-lisp:nil
                                    ((contact-arn :target-type contact-arn
                                      :required common-lisp:t :member-name
                                      "contactArn")
                                     (channel :target-type channel :required
                                      common-lisp:t :member-name "channel")
                                     (connected-to-system-time :target-type
                                      connected-to-system-time :required
                                      common-lisp:t :member-name
                                      "connectedToSystemTime"))
                                    (:shape-name "ContactContent"))

(smithy/sdk/shapes:define-structure contact-filter common-lisp:nil
                                    ((channel :target-type channel-list
                                      :member-name "channel")
                                     (contact-arn :target-type contact-arn
                                      :member-name "contactArn"))
                                    (:shape-name "ContactFilter"))

(smithy/sdk/shapes:define-input create-case-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (template-id :target-type template-id
                                  :required common-lisp:t :member-name
                                  "templateId")
                                 (fields :target-type field-value-list
                                  :required common-lisp:t :member-name
                                  "fields")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (performed-by :target-type user-union
                                  :member-name "performedBy"))
                                (:shape-name "CreateCaseRequest"))

(smithy/sdk/shapes:define-structure create-case-response common-lisp:nil
                                    ((case-id :target-type case-id :required
                                      common-lisp:t :member-name "caseId")
                                     (case-arn :target-type case-arn :required
                                      common-lisp:t :member-name "caseArn"))
                                    (:shape-name "CreateCaseResponse"))

(smithy/sdk/shapes:define-input create-case-rule-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (name :target-type case-rule-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  case-rule-description :member-name
                                  "description")
                                 (rule :target-type case-rule-details :required
                                  common-lisp:t :member-name "rule"))
                                (:shape-name "CreateCaseRuleRequest"))

(smithy/sdk/shapes:define-output create-case-rule-response common-lisp:nil
                                 ((case-rule-id :target-type case-rule-id
                                   :required common-lisp:t :member-name
                                   "caseRuleId")
                                  (case-rule-arn :target-type case-rule-arn
                                   :required common-lisp:t :member-name
                                   "caseRuleArn"))
                                 (:shape-name "CreateCaseRuleResponse"))

(smithy/sdk/shapes:define-structure create-domain-request common-lisp:nil
                                    ((name :target-type domain-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-structure create-domain-response common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (domain-arn :target-type domain-arn
                                      :required common-lisp:t :member-name
                                      "domainArn")
                                     (domain-status :target-type domain-status
                                      :required common-lisp:t :member-name
                                      "domainStatus"))
                                    (:shape-name "CreateDomainResponse"))

(smithy/sdk/shapes:define-input create-field-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (name :target-type field-name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type field-type :required
                                  common-lisp:t :member-name "type")
                                 (description :target-type field-description
                                  :member-name "description"))
                                (:shape-name "CreateFieldRequest"))

(smithy/sdk/shapes:define-structure create-field-response common-lisp:nil
                                    ((field-id :target-type field-id :required
                                      common-lisp:t :member-name "fieldId")
                                     (field-arn :target-type field-arn
                                      :required common-lisp:t :member-name
                                      "fieldArn"))
                                    (:shape-name "CreateFieldResponse"))

(smithy/sdk/shapes:define-input create-layout-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (name :target-type layout-name :required
                                  common-lisp:t :member-name "name")
                                 (content :target-type layout-content :required
                                  common-lisp:t :member-name "content"))
                                (:shape-name "CreateLayoutRequest"))

(smithy/sdk/shapes:define-structure create-layout-response common-lisp:nil
                                    ((layout-id :target-type layout-id
                                      :required common-lisp:t :member-name
                                      "layoutId")
                                     (layout-arn :target-type layout-arn
                                      :required common-lisp:t :member-name
                                      "layoutArn"))
                                    (:shape-name "CreateLayoutResponse"))

(smithy/sdk/shapes:define-input create-related-item-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (type :target-type related-item-type :required
                                  common-lisp:t :member-name "type")
                                 (content :target-type
                                  related-item-input-content :required
                                  common-lisp:t :member-name "content")
                                 (performed-by :target-type user-union
                                  :member-name "performedBy"))
                                (:shape-name "CreateRelatedItemRequest"))

(smithy/sdk/shapes:define-structure create-related-item-response
                                    common-lisp:nil
                                    ((related-item-id :target-type
                                      related-item-id :required common-lisp:t
                                      :member-name "relatedItemId")
                                     (related-item-arn :target-type
                                      related-item-arn :required common-lisp:t
                                      :member-name "relatedItemArn"))
                                    (:shape-name "CreateRelatedItemResponse"))

(smithy/sdk/shapes:define-input create-template-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (name :target-type template-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type template-description
                                  :member-name "description")
                                 (layout-configuration :target-type
                                  layout-configuration :member-name
                                  "layoutConfiguration")
                                 (required-fields :target-type
                                  required-field-list :member-name
                                  "requiredFields")
                                 (status :target-type template-status
                                  :member-name "status")
                                 (rules :target-type template-case-rule-list
                                  :member-name "rules"))
                                (:shape-name "CreateTemplateRequest"))

(smithy/sdk/shapes:define-structure create-template-response common-lisp:nil
                                    ((template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId")
                                     (template-arn :target-type template-arn
                                      :required common-lisp:t :member-name
                                      "templateArn"))
                                    (:shape-name "CreateTemplateResponse"))

(smithy/sdk/shapes:define-type created-time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type custom-entity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-case-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteCaseRequest"))

(smithy/sdk/shapes:define-output delete-case-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCaseResponse"))

(smithy/sdk/shapes:define-input delete-case-rule-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-rule-id :target-type case-rule-id
                                  :required common-lisp:t :member-name
                                  "caseRuleId" :http-label common-lisp:t))
                                (:shape-name "DeleteCaseRuleRequest"))

(smithy/sdk/shapes:define-output delete-case-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCaseRuleResponse"))

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-structure delete-domain-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteDomainResponse"))

(smithy/sdk/shapes:define-input delete-field-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (field-id :target-type field-id :required
                                  common-lisp:t :member-name "fieldId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteFieldRequest"))

(smithy/sdk/shapes:define-output delete-field-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFieldResponse"))

(smithy/sdk/shapes:define-input delete-layout-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (layout-id :target-type layout-id :required
                                  common-lisp:t :member-name "layoutId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteLayoutRequest"))

(smithy/sdk/shapes:define-output delete-layout-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLayoutResponse"))

(smithy/sdk/shapes:define-input delete-related-item-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (related-item-id :target-type related-item-id
                                  :required common-lisp:t :member-name
                                  "relatedItemId" :http-label common-lisp:t))
                                (:shape-name "DeleteRelatedItemRequest"))

(smithy/sdk/shapes:define-output delete-related-item-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRelatedItemResponse"))

(smithy/sdk/shapes:define-input delete-template-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (template-id :target-type template-id
                                  :required common-lisp:t :member-name
                                  "templateId" :http-label common-lisp:t))
                                (:shape-name "DeleteTemplateRequest"))

(smithy/sdk/shapes:define-output delete-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTemplateResponse"))

(smithy/sdk/shapes:define-type deleted smithy/sdk/smithy-types:boolean)

common-lisp:nil

(smithy/sdk/shapes:define-type domain-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-summary common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (domain-arn :target-type domain-arn
                                      :required common-lisp:t :member-name
                                      "domainArn")
                                     (name :target-type domain-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DomainSummary"))

(smithy/sdk/shapes:define-list domain-summary-list :member domain-summary)

(smithy/sdk/shapes:define-structure empty-field-value common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EmptyFieldValue"))

(smithy/sdk/shapes:define-structure empty-operand-value common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EmptyOperandValue"))

(smithy/sdk/shapes:define-structure event-bridge-configuration common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (included-data :target-type
                                      event-included-data :member-name
                                      "includedData"))
                                    (:shape-name "EventBridgeConfiguration"))

(smithy/sdk/shapes:define-structure event-included-data common-lisp:nil
                                    ((case-data :target-type
                                      case-event-included-data :member-name
                                      "caseData")
                                     (related-item-data :target-type
                                      related-item-event-included-data
                                      :member-name "relatedItemData"))
                                    (:shape-name "EventIncludedData"))

common-lisp:nil

(smithy/sdk/shapes:define-type field-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-error common-lisp:nil
                                    ((id :target-type field-id :required
                                      common-lisp:t :member-name "id")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "errorCode")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "message"))
                                    (:shape-name "FieldError"))

(smithy/sdk/shapes:define-union field-filter common-lisp:nil
                                ((equal-to :target-type field-value
                                  :member-name "equalTo")
                                 (contains :target-type field-value
                                  :member-name "contains")
                                 (greater-than :target-type field-value
                                  :member-name "greaterThan")
                                 (greater-than-or-equal-to :target-type
                                  field-value :member-name
                                  "greaterThanOrEqualTo")
                                 (less-than :target-type field-value
                                  :member-name "lessThan")
                                 (less-than-or-equal-to :target-type
                                  field-value :member-name
                                  "lessThanOrEqualTo"))
                                (:shape-name "FieldFilter"))

(smithy/sdk/shapes:define-structure field-group common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (fields :target-type field-list :required
                                      common-lisp:t :member-name "fields"))
                                    (:shape-name "FieldGroup"))

(smithy/sdk/shapes:define-type field-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-identifier common-lisp:nil
                                    ((id :target-type field-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "FieldIdentifier"))

(smithy/sdk/shapes:define-list field-identifier-list :member field-identifier)

(smithy/sdk/shapes:define-structure field-item common-lisp:nil
                                    ((id :target-type field-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "FieldItem"))

(smithy/sdk/shapes:define-list field-list :member field-item)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-option common-lisp:nil
                                    ((name :target-type field-option-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type field-option-value
                                      :required common-lisp:t :member-name
                                      "value")
                                     (active :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "active"))
                                    (:shape-name "FieldOption"))

(smithy/sdk/shapes:define-structure field-option-error common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "errorCode")
                                     (value :target-type field-option-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "FieldOptionError"))

(smithy/sdk/shapes:define-list field-option-error-list :member
                               field-option-error)

(smithy/sdk/shapes:define-type field-option-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-option-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list field-options-list :member field-option)

(smithy/sdk/shapes:define-structure field-summary common-lisp:nil
                                    ((field-id :target-type field-id :required
                                      common-lisp:t :member-name "fieldId")
                                     (field-arn :target-type field-arn
                                      :required common-lisp:t :member-name
                                      "fieldArn")
                                     (name :target-type field-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type field-type :required
                                      common-lisp:t :member-name "type")
                                     (namespace :target-type field-namespace
                                      :required common-lisp:t :member-name
                                      "namespace"))
                                    (:shape-name "FieldSummary"))

(smithy/sdk/shapes:define-list field-summary-list :member field-summary)

(smithy/sdk/shapes:define-type field-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-value common-lisp:nil
                                    ((id :target-type field-id :required
                                      common-lisp:t :member-name "id")
                                     (value :target-type field-value-union
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "FieldValue"))

(smithy/sdk/shapes:define-list field-value-list :member field-value)

(smithy/sdk/shapes:define-union field-value-union common-lisp:nil
                                ((string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (double-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleValue")
                                 (boolean-value :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanValue")
                                 (empty-value :target-type empty-field-value
                                  :member-name "emptyValue")
                                 (user-arn-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "userArnValue"))
                                (:shape-name "FieldValueUnion"))

(smithy/sdk/shapes:define-type file-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-content common-lisp:nil
                                    ((file-arn :target-type file-arn :required
                                      common-lisp:t :member-name "fileArn"))
                                    (:shape-name "FileContent"))

(smithy/sdk/shapes:define-structure file-filter common-lisp:nil
                                    ((file-arn :target-type file-arn
                                      :member-name "fileArn"))
                                    (:shape-name "FileFilter"))

(smithy/sdk/shapes:define-input get-case-audit-events-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetCaseAuditEventsRequest"))

(smithy/sdk/shapes:define-output get-case-audit-events-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (audit-events :target-type audit-events-list
                                   :required common-lisp:t :member-name
                                   "auditEvents"))
                                 (:shape-name "GetCaseAuditEventsResponse"))

(smithy/sdk/shapes:define-input get-case-event-configuration-request
                                common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCaseEventConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-case-event-configuration-response
                                    common-lisp:nil
                                    ((event-bridge :target-type
                                      event-bridge-configuration :required
                                      common-lisp:t :member-name
                                      "eventBridge"))
                                    (:shape-name
                                     "GetCaseEventConfigurationResponse"))

(smithy/sdk/shapes:define-input get-case-request common-lisp:nil
                                ((case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (fields :target-type field-identifier-list
                                  :required common-lisp:t :member-name
                                  "fields")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetCaseRequest"))

(smithy/sdk/shapes:define-structure get-case-response common-lisp:nil
                                    ((fields :target-type field-value-list
                                      :required common-lisp:t :member-name
                                      "fields")
                                     (template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "GetCaseResponse"))

(smithy/sdk/shapes:define-structure get-case-rule-response common-lisp:nil
                                    ((case-rule-id :target-type case-rule-id
                                      :required common-lisp:t :member-name
                                      "caseRuleId")
                                     (name :target-type case-rule-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (case-rule-arn :target-type case-rule-arn
                                      :required common-lisp:t :member-name
                                      "caseRuleArn")
                                     (rule :target-type case-rule-details
                                      :required common-lisp:t :member-name
                                      "rule")
                                     (description :target-type
                                      case-rule-description :member-name
                                      "description")
                                     (deleted :target-type deleted :member-name
                                      "deleted")
                                     (created-time :target-type created-time
                                      :member-name "createdTime")
                                     (last-modified-time :target-type
                                      last-modified-time :member-name
                                      "lastModifiedTime")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "GetCaseRuleResponse"))

(smithy/sdk/shapes:define-input get-domain-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDomainRequest"))

(smithy/sdk/shapes:define-structure get-domain-response common-lisp:nil
                                    ((domain-id :target-type domain-id
                                      :required common-lisp:t :member-name
                                      "domainId")
                                     (domain-arn :target-type domain-arn
                                      :required common-lisp:t :member-name
                                      "domainArn")
                                     (name :target-type domain-name :required
                                      common-lisp:t :member-name "name")
                                     (created-time :target-type created-time
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (domain-status :target-type domain-status
                                      :required common-lisp:t :member-name
                                      "domainStatus")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "GetDomainResponse"))

(smithy/sdk/shapes:define-structure get-field-response common-lisp:nil
                                    ((field-id :target-type field-id :required
                                      common-lisp:t :member-name "fieldId")
                                     (name :target-type field-name :required
                                      common-lisp:t :member-name "name")
                                     (field-arn :target-type field-arn
                                      :required common-lisp:t :member-name
                                      "fieldArn")
                                     (description :target-type
                                      field-description :member-name
                                      "description")
                                     (type :target-type field-type :required
                                      common-lisp:t :member-name "type")
                                     (namespace :target-type field-namespace
                                      :required common-lisp:t :member-name
                                      "namespace")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (deleted :target-type deleted :member-name
                                      "deleted")
                                     (created-time :target-type created-time
                                      :member-name "createdTime")
                                     (last-modified-time :target-type
                                      last-modified-time :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "GetFieldResponse"))

(smithy/sdk/shapes:define-input get-layout-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (layout-id :target-type layout-id :required
                                  common-lisp:t :member-name "layoutId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetLayoutRequest"))

(smithy/sdk/shapes:define-structure get-layout-response common-lisp:nil
                                    ((layout-id :target-type layout-id
                                      :required common-lisp:t :member-name
                                      "layoutId")
                                     (layout-arn :target-type layout-arn
                                      :required common-lisp:t :member-name
                                      "layoutArn")
                                     (name :target-type layout-name :required
                                      common-lisp:t :member-name "name")
                                     (content :target-type layout-content
                                      :required common-lisp:t :member-name
                                      "content")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (deleted :target-type deleted :member-name
                                      "deleted")
                                     (created-time :target-type created-time
                                      :member-name "createdTime")
                                     (last-modified-time :target-type
                                      last-modified-time :member-name
                                      "lastModifiedTime"))
                                    (:shape-name "GetLayoutResponse"))

(smithy/sdk/shapes:define-input get-template-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (template-id :target-type template-id
                                  :required common-lisp:t :member-name
                                  "templateId" :http-label common-lisp:t))
                                (:shape-name "GetTemplateRequest"))

(smithy/sdk/shapes:define-structure get-template-response common-lisp:nil
                                    ((template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId")
                                     (template-arn :target-type template-arn
                                      :required common-lisp:t :member-name
                                      "templateArn")
                                     (name :target-type template-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      template-description :member-name
                                      "description")
                                     (layout-configuration :target-type
                                      layout-configuration :member-name
                                      "layoutConfiguration")
                                     (required-fields :target-type
                                      required-field-list :member-name
                                      "requiredFields")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (status :target-type template-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (deleted :target-type deleted :member-name
                                      "deleted")
                                     (created-time :target-type created-time
                                      :member-name "createdTime")
                                     (last-modified-time :target-type
                                      last-modified-time :member-name
                                      "lastModifiedTime")
                                     (rules :target-type
                                      template-case-rule-list :member-name
                                      "rules"))
                                    (:shape-name "GetTemplateResponse"))

(smithy/sdk/shapes:define-type iam-principal-arn smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-type last-modified-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

common-lisp:nil

(smithy/sdk/shapes:define-type layout-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure layout-configuration common-lisp:nil
                                    ((default-layout :target-type layout-id
                                      :member-name "defaultLayout"))
                                    (:shape-name "LayoutConfiguration"))

(smithy/sdk/shapes:define-union layout-content common-lisp:nil
                                ((basic :target-type basic-layout :member-name
                                  "basic"))
                                (:shape-name "LayoutContent"))

(smithy/sdk/shapes:define-type layout-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type layout-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure layout-sections common-lisp:nil
                                    ((sections :target-type sections-list
                                      :member-name "sections"))
                                    (:shape-name "LayoutSections"))

(smithy/sdk/shapes:define-structure layout-summary common-lisp:nil
                                    ((layout-id :target-type layout-id
                                      :required common-lisp:t :member-name
                                      "layoutId")
                                     (layout-arn :target-type layout-arn
                                      :required common-lisp:t :member-name
                                      "layoutArn")
                                     (name :target-type layout-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "LayoutSummary"))

(smithy/sdk/shapes:define-list layout-summary-list :member layout-summary)

(smithy/sdk/shapes:define-input list-case-rules-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListCaseRulesRequest"))

(smithy/sdk/shapes:define-output list-case-rules-response common-lisp:nil
                                 ((case-rules :target-type
                                   case-rule-summary-list :required
                                   common-lisp:t :member-name "caseRules")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCaseRulesResponse"))

(smithy/sdk/shapes:define-input list-cases-for-contact-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (contact-arn :target-type contact-arn
                                  :required common-lisp:t :member-name
                                  "contactArn")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListCasesForContactRequest"))

(smithy/sdk/shapes:define-structure list-cases-for-contact-response
                                    common-lisp:nil
                                    ((cases :target-type case-summary-list
                                      :required common-lisp:t :member-name
                                      "cases")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListCasesForContactResponse"))

(smithy/sdk/shapes:define-input list-domains-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDomainsRequest"))

(smithy/sdk/shapes:define-structure list-domains-response common-lisp:nil
                                    ((domains :target-type domain-summary-list
                                      :required common-lisp:t :member-name
                                      "domains")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListDomainsResponse"))

(smithy/sdk/shapes:define-input list-field-options-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (field-id :target-type field-id :required
                                  common-lisp:t :member-name "fieldId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (values :target-type values-list :member-name
                                  "values" :http-query "values"))
                                (:shape-name "ListFieldOptionsRequest"))

(smithy/sdk/shapes:define-structure list-field-options-response common-lisp:nil
                                    ((options :target-type field-options-list
                                      :required common-lisp:t :member-name
                                      "options")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFieldOptionsResponse"))

(smithy/sdk/shapes:define-input list-fields-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListFieldsRequest"))

(smithy/sdk/shapes:define-structure list-fields-response common-lisp:nil
                                    ((fields :target-type field-summary-list
                                      :required common-lisp:t :member-name
                                      "fields")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFieldsResponse"))

(smithy/sdk/shapes:define-input list-layouts-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListLayoutsRequest"))

(smithy/sdk/shapes:define-structure list-layouts-response common-lisp:nil
                                    ((layouts :target-type layout-summary-list
                                      :required common-lisp:t :member-name
                                      "layouts")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListLayoutsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-templates-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (status :target-type template-status-filters
                                  :member-name "status" :http-query "status"))
                                (:shape-name "ListTemplatesRequest"))

(smithy/sdk/shapes:define-structure list-templates-response common-lisp:nil
                                    ((templates :target-type
                                      template-summary-list :required
                                      common-lisp:t :member-name "templates")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTemplatesResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union operand-one common-lisp:nil
                                ((field-id :target-type field-id :member-name
                                  "fieldId"))
                                (:shape-name "OperandOne"))

(smithy/sdk/shapes:define-union operand-two common-lisp:nil
                                ((string-value :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "stringValue")
                                 (boolean-value :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "booleanValue")
                                 (double-value :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "doubleValue")
                                 (empty-value :target-type empty-operand-value
                                  :member-name "emptyValue"))
                                (:shape-name "OperandTwo"))

(smithy/sdk/shapes:define-type order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-case-event-configuration-request
                                common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (event-bridge :target-type
                                  event-bridge-configuration :required
                                  common-lisp:t :member-name "eventBridge"))
                                (:shape-name
                                 "PutCaseEventConfigurationRequest"))

(smithy/sdk/shapes:define-structure put-case-event-configuration-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "PutCaseEventConfigurationResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type related-item-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union related-item-content common-lisp:nil
                                ((contact :target-type contact-content
                                  :member-name "contact")
                                 (comment :target-type comment-content
                                  :member-name "comment")
                                 (file :target-type file-content :member-name
                                  "file")
                                 (sla :target-type sla-content :member-name
                                  "sla"))
                                (:shape-name "RelatedItemContent"))

(smithy/sdk/shapes:define-structure related-item-event-included-data
                                    common-lisp:nil
                                    ((include-content :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "includeContent"))
                                    (:shape-name
                                     "RelatedItemEventIncludedData"))

(smithy/sdk/shapes:define-list related-item-filter-list :member
                               related-item-type-filter)

(smithy/sdk/shapes:define-type related-item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union related-item-input-content common-lisp:nil
                                ((contact :target-type contact :member-name
                                  "contact")
                                 (comment :target-type comment-content
                                  :member-name "comment")
                                 (file :target-type file-content :member-name
                                  "file")
                                 (sla :target-type sla-input-content
                                  :member-name "sla"))
                                (:shape-name "RelatedItemInputContent"))

(smithy/sdk/shapes:define-type related-item-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union related-item-type-filter common-lisp:nil
                                ((contact :target-type contact-filter
                                  :member-name "contact")
                                 (comment :target-type comment-filter
                                  :member-name "comment")
                                 (file :target-type file-filter :member-name
                                  "file")
                                 (sla :target-type sla-filter :member-name
                                  "sla"))
                                (:shape-name "RelatedItemTypeFilter"))

(smithy/sdk/shapes:define-structure required-case-rule common-lisp:nil
                                    ((default-value :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "defaultValue")
                                     (conditions :target-type
                                      boolean-condition-list :required
                                      common-lisp:t :member-name "conditions"))
                                    (:shape-name "RequiredCaseRule"))

(smithy/sdk/shapes:define-structure required-field common-lisp:nil
                                    ((field-id :target-type field-id :required
                                      common-lisp:t :member-name "fieldId"))
                                    (:shape-name "RequiredField"))

(smithy/sdk/shapes:define-list required-field-list :member required-field)

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

(smithy/sdk/shapes:define-type rule-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-cases-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (search-term :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "searchTerm")
                                 (filter :target-type case-filter :member-name
                                  "filter")
                                 (sorts :target-type sort-list :member-name
                                  "sorts")
                                 (fields :target-type field-identifier-list
                                  :member-name "fields"))
                                (:shape-name "SearchCasesRequest"))

(smithy/sdk/shapes:define-structure search-cases-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (cases :target-type
                                      search-cases-response-item-list :required
                                      common-lisp:t :member-name "cases"))
                                    (:shape-name "SearchCasesResponse"))

(smithy/sdk/shapes:define-structure search-cases-response-item common-lisp:nil
                                    ((case-id :target-type case-id :required
                                      common-lisp:t :member-name "caseId")
                                     (template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId")
                                     (fields :target-type field-value-list
                                      :required common-lisp:t :member-name
                                      "fields")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "SearchCasesResponseItem"))

(smithy/sdk/shapes:define-list search-cases-response-item-list :member
                               search-cases-response-item)

(smithy/sdk/shapes:define-input search-related-items-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (filters :target-type related-item-filter-list
                                  :member-name "filters"))
                                (:shape-name "SearchRelatedItemsRequest"))

(smithy/sdk/shapes:define-structure search-related-items-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (related-items :target-type
                                      search-related-items-response-item-list
                                      :required common-lisp:t :member-name
                                      "relatedItems"))
                                    (:shape-name "SearchRelatedItemsResponse"))

(smithy/sdk/shapes:define-structure search-related-items-response-item
                                    common-lisp:nil
                                    ((related-item-id :target-type
                                      related-item-id :required common-lisp:t
                                      :member-name "relatedItemId")
                                     (type :target-type related-item-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (association-time :target-type
                                      association-time :required common-lisp:t
                                      :member-name "associationTime")
                                     (content :target-type related-item-content
                                      :required common-lisp:t :member-name
                                      "content")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (performed-by :target-type user-union
                                      :member-name "performedBy"))
                                    (:shape-name
                                     "SearchRelatedItemsResponseItem"))

(smithy/sdk/shapes:define-list search-related-items-response-item-list :member
                               search-related-items-response-item)

(smithy/sdk/shapes:define-union section common-lisp:nil
                                ((field-group :target-type field-group
                                  :member-name "fieldGroup"))
                                (:shape-name "Section"))

(smithy/sdk/shapes:define-list sections-list :member section)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sla-completion-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure sla-configuration common-lisp:nil
                                    ((name :target-type sla-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type sla-type :required
                                      common-lisp:t :member-name "type")
                                     (status :target-type sla-status :required
                                      common-lisp:t :member-name "status")
                                     (field-id :target-type field-id
                                      :member-name "fieldId")
                                     (target-field-values :target-type
                                      sla-field-value-union-list :member-name
                                      "targetFieldValues")
                                     (target-time :target-type sla-target-time
                                      :required common-lisp:t :member-name
                                      "targetTime")
                                     (completion-time :target-type
                                      sla-completion-time :member-name
                                      "completionTime"))
                                    (:shape-name "SlaConfiguration"))

(smithy/sdk/shapes:define-structure sla-content common-lisp:nil
                                    ((sla-configuration :target-type
                                      sla-configuration :required common-lisp:t
                                      :member-name "slaConfiguration"))
                                    (:shape-name "SlaContent"))

(smithy/sdk/shapes:define-list sla-field-value-union-list :member
                               field-value-union)

(smithy/sdk/shapes:define-structure sla-filter common-lisp:nil
                                    ((name :target-type sla-name :member-name
                                      "name")
                                     (status :target-type sla-status
                                      :member-name "status"))
                                    (:shape-name "SlaFilter"))

(smithy/sdk/shapes:define-structure sla-input-configuration common-lisp:nil
                                    ((name :target-type sla-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type sla-type :required
                                      common-lisp:t :member-name "type")
                                     (field-id :target-type field-id
                                      :member-name "fieldId")
                                     (target-field-values :target-type
                                      sla-field-value-union-list :member-name
                                      "targetFieldValues")
                                     (target-sla-minutes :target-type
                                      target-sla-minutes :required
                                      common-lisp:t :member-name
                                      "targetSlaMinutes"))
                                    (:shape-name "SlaInputConfiguration"))

(smithy/sdk/shapes:define-union sla-input-content common-lisp:nil
                                ((sla-input-configuration :target-type
                                  sla-input-configuration :member-name
                                  "slaInputConfiguration"))
                                (:shape-name "SlaInputContent"))

(smithy/sdk/shapes:define-type sla-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sla-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sla-target-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-type sla-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sort common-lisp:nil
                                    ((field-id :target-type field-id :required
                                      common-lisp:t :member-name "fieldId")
                                     (sort-order :target-type order :required
                                      common-lisp:t :member-name "sortOrder"))
                                    (:shape-name "Sort"))

(smithy/sdk/shapes:define-list sort-list :member sort)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-map tags :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-sla-minutes smithy/sdk/smithy-types:long)

common-lisp:nil

(smithy/sdk/shapes:define-type template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list template-case-rule-list :member template-rule)

(smithy/sdk/shapes:define-type template-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-rule common-lisp:nil
                                    ((case-rule-id :target-type case-rule-id
                                      :required common-lisp:t :member-name
                                      "caseRuleId")
                                     (field-id :target-type field-id :required
                                      common-lisp:t :member-name "fieldId"))
                                    (:shape-name "TemplateRule"))

(smithy/sdk/shapes:define-type template-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list template-status-filters :member template-status)

(smithy/sdk/shapes:define-structure template-summary common-lisp:nil
                                    ((template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId")
                                     (template-arn :target-type template-arn
                                      :required common-lisp:t :member-name
                                      "templateArn")
                                     (name :target-type template-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type template-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "TemplateSummary"))

(smithy/sdk/shapes:define-list template-summary-list :member template-summary)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-case-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-id :target-type case-id :required
                                  common-lisp:t :member-name "caseId"
                                  :http-label common-lisp:t)
                                 (fields :target-type field-value-list
                                  :required common-lisp:t :member-name
                                  "fields")
                                 (performed-by :target-type user-union
                                  :member-name "performedBy"))
                                (:shape-name "UpdateCaseRequest"))

(smithy/sdk/shapes:define-structure update-case-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateCaseResponse"))

(smithy/sdk/shapes:define-input update-case-rule-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (case-rule-id :target-type case-rule-id
                                  :required common-lisp:t :member-name
                                  "caseRuleId" :http-label common-lisp:t)
                                 (name :target-type case-rule-name :member-name
                                  "name")
                                 (description :target-type
                                  case-rule-description :member-name
                                  "description")
                                 (rule :target-type case-rule-details
                                  :member-name "rule"))
                                (:shape-name "UpdateCaseRuleRequest"))

(smithy/sdk/shapes:define-output update-case-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateCaseRuleResponse"))

(smithy/sdk/shapes:define-input update-field-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (field-id :target-type field-id :required
                                  common-lisp:t :member-name "fieldId"
                                  :http-label common-lisp:t)
                                 (name :target-type field-name :member-name
                                  "name")
                                 (description :target-type field-description
                                  :member-name "description"))
                                (:shape-name "UpdateFieldRequest"))

(smithy/sdk/shapes:define-structure update-field-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateFieldResponse"))

(smithy/sdk/shapes:define-input update-layout-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (layout-id :target-type layout-id :required
                                  common-lisp:t :member-name "layoutId"
                                  :http-label common-lisp:t)
                                 (name :target-type layout-name :member-name
                                  "name")
                                 (content :target-type layout-content
                                  :member-name "content"))
                                (:shape-name "UpdateLayoutRequest"))

(smithy/sdk/shapes:define-structure update-layout-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateLayoutResponse"))

(smithy/sdk/shapes:define-input update-template-request common-lisp:nil
                                ((domain-id :target-type domain-id :required
                                  common-lisp:t :member-name "domainId"
                                  :http-label common-lisp:t)
                                 (template-id :target-type template-id
                                  :required common-lisp:t :member-name
                                  "templateId" :http-label common-lisp:t)
                                 (name :target-type template-name :member-name
                                  "name")
                                 (description :target-type template-description
                                  :member-name "description")
                                 (layout-configuration :target-type
                                  layout-configuration :member-name
                                  "layoutConfiguration")
                                 (required-fields :target-type
                                  required-field-list :member-name
                                  "requiredFields")
                                 (status :target-type template-status
                                  :member-name "status")
                                 (rules :target-type template-case-rule-list
                                  :member-name "rules"))
                                (:shape-name "UpdateTemplateRequest"))

(smithy/sdk/shapes:define-structure update-template-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateTemplateResponse"))

(smithy/sdk/shapes:define-type user-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union user-union common-lisp:nil
                                ((user-arn :target-type user-arn :member-name
                                  "userArn")
                                 (custom-entity :target-type custom-entity
                                  :member-name "customEntity"))
                                (:shape-name "UserUnion"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values-list :member value)

(smithy/sdk/operation:define-operation batch-get-case-rule :shape-name
                                       "BatchGetCaseRule" :input
                                       batch-get-case-rule-request :output
                                       batch-get-case-rule-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/rules-batch")

(smithy/sdk/operation:define-operation batch-get-field :shape-name
                                       "BatchGetField" :input
                                       batch-get-field-request :output
                                       batch-get-field-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/fields-batch")

(smithy/sdk/operation:define-operation batch-put-field-options :shape-name
                                       "BatchPutFieldOptions" :input
                                       batch-put-field-options-request :output
                                       batch-put-field-options-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/fields/{fieldId}/options")

(smithy/sdk/operation:define-operation create-case :shape-name "CreateCase"
                                       :input create-case-request :output
                                       create-case-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/cases")

(smithy/sdk/operation:define-operation create-case-rule :shape-name
                                       "CreateCaseRule" :input
                                       create-case-rule-request :output
                                       create-case-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/case-rules")

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/domains")

(smithy/sdk/operation:define-operation create-field :shape-name "CreateField"
                                       :input create-field-request :output
                                       create-field-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/fields")

(smithy/sdk/operation:define-operation create-layout :shape-name "CreateLayout"
                                       :input create-layout-request :output
                                       create-layout-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/layouts")

(smithy/sdk/operation:define-operation create-related-item :shape-name
                                       "CreateRelatedItem" :input
                                       create-related-item-request :output
                                       create-related-item-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/cases/{caseId}/related-items/")

(smithy/sdk/operation:define-operation create-template :shape-name
                                       "CreateTemplate" :input
                                       create-template-request :output
                                       create-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/templates")

(smithy/sdk/operation:define-operation delete-case :shape-name "DeleteCase"
                                       :input delete-case-request :output
                                       delete-case-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}/cases/{caseId}")

(smithy/sdk/operation:define-operation delete-case-rule :shape-name
                                       "DeleteCaseRule" :input
                                       delete-case-rule-request :output
                                       delete-case-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}/case-rules/{caseRuleId}")

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}")

(smithy/sdk/operation:define-operation delete-field :shape-name "DeleteField"
                                       :input delete-field-request :output
                                       delete-field-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}/fields/{fieldId}")

(smithy/sdk/operation:define-operation delete-layout :shape-name "DeleteLayout"
                                       :input delete-layout-request :output
                                       delete-layout-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}/layouts/{layoutId}")

(smithy/sdk/operation:define-operation delete-related-item :shape-name
                                       "DeleteRelatedItem" :input
                                       delete-related-item-request :output
                                       delete-related-item-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}/cases/{caseId}/related-items/{relatedItemId}")

(smithy/sdk/operation:define-operation delete-template :shape-name
                                       "DeleteTemplate" :input
                                       delete-template-request :output
                                       delete-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/domains/{domainId}/templates/{templateId}")

(smithy/sdk/operation:define-operation get-case :shape-name "GetCase" :input
                                       get-case-request :output
                                       get-case-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/cases/{caseId}")

(smithy/sdk/operation:define-operation get-case-audit-events :shape-name
                                       "GetCaseAuditEvents" :input
                                       get-case-audit-events-request :output
                                       get-case-audit-events-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/cases/{caseId}/audit-history")

(smithy/sdk/operation:define-operation get-case-event-configuration :shape-name
                                       "GetCaseEventConfiguration" :input
                                       get-case-event-configuration-request
                                       :output
                                       get-case-event-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/case-event-configuration")

(smithy/sdk/operation:define-operation get-domain :shape-name "GetDomain"
                                       :input get-domain-request :output
                                       get-domain-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}")

(smithy/sdk/operation:define-operation get-layout :shape-name "GetLayout"
                                       :input get-layout-request :output
                                       get-layout-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/layouts/{layoutId}")

(smithy/sdk/operation:define-operation get-template :shape-name "GetTemplate"
                                       :input get-template-request :output
                                       get-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/templates/{templateId}")

(smithy/sdk/operation:define-operation list-case-rules :shape-name
                                       "ListCaseRules" :input
                                       list-case-rules-request :output
                                       list-case-rules-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/rules-list/")

(smithy/sdk/operation:define-operation list-cases-for-contact :shape-name
                                       "ListCasesForContact" :input
                                       list-cases-for-contact-request :output
                                       list-cases-for-contact-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/list-cases-for-contact")

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-request :output
                                       list-domains-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/domains-list")

(smithy/sdk/operation:define-operation list-field-options :shape-name
                                       "ListFieldOptions" :input
                                       list-field-options-request :output
                                       list-field-options-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/fields/{fieldId}/options-list")

(smithy/sdk/operation:define-operation list-fields :shape-name "ListFields"
                                       :input list-fields-request :output
                                       list-fields-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/fields-list")

(smithy/sdk/operation:define-operation list-layouts :shape-name "ListLayouts"
                                       :input list-layouts-request :output
                                       list-layouts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/layouts-list")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation list-templates :shape-name
                                       "ListTemplates" :input
                                       list-templates-request :output
                                       list-templates-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/templates-list")

(smithy/sdk/operation:define-operation put-case-event-configuration :shape-name
                                       "PutCaseEventConfiguration" :input
                                       put-case-event-configuration-request
                                       :output
                                       put-case-event-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/case-event-configuration")

(smithy/sdk/operation:define-operation search-cases :shape-name "SearchCases"
                                       :input search-cases-request :output
                                       search-cases-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/cases-search")

(smithy/sdk/operation:define-operation search-related-items :shape-name
                                       "SearchRelatedItems" :input
                                       search-related-items-request :output
                                       search-related-items-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/domains/{domainId}/cases/{caseId}/related-items-search")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation update-case :shape-name "UpdateCase"
                                       :input update-case-request :output
                                       update-case-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/cases/{caseId}")

(smithy/sdk/operation:define-operation update-case-rule :shape-name
                                       "UpdateCaseRule" :input
                                       update-case-rule-request :output
                                       update-case-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/case-rules/{caseRuleId}")

(smithy/sdk/operation:define-operation update-field :shape-name "UpdateField"
                                       :input update-field-request :output
                                       update-field-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/fields/{fieldId}")

(smithy/sdk/operation:define-operation update-layout :shape-name "UpdateLayout"
                                       :input update-layout-request :output
                                       update-layout-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/layouts/{layoutId}")

(smithy/sdk/operation:define-operation update-template :shape-name
                                       "UpdateTemplate" :input
                                       update-template-request :output
                                       update-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/domains/{domainId}/templates/{templateId}")
