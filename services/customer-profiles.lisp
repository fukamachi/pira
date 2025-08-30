(uiop/package:define-package #:pira/customer-profiles (:use)
                             (:export #:access-denied-exception
                              #:add-profile-key #:additional-search-key
                              #:address #:address-dimension #:address-list
                              #:appflow-integration
                              #:appflow-integration-workflow-attributes
                              #:appflow-integration-workflow-metrics
                              #:appflow-integration-workflow-step
                              #:attribute-details #:attribute-dimension
                              #:attribute-dimension-type #:attribute-item
                              #:attribute-list #:attribute-map
                              #:attribute-matching-model
                              #:attribute-source-id-map
                              #:attribute-types-selector #:attribute-value-item
                              #:attribute-value-item-list #:attributes
                              #:auto-merging #:bad-request-exception #:batch
                              #:batch-get-calculated-attribute-for-profile
                              #:batch-get-calculated-attribute-for-profile-error
                              #:batch-get-calculated-attribute-for-profile-error-list
                              #:batch-get-calculated-attribute-for-profile-id-list
                              #:batch-get-profile #:batch-get-profile-error
                              #:batch-get-profile-error-list
                              #:batch-get-profile-id-list #:batches
                              #:bucket-name #:bucket-prefix
                              #:calculated-attribute-definitions-list
                              #:calculated-attribute-dimension
                              #:calculated-attribute-value
                              #:calculated-attribute-value-list
                              #:calculated-attributes-for-profile-list
                              #:calculated-custom-attributes
                              #:comparison-operator #:condition-overrides
                              #:conditions #:conflict-resolution
                              #:conflict-resolving-model #:connector-operator
                              #:connector-profile-name #:consolidation
                              #:contact-preference #:contact-type
                              #:create-calculated-attribute-definition
                              #:create-domain #:create-domain-layout
                              #:create-event-stream #:create-event-trigger
                              #:create-integration-workflow #:create-profile
                              #:create-segment-definition
                              #:create-segment-estimate
                              #:create-segment-snapshot #:create-upload-job
                              #:custom-attributes #:customer-profiles-20200815
                              #:data-format #:data-pull-mode #:date
                              #:date-dimension #:date-dimension-type
                              #:date-values #:datetime-type-field-name
                              #:delete-calculated-attribute-definition
                              #:delete-domain #:delete-domain-layout
                              #:delete-event-stream #:delete-event-trigger
                              #:delete-integration #:delete-profile
                              #:delete-profile-key #:delete-profile-object
                              #:delete-profile-object-type
                              #:delete-segment-definition #:delete-workflow
                              #:destination-field #:destination-summary
                              #:detect-profile-object-type
                              #:detected-profile-object-type
                              #:detected-profile-object-types #:dimension
                              #:dimension-list #:domain-list #:domain-stats
                              #:double #:double0to1 #:email-list
                              #:email-preference-list #:end
                              #:engagement-preferences #:estimate-status
                              #:event-stream-destination-details
                              #:event-stream-destination-status
                              #:event-stream-state #:event-stream-summary
                              #:event-stream-summary-list
                              #:event-trigger-condition
                              #:event-trigger-conditions
                              #:event-trigger-dimension
                              #:event-trigger-dimensions #:event-trigger-limits
                              #:event-trigger-logical-operator
                              #:event-trigger-names
                              #:event-trigger-summary-item
                              #:event-trigger-summary-list
                              #:event-trigger-values #:exporting-config
                              #:exporting-location
                              #:extra-length-value-profile-dimension
                              #:extra-length-values #:failures
                              #:field-content-type #:field-map
                              #:field-name-list #:field-source-profile-ids
                              #:filter #:filter-attribute-dimension
                              #:filter-dimension #:filter-dimension-list
                              #:filter-dimension-type #:filter-group
                              #:flow-definition #:flow-description #:flow-name
                              #:found-by-key-value #:gender
                              #:get-auto-merging-preview
                              #:get-calculated-attribute-definition
                              #:get-calculated-attribute-for-profile
                              #:get-domain #:get-domain-layout
                              #:get-event-stream #:get-event-trigger
                              #:get-identity-resolution-job #:get-integration
                              #:get-matches #:get-profile-object-type
                              #:get-profile-object-type-template
                              #:get-segment-definition #:get-segment-estimate
                              #:get-segment-membership
                              #:get-segment-membership-message
                              #:get-segment-membership-status
                              #:get-segment-snapshot #:get-similar-profiles
                              #:get-upload-job #:get-upload-job-path
                              #:get-workflow #:get-workflow-steps #:group
                              #:group-list #:identity-resolution-job
                              #:identity-resolution-job-status
                              #:identity-resolution-jobs-list #:include
                              #:include-options #:incremental-pull-config
                              #:integration-config #:integration-list
                              #:internal-server-exception #:job-schedule
                              #:job-schedule-day-of-the-week
                              #:job-schedule-time #:job-stats #:key-map
                              #:kms-arn #:layout-item #:layout-list
                              #:layout-type #:list-account-integrations
                              #:list-calculated-attribute-definition-item
                              #:list-calculated-attribute-definitions
                              #:list-calculated-attribute-for-profile-item
                              #:list-calculated-attributes-for-profile
                              #:list-domain-item #:list-domain-layouts
                              #:list-domains #:list-event-streams
                              #:list-event-triggers
                              #:list-identity-resolution-jobs
                              #:list-integration-item #:list-integrations
                              #:list-object-type-attribute-item
                              #:list-object-type-attributes
                              #:list-object-type-attributes-list
                              #:list-profile-attribute-values
                              #:list-profile-object-type-item
                              #:list-profile-object-type-template-item
                              #:list-profile-object-type-templates
                              #:list-profile-object-types
                              #:list-profile-objects
                              #:list-profile-objects-item
                              #:list-rule-based-matches
                              #:list-segment-definitions
                              #:list-tags-for-resource #:list-upload-jobs
                              #:list-workflows #:list-workflows-item
                              #:marketo-connector-operator
                              #:marketo-source-properties #:match-id-list
                              #:match-item #:match-type #:matches-list
                              #:matching-attributes #:matching-attributes-list
                              #:matching-request #:matching-response
                              #:matching-rule #:matching-rule-attribute-list
                              #:matching-rules
                              #:max-allowed-rule-level-for-matching
                              #:max-allowed-rule-level-for-merging
                              #:max-size500 #:merge-profiles #:object
                              #:object-attribute #:object-attributes
                              #:object-count #:object-filter
                              #:object-type-field #:object-type-key
                              #:object-type-key-list #:object-type-names
                              #:objects #:operator #:operator-properties-keys
                              #:party-type #:period #:period-unit #:periods
                              #:phone-number-list #:phone-preference-list
                              #:profile #:profile-attributes
                              #:profile-dimension #:profile-id
                              #:profile-id-list #:profile-id-to-be-merged-list
                              #:profile-ids #:profile-list
                              #:profile-object-list #:profile-object-type-list
                              #:profile-object-type-template-list
                              #:profile-query-failures #:profile-query-result
                              #:profile-type #:profile-type-dimension
                              #:profile-type-dimension-type
                              #:profile-type-values #:profiles #:property
                              #:put-integration #:put-profile-object
                              #:put-profile-object-type #:query-result #:range
                              #:range-override #:range-unit #:readiness
                              #:readiness-status #:resource-not-found-exception
                              #:results-summary #:role-arn
                              #:rule-based-matching-request
                              #:rule-based-matching-response
                              #:rule-based-matching-status #:rule-level
                              #:s3connector-operator #:s3exporting-config
                              #:s3exporting-location #:s3source-properties
                              #:salesforce-connector-operator
                              #:salesforce-source-properties
                              #:schedule-expression #:schedule-offset
                              #:scheduled-trigger-properties #:search-profiles
                              #:segment-definition-arn
                              #:segment-definition-item
                              #:segment-definitions-list #:segment-group
                              #:segment-group-list #:segment-group-structure
                              #:segment-snapshot-status
                              #:service-now-connector-operator
                              #:service-now-source-properties
                              #:source-connector-properties
                              #:source-connector-type #:source-fields
                              #:source-flow-config #:source-segment
                              #:source-segment-list #:standard-identifier
                              #:standard-identifier-list #:start
                              #:start-upload-job #:statistic #:status
                              #:status-code #:status-reason #:stop-upload-job
                              #:string-dimension-type #:tag-arn #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:task #:task-properties-map
                              #:task-type #:tasks #:threshold
                              #:throttling-exception #:timezone
                              #:trigger-config #:trigger-properties
                              #:trigger-type #:type #:unit #:untag-resource
                              #:update-address #:update-attributes
                              #:update-calculated-attribute-definition
                              #:update-domain #:update-domain-layout
                              #:update-event-trigger #:update-profile
                              #:upload-job-item #:upload-job-status
                              #:upload-jobs-list #:value #:value-list
                              #:value-range #:value-range-end
                              #:value-range-start #:values
                              #:workflow-attributes #:workflow-list
                              #:workflow-metrics #:workflow-step-item
                              #:workflow-steps-list #:workflow-type
                              #:zendesk-connector-operator
                              #:zendesk-source-properties
                              #:additional-search-keys-list #:attribute-name
                              #:boolean #:display-name #:encryption-key
                              #:expiration-days-integer #:field-name
                              #:found-by-list #:logical-operator #:long
                              #:matches-number #:max-size100 #:max-size1000
                              #:max-size24 #:message #:min-size0 #:min-size1
                              #:name #:optional-boolean #:optional-long
                              #:percentage-integer #:request-value-list
                              #:s3bucket-name #:s3key-name
                              #:s3key-name-customer-output-config
                              #:sensitive-string0to1000
                              #:sensitive-string0to255
                              #:sensitive-string1to1000
                              #:sensitive-string1to2000000
                              #:sensitive-string1to255 #:sensitive-text
                              #:sqs-queue-url #:string0to255 #:string1to1000
                              #:string1to255 #:string-to2048 #:stringified-json
                              #:text #:timestamp #:token #:type-name #:uuid
                              #:customer-profiles-error))
(common-lisp:in-package #:pira/customer-profiles)

(common-lisp:define-condition customer-profiles-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service customer-profiles-20200815 :shape-name
                                   "CustomerProfiles_20200815" :version
                                   "2020-08-15" :title
                                   "Amazon Connect Customer Profiles"
                                   :operations
                                   '(add-profile-key
                                     batch-get-calculated-attribute-for-profile
                                     batch-get-profile
                                     create-calculated-attribute-definition
                                     create-domain create-domain-layout
                                     create-event-stream create-event-trigger
                                     create-integration-workflow create-profile
                                     create-segment-definition
                                     create-segment-estimate
                                     create-segment-snapshot create-upload-job
                                     delete-calculated-attribute-definition
                                     delete-domain delete-domain-layout
                                     delete-event-stream delete-event-trigger
                                     delete-integration delete-profile
                                     delete-profile-key delete-profile-object
                                     delete-profile-object-type
                                     delete-segment-definition delete-workflow
                                     detect-profile-object-type
                                     get-auto-merging-preview
                                     get-calculated-attribute-definition
                                     get-calculated-attribute-for-profile
                                     get-domain get-domain-layout
                                     get-event-stream get-event-trigger
                                     get-identity-resolution-job
                                     get-integration get-matches
                                     get-profile-object-type
                                     get-profile-object-type-template
                                     get-segment-definition
                                     get-segment-estimate
                                     get-segment-membership
                                     get-segment-snapshot get-similar-profiles
                                     get-upload-job get-upload-job-path
                                     get-workflow get-workflow-steps
                                     list-account-integrations
                                     list-calculated-attribute-definitions
                                     list-calculated-attributes-for-profile
                                     list-domain-layouts list-domains
                                     list-event-streams list-event-triggers
                                     list-identity-resolution-jobs
                                     list-integrations
                                     list-object-type-attributes
                                     list-profile-attribute-values
                                     list-profile-objects
                                     list-profile-object-types
                                     list-profile-object-type-templates
                                     list-rule-based-matches
                                     list-segment-definitions
                                     list-tags-for-resource list-upload-jobs
                                     list-workflows merge-profiles
                                     put-integration put-profile-object
                                     put-profile-object-type search-profiles
                                     start-upload-job stop-upload-job
                                     tag-resource untag-resource
                                     update-calculated-attribute-definition
                                     update-domain update-domain-layout
                                     update-event-trigger update-profile)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Customer Profiles")
                                      ("arnNamespace" . "profile")
                                      ("cloudFormationName"
                                       . "CustomerProfiles")
                                      ("cloudTrailEventSource"
                                       . "profile.amazonaws.com")
                                      ("endpointPrefix" . "profile"))
                                     ("aws.auth#sigv4" ("name" . "profile"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class customer-profiles-error))

(smithy/sdk/shapes:define-input add-profile-key-request common-lisp:nil
                                ((profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId")
                                 (key-name :target-type name :required
                                  common-lisp:t :member-name "KeyName")
                                 (values :target-type request-value-list
                                  :required common-lisp:t :member-name
                                  "Values")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "AddProfileKeyRequest"))

(smithy/sdk/shapes:define-output add-profile-key-response common-lisp:nil
                                 ((key-name :target-type name :member-name
                                   "KeyName")
                                  (values :target-type request-value-list
                                   :member-name "Values"))
                                 (:shape-name "AddProfileKeyResponse"))

(smithy/sdk/shapes:define-structure additional-search-key common-lisp:nil
                                    ((key-name :target-type name :required
                                      common-lisp:t :member-name "KeyName")
                                     (values :target-type request-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "AdditionalSearchKey"))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((address1 :target-type string1to255
                                      :member-name "Address1")
                                     (address2 :target-type string1to255
                                      :member-name "Address2")
                                     (address3 :target-type string1to255
                                      :member-name "Address3")
                                     (address4 :target-type string1to255
                                      :member-name "Address4")
                                     (city :target-type string1to255
                                      :member-name "City")
                                     (county :target-type string1to255
                                      :member-name "County")
                                     (state :target-type string1to255
                                      :member-name "State")
                                     (province :target-type string1to255
                                      :member-name "Province")
                                     (country :target-type string1to255
                                      :member-name "Country")
                                     (postal-code :target-type string1to255
                                      :member-name "PostalCode"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-structure address-dimension common-lisp:nil
                                    ((city :target-type profile-dimension
                                      :member-name "City" :json-name "City")
                                     (country :target-type profile-dimension
                                      :member-name "Country" :json-name
                                      "Country")
                                     (county :target-type profile-dimension
                                      :member-name "County" :json-name
                                      "County")
                                     (postal-code :target-type
                                      profile-dimension :member-name
                                      "PostalCode" :json-name "PostalCode")
                                     (province :target-type profile-dimension
                                      :member-name "Province" :json-name
                                      "Province")
                                     (state :target-type profile-dimension
                                      :member-name "State" :json-name "State"))
                                    (:shape-name "AddressDimension"))

(smithy/sdk/shapes:define-list address-list :member string1to255)

(smithy/sdk/shapes:define-structure appflow-integration common-lisp:nil
                                    ((flow-definition :target-type
                                      flow-definition :required common-lisp:t
                                      :member-name "FlowDefinition")
                                     (batches :target-type batches :member-name
                                      "Batches"))
                                    (:shape-name "AppflowIntegration"))

(smithy/sdk/shapes:define-structure appflow-integration-workflow-attributes
                                    common-lisp:nil
                                    ((source-connector-type :target-type
                                      source-connector-type :required
                                      common-lisp:t :member-name
                                      "SourceConnectorType")
                                     (connector-profile-name :target-type
                                      connector-profile-name :required
                                      common-lisp:t :member-name
                                      "ConnectorProfileName")
                                     (role-arn :target-type string1to255
                                      :member-name "RoleArn"))
                                    (:shape-name
                                     "AppflowIntegrationWorkflowAttributes"))

(smithy/sdk/shapes:define-structure appflow-integration-workflow-metrics
                                    common-lisp:nil
                                    ((records-processed :target-type long
                                      :required common-lisp:t :member-name
                                      "RecordsProcessed")
                                     (steps-completed :target-type long
                                      :required common-lisp:t :member-name
                                      "StepsCompleted")
                                     (total-steps :target-type long :required
                                      common-lisp:t :member-name "TotalSteps"))
                                    (:shape-name
                                     "AppflowIntegrationWorkflowMetrics"))

(smithy/sdk/shapes:define-structure appflow-integration-workflow-step
                                    common-lisp:nil
                                    ((flow-name :target-type flow-name
                                      :required common-lisp:t :member-name
                                      "FlowName")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "Status")
                                     (execution-message :target-type
                                      string1to255 :required common-lisp:t
                                      :member-name "ExecutionMessage")
                                     (records-processed :target-type long
                                      :required common-lisp:t :member-name
                                      "RecordsProcessed")
                                     (batch-records-start-time :target-type
                                      string1to255 :required common-lisp:t
                                      :member-name "BatchRecordsStartTime")
                                     (batch-records-end-time :target-type
                                      string1to255 :required common-lisp:t
                                      :member-name "BatchRecordsEndTime")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt"))
                                    (:shape-name
                                     "AppflowIntegrationWorkflowStep"))

(smithy/sdk/shapes:define-structure attribute-details common-lisp:nil
                                    ((attributes :target-type attribute-list
                                      :required common-lisp:t :member-name
                                      "Attributes")
                                     (expression :target-type string1to255
                                      :required common-lisp:t :member-name
                                      "Expression"))
                                    (:shape-name "AttributeDetails"))

(smithy/sdk/shapes:define-structure attribute-dimension common-lisp:nil
                                    ((dimension-type :target-type
                                      attribute-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType" :json-name
                                      "DimensionType")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values"
                                      :json-name "Values"))
                                    (:shape-name "AttributeDimension"))

(smithy/sdk/shapes:define-enum attribute-dimension-type
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE")
  (:contains "CONTAINS")
  (:begins-with "BEGINS_WITH")
  (:ends-with "ENDS_WITH")
  (:before "BEFORE")
  (:after "AFTER")
  (:between "BETWEEN")
  (:not-between "NOT_BETWEEN")
  (:on "ON")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL")
  (:equal "EQUAL"))

(smithy/sdk/shapes:define-structure attribute-item common-lisp:nil
                                    ((name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "AttributeItem"))

(smithy/sdk/shapes:define-list attribute-list :member attribute-item)

(smithy/sdk/shapes:define-map attribute-map :key attribute-name :value
                              filter-attribute-dimension)

(smithy/sdk/shapes:define-enum attribute-matching-model
    common-lisp:nil
  (:one-to-one "ONE_TO_ONE")
  (:many-to-many "MANY_TO_MANY"))

(smithy/sdk/shapes:define-map attribute-source-id-map :key string1to255 :value
                              uuid)

(smithy/sdk/shapes:define-structure attribute-types-selector common-lisp:nil
                                    ((attribute-matching-model :target-type
                                      attribute-matching-model :required
                                      common-lisp:t :member-name
                                      "AttributeMatchingModel")
                                     (address :target-type address-list
                                      :member-name "Address")
                                     (phone-number :target-type
                                      phone-number-list :member-name
                                      "PhoneNumber")
                                     (email-address :target-type email-list
                                      :member-name "EmailAddress"))
                                    (:shape-name "AttributeTypesSelector"))

(smithy/sdk/shapes:define-structure attribute-value-item common-lisp:nil
                                    ((value :target-type string1to255
                                      :member-name "Value"))
                                    (:shape-name "AttributeValueItem"))

(smithy/sdk/shapes:define-list attribute-value-item-list :member
                               attribute-value-item)

(smithy/sdk/shapes:define-map attributes :key string1to255 :value string1to255)

(smithy/sdk/shapes:define-structure auto-merging common-lisp:nil
                                    ((enabled :target-type optional-boolean
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (consolidation :target-type consolidation
                                      :member-name "Consolidation")
                                     (conflict-resolution :target-type
                                      conflict-resolution :member-name
                                      "ConflictResolution")
                                     (min-allowed-confidence-score-for-merging
                                      :target-type double0to1 :member-name
                                      "MinAllowedConfidenceScoreForMerging"))
                                    (:shape-name "AutoMerging"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400)
                                (:base-class customer-profiles-error))

(smithy/sdk/shapes:define-structure batch common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "EndTime"))
                                    (:shape-name "Batch"))

(smithy/sdk/shapes:define-structure
 batch-get-calculated-attribute-for-profile-error common-lisp:nil
 ((code :target-type string1to255 :required common-lisp:t :member-name "Code")
  (message :target-type string1to1000 :required common-lisp:t :member-name
   "Message")
  (profile-id :target-type uuid :required common-lisp:t :member-name
   "ProfileId"))
 (:shape-name "BatchGetCalculatedAttributeForProfileError"))

(smithy/sdk/shapes:define-list
 batch-get-calculated-attribute-for-profile-error-list :member
 batch-get-calculated-attribute-for-profile-error)

(smithy/sdk/shapes:define-list
 batch-get-calculated-attribute-for-profile-id-list :member uuid)

(smithy/sdk/shapes:define-input
 batch-get-calculated-attribute-for-profile-request common-lisp:nil
 ((calculated-attribute-name :target-type type-name :required common-lisp:t
   :member-name "CalculatedAttributeName" :http-label common-lisp:t)
  (domain-name :target-type name :required common-lisp:t :member-name
   "DomainName" :http-label common-lisp:t)
  (profile-ids :target-type batch-get-calculated-attribute-for-profile-id-list
   :required common-lisp:t :member-name "ProfileIds")
  (condition-overrides :target-type condition-overrides :member-name
   "ConditionOverrides"))
 (:shape-name "BatchGetCalculatedAttributeForProfileRequest"))

(smithy/sdk/shapes:define-output
 batch-get-calculated-attribute-for-profile-response common-lisp:nil
 ((errors :target-type batch-get-calculated-attribute-for-profile-error-list
   :member-name "Errors")
  (calculated-attribute-values :target-type calculated-attribute-value-list
   :member-name "CalculatedAttributeValues")
  (condition-overrides :target-type condition-overrides :member-name
   "ConditionOverrides"))
 (:shape-name "BatchGetCalculatedAttributeForProfileResponse"))

(smithy/sdk/shapes:define-structure batch-get-profile-error common-lisp:nil
                                    ((code :target-type string1to255 :required
                                      common-lisp:t :member-name "Code")
                                     (message :target-type string1to1000
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (profile-id :target-type uuid :required
                                      common-lisp:t :member-name "ProfileId"))
                                    (:shape-name "BatchGetProfileError"))

(smithy/sdk/shapes:define-list batch-get-profile-error-list :member
                               batch-get-profile-error)

(smithy/sdk/shapes:define-list batch-get-profile-id-list :member uuid)

(smithy/sdk/shapes:define-input batch-get-profile-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (profile-ids :target-type
                                  batch-get-profile-id-list :required
                                  common-lisp:t :member-name "ProfileIds"))
                                (:shape-name "BatchGetProfileRequest"))

(smithy/sdk/shapes:define-output batch-get-profile-response common-lisp:nil
                                 ((errors :target-type
                                   batch-get-profile-error-list :member-name
                                   "Errors")
                                  (profiles :target-type profile-list
                                   :member-name "Profiles"))
                                 (:shape-name "BatchGetProfileResponse"))

(smithy/sdk/shapes:define-list batches :member batch)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list calculated-attribute-definitions-list :member
                               list-calculated-attribute-definition-item)

(smithy/sdk/shapes:define-structure calculated-attribute-dimension
                                    common-lisp:nil
                                    ((dimension-type :target-type
                                      attribute-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType" :json-name
                                      "DimensionType")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values"
                                      :json-name "Values")
                                     (condition-overrides :target-type
                                      condition-overrides :member-name
                                      "ConditionOverrides" :json-name
                                      "ConditionOverrides"))
                                    (:shape-name
                                     "CalculatedAttributeDimension"))

(smithy/sdk/shapes:define-structure calculated-attribute-value common-lisp:nil
                                    ((calculated-attribute-name :target-type
                                      type-name :member-name
                                      "CalculatedAttributeName")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (is-data-partial :target-type string1to255
                                      :member-name "IsDataPartial")
                                     (profile-id :target-type uuid :member-name
                                      "ProfileId")
                                     (value :target-type string1to255
                                      :member-name "Value")
                                     (last-object-timestamp :target-type
                                      timestamp :member-name
                                      "LastObjectTimestamp"))
                                    (:shape-name "CalculatedAttributeValue"))

(smithy/sdk/shapes:define-list calculated-attribute-value-list :member
                               calculated-attribute-value)

(smithy/sdk/shapes:define-list calculated-attributes-for-profile-list :member
                               list-calculated-attribute-for-profile-item)

(smithy/sdk/shapes:define-map calculated-custom-attributes :key type-name
                              :value calculated-attribute-dimension)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE")
  (:contains "CONTAINS")
  (:begins-with "BEGINS_WITH")
  (:ends-with "ENDS_WITH")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL")
  (:equal "EQUAL")
  (:before "BEFORE")
  (:after "AFTER")
  (:on "ON")
  (:between "BETWEEN")
  (:not-between "NOT_BETWEEN"))

(smithy/sdk/shapes:define-structure condition-overrides common-lisp:nil
                                    ((range :target-type range-override
                                      :member-name "Range"))
                                    (:shape-name "ConditionOverrides"))

(smithy/sdk/shapes:define-structure conditions common-lisp:nil
                                    ((range :target-type range :member-name
                                      "Range")
                                     (object-count :target-type object-count
                                      :member-name "ObjectCount")
                                     (threshold :target-type threshold
                                      :member-name "Threshold"))
                                    (:shape-name "Conditions"))

(smithy/sdk/shapes:define-structure conflict-resolution common-lisp:nil
                                    ((conflict-resolving-model :target-type
                                      conflict-resolving-model :required
                                      common-lisp:t :member-name
                                      "ConflictResolvingModel")
                                     (source-name :target-type string1to255
                                      :member-name "SourceName"))
                                    (:shape-name "ConflictResolution"))

(smithy/sdk/shapes:define-enum conflict-resolving-model
    common-lisp:nil
  (:recency "RECENCY")
  (:source "SOURCE"))

(smithy/sdk/shapes:define-structure connector-operator common-lisp:nil
                                    ((marketo :target-type
                                      marketo-connector-operator :member-name
                                      "Marketo")
                                     (s3 :target-type s3connector-operator
                                      :member-name "S3")
                                     (salesforce :target-type
                                      salesforce-connector-operator
                                      :member-name "Salesforce")
                                     (service-now :target-type
                                      service-now-connector-operator
                                      :member-name "ServiceNow")
                                     (zendesk :target-type
                                      zendesk-connector-operator :member-name
                                      "Zendesk"))
                                    (:shape-name "ConnectorOperator"))

(smithy/sdk/shapes:define-type connector-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure consolidation common-lisp:nil
                                    ((matching-attributes-list :target-type
                                      matching-attributes-list :required
                                      common-lisp:t :member-name
                                      "MatchingAttributesList"))
                                    (:shape-name "Consolidation"))

(smithy/sdk/shapes:define-structure contact-preference common-lisp:nil
                                    ((key-name :target-type name :member-name
                                      "KeyName")
                                     (key-value :target-type string1to255
                                      :member-name "KeyValue")
                                     (profile-id :target-type uuid :member-name
                                      "ProfileId")
                                     (contact-type :target-type contact-type
                                      :member-name "ContactType"))
                                    (:shape-name "ContactPreference"))

(smithy/sdk/shapes:define-enum contact-type
    common-lisp:nil
  (:phone-number "PhoneNumber")
  (:mobile-phone-number "MobilePhoneNumber")
  (:home-phone-number "HomePhoneNumber")
  (:business-phone-number "BusinessPhoneNumber")
  (:email-address "EmailAddress")
  (:personal-email-address "PersonalEmailAddress")
  (:business-email-address "BusinessEmailAddress"))

(smithy/sdk/shapes:define-input create-calculated-attribute-definition-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (calculated-attribute-name :target-type
                                  type-name :required common-lisp:t
                                  :member-name "CalculatedAttributeName"
                                  :http-label common-lisp:t)
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (description :target-type sensitive-text
                                  :member-name "Description")
                                 (attribute-details :target-type
                                  attribute-details :required common-lisp:t
                                  :member-name "AttributeDetails")
                                 (conditions :target-type conditions
                                  :member-name "Conditions")
                                 (filter :target-type filter :member-name
                                  "Filter")
                                 (statistic :target-type statistic :required
                                  common-lisp:t :member-name "Statistic")
                                 (use-historical-data :target-type
                                  optional-boolean :member-name
                                  "UseHistoricalData")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateCalculatedAttributeDefinitionRequest"))

(smithy/sdk/shapes:define-output
 create-calculated-attribute-definition-response common-lisp:nil
 ((calculated-attribute-name :target-type type-name :member-name
   "CalculatedAttributeName")
  (display-name :target-type display-name :member-name "DisplayName")
  (description :target-type sensitive-text :member-name "Description")
  (attribute-details :target-type attribute-details :member-name
   "AttributeDetails")
  (conditions :target-type conditions :member-name "Conditions")
  (filter :target-type filter :member-name "Filter")
  (statistic :target-type statistic :member-name "Statistic")
  (created-at :target-type timestamp :member-name "CreatedAt")
  (last-updated-at :target-type timestamp :member-name "LastUpdatedAt")
  (use-historical-data :target-type optional-boolean :member-name
   "UseHistoricalData")
  (status :target-type readiness-status :member-name "Status")
  (readiness :target-type readiness :member-name "Readiness")
  (tags :target-type tag-map :member-name "Tags"))
 (:shape-name "CreateCalculatedAttributeDefinitionResponse"))

(smithy/sdk/shapes:define-input create-domain-layout-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (layout-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "LayoutDefinitionName" :http-label
                                  common-lisp:t)
                                 (description :target-type sensitive-text
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (display-name :target-type display-name
                                  :required common-lisp:t :member-name
                                  "DisplayName")
                                 (is-default :target-type boolean :member-name
                                  "IsDefault")
                                 (layout-type :target-type layout-type
                                  :required common-lisp:t :member-name
                                  "LayoutType")
                                 (layout :target-type
                                  sensitive-string1to2000000 :required
                                  common-lisp:t :member-name "Layout")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateDomainLayoutRequest"))

(smithy/sdk/shapes:define-output create-domain-layout-response common-lisp:nil
                                 ((layout-definition-name :target-type name
                                   :required common-lisp:t :member-name
                                   "LayoutDefinitionName")
                                  (description :target-type sensitive-text
                                   :required common-lisp:t :member-name
                                   "Description")
                                  (display-name :target-type display-name
                                   :required common-lisp:t :member-name
                                   "DisplayName")
                                  (is-default :target-type boolean :member-name
                                   "IsDefault")
                                  (layout-type :target-type layout-type
                                   :required common-lisp:t :member-name
                                   "LayoutType")
                                  (layout :target-type
                                   sensitive-string1to2000000 :required
                                   common-lisp:t :member-name "Layout")
                                  (version :target-type string1to255 :required
                                   common-lisp:t :member-name "Version")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt"))
                                 (:shape-name "CreateDomainLayoutResponse"))

(smithy/sdk/shapes:define-input create-domain-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (default-expiration-days :target-type
                                  expiration-days-integer :required
                                  common-lisp:t :member-name
                                  "DefaultExpirationDays")
                                 (default-encryption-key :target-type
                                  encryption-key :member-name
                                  "DefaultEncryptionKey")
                                 (dead-letter-queue-url :target-type
                                  sqs-queue-url :member-name
                                  "DeadLetterQueueUrl")
                                 (matching :target-type matching-request
                                  :member-name "Matching")
                                 (rule-based-matching :target-type
                                  rule-based-matching-request :member-name
                                  "RuleBasedMatching")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-output create-domain-response common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (default-expiration-days :target-type
                                   expiration-days-integer :required
                                   common-lisp:t :member-name
                                   "DefaultExpirationDays")
                                  (default-encryption-key :target-type
                                   encryption-key :member-name
                                   "DefaultEncryptionKey")
                                  (dead-letter-queue-url :target-type
                                   sqs-queue-url :member-name
                                   "DeadLetterQueueUrl")
                                  (matching :target-type matching-response
                                   :member-name "Matching")
                                  (rule-based-matching :target-type
                                   rule-based-matching-response :member-name
                                   "RuleBasedMatching")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "CreateDomainResponse"))

(smithy/sdk/shapes:define-input create-event-stream-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (uri :target-type string1to255 :required
                                  common-lisp:t :member-name "Uri")
                                 (event-stream-name :target-type name :required
                                  common-lisp:t :member-name "EventStreamName"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateEventStreamRequest"))

(smithy/sdk/shapes:define-output create-event-stream-response common-lisp:nil
                                 ((event-stream-arn :target-type string1to255
                                   :required common-lisp:t :member-name
                                   "EventStreamArn")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "CreateEventStreamResponse"))

(smithy/sdk/shapes:define-input create-event-trigger-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (event-trigger-name :target-type name
                                  :required common-lisp:t :member-name
                                  "EventTriggerName" :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName")
                                 (description :target-type sensitive-text
                                  :member-name "Description")
                                 (event-trigger-conditions :target-type
                                  event-trigger-conditions :required
                                  common-lisp:t :member-name
                                  "EventTriggerConditions")
                                 (segment-filter :target-type name :member-name
                                  "SegmentFilter")
                                 (event-trigger-limits :target-type
                                  event-trigger-limits :member-name
                                  "EventTriggerLimits")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateEventTriggerRequest"))

(smithy/sdk/shapes:define-output create-event-trigger-response common-lisp:nil
                                 ((event-trigger-name :target-type name
                                   :member-name "EventTriggerName")
                                  (object-type-name :target-type type-name
                                   :member-name "ObjectTypeName")
                                  (description :target-type sensitive-text
                                   :member-name "Description")
                                  (event-trigger-conditions :target-type
                                   event-trigger-conditions :member-name
                                   "EventTriggerConditions")
                                  (segment-filter :target-type name
                                   :member-name "SegmentFilter")
                                  (event-trigger-limits :target-type
                                   event-trigger-limits :member-name
                                   "EventTriggerLimits")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "CreateEventTriggerResponse"))

(smithy/sdk/shapes:define-input create-integration-workflow-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (workflow-type :target-type workflow-type
                                  :required common-lisp:t :member-name
                                  "WorkflowType")
                                 (integration-config :target-type
                                  integration-config :required common-lisp:t
                                  :member-name "IntegrationConfig")
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateIntegrationWorkflowRequest"))

(smithy/sdk/shapes:define-output create-integration-workflow-response
                                 common-lisp:nil
                                 ((workflow-id :target-type uuid :required
                                   common-lisp:t :member-name "WorkflowId")
                                  (message :target-type string1to255 :required
                                   common-lisp:t :member-name "Message"))
                                 (:shape-name
                                  "CreateIntegrationWorkflowResponse"))

(smithy/sdk/shapes:define-input create-profile-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (account-number :target-type
                                  sensitive-string1to255 :member-name
                                  "AccountNumber")
                                 (additional-information :target-type
                                  sensitive-string1to1000 :member-name
                                  "AdditionalInformation")
                                 (party-type :target-type party-type
                                  :member-name "PartyType")
                                 (business-name :target-type
                                  sensitive-string1to255 :member-name
                                  "BusinessName")
                                 (first-name :target-type
                                  sensitive-string1to255 :member-name
                                  "FirstName")
                                 (middle-name :target-type
                                  sensitive-string1to255 :member-name
                                  "MiddleName")
                                 (last-name :target-type sensitive-string1to255
                                  :member-name "LastName")
                                 (birth-date :target-type
                                  sensitive-string1to255 :member-name
                                  "BirthDate")
                                 (gender :target-type gender :member-name
                                  "Gender")
                                 (phone-number :target-type
                                  sensitive-string1to255 :member-name
                                  "PhoneNumber")
                                 (mobile-phone-number :target-type
                                  sensitive-string1to255 :member-name
                                  "MobilePhoneNumber")
                                 (home-phone-number :target-type
                                  sensitive-string1to255 :member-name
                                  "HomePhoneNumber")
                                 (business-phone-number :target-type
                                  sensitive-string1to255 :member-name
                                  "BusinessPhoneNumber")
                                 (email-address :target-type
                                  sensitive-string1to255 :member-name
                                  "EmailAddress")
                                 (personal-email-address :target-type
                                  sensitive-string1to255 :member-name
                                  "PersonalEmailAddress")
                                 (business-email-address :target-type
                                  sensitive-string1to255 :member-name
                                  "BusinessEmailAddress")
                                 (address :target-type address :member-name
                                  "Address")
                                 (shipping-address :target-type address
                                  :member-name "ShippingAddress")
                                 (mailing-address :target-type address
                                  :member-name "MailingAddress")
                                 (billing-address :target-type address
                                  :member-name "BillingAddress")
                                 (attributes :target-type attributes
                                  :member-name "Attributes")
                                 (party-type-string :target-type
                                  sensitive-string1to255 :member-name
                                  "PartyTypeString")
                                 (gender-string :target-type
                                  sensitive-string1to255 :member-name
                                  "GenderString")
                                 (profile-type :target-type profile-type
                                  :member-name "ProfileType")
                                 (engagement-preferences :target-type
                                  engagement-preferences :member-name
                                  "EngagementPreferences"))
                                (:shape-name "CreateProfileRequest"))

(smithy/sdk/shapes:define-output create-profile-response common-lisp:nil
                                 ((profile-id :target-type uuid :required
                                   common-lisp:t :member-name "ProfileId"))
                                 (:shape-name "CreateProfileResponse"))

(smithy/sdk/shapes:define-input create-segment-definition-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "SegmentDefinitionName" :http-label
                                  common-lisp:t)
                                 (display-name :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "DisplayName")
                                 (description :target-type sensitive-text
                                  :member-name "Description")
                                 (segment-groups :target-type segment-group
                                  :required common-lisp:t :member-name
                                  "SegmentGroups")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateSegmentDefinitionRequest"))

(smithy/sdk/shapes:define-output create-segment-definition-response
                                 common-lisp:nil
                                 ((segment-definition-name :target-type name
                                   :required common-lisp:t :member-name
                                   "SegmentDefinitionName" :json-name
                                   "SegmentDefinitionName")
                                  (display-name :target-type string1to255
                                   :member-name "DisplayName" :json-name
                                   "DisplayName")
                                  (description :target-type sensitive-text
                                   :member-name "Description" :json-name
                                   "Description")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt" :json-name
                                   "CreatedAt")
                                  (segment-definition-arn :target-type
                                   segment-definition-arn :member-name
                                   "SegmentDefinitionArn" :json-name
                                   "SegmentDefinitionArn")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "Tags"))
                                 (:shape-name
                                  "CreateSegmentDefinitionResponse"))

(smithy/sdk/shapes:define-input create-segment-estimate-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-query :target-type
                                  segment-group-structure :required
                                  common-lisp:t :member-name "SegmentQuery"))
                                (:shape-name "CreateSegmentEstimateRequest"))

(smithy/sdk/shapes:define-output create-segment-estimate-response
                                 common-lisp:nil
                                 ((domain-name :target-type name :member-name
                                   "DomainName")
                                  (estimate-id :target-type string1to255
                                   :member-name "EstimateId")
                                  (status-code :target-type status-code
                                   :member-name "StatusCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name "CreateSegmentEstimateResponse"))

(smithy/sdk/shapes:define-input create-segment-snapshot-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "SegmentDefinitionName" :http-label
                                  common-lisp:t)
                                 (data-format :target-type data-format
                                  :required common-lisp:t :member-name
                                  "DataFormat")
                                 (encryption-key :target-type encryption-key
                                  :member-name "EncryptionKey")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (destination-uri :target-type string1to255
                                  :member-name "DestinationUri"))
                                (:shape-name "CreateSegmentSnapshotRequest"))

(smithy/sdk/shapes:define-output create-segment-snapshot-response
                                 common-lisp:nil
                                 ((snapshot-id :target-type uuid :required
                                   common-lisp:t :member-name "SnapshotId"))
                                 (:shape-name "CreateSegmentSnapshotResponse"))

(smithy/sdk/shapes:define-input create-upload-job-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (display-name :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "DisplayName")
                                 (fields :target-type field-map :required
                                  common-lisp:t :member-name "Fields")
                                 (unique-key :target-type text :required
                                  common-lisp:t :member-name "UniqueKey")
                                 (data-expiry :target-type
                                  expiration-days-integer :member-name
                                  "DataExpiry"))
                                (:shape-name "CreateUploadJobRequest"))

(smithy/sdk/shapes:define-output create-upload-job-response common-lisp:nil
                                 ((job-id :target-type uuid :required
                                   common-lisp:t :member-name "JobId"
                                   :json-name "JobId"))
                                 (:shape-name "CreateUploadJobResponse"))

(smithy/sdk/shapes:define-map custom-attributes :key type-name :value
                              attribute-dimension)

(smithy/sdk/shapes:define-enum data-format
    common-lisp:nil
  (:csv "CSV")
  (:jsonl "JSONL")
  (:orc "ORC"))

(smithy/sdk/shapes:define-enum data-pull-mode
    common-lisp:nil
  (:incremental "Incremental")
  (:complete "Complete"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure date-dimension common-lisp:nil
                                    ((dimension-type :target-type
                                      date-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType" :json-name
                                      "DimensionType")
                                     (values :target-type date-values :required
                                      common-lisp:t :member-name "Values"
                                      :json-name "Values"))
                                    (:shape-name "DateDimension"))

(smithy/sdk/shapes:define-enum date-dimension-type
    common-lisp:nil
  (:before "BEFORE")
  (:after "AFTER")
  (:between "BETWEEN")
  (:not-between "NOT_BETWEEN")
  (:on "ON"))

(smithy/sdk/shapes:define-list date-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type datetime-type-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-calculated-attribute-definition-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (calculated-attribute-name :target-type
                                  type-name :required common-lisp:t
                                  :member-name "CalculatedAttributeName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCalculatedAttributeDefinitionRequest"))

(smithy/sdk/shapes:define-output
 delete-calculated-attribute-definition-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteCalculatedAttributeDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-domain-layout-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (layout-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "LayoutDefinitionName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDomainLayoutRequest"))

(smithy/sdk/shapes:define-output delete-domain-layout-response common-lisp:nil
                                 ((message :target-type message :required
                                   common-lisp:t :member-name "Message"))
                                 (:shape-name "DeleteDomainLayoutResponse"))

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-output delete-domain-response common-lisp:nil
                                 ((message :target-type message :required
                                   common-lisp:t :member-name "Message"))
                                 (:shape-name "DeleteDomainResponse"))

(smithy/sdk/shapes:define-input delete-event-stream-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (event-stream-name :target-type name :required
                                  common-lisp:t :member-name "EventStreamName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEventStreamRequest"))

(smithy/sdk/shapes:define-output delete-event-stream-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEventStreamResponse"))

(smithy/sdk/shapes:define-input delete-event-trigger-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (event-trigger-name :target-type name
                                  :required common-lisp:t :member-name
                                  "EventTriggerName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteEventTriggerRequest"))

(smithy/sdk/shapes:define-output delete-event-trigger-response common-lisp:nil
                                 ((message :target-type message :required
                                   common-lisp:t :member-name "Message"))
                                 (:shape-name "DeleteEventTriggerResponse"))

(smithy/sdk/shapes:define-input delete-integration-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (uri :target-type string1to255 :required
                                  common-lisp:t :member-name "Uri"))
                                (:shape-name "DeleteIntegrationRequest"))

(smithy/sdk/shapes:define-output delete-integration-response common-lisp:nil
                                 ((message :target-type message :required
                                   common-lisp:t :member-name "Message"))
                                 (:shape-name "DeleteIntegrationResponse"))

(smithy/sdk/shapes:define-input delete-profile-key-request common-lisp:nil
                                ((profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId")
                                 (key-name :target-type name :required
                                  common-lisp:t :member-name "KeyName")
                                 (values :target-type request-value-list
                                  :required common-lisp:t :member-name
                                  "Values")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProfileKeyRequest"))

(smithy/sdk/shapes:define-output delete-profile-key-response common-lisp:nil
                                 ((message :target-type message :member-name
                                   "Message"))
                                 (:shape-name "DeleteProfileKeyResponse"))

(smithy/sdk/shapes:define-input delete-profile-object-request common-lisp:nil
                                ((profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId")
                                 (profile-object-unique-key :target-type
                                  string1to255 :required common-lisp:t
                                  :member-name "ProfileObjectUniqueKey")
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProfileObjectRequest"))

(smithy/sdk/shapes:define-output delete-profile-object-response common-lisp:nil
                                 ((message :target-type message :member-name
                                   "Message"))
                                 (:shape-name "DeleteProfileObjectResponse"))

(smithy/sdk/shapes:define-input delete-profile-object-type-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName" :http-label common-lisp:t))
                                (:shape-name "DeleteProfileObjectTypeRequest"))

(smithy/sdk/shapes:define-output delete-profile-object-type-response
                                 common-lisp:nil
                                 ((message :target-type message :required
                                   common-lisp:t :member-name "Message"))
                                 (:shape-name
                                  "DeleteProfileObjectTypeResponse"))

(smithy/sdk/shapes:define-input delete-profile-request common-lisp:nil
                                ((profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProfileRequest"))

(smithy/sdk/shapes:define-output delete-profile-response common-lisp:nil
                                 ((message :target-type message :member-name
                                   "Message"))
                                 (:shape-name "DeleteProfileResponse"))

(smithy/sdk/shapes:define-input delete-segment-definition-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "SegmentDefinitionName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteSegmentDefinitionRequest"))

(smithy/sdk/shapes:define-output delete-segment-definition-response
                                 common-lisp:nil
                                 ((message :target-type string1to1000
                                   :member-name "Message" :json-name
                                   "Message"))
                                 (:shape-name
                                  "DeleteSegmentDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-workflow-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (workflow-id :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "WorkflowId" :http-label common-lisp:t))
                                (:shape-name "DeleteWorkflowRequest"))

(smithy/sdk/shapes:define-output delete-workflow-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWorkflowResponse"))

(smithy/sdk/shapes:define-type destination-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-summary common-lisp:nil
                                    ((uri :target-type string1to255 :required
                                      common-lisp:t :member-name "Uri")
                                     (status :target-type
                                      event-stream-destination-status :required
                                      common-lisp:t :member-name "Status")
                                     (unhealthy-since :target-type timestamp
                                      :member-name "UnhealthySince"))
                                    (:shape-name "DestinationSummary"))

(smithy/sdk/shapes:define-input detect-profile-object-type-request
                                common-lisp:nil
                                ((objects :target-type objects :required
                                  common-lisp:t :member-name "Objects")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DetectProfileObjectTypeRequest"))

(smithy/sdk/shapes:define-output detect-profile-object-type-response
                                 common-lisp:nil
                                 ((detected-profile-object-types :target-type
                                   detected-profile-object-types :member-name
                                   "DetectedProfileObjectTypes"))
                                 (:shape-name
                                  "DetectProfileObjectTypeResponse"))

(smithy/sdk/shapes:define-structure detected-profile-object-type
                                    common-lisp:nil
                                    ((source-last-updated-timestamp-format
                                      :target-type string1to255 :member-name
                                      "SourceLastUpdatedTimestampFormat")
                                     (fields :target-type field-map
                                      :member-name "Fields")
                                     (keys :target-type key-map :member-name
                                      "Keys"))
                                    (:shape-name "DetectedProfileObjectType"))

(smithy/sdk/shapes:define-list detected-profile-object-types :member
                               detected-profile-object-type)

(smithy/sdk/shapes:define-union dimension common-lisp:nil
                                ((profile-attributes :target-type
                                  profile-attributes :member-name
                                  "ProfileAttributes" :json-name
                                  "ProfileAttributes")
                                 (calculated-attributes :target-type
                                  calculated-custom-attributes :member-name
                                  "CalculatedAttributes" :json-name
                                  "CalculatedAttributes"))
                                (:shape-name "Dimension"))

(smithy/sdk/shapes:define-list dimension-list :member dimension)

(smithy/sdk/shapes:define-list domain-list :member list-domain-item)

(smithy/sdk/shapes:define-structure domain-stats common-lisp:nil
                                    ((profile-count :target-type long
                                      :member-name "ProfileCount")
                                     (metering-profile-count :target-type long
                                      :member-name "MeteringProfileCount")
                                     (object-count :target-type long
                                      :member-name "ObjectCount")
                                     (total-size :target-type long :member-name
                                      "TotalSize"))
                                    (:shape-name "DomainStats"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type double0to1 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list email-list :member string1to255)

(smithy/sdk/shapes:define-list email-preference-list :member contact-preference)

(smithy/sdk/shapes:define-type end smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure engagement-preferences common-lisp:nil
                                    ((phone :target-type phone-preference-list
                                      :member-name "Phone")
                                     (email :target-type email-preference-list
                                      :member-name "Email"))
                                    (:shape-name "EngagementPreferences"))

(smithy/sdk/shapes:define-enum estimate-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure event-stream-destination-details
                                    common-lisp:nil
                                    ((uri :target-type string1to255 :required
                                      common-lisp:t :member-name "Uri")
                                     (status :target-type
                                      event-stream-destination-status :required
                                      common-lisp:t :member-name "Status")
                                     (unhealthy-since :target-type timestamp
                                      :member-name "UnhealthySince")
                                     (message :target-type string1to1000
                                      :member-name "Message"))
                                    (:shape-name
                                     "EventStreamDestinationDetails"))

(smithy/sdk/shapes:define-enum event-stream-destination-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-enum event-stream-state
    common-lisp:nil
  (:running "RUNNING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure event-stream-summary common-lisp:nil
                                    ((domain-name :target-type name :required
                                      common-lisp:t :member-name "DomainName")
                                     (event-stream-name :target-type name
                                      :required common-lisp:t :member-name
                                      "EventStreamName")
                                     (event-stream-arn :target-type
                                      string1to255 :required common-lisp:t
                                      :member-name "EventStreamArn")
                                     (state :target-type event-stream-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (stopped-since :target-type timestamp
                                      :member-name "StoppedSince")
                                     (destination-summary :target-type
                                      destination-summary :member-name
                                      "DestinationSummary")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "EventStreamSummary"))

(smithy/sdk/shapes:define-list event-stream-summary-list :member
                               event-stream-summary)

(smithy/sdk/shapes:define-structure event-trigger-condition common-lisp:nil
                                    ((event-trigger-dimensions :target-type
                                      event-trigger-dimensions :required
                                      common-lisp:t :member-name
                                      "EventTriggerDimensions")
                                     (logical-operator :target-type
                                      event-trigger-logical-operator :required
                                      common-lisp:t :member-name
                                      "LogicalOperator"))
                                    (:shape-name "EventTriggerCondition"))

(smithy/sdk/shapes:define-list event-trigger-conditions :member
                               event-trigger-condition)

(smithy/sdk/shapes:define-structure event-trigger-dimension common-lisp:nil
                                    ((object-attributes :target-type
                                      object-attributes :required common-lisp:t
                                      :member-name "ObjectAttributes"))
                                    (:shape-name "EventTriggerDimension"))

(smithy/sdk/shapes:define-list event-trigger-dimensions :member
                               event-trigger-dimension)

(smithy/sdk/shapes:define-structure event-trigger-limits common-lisp:nil
                                    ((event-expiration :target-type
                                      optional-long :member-name
                                      "EventExpiration")
                                     (periods :target-type periods :member-name
                                      "Periods"))
                                    (:shape-name "EventTriggerLimits"))

(smithy/sdk/shapes:define-enum event-trigger-logical-operator
    common-lisp:nil
  (:any "ANY")
  (:all "ALL")
  (:none "NONE"))

(smithy/sdk/shapes:define-list event-trigger-names :member name)

(smithy/sdk/shapes:define-structure event-trigger-summary-item common-lisp:nil
                                    ((object-type-name :target-type type-name
                                      :member-name "ObjectTypeName")
                                     (event-trigger-name :target-type name
                                      :member-name "EventTriggerName")
                                     (description :target-type text
                                      :member-name "Description")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "EventTriggerSummaryItem"))

(smithy/sdk/shapes:define-list event-trigger-summary-list :member
                               event-trigger-summary-item)

(smithy/sdk/shapes:define-list event-trigger-values :member string1to255)

(smithy/sdk/shapes:define-structure exporting-config common-lisp:nil
                                    ((s3exporting :target-type
                                      s3exporting-config :member-name
                                      "S3Exporting"))
                                    (:shape-name "ExportingConfig"))

(smithy/sdk/shapes:define-structure exporting-location common-lisp:nil
                                    ((s3exporting :target-type
                                      s3exporting-location :member-name
                                      "S3Exporting"))
                                    (:shape-name "ExportingLocation"))

(smithy/sdk/shapes:define-structure extra-length-value-profile-dimension
                                    common-lisp:nil
                                    ((dimension-type :target-type
                                      string-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType" :json-name
                                      "DimensionType")
                                     (values :target-type extra-length-values
                                      :required common-lisp:t :member-name
                                      "Values" :json-name "Values"))
                                    (:shape-name
                                     "ExtraLengthValueProfileDimension"))

(smithy/sdk/shapes:define-list extra-length-values :member string1to1000)

(smithy/sdk/shapes:define-list failures :member profile-query-failures)

(smithy/sdk/shapes:define-enum field-content-type
    common-lisp:nil
  (:string "STRING")
  (:number "NUMBER")
  (:phone-number "PHONE_NUMBER")
  (:email-address "EMAIL_ADDRESS")
  (:name "NAME"))

(smithy/sdk/shapes:define-map field-map :key field-name :value
                              object-type-field)

(smithy/sdk/shapes:define-list field-name-list :member name)

(smithy/sdk/shapes:define-structure field-source-profile-ids common-lisp:nil
                                    ((account-number :target-type uuid
                                      :member-name "AccountNumber")
                                     (additional-information :target-type uuid
                                      :member-name "AdditionalInformation")
                                     (party-type :target-type uuid :member-name
                                      "PartyType")
                                     (business-name :target-type uuid
                                      :member-name "BusinessName")
                                     (first-name :target-type uuid :member-name
                                      "FirstName")
                                     (middle-name :target-type uuid
                                      :member-name "MiddleName")
                                     (last-name :target-type uuid :member-name
                                      "LastName")
                                     (birth-date :target-type uuid :member-name
                                      "BirthDate")
                                     (gender :target-type uuid :member-name
                                      "Gender")
                                     (phone-number :target-type uuid
                                      :member-name "PhoneNumber")
                                     (mobile-phone-number :target-type uuid
                                      :member-name "MobilePhoneNumber")
                                     (home-phone-number :target-type uuid
                                      :member-name "HomePhoneNumber")
                                     (business-phone-number :target-type uuid
                                      :member-name "BusinessPhoneNumber")
                                     (email-address :target-type uuid
                                      :member-name "EmailAddress")
                                     (personal-email-address :target-type uuid
                                      :member-name "PersonalEmailAddress")
                                     (business-email-address :target-type uuid
                                      :member-name "BusinessEmailAddress")
                                     (address :target-type uuid :member-name
                                      "Address")
                                     (shipping-address :target-type uuid
                                      :member-name "ShippingAddress")
                                     (mailing-address :target-type uuid
                                      :member-name "MailingAddress")
                                     (billing-address :target-type uuid
                                      :member-name "BillingAddress")
                                     (attributes :target-type
                                      attribute-source-id-map :member-name
                                      "Attributes")
                                     (profile-type :target-type uuid
                                      :member-name "ProfileType")
                                     (engagement-preferences :target-type uuid
                                      :member-name "EngagementPreferences"))
                                    (:shape-name "FieldSourceProfileIds"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((include :target-type include :required
                                      common-lisp:t :member-name "Include")
                                     (groups :target-type group-list :required
                                      common-lisp:t :member-name "Groups"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-structure filter-attribute-dimension common-lisp:nil
                                    ((dimension-type :target-type
                                      filter-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType")
                                     (values :target-type value-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "FilterAttributeDimension"))

(smithy/sdk/shapes:define-structure filter-dimension common-lisp:nil
                                    ((attributes :target-type attribute-map
                                      :required common-lisp:t :member-name
                                      "Attributes"))
                                    (:shape-name "FilterDimension"))

(smithy/sdk/shapes:define-list filter-dimension-list :member filter-dimension)

(smithy/sdk/shapes:define-enum filter-dimension-type
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE")
  (:contains "CONTAINS")
  (:begins-with "BEGINS_WITH")
  (:ends-with "ENDS_WITH")
  (:before "BEFORE")
  (:after "AFTER")
  (:between "BETWEEN")
  (:not-between "NOT_BETWEEN")
  (:on "ON")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL")
  (:equal "EQUAL"))

(smithy/sdk/shapes:define-structure filter-group common-lisp:nil
                                    ((type :target-type type :required
                                      common-lisp:t :member-name "Type")
                                     (dimensions :target-type
                                      filter-dimension-list :required
                                      common-lisp:t :member-name "Dimensions"))
                                    (:shape-name "FilterGroup"))

(smithy/sdk/shapes:define-structure flow-definition common-lisp:nil
                                    ((description :target-type flow-description
                                      :member-name "Description")
                                     (flow-name :target-type flow-name
                                      :required common-lisp:t :member-name
                                      "FlowName")
                                     (kms-arn :target-type kms-arn :required
                                      common-lisp:t :member-name "KmsArn")
                                     (source-flow-config :target-type
                                      source-flow-config :required
                                      common-lisp:t :member-name
                                      "SourceFlowConfig")
                                     (tasks :target-type tasks :required
                                      common-lisp:t :member-name "Tasks")
                                     (trigger-config :target-type
                                      trigger-config :required common-lisp:t
                                      :member-name "TriggerConfig"))
                                    (:shape-name "FlowDefinition"))

(smithy/sdk/shapes:define-type flow-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure found-by-key-value common-lisp:nil
                                    ((key-name :target-type name :member-name
                                      "KeyName")
                                     (values :target-type request-value-list
                                      :member-name "Values"))
                                    (:shape-name "FoundByKeyValue"))

(smithy/sdk/shapes:define-enum gender
    common-lisp:nil
  (:male "MALE")
  (:female "FEMALE")
  (:unspecified "UNSPECIFIED"))

(smithy/sdk/shapes:define-input get-auto-merging-preview-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (consolidation :target-type consolidation
                                  :required common-lisp:t :member-name
                                  "Consolidation")
                                 (conflict-resolution :target-type
                                  conflict-resolution :required common-lisp:t
                                  :member-name "ConflictResolution")
                                 (min-allowed-confidence-score-for-merging
                                  :target-type double0to1 :member-name
                                  "MinAllowedConfidenceScoreForMerging"))
                                (:shape-name "GetAutoMergingPreviewRequest"))

(smithy/sdk/shapes:define-output get-auto-merging-preview-response
                                 common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (number-of-matches-in-sample :target-type
                                   long :member-name "NumberOfMatchesInSample")
                                  (number-of-profiles-in-sample :target-type
                                   long :member-name
                                   "NumberOfProfilesInSample")
                                  (number-of-profiles-will-be-merged
                                   :target-type long :member-name
                                   "NumberOfProfilesWillBeMerged"))
                                 (:shape-name "GetAutoMergingPreviewResponse"))

(smithy/sdk/shapes:define-input get-calculated-attribute-definition-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (calculated-attribute-name :target-type
                                  type-name :required common-lisp:t
                                  :member-name "CalculatedAttributeName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCalculatedAttributeDefinitionRequest"))

(smithy/sdk/shapes:define-output get-calculated-attribute-definition-response
                                 common-lisp:nil
                                 ((calculated-attribute-name :target-type
                                   type-name :member-name
                                   "CalculatedAttributeName")
                                  (display-name :target-type display-name
                                   :member-name "DisplayName")
                                  (description :target-type sensitive-text
                                   :member-name "Description")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (statistic :target-type statistic
                                   :member-name "Statistic")
                                  (filter :target-type filter :member-name
                                   "Filter")
                                  (conditions :target-type conditions
                                   :member-name "Conditions")
                                  (attribute-details :target-type
                                   attribute-details :member-name
                                   "AttributeDetails")
                                  (use-historical-data :target-type
                                   optional-boolean :member-name
                                   "UseHistoricalData")
                                  (status :target-type readiness-status
                                   :member-name "Status")
                                  (readiness :target-type readiness
                                   :member-name "Readiness")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name
                                  "GetCalculatedAttributeDefinitionResponse"))

(smithy/sdk/shapes:define-input get-calculated-attribute-for-profile-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t)
                                 (calculated-attribute-name :target-type
                                  type-name :required common-lisp:t
                                  :member-name "CalculatedAttributeName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCalculatedAttributeForProfileRequest"))

(smithy/sdk/shapes:define-output get-calculated-attribute-for-profile-response
                                 common-lisp:nil
                                 ((calculated-attribute-name :target-type
                                   type-name :member-name
                                   "CalculatedAttributeName")
                                  (display-name :target-type display-name
                                   :member-name "DisplayName")
                                  (is-data-partial :target-type string1to255
                                   :member-name "IsDataPartial")
                                  (value :target-type string1to255 :member-name
                                   "Value")
                                  (last-object-timestamp :target-type timestamp
                                   :member-name "LastObjectTimestamp"))
                                 (:shape-name
                                  "GetCalculatedAttributeForProfileResponse"))

(smithy/sdk/shapes:define-input get-domain-layout-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (layout-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "LayoutDefinitionName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDomainLayoutRequest"))

(smithy/sdk/shapes:define-output get-domain-layout-response common-lisp:nil
                                 ((layout-definition-name :target-type name
                                   :required common-lisp:t :member-name
                                   "LayoutDefinitionName")
                                  (description :target-type sensitive-text
                                   :required common-lisp:t :member-name
                                   "Description")
                                  (display-name :target-type display-name
                                   :required common-lisp:t :member-name
                                   "DisplayName")
                                  (is-default :target-type boolean :member-name
                                   "IsDefault")
                                  (layout-type :target-type layout-type
                                   :required common-lisp:t :member-name
                                   "LayoutType")
                                  (layout :target-type
                                   sensitive-string1to2000000 :required
                                   common-lisp:t :member-name "Layout")
                                  (version :target-type string1to255 :required
                                   common-lisp:t :member-name "Version")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetDomainLayoutResponse"))

(smithy/sdk/shapes:define-input get-domain-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDomainRequest"))

(smithy/sdk/shapes:define-output get-domain-response common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (default-expiration-days :target-type
                                   expiration-days-integer :member-name
                                   "DefaultExpirationDays")
                                  (default-encryption-key :target-type
                                   encryption-key :member-name
                                   "DefaultEncryptionKey")
                                  (dead-letter-queue-url :target-type
                                   sqs-queue-url :member-name
                                   "DeadLetterQueueUrl")
                                  (stats :target-type domain-stats :member-name
                                   "Stats")
                                  (matching :target-type matching-response
                                   :member-name "Matching")
                                  (rule-based-matching :target-type
                                   rule-based-matching-response :member-name
                                   "RuleBasedMatching")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetDomainResponse"))

(smithy/sdk/shapes:define-input get-event-stream-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (event-stream-name :target-type name :required
                                  common-lisp:t :member-name "EventStreamName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEventStreamRequest"))

(smithy/sdk/shapes:define-output get-event-stream-response common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (event-stream-arn :target-type string1to255
                                   :required common-lisp:t :member-name
                                   "EventStreamArn")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (state :target-type event-stream-state
                                   :required common-lisp:t :member-name
                                   "State")
                                  (stopped-since :target-type timestamp
                                   :member-name "StoppedSince")
                                  (destination-details :target-type
                                   event-stream-destination-details :required
                                   common-lisp:t :member-name
                                   "DestinationDetails")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetEventStreamResponse"))

(smithy/sdk/shapes:define-input get-event-trigger-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (event-trigger-name :target-type name
                                  :required common-lisp:t :member-name
                                  "EventTriggerName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEventTriggerRequest"))

(smithy/sdk/shapes:define-output get-event-trigger-response common-lisp:nil
                                 ((event-trigger-name :target-type name
                                   :member-name "EventTriggerName")
                                  (object-type-name :target-type type-name
                                   :member-name "ObjectTypeName")
                                  (description :target-type sensitive-text
                                   :member-name "Description")
                                  (event-trigger-conditions :target-type
                                   event-trigger-conditions :member-name
                                   "EventTriggerConditions")
                                  (segment-filter :target-type name
                                   :member-name "SegmentFilter")
                                  (event-trigger-limits :target-type
                                   event-trigger-limits :member-name
                                   "EventTriggerLimits")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetEventTriggerResponse"))

(smithy/sdk/shapes:define-input get-identity-resolution-job-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type uuid :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIdentityResolutionJobRequest"))

(smithy/sdk/shapes:define-output get-identity-resolution-job-response
                                 common-lisp:nil
                                 ((domain-name :target-type name :member-name
                                   "DomainName")
                                  (job-id :target-type uuid :member-name
                                   "JobId")
                                  (status :target-type
                                   identity-resolution-job-status :member-name
                                   "Status")
                                  (message :target-type string-to2048
                                   :member-name "Message")
                                  (job-start-time :target-type timestamp
                                   :member-name "JobStartTime")
                                  (job-end-time :target-type timestamp
                                   :member-name "JobEndTime")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (job-expiration-time :target-type timestamp
                                   :member-name "JobExpirationTime")
                                  (auto-merging :target-type auto-merging
                                   :member-name "AutoMerging")
                                  (exporting-location :target-type
                                   exporting-location :member-name
                                   "ExportingLocation")
                                  (job-stats :target-type job-stats
                                   :member-name "JobStats"))
                                 (:shape-name
                                  "GetIdentityResolutionJobResponse"))

(smithy/sdk/shapes:define-input get-integration-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (uri :target-type string1to255 :required
                                  common-lisp:t :member-name "Uri"))
                                (:shape-name "GetIntegrationRequest"))

(smithy/sdk/shapes:define-output get-integration-response common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (uri :target-type string1to255 :required
                                   common-lisp:t :member-name "Uri")
                                  (object-type-name :target-type type-name
                                   :member-name "ObjectTypeName")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (object-type-names :target-type
                                   object-type-names :member-name
                                   "ObjectTypeNames")
                                  (workflow-id :target-type string1to255
                                   :member-name "WorkflowId")
                                  (is-unstructured :target-type
                                   optional-boolean :member-name
                                   "IsUnstructured")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (event-trigger-names :target-type
                                   event-trigger-names :member-name
                                   "EventTriggerNames"))
                                 (:shape-name "GetIntegrationResponse"))

(smithy/sdk/shapes:define-input get-matches-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMatchesRequest"))

(smithy/sdk/shapes:define-output get-matches-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (match-generation-date :target-type timestamp
                                   :member-name "MatchGenerationDate")
                                  (potential-matches :target-type
                                   matches-number :member-name
                                   "PotentialMatches")
                                  (matches :target-type matches-list
                                   :member-name "Matches"))
                                 (:shape-name "GetMatchesResponse"))

(smithy/sdk/shapes:define-input get-profile-object-type-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName" :http-label common-lisp:t))
                                (:shape-name "GetProfileObjectTypeRequest"))

(smithy/sdk/shapes:define-output get-profile-object-type-response
                                 common-lisp:nil
                                 ((object-type-name :target-type type-name
                                   :required common-lisp:t :member-name
                                   "ObjectTypeName")
                                  (description :target-type sensitive-text
                                   :required common-lisp:t :member-name
                                   "Description")
                                  (template-id :target-type name :member-name
                                   "TemplateId")
                                  (expiration-days :target-type
                                   expiration-days-integer :member-name
                                   "ExpirationDays")
                                  (encryption-key :target-type encryption-key
                                   :member-name "EncryptionKey")
                                  (allow-profile-creation :target-type boolean
                                   :member-name "AllowProfileCreation")
                                  (source-last-updated-timestamp-format
                                   :target-type string1to255 :member-name
                                   "SourceLastUpdatedTimestampFormat")
                                  (max-available-profile-object-count
                                   :target-type min-size0 :member-name
                                   "MaxAvailableProfileObjectCount")
                                  (max-profile-object-count :target-type
                                   min-size1 :member-name
                                   "MaxProfileObjectCount")
                                  (fields :target-type field-map :member-name
                                   "Fields")
                                  (keys :target-type key-map :member-name
                                   "Keys")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "GetProfileObjectTypeResponse"))

(smithy/sdk/shapes:define-input get-profile-object-type-template-request
                                common-lisp:nil
                                ((template-id :target-type name :required
                                  common-lisp:t :member-name "TemplateId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetProfileObjectTypeTemplateRequest"))

(smithy/sdk/shapes:define-output get-profile-object-type-template-response
                                 common-lisp:nil
                                 ((template-id :target-type name :member-name
                                   "TemplateId")
                                  (source-name :target-type name :member-name
                                   "SourceName")
                                  (source-object :target-type name :member-name
                                   "SourceObject")
                                  (allow-profile-creation :target-type boolean
                                   :member-name "AllowProfileCreation")
                                  (source-last-updated-timestamp-format
                                   :target-type string1to255 :member-name
                                   "SourceLastUpdatedTimestampFormat")
                                  (fields :target-type field-map :member-name
                                   "Fields")
                                  (keys :target-type key-map :member-name
                                   "Keys"))
                                 (:shape-name
                                  "GetProfileObjectTypeTemplateResponse"))

(smithy/sdk/shapes:define-input get-segment-definition-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "SegmentDefinitionName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSegmentDefinitionRequest"))

(smithy/sdk/shapes:define-output get-segment-definition-response
                                 common-lisp:nil
                                 ((segment-definition-name :target-type name
                                   :member-name "SegmentDefinitionName"
                                   :json-name "SegmentDefinitionName")
                                  (display-name :target-type string1to255
                                   :member-name "DisplayName" :json-name
                                   "DisplayName")
                                  (description :target-type sensitive-text
                                   :member-name "Description" :json-name
                                   "Description")
                                  (segment-groups :target-type segment-group
                                   :member-name "SegmentGroups" :json-name
                                   "SegmentGroups")
                                  (segment-definition-arn :target-type
                                   segment-definition-arn :required
                                   common-lisp:t :member-name
                                   "SegmentDefinitionArn" :json-name
                                   "SegmentDefinitionArn")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt" :json-name
                                   "CreatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags" :json-name "Tags"))
                                 (:shape-name "GetSegmentDefinitionResponse"))

(smithy/sdk/shapes:define-input get-segment-estimate-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (estimate-id :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "EstimateId" :http-label common-lisp:t))
                                (:shape-name "GetSegmentEstimateRequest"))

(smithy/sdk/shapes:define-output get-segment-estimate-response common-lisp:nil
                                 ((domain-name :target-type name :member-name
                                   "DomainName")
                                  (estimate-id :target-type string1to255
                                   :member-name "EstimateId")
                                  (status :target-type estimate-status
                                   :member-name "Status")
                                  (estimate :target-type string1to255
                                   :member-name "Estimate")
                                  (message :target-type string1to255
                                   :member-name "Message")
                                  (status-code :target-type status-code
                                   :member-name "StatusCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name "GetSegmentEstimateResponse"))

(smithy/sdk/shapes:define-type get-segment-membership-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-segment-membership-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "SegmentDefinitionName" :http-label
                                  common-lisp:t)
                                 (profile-ids :target-type profile-ids
                                  :required common-lisp:t :member-name
                                  "ProfileIds" :json-name "ProfileIds"))
                                (:shape-name "GetSegmentMembershipRequest"))

(smithy/sdk/shapes:define-output get-segment-membership-response
                                 common-lisp:nil
                                 ((segment-definition-name :target-type name
                                   :member-name "SegmentDefinitionName"
                                   :json-name "SegmentDefinitionName")
                                  (profiles :target-type profiles :member-name
                                   "Profiles" :json-name "Profiles")
                                  (failures :target-type failures :member-name
                                   "Failures" :json-name "Failures"))
                                 (:shape-name "GetSegmentMembershipResponse"))

(smithy/sdk/shapes:define-type get-segment-membership-status
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-segment-snapshot-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (segment-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "SegmentDefinitionName" :http-label
                                  common-lisp:t)
                                 (snapshot-id :target-type uuid :required
                                  common-lisp:t :member-name "SnapshotId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSegmentSnapshotRequest"))

(smithy/sdk/shapes:define-output get-segment-snapshot-response common-lisp:nil
                                 ((snapshot-id :target-type uuid :required
                                   common-lisp:t :member-name "SnapshotId")
                                  (status :target-type segment-snapshot-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (status-message :target-type string1to1000
                                   :member-name "StatusMessage")
                                  (data-format :target-type data-format
                                   :required common-lisp:t :member-name
                                   "DataFormat")
                                  (encryption-key :target-type encryption-key
                                   :member-name "EncryptionKey")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (destination-uri :target-type string1to255
                                   :member-name "DestinationUri"))
                                 (:shape-name "GetSegmentSnapshotResponse"))

(smithy/sdk/shapes:define-input get-similar-profiles-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (match-type :target-type match-type :required
                                  common-lisp:t :member-name "MatchType")
                                 (search-key :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "SearchKey")
                                 (search-value :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "SearchValue"))
                                (:shape-name "GetSimilarProfilesRequest"))

(smithy/sdk/shapes:define-output get-similar-profiles-response common-lisp:nil
                                 ((profile-ids :target-type profile-id-list
                                   :member-name "ProfileIds")
                                  (match-id :target-type string1to255
                                   :member-name "MatchId")
                                  (match-type :target-type match-type
                                   :member-name "MatchType")
                                  (rule-level :target-type rule-level
                                   :member-name "RuleLevel")
                                  (confidence-score :target-type double
                                   :member-name "ConfidenceScore")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetSimilarProfilesResponse"))

(smithy/sdk/shapes:define-input get-upload-job-path-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type name :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUploadJobPathRequest"))

(smithy/sdk/shapes:define-output get-upload-job-path-response common-lisp:nil
                                 ((url :target-type string-to2048 :required
                                   common-lisp:t :member-name "Url" :json-name
                                   "Url")
                                  (client-token :target-type text :member-name
                                   "ClientToken" :json-name "ClientToken")
                                  (valid-until :target-type timestamp
                                   :member-name "ValidUntil" :json-name
                                   "ValidUntil"))
                                 (:shape-name "GetUploadJobPathResponse"))

(smithy/sdk/shapes:define-input get-upload-job-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type uuid :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUploadJobRequest"))

(smithy/sdk/shapes:define-output get-upload-job-response common-lisp:nil
                                 ((job-id :target-type uuid :member-name
                                   "JobId" :json-name "JobId")
                                  (display-name :target-type string1to255
                                   :member-name "DisplayName" :json-name
                                   "DisplayName")
                                  (status :target-type upload-job-status
                                   :member-name "Status" :json-name "Status")
                                  (status-reason :target-type status-reason
                                   :member-name "StatusReason" :json-name
                                   "StatusReason")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt" :json-name
                                   "CreatedAt")
                                  (completed-at :target-type timestamp
                                   :member-name "CompletedAt" :json-name
                                   "CompletedAt")
                                  (fields :target-type field-map :member-name
                                   "Fields" :json-name "Fields")
                                  (unique-key :target-type text :member-name
                                   "UniqueKey" :json-name "UniqueKey")
                                  (results-summary :target-type results-summary
                                   :member-name "ResultsSummary" :json-name
                                   "ResultsSummary")
                                  (data-expiry :target-type
                                   expiration-days-integer :member-name
                                   "DataExpiry" :json-name "DataExpiry"))
                                 (:shape-name "GetUploadJobResponse"))

(smithy/sdk/shapes:define-input get-workflow-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (workflow-id :target-type uuid :required
                                  common-lisp:t :member-name "WorkflowId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetWorkflowRequest"))

(smithy/sdk/shapes:define-output get-workflow-response common-lisp:nil
                                 ((workflow-id :target-type uuid :member-name
                                   "WorkflowId")
                                  (workflow-type :target-type workflow-type
                                   :member-name "WorkflowType")
                                  (status :target-type status :member-name
                                   "Status")
                                  (error-description :target-type string1to255
                                   :member-name "ErrorDescription")
                                  (start-date :target-type timestamp
                                   :member-name "StartDate")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (attributes :target-type workflow-attributes
                                   :member-name "Attributes")
                                  (metrics :target-type workflow-metrics
                                   :member-name "Metrics"))
                                 (:shape-name "GetWorkflowResponse"))

(smithy/sdk/shapes:define-input get-workflow-steps-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (workflow-id :target-type uuid :required
                                  common-lisp:t :member-name "WorkflowId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "GetWorkflowStepsRequest"))

(smithy/sdk/shapes:define-output get-workflow-steps-response common-lisp:nil
                                 ((workflow-id :target-type uuid :member-name
                                   "WorkflowId")
                                  (workflow-type :target-type workflow-type
                                   :member-name "WorkflowType")
                                  (items :target-type workflow-steps-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "GetWorkflowStepsResponse"))

(smithy/sdk/shapes:define-structure group common-lisp:nil
                                    ((dimensions :target-type dimension-list
                                      :member-name "Dimensions" :json-name
                                      "Dimensions")
                                     (source-segments :target-type
                                      source-segment-list :member-name
                                      "SourceSegments" :json-name
                                      "SourceSegments")
                                     (source-type :target-type include-options
                                      :member-name "SourceType" :json-name
                                      "SourceType")
                                     (type :target-type include-options
                                      :member-name "Type" :json-name "Type"))
                                    (:shape-name "Group"))

(smithy/sdk/shapes:define-list group-list :member filter-group)

(smithy/sdk/shapes:define-structure identity-resolution-job common-lisp:nil
                                    ((domain-name :target-type name
                                      :member-name "DomainName")
                                     (job-id :target-type uuid :member-name
                                      "JobId")
                                     (status :target-type
                                      identity-resolution-job-status
                                      :member-name "Status")
                                     (job-start-time :target-type timestamp
                                      :member-name "JobStartTime")
                                     (job-end-time :target-type timestamp
                                      :member-name "JobEndTime")
                                     (job-stats :target-type job-stats
                                      :member-name "JobStats")
                                     (exporting-location :target-type
                                      exporting-location :member-name
                                      "ExportingLocation")
                                     (message :target-type string-to2048
                                      :member-name "Message"))
                                    (:shape-name "IdentityResolutionJob"))

(smithy/sdk/shapes:define-enum identity-resolution-job-status
    common-lisp:nil
  (:pending "PENDING")
  (:preprocessing "PREPROCESSING")
  (:find-matching "FIND_MATCHING")
  (:merging "MERGING")
  (:completed "COMPLETED")
  (:partial-success "PARTIAL_SUCCESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list identity-resolution-jobs-list :member
                               identity-resolution-job)

(smithy/sdk/shapes:define-enum include
    common-lisp:nil
  (:all "ALL")
  (:any "ANY")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum include-options
    common-lisp:nil
  (:all "ALL")
  (:any "ANY")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure incremental-pull-config common-lisp:nil
                                    ((datetime-type-field-name :target-type
                                      datetime-type-field-name :member-name
                                      "DatetimeTypeFieldName"))
                                    (:shape-name "IncrementalPullConfig"))

(smithy/sdk/shapes:define-structure integration-config common-lisp:nil
                                    ((appflow-integration :target-type
                                      appflow-integration :member-name
                                      "AppflowIntegration"))
                                    (:shape-name "IntegrationConfig"))

(smithy/sdk/shapes:define-list integration-list :member list-integration-item)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class customer-profiles-error))

(smithy/sdk/shapes:define-structure job-schedule common-lisp:nil
                                    ((day-of-the-week :target-type
                                      job-schedule-day-of-the-week :required
                                      common-lisp:t :member-name
                                      "DayOfTheWeek")
                                     (time :target-type job-schedule-time
                                      :required common-lisp:t :member-name
                                      "Time"))
                                    (:shape-name "JobSchedule"))

(smithy/sdk/shapes:define-enum job-schedule-day-of-the-week
    common-lisp:nil
  (:sunday "SUNDAY")
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY"))

(smithy/sdk/shapes:define-type job-schedule-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-stats common-lisp:nil
                                    ((number-of-profiles-reviewed :target-type
                                      long :member-name
                                      "NumberOfProfilesReviewed")
                                     (number-of-matches-found :target-type long
                                      :member-name "NumberOfMatchesFound")
                                     (number-of-merges-done :target-type long
                                      :member-name "NumberOfMergesDone"))
                                    (:shape-name "JobStats"))

(smithy/sdk/shapes:define-map key-map :key name :value object-type-key-list)

(smithy/sdk/shapes:define-type kms-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure layout-item common-lisp:nil
                                    ((layout-definition-name :target-type name
                                      :required common-lisp:t :member-name
                                      "LayoutDefinitionName")
                                     (description :target-type sensitive-text
                                      :required common-lisp:t :member-name
                                      "Description")
                                     (display-name :target-type display-name
                                      :required common-lisp:t :member-name
                                      "DisplayName")
                                     (is-default :target-type boolean
                                      :member-name "IsDefault")
                                     (layout-type :target-type layout-type
                                      :required common-lisp:t :member-name
                                      "LayoutType")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt"))
                                    (:shape-name "LayoutItem"))

(smithy/sdk/shapes:define-list layout-list :member layout-item)

(smithy/sdk/shapes:define-enum layout-type
    common-lisp:nil
  (:profile-explorer "PROFILE_EXPLORER"))

(smithy/sdk/shapes:define-input list-account-integrations-request
                                common-lisp:nil
                                ((uri :target-type string1to255 :required
                                  common-lisp:t :member-name "Uri")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (include-hidden :target-type optional-boolean
                                  :member-name "IncludeHidden" :http-query
                                  "include-hidden"))
                                (:shape-name "ListAccountIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-account-integrations-response
                                 common-lisp:nil
                                 ((items :target-type integration-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListAccountIntegrationsResponse"))

(smithy/sdk/shapes:define-structure list-calculated-attribute-definition-item
                                    common-lisp:nil
                                    ((calculated-attribute-name :target-type
                                      type-name :member-name
                                      "CalculatedAttributeName")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (description :target-type sensitive-text
                                      :member-name "Description")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (use-historical-data :target-type
                                      optional-boolean :member-name
                                      "UseHistoricalData")
                                     (status :target-type readiness-status
                                      :member-name "Status")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name
                                     "ListCalculatedAttributeDefinitionItem"))

(smithy/sdk/shapes:define-input list-calculated-attribute-definitions-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name
                                 "ListCalculatedAttributeDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-calculated-attribute-definitions-response
                                 common-lisp:nil
                                 ((items :target-type
                                   calculated-attribute-definitions-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListCalculatedAttributeDefinitionsResponse"))

(smithy/sdk/shapes:define-structure list-calculated-attribute-for-profile-item
                                    common-lisp:nil
                                    ((calculated-attribute-name :target-type
                                      type-name :member-name
                                      "CalculatedAttributeName")
                                     (display-name :target-type display-name
                                      :member-name "DisplayName")
                                     (is-data-partial :target-type string1to255
                                      :member-name "IsDataPartial")
                                     (value :target-type string1to255
                                      :member-name "Value")
                                     (last-object-timestamp :target-type
                                      timestamp :member-name
                                      "LastObjectTimestamp"))
                                    (:shape-name
                                     "ListCalculatedAttributeForProfileItem"))

(smithy/sdk/shapes:define-input list-calculated-attributes-for-profile-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListCalculatedAttributesForProfileRequest"))

(smithy/sdk/shapes:define-output
 list-calculated-attributes-for-profile-response common-lisp:nil
 ((items :target-type calculated-attributes-for-profile-list :member-name
   "Items")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListCalculatedAttributesForProfileResponse"))

(smithy/sdk/shapes:define-structure list-domain-item common-lisp:nil
                                    ((domain-name :target-type name :required
                                      common-lisp:t :member-name "DomainName")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListDomainItem"))

(smithy/sdk/shapes:define-input list-domain-layouts-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListDomainLayoutsRequest"))

(smithy/sdk/shapes:define-output list-domain-layouts-response common-lisp:nil
                                 ((items :target-type layout-list :member-name
                                   "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDomainLayoutsResponse"))

(smithy/sdk/shapes:define-input list-domains-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListDomainsRequest"))

(smithy/sdk/shapes:define-output list-domains-response common-lisp:nil
                                 ((items :target-type domain-list :member-name
                                   "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDomainsResponse"))

(smithy/sdk/shapes:define-input list-event-streams-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListEventStreamsRequest"))

(smithy/sdk/shapes:define-output list-event-streams-response common-lisp:nil
                                 ((items :target-type event-stream-summary-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListEventStreamsResponse"))

(smithy/sdk/shapes:define-input list-event-triggers-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListEventTriggersRequest"))

(smithy/sdk/shapes:define-output list-event-triggers-response common-lisp:nil
                                 ((items :target-type
                                   event-trigger-summary-list :member-name
                                   "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListEventTriggersResponse"))

(smithy/sdk/shapes:define-input list-identity-resolution-jobs-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name
                                 "ListIdentityResolutionJobsRequest"))

(smithy/sdk/shapes:define-output list-identity-resolution-jobs-response
                                 common-lisp:nil
                                 ((identity-resolution-jobs-list :target-type
                                   identity-resolution-jobs-list :member-name
                                   "IdentityResolutionJobsList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListIdentityResolutionJobsResponse"))

(smithy/sdk/shapes:define-structure list-integration-item common-lisp:nil
                                    ((domain-name :target-type name :required
                                      common-lisp:t :member-name "DomainName")
                                     (uri :target-type string1to255 :required
                                      common-lisp:t :member-name "Uri")
                                     (object-type-name :target-type type-name
                                      :member-name "ObjectTypeName")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (object-type-names :target-type
                                      object-type-names :member-name
                                      "ObjectTypeNames")
                                     (workflow-id :target-type string1to255
                                      :member-name "WorkflowId")
                                     (is-unstructured :target-type
                                      optional-boolean :member-name
                                      "IsUnstructured")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn")
                                     (event-trigger-names :target-type
                                      event-trigger-names :member-name
                                      "EventTriggerNames"))
                                    (:shape-name "ListIntegrationItem"))

(smithy/sdk/shapes:define-input list-integrations-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (include-hidden :target-type optional-boolean
                                  :member-name "IncludeHidden" :http-query
                                  "include-hidden"))
                                (:shape-name "ListIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-integrations-response common-lisp:nil
                                 ((items :target-type integration-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListIntegrationsResponse"))

(smithy/sdk/shapes:define-structure list-object-type-attribute-item
                                    common-lisp:nil
                                    ((attribute-name :target-type name
                                      :required common-lisp:t :member-name
                                      "AttributeName")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt"))
                                    (:shape-name "ListObjectTypeAttributeItem"))

(smithy/sdk/shapes:define-list list-object-type-attributes-list :member
                               list-object-type-attribute-item)

(smithy/sdk/shapes:define-input list-object-type-attributes-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName" :http-label common-lisp:t))
                                (:shape-name "ListObjectTypeAttributesRequest"))

(smithy/sdk/shapes:define-output list-object-type-attributes-response
                                 common-lisp:nil
                                 ((items :target-type
                                   list-object-type-attributes-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListObjectTypeAttributesResponse"))

(smithy/sdk/shapes:define-structure list-profile-object-type-item
                                    common-lisp:nil
                                    ((object-type-name :target-type type-name
                                      :required common-lisp:t :member-name
                                      "ObjectTypeName")
                                     (description :target-type text :required
                                      common-lisp:t :member-name "Description")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (max-profile-object-count :target-type
                                      min-size1 :member-name
                                      "MaxProfileObjectCount")
                                     (max-available-profile-object-count
                                      :target-type min-size0 :member-name
                                      "MaxAvailableProfileObjectCount")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListProfileObjectTypeItem"))

(smithy/sdk/shapes:define-structure list-profile-object-type-template-item
                                    common-lisp:nil
                                    ((template-id :target-type name
                                      :member-name "TemplateId")
                                     (source-name :target-type name
                                      :member-name "SourceName")
                                     (source-object :target-type name
                                      :member-name "SourceObject"))
                                    (:shape-name
                                     "ListProfileObjectTypeTemplateItem"))

(smithy/sdk/shapes:define-input list-profile-object-type-templates-request
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name
                                 "ListProfileObjectTypeTemplatesRequest"))

(smithy/sdk/shapes:define-output list-profile-object-type-templates-response
                                 common-lisp:nil
                                 ((items :target-type
                                   profile-object-type-template-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListProfileObjectTypeTemplatesResponse"))

(smithy/sdk/shapes:define-input list-profile-object-types-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListProfileObjectTypesRequest"))

(smithy/sdk/shapes:define-output list-profile-object-types-response
                                 common-lisp:nil
                                 ((items :target-type profile-object-type-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListProfileObjectTypesResponse"))

(smithy/sdk/shapes:define-structure list-profile-objects-item common-lisp:nil
                                    ((object-type-name :target-type type-name
                                      :member-name "ObjectTypeName")
                                     (profile-object-unique-key :target-type
                                      string1to255 :member-name
                                      "ProfileObjectUniqueKey")
                                     (object :target-type stringified-json
                                      :member-name "Object"))
                                    (:shape-name "ListProfileObjectsItem"))

(smithy/sdk/shapes:define-input list-profile-objects-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName")
                                 (profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId")
                                 (object-filter :target-type object-filter
                                  :member-name "ObjectFilter"))
                                (:shape-name "ListProfileObjectsRequest"))

(smithy/sdk/shapes:define-output list-profile-objects-response common-lisp:nil
                                 ((items :target-type profile-object-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListProfileObjectsResponse"))

(smithy/sdk/shapes:define-input list-rule-based-matches-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "ListRuleBasedMatchesRequest"))

(smithy/sdk/shapes:define-output list-rule-based-matches-response
                                 common-lisp:nil
                                 ((match-ids :target-type match-id-list
                                   :member-name "MatchIds")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListRuleBasedMatchesResponse"))

(smithy/sdk/shapes:define-input list-segment-definitions-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-size500
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListSegmentDefinitionsRequest"))

(smithy/sdk/shapes:define-output list-segment-definitions-response
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken" :json-name "NextToken")
                                  (items :target-type segment-definitions-list
                                   :member-name "Items" :json-name "Items"))
                                 (:shape-name "ListSegmentDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type tag-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-upload-jobs-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-size500
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token"))
                                (:shape-name "ListUploadJobsRequest"))

(smithy/sdk/shapes:define-output list-upload-jobs-response common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken" :json-name "NextToken")
                                  (items :target-type upload-jobs-list
                                   :member-name "Items" :json-name "Items"))
                                 (:shape-name "ListUploadJobsResponse"))

(smithy/sdk/shapes:define-structure list-workflows-item common-lisp:nil
                                    ((workflow-type :target-type workflow-type
                                      :required common-lisp:t :member-name
                                      "WorkflowType")
                                     (workflow-id :target-type string1to255
                                      :required common-lisp:t :member-name
                                      "WorkflowId")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "Status")
                                     (status-description :target-type
                                      string1to255 :required common-lisp:t
                                      :member-name "StatusDescription")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt"))
                                    (:shape-name "ListWorkflowsItem"))

(smithy/sdk/shapes:define-input list-workflows-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (workflow-type :target-type workflow-type
                                  :member-name "WorkflowType")
                                 (status :target-type status :member-name
                                  "Status")
                                 (query-start-date :target-type timestamp
                                  :member-name "QueryStartDate")
                                 (query-end-date :target-type timestamp
                                  :member-name "QueryEndDate")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results"))
                                (:shape-name "ListWorkflowsRequest"))

(smithy/sdk/shapes:define-output list-workflows-response common-lisp:nil
                                 ((items :target-type workflow-list
                                   :member-name "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListWorkflowsResponse"))

(smithy/sdk/shapes:define-enum marketo-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure marketo-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "Object"))
                                    (:shape-name "MarketoSourceProperties"))

(smithy/sdk/shapes:define-list match-id-list :member string1to255)

(smithy/sdk/shapes:define-structure match-item common-lisp:nil
                                    ((match-id :target-type string1to255
                                      :member-name "MatchId")
                                     (profile-ids :target-type profile-id-list
                                      :member-name "ProfileIds")
                                     (confidence-score :target-type double
                                      :member-name "ConfidenceScore"))
                                    (:shape-name "MatchItem"))

(smithy/sdk/shapes:define-enum match-type
    common-lisp:nil
  (:rule-based-matching "RULE_BASED_MATCHING")
  (:ml-based-matching "ML_BASED_MATCHING"))

(smithy/sdk/shapes:define-list matches-list :member match-item)

(smithy/sdk/shapes:define-list matching-attributes :member string1to255)

(smithy/sdk/shapes:define-list matching-attributes-list :member
                               matching-attributes)

(smithy/sdk/shapes:define-structure matching-request common-lisp:nil
                                    ((enabled :target-type optional-boolean
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (job-schedule :target-type job-schedule
                                      :member-name "JobSchedule")
                                     (auto-merging :target-type auto-merging
                                      :member-name "AutoMerging")
                                     (exporting-config :target-type
                                      exporting-config :member-name
                                      "ExportingConfig"))
                                    (:shape-name "MatchingRequest"))

(smithy/sdk/shapes:define-structure matching-response common-lisp:nil
                                    ((enabled :target-type optional-boolean
                                      :member-name "Enabled")
                                     (job-schedule :target-type job-schedule
                                      :member-name "JobSchedule")
                                     (auto-merging :target-type auto-merging
                                      :member-name "AutoMerging")
                                     (exporting-config :target-type
                                      exporting-config :member-name
                                      "ExportingConfig"))
                                    (:shape-name "MatchingResponse"))

(smithy/sdk/shapes:define-structure matching-rule common-lisp:nil
                                    ((rule :target-type
                                      matching-rule-attribute-list :required
                                      common-lisp:t :member-name "Rule"))
                                    (:shape-name "MatchingRule"))

(smithy/sdk/shapes:define-list matching-rule-attribute-list :member
                               string1to255)

(smithy/sdk/shapes:define-list matching-rules :member matching-rule)

(smithy/sdk/shapes:define-type max-allowed-rule-level-for-matching
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-allowed-rule-level-for-merging
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size500 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input merge-profiles-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (main-profile-id :target-type uuid :required
                                  common-lisp:t :member-name "MainProfileId")
                                 (profile-ids-to-be-merged :target-type
                                  profile-id-to-be-merged-list :required
                                  common-lisp:t :member-name
                                  "ProfileIdsToBeMerged")
                                 (field-source-profile-ids :target-type
                                  field-source-profile-ids :member-name
                                  "FieldSourceProfileIds"))
                                (:shape-name "MergeProfilesRequest"))

(smithy/sdk/shapes:define-output merge-profiles-response common-lisp:nil
                                 ((message :target-type message :member-name
                                   "Message"))
                                 (:shape-name "MergeProfilesResponse"))

(smithy/sdk/shapes:define-type object smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure object-attribute common-lisp:nil
                                    ((source :target-type text :member-name
                                      "Source")
                                     (field-name :target-type field-name
                                      :member-name "FieldName")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (values :target-type event-trigger-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ObjectAttribute"))

(smithy/sdk/shapes:define-list object-attributes :member object-attribute)

(smithy/sdk/shapes:define-type object-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure object-filter common-lisp:nil
                                    ((key-name :target-type name :required
                                      common-lisp:t :member-name "KeyName")
                                     (values :target-type request-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ObjectFilter"))

(smithy/sdk/shapes:define-structure object-type-field common-lisp:nil
                                    ((source :target-type text :member-name
                                      "Source")
                                     (target :target-type text :member-name
                                      "Target")
                                     (content-type :target-type
                                      field-content-type :member-name
                                      "ContentType"))
                                    (:shape-name "ObjectTypeField"))

(smithy/sdk/shapes:define-structure object-type-key common-lisp:nil
                                    ((standard-identifiers :target-type
                                      standard-identifier-list :member-name
                                      "StandardIdentifiers")
                                     (field-names :target-type field-name-list
                                      :member-name "FieldNames"))
                                    (:shape-name "ObjectTypeKey"))

(smithy/sdk/shapes:define-list object-type-key-list :member object-type-key)

(smithy/sdk/shapes:define-map object-type-names :key string1to255 :value
                              type-name)

(smithy/sdk/shapes:define-list objects :member stringified-json)

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:equal-to "EQUAL_TO")
  (:greater-than "GREATER_THAN")
  (:less-than "LESS_THAN")
  (:not-equal-to "NOT_EQUAL_TO"))

(smithy/sdk/shapes:define-enum operator-properties-keys
    common-lisp:nil
  (:value "VALUE")
  (:values "VALUES")
  (:data-type "DATA_TYPE")
  (:upper-bound "UPPER_BOUND")
  (:lower-bound "LOWER_BOUND")
  (:source-data-type "SOURCE_DATA_TYPE")
  (:destination-data-type "DESTINATION_DATA_TYPE")
  (:validation-action "VALIDATION_ACTION")
  (:mask-value "MASK_VALUE")
  (:mask-length "MASK_LENGTH")
  (:truncate-length "TRUNCATE_LENGTH")
  (:math-operation-fields-order "MATH_OPERATION_FIELDS_ORDER")
  (:concat-format "CONCAT_FORMAT")
  (:subfield-category-map "SUBFIELD_CATEGORY_MAP"))

(smithy/sdk/shapes:define-enum party-type
    common-lisp:nil
  (:individual "INDIVIDUAL")
  (:business "BUSINESS")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure period common-lisp:nil
                                    ((unit :target-type period-unit :required
                                      common-lisp:t :member-name "Unit")
                                     (value :target-type max-size24 :required
                                      common-lisp:t :member-name "Value")
                                     (max-invocations-per-profile :target-type
                                      max-size1000 :member-name
                                      "MaxInvocationsPerProfile")
                                     (unlimited :target-type boolean
                                      :member-name "Unlimited"))
                                    (:shape-name "Period"))

(smithy/sdk/shapes:define-enum period-unit
    common-lisp:nil
  (:hours "HOURS")
  (:days "DAYS")
  (:weeks "WEEKS")
  (:months "MONTHS"))

(smithy/sdk/shapes:define-list periods :member period)

(smithy/sdk/shapes:define-list phone-number-list :member string1to255)

(smithy/sdk/shapes:define-list phone-preference-list :member contact-preference)

(smithy/sdk/shapes:define-structure profile common-lisp:nil
                                    ((profile-id :target-type uuid :member-name
                                      "ProfileId")
                                     (account-number :target-type
                                      sensitive-string1to255 :member-name
                                      "AccountNumber")
                                     (additional-information :target-type
                                      sensitive-string1to1000 :member-name
                                      "AdditionalInformation")
                                     (party-type :target-type party-type
                                      :member-name "PartyType")
                                     (business-name :target-type
                                      sensitive-string1to255 :member-name
                                      "BusinessName")
                                     (first-name :target-type
                                      sensitive-string1to255 :member-name
                                      "FirstName")
                                     (middle-name :target-type
                                      sensitive-string1to255 :member-name
                                      "MiddleName")
                                     (last-name :target-type
                                      sensitive-string1to255 :member-name
                                      "LastName")
                                     (birth-date :target-type
                                      sensitive-string1to255 :member-name
                                      "BirthDate")
                                     (gender :target-type gender :member-name
                                      "Gender")
                                     (phone-number :target-type
                                      sensitive-string1to255 :member-name
                                      "PhoneNumber")
                                     (mobile-phone-number :target-type
                                      sensitive-string1to255 :member-name
                                      "MobilePhoneNumber")
                                     (home-phone-number :target-type
                                      sensitive-string1to255 :member-name
                                      "HomePhoneNumber")
                                     (business-phone-number :target-type
                                      sensitive-string1to255 :member-name
                                      "BusinessPhoneNumber")
                                     (email-address :target-type
                                      sensitive-string1to255 :member-name
                                      "EmailAddress")
                                     (personal-email-address :target-type
                                      sensitive-string1to255 :member-name
                                      "PersonalEmailAddress")
                                     (business-email-address :target-type
                                      sensitive-string1to255 :member-name
                                      "BusinessEmailAddress")
                                     (address :target-type address :member-name
                                      "Address")
                                     (shipping-address :target-type address
                                      :member-name "ShippingAddress")
                                     (mailing-address :target-type address
                                      :member-name "MailingAddress")
                                     (billing-address :target-type address
                                      :member-name "BillingAddress")
                                     (attributes :target-type attributes
                                      :member-name "Attributes")
                                     (found-by-items :target-type found-by-list
                                      :member-name "FoundByItems")
                                     (party-type-string :target-type
                                      sensitive-string1to255 :member-name
                                      "PartyTypeString")
                                     (gender-string :target-type
                                      sensitive-string1to255 :member-name
                                      "GenderString")
                                     (profile-type :target-type profile-type
                                      :member-name "ProfileType")
                                     (engagement-preferences :target-type
                                      engagement-preferences :member-name
                                      "EngagementPreferences"))
                                    (:shape-name "Profile"))

(smithy/sdk/shapes:define-input profile-attribute-values-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (attribute-name :target-type string1to255
                                  :required common-lisp:t :member-name
                                  "AttributeName" :http-label common-lisp:t))
                                (:shape-name "ProfileAttributeValuesRequest"))

(smithy/sdk/shapes:define-output profile-attribute-values-response
                                 common-lisp:nil
                                 ((domain-name :target-type name :member-name
                                   "DomainName")
                                  (attribute-name :target-type string1to255
                                   :member-name "AttributeName")
                                  (items :target-type attribute-value-item-list
                                   :member-name "Items")
                                  (status-code :target-type status-code
                                   :member-name "StatusCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name "ProfileAttributeValuesResponse"))

(smithy/sdk/shapes:define-structure profile-attributes common-lisp:nil
                                    ((account-number :target-type
                                      profile-dimension :member-name
                                      "AccountNumber" :json-name
                                      "AccountNumber")
                                     (additional-information :target-type
                                      extra-length-value-profile-dimension
                                      :member-name "AdditionalInformation"
                                      :json-name "AdditionalInformation")
                                     (first-name :target-type profile-dimension
                                      :member-name "FirstName" :json-name
                                      "FirstName")
                                     (last-name :target-type profile-dimension
                                      :member-name "LastName" :json-name
                                      "LastName")
                                     (middle-name :target-type
                                      profile-dimension :member-name
                                      "MiddleName" :json-name "MiddleName")
                                     (gender-string :target-type
                                      profile-dimension :member-name
                                      "GenderString" :json-name "GenderString")
                                     (party-type-string :target-type
                                      profile-dimension :member-name
                                      "PartyTypeString" :json-name
                                      "PartyTypeString")
                                     (birth-date :target-type date-dimension
                                      :member-name "BirthDate" :json-name
                                      "BirthDate")
                                     (phone-number :target-type
                                      profile-dimension :member-name
                                      "PhoneNumber" :json-name "PhoneNumber")
                                     (business-name :target-type
                                      profile-dimension :member-name
                                      "BusinessName" :json-name "BusinessName")
                                     (business-phone-number :target-type
                                      profile-dimension :member-name
                                      "BusinessPhoneNumber" :json-name
                                      "BusinessPhoneNumber")
                                     (home-phone-number :target-type
                                      profile-dimension :member-name
                                      "HomePhoneNumber" :json-name
                                      "HomePhoneNumber")
                                     (mobile-phone-number :target-type
                                      profile-dimension :member-name
                                      "MobilePhoneNumber" :json-name
                                      "MobilePhoneNumber")
                                     (email-address :target-type
                                      profile-dimension :member-name
                                      "EmailAddress" :json-name "EmailAddress")
                                     (personal-email-address :target-type
                                      profile-dimension :member-name
                                      "PersonalEmailAddress" :json-name
                                      "PersonalEmailAddress")
                                     (business-email-address :target-type
                                      profile-dimension :member-name
                                      "BusinessEmailAddress" :json-name
                                      "BusinessEmailAddress")
                                     (address :target-type address-dimension
                                      :member-name "Address" :json-name
                                      "Address")
                                     (shipping-address :target-type
                                      address-dimension :member-name
                                      "ShippingAddress" :json-name
                                      "ShippingAddress")
                                     (mailing-address :target-type
                                      address-dimension :member-name
                                      "MailingAddress" :json-name
                                      "MailingAddress")
                                     (billing-address :target-type
                                      address-dimension :member-name
                                      "BillingAddress" :json-name
                                      "BillingAddress")
                                     (attributes :target-type custom-attributes
                                      :member-name "Attributes" :json-name
                                      "Attributes")
                                     (profile-type :target-type
                                      profile-type-dimension :member-name
                                      "ProfileType" :json-name "ProfileType"))
                                    (:shape-name "ProfileAttributes"))

(smithy/sdk/shapes:define-structure profile-dimension common-lisp:nil
                                    ((dimension-type :target-type
                                      string-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType" :json-name
                                      "DimensionType")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "Values"
                                      :json-name "Values"))
                                    (:shape-name "ProfileDimension"))

(smithy/sdk/shapes:define-type profile-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profile-id-list :member uuid)

(smithy/sdk/shapes:define-list profile-id-to-be-merged-list :member uuid)

(smithy/sdk/shapes:define-list profile-ids :member uuid)

(smithy/sdk/shapes:define-list profile-list :member profile)

(smithy/sdk/shapes:define-list profile-object-list :member
                               list-profile-objects-item)

(smithy/sdk/shapes:define-list profile-object-type-list :member
                               list-profile-object-type-item)

(smithy/sdk/shapes:define-list profile-object-type-template-list :member
                               list-profile-object-type-template-item)

(smithy/sdk/shapes:define-structure profile-query-failures common-lisp:nil
                                    ((profile-id :target-type profile-id
                                      :required common-lisp:t :member-name
                                      "ProfileId" :json-name "ProfileId")
                                     (message :target-type
                                      get-segment-membership-message :required
                                      common-lisp:t :member-name "Message"
                                      :json-name "Message")
                                     (status :target-type
                                      get-segment-membership-status
                                      :member-name "Status" :json-name
                                      "Status"))
                                    (:shape-name "ProfileQueryFailures"))

(smithy/sdk/shapes:define-structure profile-query-result common-lisp:nil
                                    ((profile-id :target-type profile-id
                                      :required common-lisp:t :member-name
                                      "ProfileId" :json-name "ProfileId")
                                     (query-result :target-type query-result
                                      :required common-lisp:t :member-name
                                      "QueryResult" :json-name "QueryResult")
                                     (profile :target-type profile :member-name
                                      "Profile" :json-name "Profile"))
                                    (:shape-name "ProfileQueryResult"))

(smithy/sdk/shapes:define-enum profile-type
    common-lisp:nil
  (:account-profile "ACCOUNT_PROFILE")
  (:profile "PROFILE"))

(smithy/sdk/shapes:define-structure profile-type-dimension common-lisp:nil
                                    ((dimension-type :target-type
                                      profile-type-dimension-type :required
                                      common-lisp:t :member-name
                                      "DimensionType" :json-name
                                      "DimensionType")
                                     (values :target-type profile-type-values
                                      :required common-lisp:t :member-name
                                      "Values" :json-name "Values"))
                                    (:shape-name "ProfileTypeDimension"))

(smithy/sdk/shapes:define-enum profile-type-dimension-type
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE"))

(smithy/sdk/shapes:define-list profile-type-values :member profile-type)

(smithy/sdk/shapes:define-list profiles :member profile-query-result)

(smithy/sdk/shapes:define-type property smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-integration-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (uri :target-type string1to255 :member-name
                                  "Uri")
                                 (object-type-name :target-type type-name
                                  :member-name "ObjectTypeName")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (flow-definition :target-type flow-definition
                                  :member-name "FlowDefinition")
                                 (object-type-names :target-type
                                  object-type-names :member-name
                                  "ObjectTypeNames")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn")
                                 (event-trigger-names :target-type
                                  event-trigger-names :member-name
                                  "EventTriggerNames"))
                                (:shape-name "PutIntegrationRequest"))

(smithy/sdk/shapes:define-output put-integration-response common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (uri :target-type string1to255 :required
                                   common-lisp:t :member-name "Uri")
                                  (object-type-name :target-type type-name
                                   :member-name "ObjectTypeName")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (object-type-names :target-type
                                   object-type-names :member-name
                                   "ObjectTypeNames")
                                  (workflow-id :target-type string1to255
                                   :member-name "WorkflowId")
                                  (is-unstructured :target-type
                                   optional-boolean :member-name
                                   "IsUnstructured")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (event-trigger-names :target-type
                                   event-trigger-names :member-name
                                   "EventTriggerNames"))
                                 (:shape-name "PutIntegrationResponse"))

(smithy/sdk/shapes:define-input put-profile-object-request common-lisp:nil
                                ((object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName")
                                 (object :target-type stringified-json
                                  :required common-lisp:t :member-name
                                  "Object")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "PutProfileObjectRequest"))

(smithy/sdk/shapes:define-output put-profile-object-response common-lisp:nil
                                 ((profile-object-unique-key :target-type
                                   string1to255 :member-name
                                   "ProfileObjectUniqueKey"))
                                 (:shape-name "PutProfileObjectResponse"))

(smithy/sdk/shapes:define-input put-profile-object-type-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :required common-lisp:t :member-name
                                  "ObjectTypeName" :http-label common-lisp:t)
                                 (description :target-type sensitive-text
                                  :required common-lisp:t :member-name
                                  "Description")
                                 (template-id :target-type name :member-name
                                  "TemplateId")
                                 (expiration-days :target-type
                                  expiration-days-integer :member-name
                                  "ExpirationDays")
                                 (encryption-key :target-type encryption-key
                                  :member-name "EncryptionKey")
                                 (allow-profile-creation :target-type boolean
                                  :member-name "AllowProfileCreation")
                                 (source-last-updated-timestamp-format
                                  :target-type string1to255 :member-name
                                  "SourceLastUpdatedTimestampFormat")
                                 (max-profile-object-count :target-type
                                  min-size1 :member-name
                                  "MaxProfileObjectCount")
                                 (fields :target-type field-map :member-name
                                  "Fields")
                                 (keys :target-type key-map :member-name
                                  "Keys")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "PutProfileObjectTypeRequest"))

(smithy/sdk/shapes:define-output put-profile-object-type-response
                                 common-lisp:nil
                                 ((object-type-name :target-type type-name
                                   :required common-lisp:t :member-name
                                   "ObjectTypeName")
                                  (description :target-type sensitive-text
                                   :required common-lisp:t :member-name
                                   "Description")
                                  (template-id :target-type name :member-name
                                   "TemplateId")
                                  (expiration-days :target-type
                                   expiration-days-integer :member-name
                                   "ExpirationDays")
                                  (encryption-key :target-type encryption-key
                                   :member-name "EncryptionKey")
                                  (allow-profile-creation :target-type boolean
                                   :member-name "AllowProfileCreation")
                                  (source-last-updated-timestamp-format
                                   :target-type string1to255 :member-name
                                   "SourceLastUpdatedTimestampFormat")
                                  (max-profile-object-count :target-type
                                   min-size1 :member-name
                                   "MaxProfileObjectCount")
                                  (max-available-profile-object-count
                                   :target-type min-size0 :member-name
                                   "MaxAvailableProfileObjectCount")
                                  (fields :target-type field-map :member-name
                                   "Fields")
                                  (keys :target-type key-map :member-name
                                   "Keys")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "PutProfileObjectTypeResponse"))

(smithy/sdk/shapes:define-enum query-result
    common-lisp:nil
  (:present "PRESENT")
  (:absent "ABSENT"))

(smithy/sdk/shapes:define-structure range common-lisp:nil
                                    ((value :target-type value :member-name
                                      "Value")
                                     (unit :target-type unit :member-name
                                      "Unit")
                                     (value-range :target-type value-range
                                      :member-name "ValueRange")
                                     (timestamp-source :target-type
                                      string1to255 :member-name
                                      "TimestampSource")
                                     (timestamp-format :target-type
                                      string1to255 :member-name
                                      "TimestampFormat"))
                                    (:shape-name "Range"))

(smithy/sdk/shapes:define-structure range-override common-lisp:nil
                                    ((start :target-type start :required
                                      common-lisp:t :member-name "Start")
                                     (end :target-type end :member-name "End")
                                     (unit :target-type range-unit :required
                                      common-lisp:t :member-name "Unit"))
                                    (:shape-name "RangeOverride"))

(smithy/sdk/shapes:define-enum range-unit
    common-lisp:nil
  (:days "DAYS"))

(smithy/sdk/shapes:define-structure readiness common-lisp:nil
                                    ((progress-percentage :target-type
                                      percentage-integer :member-name
                                      "ProgressPercentage")
                                     (message :target-type text :member-name
                                      "Message"))
                                    (:shape-name "Readiness"))

(smithy/sdk/shapes:define-enum readiness-status
    common-lisp:nil
  (:preparing "PREPARING")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class customer-profiles-error))

(smithy/sdk/shapes:define-structure results-summary common-lisp:nil
                                    ((updated-records :target-type
                                      optional-long :member-name
                                      "UpdatedRecords" :json-name
                                      "UpdatedRecords")
                                     (created-records :target-type
                                      optional-long :member-name
                                      "CreatedRecords" :json-name
                                      "CreatedRecords")
                                     (failed-records :target-type optional-long
                                      :member-name "FailedRecords" :json-name
                                      "FailedRecords"))
                                    (:shape-name "ResultsSummary"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-based-matching-request common-lisp:nil
                                    ((enabled :target-type optional-boolean
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (matching-rules :target-type
                                      matching-rules :member-name
                                      "MatchingRules")
                                     (max-allowed-rule-level-for-merging
                                      :target-type
                                      max-allowed-rule-level-for-merging
                                      :member-name
                                      "MaxAllowedRuleLevelForMerging")
                                     (max-allowed-rule-level-for-matching
                                      :target-type
                                      max-allowed-rule-level-for-matching
                                      :member-name
                                      "MaxAllowedRuleLevelForMatching")
                                     (attribute-types-selector :target-type
                                      attribute-types-selector :member-name
                                      "AttributeTypesSelector")
                                     (conflict-resolution :target-type
                                      conflict-resolution :member-name
                                      "ConflictResolution")
                                     (exporting-config :target-type
                                      exporting-config :member-name
                                      "ExportingConfig"))
                                    (:shape-name "RuleBasedMatchingRequest"))

(smithy/sdk/shapes:define-structure rule-based-matching-response
                                    common-lisp:nil
                                    ((enabled :target-type optional-boolean
                                      :member-name "Enabled")
                                     (matching-rules :target-type
                                      matching-rules :member-name
                                      "MatchingRules")
                                     (status :target-type
                                      rule-based-matching-status :member-name
                                      "Status")
                                     (max-allowed-rule-level-for-merging
                                      :target-type
                                      max-allowed-rule-level-for-merging
                                      :member-name
                                      "MaxAllowedRuleLevelForMerging")
                                     (max-allowed-rule-level-for-matching
                                      :target-type
                                      max-allowed-rule-level-for-matching
                                      :member-name
                                      "MaxAllowedRuleLevelForMatching")
                                     (attribute-types-selector :target-type
                                      attribute-types-selector :member-name
                                      "AttributeTypesSelector")
                                     (conflict-resolution :target-type
                                      conflict-resolution :member-name
                                      "ConflictResolution")
                                     (exporting-config :target-type
                                      exporting-config :member-name
                                      "ExportingConfig"))
                                    (:shape-name "RuleBasedMatchingResponse"))

(smithy/sdk/shapes:define-enum rule-based-matching-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-type rule-level smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum s3connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure s3exporting-config common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "S3BucketName")
                                     (s3key-name :target-type
                                      s3key-name-customer-output-config
                                      :member-name "S3KeyName"))
                                    (:shape-name "S3ExportingConfig"))

(smithy/sdk/shapes:define-structure s3exporting-location common-lisp:nil
                                    ((s3bucket-name :target-type s3bucket-name
                                      :member-name "S3BucketName")
                                     (s3key-name :target-type s3key-name
                                      :member-name "S3KeyName"))
                                    (:shape-name "S3ExportingLocation"))

(smithy/sdk/shapes:define-structure s3source-properties common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "BucketPrefix"))
                                    (:shape-name "S3SourceProperties"))

(smithy/sdk/shapes:define-enum salesforce-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:contains "CONTAINS")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure salesforce-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "Object")
                                     (enable-dynamic-field-update :target-type
                                      boolean :member-name
                                      "EnableDynamicFieldUpdate")
                                     (include-deleted-records :target-type
                                      boolean :member-name
                                      "IncludeDeletedRecords"))
                                    (:shape-name "SalesforceSourceProperties"))

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schedule-offset smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure scheduled-trigger-properties
                                    common-lisp:nil
                                    ((schedule-expression :target-type
                                      schedule-expression :required
                                      common-lisp:t :member-name
                                      "ScheduleExpression")
                                     (data-pull-mode :target-type
                                      data-pull-mode :member-name
                                      "DataPullMode")
                                     (schedule-start-time :target-type date
                                      :member-name "ScheduleStartTime")
                                     (schedule-end-time :target-type date
                                      :member-name "ScheduleEndTime")
                                     (timezone :target-type timezone
                                      :member-name "Timezone")
                                     (schedule-offset :target-type
                                      schedule-offset :member-name
                                      "ScheduleOffset")
                                     (first-execution-from :target-type date
                                      :member-name "FirstExecutionFrom"))
                                    (:shape-name "ScheduledTriggerProperties"))

(smithy/sdk/shapes:define-input search-profiles-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "next-token")
                                 (max-results :target-type max-size100
                                  :member-name "MaxResults" :http-query
                                  "max-results")
                                 (domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (key-name :target-type name :required
                                  common-lisp:t :member-name "KeyName")
                                 (values :target-type request-value-list
                                  :required common-lisp:t :member-name
                                  "Values")
                                 (additional-search-keys :target-type
                                  additional-search-keys-list :member-name
                                  "AdditionalSearchKeys")
                                 (logical-operator :target-type
                                  logical-operator :member-name
                                  "LogicalOperator"))
                                (:shape-name "SearchProfilesRequest"))

(smithy/sdk/shapes:define-output search-profiles-response common-lisp:nil
                                 ((items :target-type profile-list :member-name
                                   "Items")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "SearchProfilesResponse"))

(smithy/sdk/shapes:define-type segment-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure segment-definition-item common-lisp:nil
                                    ((segment-definition-name :target-type name
                                      :member-name "SegmentDefinitionName"
                                      :json-name "SegmentDefinitionName")
                                     (display-name :target-type string1to255
                                      :member-name "DisplayName" :json-name
                                      "DisplayName")
                                     (description :target-type sensitive-text
                                      :member-name "Description" :json-name
                                      "Description")
                                     (segment-definition-arn :target-type
                                      segment-definition-arn :member-name
                                      "SegmentDefinitionArn" :json-name
                                      "SegmentDefinitionArn")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt" :json-name
                                      "CreatedAt")
                                     (tags :target-type tag-map :member-name
                                      "Tags" :json-name "Tags"))
                                    (:shape-name "SegmentDefinitionItem"))

(smithy/sdk/shapes:define-list segment-definitions-list :member
                               segment-definition-item)

(smithy/sdk/shapes:define-structure segment-group common-lisp:nil
                                    ((groups :target-type segment-group-list
                                      :member-name "Groups" :json-name
                                      "Groups")
                                     (include :target-type include-options
                                      :member-name "Include" :json-name
                                      "Include"))
                                    (:shape-name "SegmentGroup"))

(smithy/sdk/shapes:define-list segment-group-list :member group)

(smithy/sdk/shapes:define-structure segment-group-structure common-lisp:nil
                                    ((groups :target-type segment-group-list
                                      :member-name "Groups")
                                     (include :target-type include-options
                                      :member-name "Include"))
                                    (:shape-name "SegmentGroupStructure"))

(smithy/sdk/shapes:define-enum segment-snapshot-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum service-now-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:contains "CONTAINS")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure service-now-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "Object"))
                                    (:shape-name "ServiceNowSourceProperties"))

(smithy/sdk/shapes:define-structure source-connector-properties common-lisp:nil
                                    ((marketo :target-type
                                      marketo-source-properties :member-name
                                      "Marketo")
                                     (s3 :target-type s3source-properties
                                      :member-name "S3")
                                     (salesforce :target-type
                                      salesforce-source-properties :member-name
                                      "Salesforce")
                                     (service-now :target-type
                                      service-now-source-properties
                                      :member-name "ServiceNow")
                                     (zendesk :target-type
                                      zendesk-source-properties :member-name
                                      "Zendesk"))
                                    (:shape-name "SourceConnectorProperties"))

(smithy/sdk/shapes:define-enum source-connector-type
    common-lisp:nil
  (:salesforce "Salesforce")
  (:marketo "Marketo")
  (:zendesk "Zendesk")
  (:servicenow "Servicenow")
  (:s3 "S3"))

(smithy/sdk/shapes:define-list source-fields :member string-to2048)

(smithy/sdk/shapes:define-structure source-flow-config common-lisp:nil
                                    ((connector-profile-name :target-type
                                      connector-profile-name :member-name
                                      "ConnectorProfileName")
                                     (connector-type :target-type
                                      source-connector-type :required
                                      common-lisp:t :member-name
                                      "ConnectorType")
                                     (incremental-pull-config :target-type
                                      incremental-pull-config :member-name
                                      "IncrementalPullConfig")
                                     (source-connector-properties :target-type
                                      source-connector-properties :required
                                      common-lisp:t :member-name
                                      "SourceConnectorProperties"))
                                    (:shape-name "SourceFlowConfig"))

(smithy/sdk/shapes:define-structure source-segment common-lisp:nil
                                    ((segment-definition-name :target-type name
                                      :member-name "SegmentDefinitionName"
                                      :json-name "SegmentDefinitionName"))
                                    (:shape-name "SourceSegment"))

(smithy/sdk/shapes:define-list source-segment-list :member source-segment)

(smithy/sdk/shapes:define-enum standard-identifier
    common-lisp:nil
  (:profile "PROFILE")
  (:asset "ASSET")
  (:case "CASE")
  (:order "ORDER")
  (:communication-record "COMMUNICATION_RECORD")
  (:air-preference "AIR_PREFERENCE")
  (:hotel-preference "HOTEL_PREFERENCE")
  (:air-booking "AIR_BOOKING")
  (:air-segment "AIR_SEGMENT")
  (:hotel-reservation "HOTEL_RESERVATION")
  (:hotel-stay-revenue "HOTEL_STAY_REVENUE")
  (:loyalty "LOYALTY")
  (:loyalty-transaction "LOYALTY_TRANSACTION")
  (:loyalty-promotion "LOYALTY_PROMOTION")
  (:unique "UNIQUE")
  (:secondary "SECONDARY")
  (:lookup-only "LOOKUP_ONLY")
  (:new-only "NEW_ONLY"))

(smithy/sdk/shapes:define-list standard-identifier-list :member
                               standard-identifier)

(smithy/sdk/shapes:define-type start smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input start-upload-job-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type name :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartUploadJobRequest"))

(smithy/sdk/shapes:define-output start-upload-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartUploadJobResponse"))

(smithy/sdk/shapes:define-enum statistic
    common-lisp:nil
  (:first-occurrence "FIRST_OCCURRENCE")
  (:last-occurrence "LAST_OCCURRENCE")
  (:count "COUNT")
  (:sum "SUM")
  (:minimum "MINIMUM")
  (:maximum "MAXIMUM")
  (:average "AVERAGE")
  (:max-occurrence "MAX_OCCURRENCE"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:split "SPLIT")
  (:retry "RETRY")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum status-reason
    common-lisp:nil
  (:validation-failure "VALIDATION_FAILURE")
  (:internal-failure "INTERNAL_FAILURE"))

(smithy/sdk/shapes:define-input stop-upload-job-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (job-id :target-type name :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopUploadJobRequest"))

(smithy/sdk/shapes:define-output stop-upload-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopUploadJobResponse"))

(smithy/sdk/shapes:define-enum string-dimension-type
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE")
  (:contains "CONTAINS")
  (:begins-with "BEGINS_WITH")
  (:ends-with "ENDS_WITH"))

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

(smithy/sdk/shapes:define-structure task common-lisp:nil
                                    ((connector-operator :target-type
                                      connector-operator :member-name
                                      "ConnectorOperator")
                                     (destination-field :target-type
                                      destination-field :member-name
                                      "DestinationField")
                                     (source-fields :target-type source-fields
                                      :required common-lisp:t :member-name
                                      "SourceFields")
                                     (task-properties :target-type
                                      task-properties-map :member-name
                                      "TaskProperties")
                                     (task-type :target-type task-type
                                      :required common-lisp:t :member-name
                                      "TaskType"))
                                    (:shape-name "Task"))

(smithy/sdk/shapes:define-map task-properties-map :key operator-properties-keys
                              :value property)

(smithy/sdk/shapes:define-enum task-type
    common-lisp:nil
  (:arithmetic "Arithmetic")
  (:filter "Filter")
  (:map "Map")
  (:mask "Mask")
  (:merge "Merge")
  (:truncate "Truncate")
  (:validate "Validate"))

(smithy/sdk/shapes:define-list tasks :member task)

(smithy/sdk/shapes:define-structure threshold common-lisp:nil
                                    ((value :target-type string1to255 :required
                                      common-lisp:t :member-name "Value")
                                     (operator :target-type operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "Threshold"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class customer-profiles-error))

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trigger-config common-lisp:nil
                                    ((trigger-type :target-type trigger-type
                                      :required common-lisp:t :member-name
                                      "TriggerType")
                                     (trigger-properties :target-type
                                      trigger-properties :member-name
                                      "TriggerProperties"))
                                    (:shape-name "TriggerConfig"))

(smithy/sdk/shapes:define-structure trigger-properties common-lisp:nil
                                    ((scheduled :target-type
                                      scheduled-trigger-properties :member-name
                                      "Scheduled"))
                                    (:shape-name "TriggerProperties"))

(smithy/sdk/shapes:define-enum trigger-type
    common-lisp:nil
  (:scheduled "Scheduled")
  (:event "Event")
  (:ondemand "OnDemand"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:all "ALL")
  (:any "ANY")
  (:none "NONE"))

(smithy/sdk/shapes:define-enum unit
    common-lisp:nil
  (:days "DAYS"))

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

(smithy/sdk/shapes:define-structure update-address common-lisp:nil
                                    ((address1 :target-type string0to255
                                      :member-name "Address1")
                                     (address2 :target-type string0to255
                                      :member-name "Address2")
                                     (address3 :target-type string0to255
                                      :member-name "Address3")
                                     (address4 :target-type string0to255
                                      :member-name "Address4")
                                     (city :target-type string0to255
                                      :member-name "City")
                                     (county :target-type string0to255
                                      :member-name "County")
                                     (state :target-type string0to255
                                      :member-name "State")
                                     (province :target-type string0to255
                                      :member-name "Province")
                                     (country :target-type string0to255
                                      :member-name "Country")
                                     (postal-code :target-type string0to255
                                      :member-name "PostalCode"))
                                    (:shape-name "UpdateAddress"))

(smithy/sdk/shapes:define-map update-attributes :key string1to255 :value
                              string0to255)

(smithy/sdk/shapes:define-input update-calculated-attribute-definition-request
                                common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (calculated-attribute-name :target-type
                                  type-name :required common-lisp:t
                                  :member-name "CalculatedAttributeName"
                                  :http-label common-lisp:t)
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (description :target-type sensitive-text
                                  :member-name "Description")
                                 (conditions :target-type conditions
                                  :member-name "Conditions"))
                                (:shape-name
                                 "UpdateCalculatedAttributeDefinitionRequest"))

(smithy/sdk/shapes:define-output
 update-calculated-attribute-definition-response common-lisp:nil
 ((calculated-attribute-name :target-type type-name :member-name
   "CalculatedAttributeName")
  (display-name :target-type display-name :member-name "DisplayName")
  (description :target-type sensitive-text :member-name "Description")
  (created-at :target-type timestamp :member-name "CreatedAt")
  (last-updated-at :target-type timestamp :member-name "LastUpdatedAt")
  (statistic :target-type statistic :member-name "Statistic")
  (conditions :target-type conditions :member-name "Conditions")
  (attribute-details :target-type attribute-details :member-name
   "AttributeDetails")
  (use-historical-data :target-type optional-boolean :member-name
   "UseHistoricalData")
  (status :target-type readiness-status :member-name "Status")
  (readiness :target-type readiness :member-name "Readiness")
  (tags :target-type tag-map :member-name "Tags"))
 (:shape-name "UpdateCalculatedAttributeDefinitionResponse"))

(smithy/sdk/shapes:define-input update-domain-layout-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (layout-definition-name :target-type name
                                  :required common-lisp:t :member-name
                                  "LayoutDefinitionName" :http-label
                                  common-lisp:t)
                                 (description :target-type sensitive-text
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (is-default :target-type boolean :member-name
                                  "IsDefault")
                                 (layout-type :target-type layout-type
                                  :member-name "LayoutType")
                                 (layout :target-type
                                  sensitive-string1to2000000 :member-name
                                  "Layout"))
                                (:shape-name "UpdateDomainLayoutRequest"))

(smithy/sdk/shapes:define-output update-domain-layout-response common-lisp:nil
                                 ((layout-definition-name :target-type name
                                   :member-name "LayoutDefinitionName")
                                  (description :target-type sensitive-text
                                   :member-name "Description")
                                  (display-name :target-type display-name
                                   :member-name "DisplayName")
                                  (is-default :target-type boolean :member-name
                                   "IsDefault")
                                  (layout-type :target-type layout-type
                                   :member-name "LayoutType")
                                  (layout :target-type
                                   sensitive-string1to2000000 :member-name
                                   "Layout")
                                  (version :target-type string1to255
                                   :member-name "Version")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "UpdateDomainLayoutResponse"))

(smithy/sdk/shapes:define-input update-domain-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (default-expiration-days :target-type
                                  expiration-days-integer :member-name
                                  "DefaultExpirationDays")
                                 (default-encryption-key :target-type
                                  encryption-key :member-name
                                  "DefaultEncryptionKey")
                                 (dead-letter-queue-url :target-type
                                  sqs-queue-url :member-name
                                  "DeadLetterQueueUrl")
                                 (matching :target-type matching-request
                                  :member-name "Matching")
                                 (rule-based-matching :target-type
                                  rule-based-matching-request :member-name
                                  "RuleBasedMatching")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "UpdateDomainRequest"))

(smithy/sdk/shapes:define-output update-domain-response common-lisp:nil
                                 ((domain-name :target-type name :required
                                   common-lisp:t :member-name "DomainName")
                                  (default-expiration-days :target-type
                                   expiration-days-integer :member-name
                                   "DefaultExpirationDays")
                                  (default-encryption-key :target-type
                                   encryption-key :member-name
                                   "DefaultEncryptionKey")
                                  (dead-letter-queue-url :target-type
                                   sqs-queue-url :member-name
                                   "DeadLetterQueueUrl")
                                  (matching :target-type matching-response
                                   :member-name "Matching")
                                  (rule-based-matching :target-type
                                   rule-based-matching-response :member-name
                                   "RuleBasedMatching")
                                  (created-at :target-type timestamp :required
                                   common-lisp:t :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "UpdateDomainResponse"))

(smithy/sdk/shapes:define-input update-event-trigger-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (event-trigger-name :target-type name
                                  :required common-lisp:t :member-name
                                  "EventTriggerName" :http-label common-lisp:t)
                                 (object-type-name :target-type type-name
                                  :member-name "ObjectTypeName")
                                 (description :target-type sensitive-text
                                  :member-name "Description")
                                 (event-trigger-conditions :target-type
                                  event-trigger-conditions :member-name
                                  "EventTriggerConditions")
                                 (segment-filter :target-type name :member-name
                                  "SegmentFilter")
                                 (event-trigger-limits :target-type
                                  event-trigger-limits :member-name
                                  "EventTriggerLimits"))
                                (:shape-name "UpdateEventTriggerRequest"))

(smithy/sdk/shapes:define-output update-event-trigger-response common-lisp:nil
                                 ((event-trigger-name :target-type name
                                   :member-name "EventTriggerName")
                                  (object-type-name :target-type type-name
                                   :member-name "ObjectTypeName")
                                  (description :target-type sensitive-text
                                   :member-name "Description")
                                  (event-trigger-conditions :target-type
                                   event-trigger-conditions :member-name
                                   "EventTriggerConditions")
                                  (segment-filter :target-type name
                                   :member-name "SegmentFilter")
                                  (event-trigger-limits :target-type
                                   event-trigger-limits :member-name
                                   "EventTriggerLimits")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "LastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "UpdateEventTriggerResponse"))

(smithy/sdk/shapes:define-input update-profile-request common-lisp:nil
                                ((domain-name :target-type name :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (profile-id :target-type uuid :required
                                  common-lisp:t :member-name "ProfileId")
                                 (additional-information :target-type
                                  sensitive-string0to1000 :member-name
                                  "AdditionalInformation")
                                 (account-number :target-type
                                  sensitive-string0to255 :member-name
                                  "AccountNumber")
                                 (party-type :target-type party-type
                                  :member-name "PartyType")
                                 (business-name :target-type
                                  sensitive-string0to255 :member-name
                                  "BusinessName")
                                 (first-name :target-type
                                  sensitive-string0to255 :member-name
                                  "FirstName")
                                 (middle-name :target-type
                                  sensitive-string0to255 :member-name
                                  "MiddleName")
                                 (last-name :target-type sensitive-string0to255
                                  :member-name "LastName")
                                 (birth-date :target-type
                                  sensitive-string0to255 :member-name
                                  "BirthDate")
                                 (gender :target-type gender :member-name
                                  "Gender")
                                 (phone-number :target-type
                                  sensitive-string0to255 :member-name
                                  "PhoneNumber")
                                 (mobile-phone-number :target-type
                                  sensitive-string0to255 :member-name
                                  "MobilePhoneNumber")
                                 (home-phone-number :target-type
                                  sensitive-string0to255 :member-name
                                  "HomePhoneNumber")
                                 (business-phone-number :target-type
                                  sensitive-string0to255 :member-name
                                  "BusinessPhoneNumber")
                                 (email-address :target-type
                                  sensitive-string0to255 :member-name
                                  "EmailAddress")
                                 (personal-email-address :target-type
                                  sensitive-string0to255 :member-name
                                  "PersonalEmailAddress")
                                 (business-email-address :target-type
                                  sensitive-string0to255 :member-name
                                  "BusinessEmailAddress")
                                 (address :target-type update-address
                                  :member-name "Address")
                                 (shipping-address :target-type update-address
                                  :member-name "ShippingAddress")
                                 (mailing-address :target-type update-address
                                  :member-name "MailingAddress")
                                 (billing-address :target-type update-address
                                  :member-name "BillingAddress")
                                 (attributes :target-type update-attributes
                                  :member-name "Attributes")
                                 (party-type-string :target-type
                                  sensitive-string0to255 :member-name
                                  "PartyTypeString")
                                 (gender-string :target-type
                                  sensitive-string0to255 :member-name
                                  "GenderString")
                                 (profile-type :target-type profile-type
                                  :member-name "ProfileType")
                                 (engagement-preferences :target-type
                                  engagement-preferences :member-name
                                  "EngagementPreferences"))
                                (:shape-name "UpdateProfileRequest"))

(smithy/sdk/shapes:define-output update-profile-response common-lisp:nil
                                 ((profile-id :target-type uuid :required
                                   common-lisp:t :member-name "ProfileId"))
                                 (:shape-name "UpdateProfileResponse"))

(smithy/sdk/shapes:define-structure upload-job-item common-lisp:nil
                                    ((job-id :target-type uuid :member-name
                                      "JobId" :json-name "JobId")
                                     (display-name :target-type string1to255
                                      :member-name "DisplayName" :json-name
                                      "DisplayName")
                                     (status :target-type upload-job-status
                                      :member-name "Status" :json-name
                                      "Status")
                                     (status-reason :target-type status-reason
                                      :member-name "StatusReason" :json-name
                                      "StatusReason")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt" :json-name
                                      "CreatedAt")
                                     (completed-at :target-type timestamp
                                      :member-name "CompletedAt" :json-name
                                      "CompletedAt")
                                     (data-expiry :target-type
                                      expiration-days-integer :member-name
                                      "DataExpiry" :json-name "DataExpiry"))
                                    (:shape-name "UploadJobItem"))

(smithy/sdk/shapes:define-enum upload-job-status
    common-lisp:nil
  (:created "CREATED")
  (:in-progress "IN_PROGRESS")
  (:partially-succeeded "PARTIALLY_SUCCEEDED")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list upload-jobs-list :member upload-job-item)

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list value-list :member string1to255)

(smithy/sdk/shapes:define-structure value-range common-lisp:nil
                                    ((start :target-type value-range-start
                                      :required common-lisp:t :member-name
                                      "Start")
                                     (end :target-type value-range-end
                                      :required common-lisp:t :member-name
                                      "End"))
                                    (:shape-name "ValueRange"))

(smithy/sdk/shapes:define-type value-range-end smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type value-range-start
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list values :member string1to255)

(smithy/sdk/shapes:define-structure workflow-attributes common-lisp:nil
                                    ((appflow-integration :target-type
                                      appflow-integration-workflow-attributes
                                      :member-name "AppflowIntegration"))
                                    (:shape-name "WorkflowAttributes"))

(smithy/sdk/shapes:define-list workflow-list :member list-workflows-item)

(smithy/sdk/shapes:define-structure workflow-metrics common-lisp:nil
                                    ((appflow-integration :target-type
                                      appflow-integration-workflow-metrics
                                      :member-name "AppflowIntegration"))
                                    (:shape-name "WorkflowMetrics"))

(smithy/sdk/shapes:define-structure workflow-step-item common-lisp:nil
                                    ((appflow-integration :target-type
                                      appflow-integration-workflow-step
                                      :member-name "AppflowIntegration"))
                                    (:shape-name "WorkflowStepItem"))

(smithy/sdk/shapes:define-list workflow-steps-list :member workflow-step-item)

(smithy/sdk/shapes:define-enum workflow-type
    common-lisp:nil
  (:appflow-integration "APPFLOW_INTEGRATION"))

(smithy/sdk/shapes:define-enum zendesk-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:greater-than "GREATER_THAN")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure zendesk-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "Object"))
                                    (:shape-name "ZendeskSourceProperties"))

(smithy/sdk/shapes:define-list additional-search-keys-list :member
                               additional-search-key)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encryption-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type expiration-days-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list found-by-list :member found-by-key-value)

(smithy/sdk/shapes:define-enum logical-operator
    common-lisp:nil
  (:and "AND")
  (:or "OR"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type matches-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size1000 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size24 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type min-size0 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-size1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type optional-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type percentage-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list request-value-list :member string1to255)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-name-customer-output-config
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string0to1000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string0to255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string1to1000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string1to2000000
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string1to255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sqs-queue-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string0to255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string1to1000 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string1to255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-to2048 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type stringified-json smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-profile-key :shape-name
                                       "AddProfileKey" :input
                                       add-profile-key-request :output
                                       add-profile-key-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/keys"
                                       :code 200)

(smithy/sdk/operation:define-operation
 batch-get-calculated-attribute-for-profile :shape-name
 "BatchGetCalculatedAttributeForProfile" :input
 batch-get-calculated-attribute-for-profile-request :output
 batch-get-calculated-attribute-for-profile-response :errors
 (access-denied-exception bad-request-exception internal-server-exception
  resource-not-found-exception throttling-exception)
 :method "POST" :uri
 "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}/batch-get-for-profiles"
 :code 200)

(smithy/sdk/operation:define-operation batch-get-profile :shape-name
                                       "BatchGetProfile" :input
                                       batch-get-profile-request :output
                                       batch-get-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/batch-get-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation create-calculated-attribute-definition
                                       :shape-name
                                       "CreateCalculatedAttributeDefinition"
                                       :input
                                       create-calculated-attribute-definition-request
                                       :output
                                       create-calculated-attribute-definition-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}" :code 200)

(smithy/sdk/operation:define-operation create-domain-layout :shape-name
                                       "CreateDomainLayout" :input
                                       create-domain-layout-request :output
                                       create-domain-layout-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-event-stream :shape-name
                                       "CreateEventStream" :input
                                       create-event-stream-request :output
                                       create-event-stream-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/event-streams/{EventStreamName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-event-trigger :shape-name
                                       "CreateEventTrigger" :input
                                       create-event-trigger-request :output
                                       create-event-trigger-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/event-triggers/{EventTriggerName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-integration-workflow :shape-name
                                       "CreateIntegrationWorkflow" :input
                                       create-integration-workflow-request
                                       :output
                                       create-integration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/workflows/integrations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-profile :shape-name
                                       "CreateProfile" :input
                                       create-profile-request :output
                                       create-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles" :code
                                       200)

(smithy/sdk/operation:define-operation create-segment-definition :shape-name
                                       "CreateSegmentDefinition" :input
                                       create-segment-definition-request
                                       :output
                                       create-segment-definition-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-segment-estimate :shape-name
                                       "CreateSegmentEstimate" :input
                                       create-segment-estimate-request :output
                                       create-segment-estimate-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/segment-estimates"
                                       :code 200)

(smithy/sdk/operation:define-operation create-segment-snapshot :shape-name
                                       "CreateSegmentSnapshot" :input
                                       create-segment-snapshot-request :output
                                       create-segment-snapshot-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots"
                                       :code 200)

(smithy/sdk/operation:define-operation create-upload-job :shape-name
                                       "CreateUploadJob" :input
                                       create-upload-job-request :output
                                       create-upload-job-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/upload-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-calculated-attribute-definition
                                       :shape-name
                                       "DeleteCalculatedAttributeDefinition"
                                       :input
                                       delete-calculated-attribute-definition-request
                                       :output
                                       delete-calculated-attribute-definition-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}" :code 200)

(smithy/sdk/operation:define-operation delete-domain-layout :shape-name
                                       "DeleteDomainLayout" :input
                                       delete-domain-layout-request :output
                                       delete-domain-layout-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-event-stream :shape-name
                                       "DeleteEventStream" :input
                                       delete-event-stream-request :output
                                       delete-event-stream-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/event-streams/{EventStreamName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-event-trigger :shape-name
                                       "DeleteEventTrigger" :input
                                       delete-event-trigger-request :output
                                       delete-event-trigger-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/event-triggers/{EventTriggerName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-integration :shape-name
                                       "DeleteIntegration" :input
                                       delete-integration-request :output
                                       delete-integration-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/integrations/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-profile :shape-name
                                       "DeleteProfile" :input
                                       delete-profile-request :output
                                       delete-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-profile-key :shape-name
                                       "DeleteProfileKey" :input
                                       delete-profile-key-request :output
                                       delete-profile-key-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/keys/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-profile-object :shape-name
                                       "DeleteProfileObject" :input
                                       delete-profile-object-request :output
                                       delete-profile-object-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/objects/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-profile-object-type :shape-name
                                       "DeleteProfileObjectType" :input
                                       delete-profile-object-type-request
                                       :output
                                       delete-profile-object-type-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/object-types/{ObjectTypeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-segment-definition :shape-name
                                       "DeleteSegmentDefinition" :input
                                       delete-segment-definition-request
                                       :output
                                       delete-segment-definition-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-workflow :shape-name
                                       "DeleteWorkflow" :input
                                       delete-workflow-request :output
                                       delete-workflow-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/domains/{DomainName}/workflows/{WorkflowId}"
                                       :code 200)

(smithy/sdk/operation:define-operation detect-profile-object-type :shape-name
                                       "DetectProfileObjectType" :input
                                       detect-profile-object-type-request
                                       :output
                                       detect-profile-object-type-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/detect/object-types"
                                       :code 200)

(smithy/sdk/operation:define-operation get-auto-merging-preview :shape-name
                                       "GetAutoMergingPreview" :input
                                       get-auto-merging-preview-request :output
                                       get-auto-merging-preview-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/identity-resolution-jobs/auto-merging-preview"
                                       :code 200)

(smithy/sdk/operation:define-operation get-calculated-attribute-definition
                                       :shape-name
                                       "GetCalculatedAttributeDefinition"
                                       :input
                                       get-calculated-attribute-definition-request
                                       :output
                                       get-calculated-attribute-definition-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-calculated-attribute-for-profile
                                       :shape-name
                                       "GetCalculatedAttributeForProfile"
                                       :input
                                       get-calculated-attribute-for-profile-request
                                       :output
                                       get-calculated-attribute-for-profile-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes/{CalculatedAttributeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain :shape-name "GetDomain"
                                       :input get-domain-request :output
                                       get-domain-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}" :code 200)

(smithy/sdk/operation:define-operation get-domain-layout :shape-name
                                       "GetDomainLayout" :input
                                       get-domain-layout-request :output
                                       get-domain-layout-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event-stream :shape-name
                                       "GetEventStream" :input
                                       get-event-stream-request :output
                                       get-event-stream-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/event-streams/{EventStreamName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event-trigger :shape-name
                                       "GetEventTrigger" :input
                                       get-event-trigger-request :output
                                       get-event-trigger-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/event-triggers/{EventTriggerName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-identity-resolution-job :shape-name
                                       "GetIdentityResolutionJob" :input
                                       get-identity-resolution-job-request
                                       :output
                                       get-identity-resolution-job-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/identity-resolution-jobs/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integration :shape-name
                                       "GetIntegration" :input
                                       get-integration-request :output
                                       get-integration-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/integrations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-matches :shape-name "GetMatches"
                                       :input get-matches-request :output
                                       get-matches-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/matches" :code
                                       200)

(smithy/sdk/operation:define-operation get-profile-object-type :shape-name
                                       "GetProfileObjectType" :input
                                       get-profile-object-type-request :output
                                       get-profile-object-type-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/object-types/{ObjectTypeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-profile-object-type-template
                                       :shape-name
                                       "GetProfileObjectTypeTemplate" :input
                                       get-profile-object-type-template-request
                                       :output
                                       get-profile-object-type-template-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/templates/{TemplateId}" :code 200)

(smithy/sdk/operation:define-operation get-segment-definition :shape-name
                                       "GetSegmentDefinition" :input
                                       get-segment-definition-request :output
                                       get-segment-definition-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-estimate :shape-name
                                       "GetSegmentEstimate" :input
                                       get-segment-estimate-request :output
                                       get-segment-estimate-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/segment-estimates/{EstimateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-membership :shape-name
                                       "GetSegmentMembership" :input
                                       get-segment-membership-request :output
                                       get-segment-membership-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/segments/{SegmentDefinitionName}/membership"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-snapshot :shape-name
                                       "GetSegmentSnapshot" :input
                                       get-segment-snapshot-request :output
                                       get-segment-snapshot-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots/{SnapshotId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-similar-profiles :shape-name
                                       "GetSimilarProfiles" :input
                                       get-similar-profiles-request :output
                                       get-similar-profiles-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/matches" :code
                                       200)

(smithy/sdk/operation:define-operation get-upload-job :shape-name
                                       "GetUploadJob" :input
                                       get-upload-job-request :output
                                       get-upload-job-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/upload-jobs/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-upload-job-path :shape-name
                                       "GetUploadJobPath" :input
                                       get-upload-job-path-request :output
                                       get-upload-job-path-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/upload-jobs/{JobId}/path"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workflow :shape-name "GetWorkflow"
                                       :input get-workflow-request :output
                                       get-workflow-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/workflows/{WorkflowId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workflow-steps :shape-name
                                       "GetWorkflowSteps" :input
                                       get-workflow-steps-request :output
                                       get-workflow-steps-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/workflows/{WorkflowId}/steps"
                                       :code 200)

(smithy/sdk/operation:define-operation list-account-integrations :shape-name
                                       "ListAccountIntegrations" :input
                                       list-account-integrations-request
                                       :output
                                       list-account-integrations-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/integrations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-calculated-attribute-definitions
                                       :shape-name
                                       "ListCalculatedAttributeDefinitions"
                                       :input
                                       list-calculated-attribute-definitions-request
                                       :output
                                       list-calculated-attribute-definitions-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/calculated-attributes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-calculated-attributes-for-profile
                                       :shape-name
                                       "ListCalculatedAttributesForProfile"
                                       :input
                                       list-calculated-attributes-for-profile-request
                                       :output
                                       list-calculated-attributes-for-profile-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-layouts :shape-name
                                       "ListDomainLayouts" :input
                                       list-domain-layouts-request :output
                                       list-domain-layouts-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/layouts" :code
                                       200)

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-request :output
                                       list-domains-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/domains" :code 200)

(smithy/sdk/operation:define-operation list-event-streams :shape-name
                                       "ListEventStreams" :input
                                       list-event-streams-request :output
                                       list-event-streams-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/event-streams"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-triggers :shape-name
                                       "ListEventTriggers" :input
                                       list-event-triggers-request :output
                                       list-event-triggers-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/event-triggers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-identity-resolution-jobs
                                       :shape-name "ListIdentityResolutionJobs"
                                       :input
                                       list-identity-resolution-jobs-request
                                       :output
                                       list-identity-resolution-jobs-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/identity-resolution-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-integrations :shape-name
                                       "ListIntegrations" :input
                                       list-integrations-request :output
                                       list-integrations-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/integrations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-object-type-attributes :shape-name
                                       "ListObjectTypeAttributes" :input
                                       list-object-type-attributes-request
                                       :output
                                       list-object-type-attributes-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profile-attribute-values
                                       :shape-name "ListProfileAttributeValues"
                                       :input profile-attribute-values-request
                                       :output
                                       profile-attribute-values-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/profile-attributes/{AttributeName}/values"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profile-object-type-templates
                                       :shape-name
                                       "ListProfileObjectTypeTemplates" :input
                                       list-profile-object-type-templates-request
                                       :output
                                       list-profile-object-type-templates-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/templates" :code
                                       200)

(smithy/sdk/operation:define-operation list-profile-object-types :shape-name
                                       "ListProfileObjectTypes" :input
                                       list-profile-object-types-request
                                       :output
                                       list-profile-object-types-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/object-types"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profile-objects :shape-name
                                       "ListProfileObjects" :input
                                       list-profile-objects-request :output
                                       list-profile-objects-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/objects"
                                       :code 200)

(smithy/sdk/operation:define-operation list-rule-based-matches :shape-name
                                       "ListRuleBasedMatches" :input
                                       list-rule-based-matches-request :output
                                       list-rule-based-matches-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/profiles/ruleBasedMatches"
                                       :code 200)

(smithy/sdk/operation:define-operation list-segment-definitions :shape-name
                                       "ListSegmentDefinitions" :input
                                       list-segment-definitions-request :output
                                       list-segment-definitions-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/segment-definitions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-upload-jobs :shape-name
                                       "ListUploadJobs" :input
                                       list-upload-jobs-request :output
                                       list-upload-jobs-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/domains/{DomainName}/upload-jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-workflows :shape-name
                                       "ListWorkflows" :input
                                       list-workflows-request :output
                                       list-workflows-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/workflows" :code
                                       200)

(smithy/sdk/operation:define-operation merge-profiles :shape-name
                                       "MergeProfiles" :input
                                       merge-profiles-request :output
                                       merge-profiles-response :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/objects/merge"
                                       :code 200)

(smithy/sdk/operation:define-operation put-integration :shape-name
                                       "PutIntegration" :input
                                       put-integration-request :output
                                       put-integration-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/integrations"
                                       :code 200)

(smithy/sdk/operation:define-operation put-profile-object :shape-name
                                       "PutProfileObject" :input
                                       put-profile-object-request :output
                                       put-profile-object-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/profiles/objects"
                                       :code 200)

(smithy/sdk/operation:define-operation put-profile-object-type :shape-name
                                       "PutProfileObjectType" :input
                                       put-profile-object-type-request :output
                                       put-profile-object-type-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/object-types/{ObjectTypeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation search-profiles :shape-name
                                       "SearchProfiles" :input
                                       search-profiles-request :output
                                       search-profiles-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/domains/{DomainName}/profiles/search"
                                       :code 200)

(smithy/sdk/operation:define-operation start-upload-job :shape-name
                                       "StartUploadJob" :input
                                       start-upload-job-request :output
                                       start-upload-job-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/upload-jobs/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-upload-job :shape-name
                                       "StopUploadJob" :input
                                       stop-upload-job-request :output
                                       stop-upload-job-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/upload-jobs/{JobId}/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-calculated-attribute-definition
                                       :shape-name
                                       "UpdateCalculatedAttributeDefinition"
                                       :input
                                       update-calculated-attribute-definition-request
                                       :output
                                       update-calculated-attribute-definition-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain :shape-name "UpdateDomain"
                                       :input update-domain-request :output
                                       update-domain-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}" :code 200)

(smithy/sdk/operation:define-operation update-domain-layout :shape-name
                                       "UpdateDomainLayout" :input
                                       update-domain-layout-request :output
                                       update-domain-layout-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/layouts/{LayoutDefinitionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-event-trigger :shape-name
                                       "UpdateEventTrigger" :input
                                       update-event-trigger-request :output
                                       update-event-trigger-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/event-triggers/{EventTriggerName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-profile :shape-name
                                       "UpdateProfile" :input
                                       update-profile-request :output
                                       update-profile-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/domains/{DomainName}/profiles" :code
                                       200)
