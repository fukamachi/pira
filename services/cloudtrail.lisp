(uiop/package:define-package #:pira/cloudtrail (:use)
                             (:export #:account-id #:add-tags
                              #:advanced-event-selector
                              #:advanced-event-selectors
                              #:advanced-field-selector
                              #:advanced-field-selectors #:billing-mode
                              #:boolean #:byte-buffer #:cancel-query #:channel
                              #:channel-arn #:channel-name #:channels
                              #:cloud-trail-20131101 #:context-key-selector
                              #:context-key-selectors #:create-channel
                              #:create-dashboard #:create-event-data-store
                              #:create-trail #:dashboard-arn #:dashboard-detail
                              #:dashboard-name #:dashboard-status
                              #:dashboard-type #:dashboards #:data-resource
                              #:data-resource-values #:data-resources #:date
                              #:delete-channel #:delete-dashboard
                              #:delete-event-data-store
                              #:delete-resource-policy #:delete-trail
                              #:delivery-s3uri #:delivery-status
                              #:deregister-organization-delegated-admin
                              #:describe-query #:describe-trails #:destination
                              #:destination-type #:destinations
                              #:disable-federation #:double #:enable-federation
                              #:error-code #:error-message #:event
                              #:event-category #:event-data-store
                              #:event-data-store-arn
                              #:event-data-store-kms-key-id
                              #:event-data-store-list #:event-data-store-name
                              #:event-data-store-status #:event-data-stores
                              #:event-name #:event-selector #:event-selectors
                              #:event-source #:events-list
                              #:exclude-management-event-sources
                              #:federation-role-arn #:federation-status
                              #:generate-query #:get-channel #:get-dashboard
                              #:get-event-configuration #:get-event-data-store
                              #:get-event-selectors #:get-import
                              #:get-insight-selectors #:get-query-results
                              #:get-resource-policy #:get-trail
                              #:get-trail-status #:import-destinations
                              #:import-failure-list #:import-failure-list-item
                              #:import-failure-status #:import-source
                              #:import-statistics #:import-status
                              #:imports-list #:imports-list-item
                              #:ingestion-status #:insight-selector
                              #:insight-selectors #:insight-type
                              #:insights-metric-data-type
                              #:insights-metric-max-results
                              #:insights-metric-next-token
                              #:insights-metric-period #:insights-metric-values
                              #:integer #:list-channels
                              #:list-channels-max-results-count
                              #:list-dashboards
                              #:list-dashboards-max-results-count
                              #:list-event-data-stores
                              #:list-event-data-stores-max-results-count
                              #:list-import-failures
                              #:list-import-failures-max-results-count
                              #:list-imports #:list-imports-max-results-count
                              #:list-insights-metric-data #:list-public-keys
                              #:list-queries #:list-queries-max-results-count
                              #:list-tags #:list-trails #:location #:long
                              #:lookup-attribute #:lookup-attribute-key
                              #:lookup-attribute-value #:lookup-attributes-list
                              #:lookup-events #:max-event-size
                              #:max-query-results #:max-results #:next-token
                              #:operator #:operator-target-list
                              #:operator-target-list-member #:operator-value
                              #:pagination-token #:partition-key
                              #:partition-key-list #:partition-key-name
                              #:partition-key-type #:prompt #:public-key
                              #:public-key-list #:put-event-configuration
                              #:put-event-selectors #:put-insight-selectors
                              #:put-resource-policy #:queries #:query
                              #:query-alias #:query-parameter
                              #:query-parameter-key #:query-parameter-value
                              #:query-parameter-values #:query-parameters
                              #:query-result-column #:query-result-key
                              #:query-result-row #:query-result-rows
                              #:query-result-value #:query-statement
                              #:query-statistics
                              #:query-statistics-for-describe-query
                              #:query-status #:read-write-type #:refresh-id
                              #:refresh-schedule #:refresh-schedule-frequency
                              #:refresh-schedule-frequency-unit
                              #:refresh-schedule-frequency-value
                              #:refresh-schedule-status
                              #:register-organization-delegated-admin
                              #:remove-tags #:request-widget
                              #:request-widget-list #:resource #:resource-arn
                              #:resource-id-list #:resource-list
                              #:resource-policy #:resource-tag
                              #:resource-tag-list #:restore-event-data-store
                              #:retention-period #:s3import-source
                              #:sample-query-description #:sample-query-name
                              #:sample-query-relevance #:sample-query-sql
                              #:search-sample-queries
                              #:search-sample-queries-max-results
                              #:search-sample-queries-search-phrase
                              #:search-sample-queries-search-result
                              #:search-sample-queries-search-results
                              #:selector-field #:selector-name #:source
                              #:source-config #:start-dashboard-refresh
                              #:start-event-data-store-ingestion #:start-import
                              #:start-logging #:start-query
                              #:stop-event-data-store-ingestion #:stop-import
                              #:stop-logging #:string #:tag #:tag-key
                              #:tag-value #:tags-list
                              #:termination-protection-enabled #:time-of-day
                              #:timestamps #:trail #:trail-info #:trail-list
                              #:trail-name-list #:trails #:type #:uuid
                              #:update-channel #:update-dashboard
                              #:update-event-data-store #:update-trail
                              #:view-properties-key #:view-properties-map
                              #:view-properties-value #:widget #:widget-list))
(common-lisp:in-package #:pira/cloudtrail)

(smithy/sdk/service:define-service cloud-trail-20131101 :shape-name
                                   "CloudTrail_20131101" :version "2013-11-01"
                                   :title "AWS CloudTrail" :operations
                                   '(add-tags cancel-query create-channel
                                     create-dashboard create-event-data-store
                                     create-trail delete-channel
                                     delete-dashboard delete-event-data-store
                                     delete-resource-policy delete-trail
                                     deregister-organization-delegated-admin
                                     describe-query describe-trails
                                     disable-federation enable-federation
                                     generate-query get-channel get-dashboard
                                     get-event-configuration
                                     get-event-data-store get-event-selectors
                                     get-import get-insight-selectors
                                     get-query-results get-resource-policy
                                     get-trail get-trail-status list-channels
                                     list-dashboards list-event-data-stores
                                     list-import-failures list-imports
                                     list-insights-metric-data list-public-keys
                                     list-queries list-tags list-trails
                                     lookup-events put-event-configuration
                                     put-event-selectors put-insight-selectors
                                     put-resource-policy
                                     register-organization-delegated-admin
                                     remove-tags restore-event-data-store
                                     search-sample-queries
                                     start-dashboard-refresh
                                     start-event-data-store-ingestion
                                     start-import start-logging start-query
                                     stop-event-data-store-ingestion
                                     stop-import stop-logging update-channel
                                     update-dashboard update-event-data-store
                                     update-trail)
                                   :xml-namespace
                                   '(:uri
                                     "http://cloudtrail.amazonaws.com/doc/2013-11-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudTrail")
                                      ("arnNamespace" . "cloudtrail")
                                      ("cloudFormationName" . "CloudTrail")
                                      ("cloudTrailEventSource"
                                       . "cloudtrail.amazonaws.com")
                                      ("endpointPrefix" . "cloudtrail"))
                                     ("aws.auth#sigv4" ("name" . "cloudtrail"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-name "ResourceAccessDenied")
                                (:error-code 403))

(smithy/sdk/shapes:define-error account-has-ongoing-import-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AccountHasOngoingImportException")
                                (:error-name "AccountHasOngoingImport")
                                (:error-code 400))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error account-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccountNotFoundException")
                                (:error-name "AccountNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error account-not-registered-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccountNotRegisteredException")
                                (:error-name "AccountNotRegistered")
                                (:error-code 400))

(smithy/sdk/shapes:define-error account-registered-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccountRegisteredException")
                                (:error-name "AccountRegistered")
                                (:error-code 400))

(smithy/sdk/shapes:define-input add-tags-request common-lisp:nil
                                ((resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (tags-list :target-type tags-list :required
                                  common-lisp:t :member-name "TagsList"))
                                (:shape-name "AddTagsRequest"))

(smithy/sdk/shapes:define-output add-tags-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddTagsResponse"))

(smithy/sdk/shapes:define-structure advanced-event-selector common-lisp:nil
                                    ((name :target-type selector-name
                                      :member-name "Name")
                                     (field-selectors :target-type
                                      advanced-field-selectors :required
                                      common-lisp:t :member-name
                                      "FieldSelectors"))
                                    (:shape-name "AdvancedEventSelector"))

(smithy/sdk/shapes:define-list advanced-event-selectors :member
                               advanced-event-selector)

(smithy/sdk/shapes:define-structure advanced-field-selector common-lisp:nil
                                    ((field :target-type selector-field
                                      :required common-lisp:t :member-name
                                      "Field")
                                     (equals :target-type operator :member-name
                                      "Equals")
                                     (starts-with :target-type operator
                                      :member-name "StartsWith")
                                     (ends-with :target-type operator
                                      :member-name "EndsWith")
                                     (not-equals :target-type operator
                                      :member-name "NotEquals")
                                     (not-starts-with :target-type operator
                                      :member-name "NotStartsWith")
                                     (not-ends-with :target-type operator
                                      :member-name "NotEndsWith"))
                                    (:shape-name "AdvancedFieldSelector"))

(smithy/sdk/shapes:define-list advanced-field-selectors :member
                               advanced-field-selector)

(smithy/sdk/shapes:define-enum billing-mode
    common-lisp:nil
  (:extendable-retention-pricing "EXTENDABLE_RETENTION_PRICING")
  (:fixed-retention-pricing "FIXED_RETENTION_PRICING"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type byte-buffer smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input cancel-query-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :member-name
                                  "EventDataStore")
                                 (query-id :target-type uuid :required
                                  common-lisp:t :member-name "QueryId")
                                 (event-data-store-owner-account-id
                                  :target-type account-id :member-name
                                  "EventDataStoreOwnerAccountId"))
                                (:shape-name "CancelQueryRequest"))

(smithy/sdk/shapes:define-output cancel-query-response common-lisp:nil
                                 ((query-id :target-type uuid :required
                                   common-lisp:t :member-name "QueryId")
                                  (query-status :target-type query-status
                                   :required common-lisp:t :member-name
                                   "QueryStatus")
                                  (event-data-store-owner-account-id
                                   :target-type account-id :member-name
                                   "EventDataStoreOwnerAccountId"))
                                 (:shape-name "CancelQueryResponse"))

(smithy/sdk/shapes:define-error cannot-delegate-management-account-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CannotDelegateManagementAccountException")
                                (:error-name "CannotDelegateManagementAccount")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((channel-arn :target-type channel-arn
                                      :member-name "ChannelArn")
                                     (name :target-type channel-name
                                      :member-name "Name"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-error channel-arninvalid-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ChannelARNInvalidException")
                                (:error-name "ChannelARNInvalid")
                                (:error-code 400))

(smithy/sdk/shapes:define-error channel-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ChannelAlreadyExistsException")
                                (:error-name "ChannelAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error channel-exists-for-edsexception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ChannelExistsForEDSException")
                                (:error-name "ChannelExistsForEDS")
                                (:error-code 400))

(smithy/sdk/shapes:define-error channel-max-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ChannelMaxLimitExceededException")
                                (:error-name "ChannelMaxLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error channel-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ChannelNotFoundException")
                                (:error-name "ChannelNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-list channels :member channel)

(smithy/sdk/shapes:define-error cloud-trail-arninvalid-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CloudTrailARNInvalidException")
                                (:error-name "CloudTrailARNInvalid")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-trail-access-not-enabled-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CloudTrailAccessNotEnabledException")
                                (:error-name "CloudTrailAccessNotEnabled")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-trail-invalid-client-token-id-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CloudTrailInvalidClientTokenIdException")
                                (:error-name "CloudTrailInvalidClientTokenId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cloud-watch-logs-delivery-unavailable-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CloudWatchLogsDeliveryUnavailableException")
                                (:error-name
                                 "CloudWatchLogsDeliveryUnavailable")
                                (:error-code 400))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-name "ConcurrentModification")
                                (:error-code 400))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure context-key-selector common-lisp:nil
                                    ((type :target-type type :required
                                      common-lisp:t :member-name "Type")
                                     (equals :target-type operator-target-list
                                      :required common-lisp:t :member-name
                                      "Equals"))
                                    (:shape-name "ContextKeySelector"))

(smithy/sdk/shapes:define-list context-key-selectors :member
                               context-key-selector)

(smithy/sdk/shapes:define-input create-channel-request common-lisp:nil
                                ((name :target-type channel-name :required
                                  common-lisp:t :member-name "Name")
                                 (source :target-type source :required
                                  common-lisp:t :member-name "Source")
                                 (destinations :target-type destinations
                                  :required common-lisp:t :member-name
                                  "Destinations")
                                 (tags :target-type tags-list :member-name
                                  "Tags"))
                                (:shape-name "CreateChannelRequest"))

(smithy/sdk/shapes:define-output create-channel-response common-lisp:nil
                                 ((channel-arn :target-type channel-arn
                                   :member-name "ChannelArn")
                                  (name :target-type channel-name :member-name
                                   "Name")
                                  (source :target-type source :member-name
                                   "Source")
                                  (destinations :target-type destinations
                                   :member-name "Destinations")
                                  (tags :target-type tags-list :member-name
                                   "Tags"))
                                 (:shape-name "CreateChannelResponse"))

(smithy/sdk/shapes:define-input create-dashboard-request common-lisp:nil
                                ((name :target-type dashboard-name :required
                                  common-lisp:t :member-name "Name")
                                 (refresh-schedule :target-type
                                  refresh-schedule :member-name
                                  "RefreshSchedule")
                                 (tags-list :target-type tags-list :member-name
                                  "TagsList")
                                 (termination-protection-enabled :target-type
                                  termination-protection-enabled :member-name
                                  "TerminationProtectionEnabled")
                                 (widgets :target-type request-widget-list
                                  :member-name "Widgets"))
                                (:shape-name "CreateDashboardRequest"))

(smithy/sdk/shapes:define-output create-dashboard-response common-lisp:nil
                                 ((dashboard-arn :target-type dashboard-arn
                                   :member-name "DashboardArn")
                                  (name :target-type dashboard-name
                                   :member-name "Name")
                                  (type :target-type dashboard-type
                                   :member-name "Type")
                                  (widgets :target-type widget-list
                                   :member-name "Widgets")
                                  (tags-list :target-type tags-list
                                   :member-name "TagsList")
                                  (refresh-schedule :target-type
                                   refresh-schedule :member-name
                                   "RefreshSchedule")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled"))
                                 (:shape-name "CreateDashboardResponse"))

(smithy/sdk/shapes:define-input create-event-data-store-request common-lisp:nil
                                ((name :target-type event-data-store-name
                                  :required common-lisp:t :member-name "Name")
                                 (advanced-event-selectors :target-type
                                  advanced-event-selectors :member-name
                                  "AdvancedEventSelectors")
                                 (multi-region-enabled :target-type boolean
                                  :member-name "MultiRegionEnabled")
                                 (organization-enabled :target-type boolean
                                  :member-name "OrganizationEnabled")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "RetentionPeriod")
                                 (termination-protection-enabled :target-type
                                  termination-protection-enabled :member-name
                                  "TerminationProtectionEnabled")
                                 (tags-list :target-type tags-list :member-name
                                  "TagsList")
                                 (kms-key-id :target-type
                                  event-data-store-kms-key-id :member-name
                                  "KmsKeyId")
                                 (start-ingestion :target-type boolean
                                  :member-name "StartIngestion")
                                 (billing-mode :target-type billing-mode
                                  :member-name "BillingMode"))
                                (:shape-name "CreateEventDataStoreRequest"))

(smithy/sdk/shapes:define-output create-event-data-store-response
                                 common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (name :target-type event-data-store-name
                                   :member-name "Name")
                                  (status :target-type event-data-store-status
                                   :member-name "Status")
                                  (advanced-event-selectors :target-type
                                   advanced-event-selectors :member-name
                                   "AdvancedEventSelectors")
                                  (multi-region-enabled :target-type boolean
                                   :member-name "MultiRegionEnabled")
                                  (organization-enabled :target-type boolean
                                   :member-name "OrganizationEnabled")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled")
                                  (tags-list :target-type tags-list
                                   :member-name "TagsList")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (kms-key-id :target-type
                                   event-data-store-kms-key-id :member-name
                                   "KmsKeyId")
                                  (billing-mode :target-type billing-mode
                                   :member-name "BillingMode"))
                                 (:shape-name "CreateEventDataStoreResponse"))

(smithy/sdk/shapes:define-input create-trail-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (s3bucket-name :target-type string :required
                                  common-lisp:t :member-name "S3BucketName")
                                 (s3key-prefix :target-type string :member-name
                                  "S3KeyPrefix")
                                 (sns-topic-name :target-type string
                                  :member-name "SnsTopicName")
                                 (include-global-service-events :target-type
                                  boolean :member-name
                                  "IncludeGlobalServiceEvents")
                                 (is-multi-region-trail :target-type boolean
                                  :member-name "IsMultiRegionTrail")
                                 (enable-log-file-validation :target-type
                                  boolean :member-name
                                  "EnableLogFileValidation")
                                 (cloud-watch-logs-log-group-arn :target-type
                                  string :member-name
                                  "CloudWatchLogsLogGroupArn")
                                 (cloud-watch-logs-role-arn :target-type string
                                  :member-name "CloudWatchLogsRoleArn")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (is-organization-trail :target-type boolean
                                  :member-name "IsOrganizationTrail")
                                 (tags-list :target-type tags-list :member-name
                                  "TagsList"))
                                (:shape-name "CreateTrailRequest"))

(smithy/sdk/shapes:define-output create-trail-response common-lisp:nil
                                 ((name :target-type string :member-name
                                   "Name")
                                  (s3bucket-name :target-type string
                                   :member-name "S3BucketName")
                                  (s3key-prefix :target-type string
                                   :member-name "S3KeyPrefix")
                                  (sns-topic-name :target-type string
                                   :member-name "SnsTopicName")
                                  (sns-topic-arn :target-type string
                                   :member-name "SnsTopicARN")
                                  (include-global-service-events :target-type
                                   boolean :member-name
                                   "IncludeGlobalServiceEvents")
                                  (is-multi-region-trail :target-type boolean
                                   :member-name "IsMultiRegionTrail")
                                  (trail-arn :target-type string :member-name
                                   "TrailARN")
                                  (log-file-validation-enabled :target-type
                                   boolean :member-name
                                   "LogFileValidationEnabled")
                                  (cloud-watch-logs-log-group-arn :target-type
                                   string :member-name
                                   "CloudWatchLogsLogGroupArn")
                                  (cloud-watch-logs-role-arn :target-type
                                   string :member-name "CloudWatchLogsRoleArn")
                                  (kms-key-id :target-type string :member-name
                                   "KmsKeyId")
                                  (is-organization-trail :target-type boolean
                                   :member-name "IsOrganizationTrail"))
                                 (:shape-name "CreateTrailResponse"))

(smithy/sdk/shapes:define-type dashboard-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dashboard-detail common-lisp:nil
                                    ((dashboard-arn :target-type dashboard-arn
                                      :member-name "DashboardArn")
                                     (type :target-type dashboard-type
                                      :member-name "Type"))
                                    (:shape-name "DashboardDetail"))

(smithy/sdk/shapes:define-type dashboard-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dashboard-status
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:updating "UPDATING")
  (:updated "UPDATED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum dashboard-type
    common-lisp:nil
  (:managed "MANAGED")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list dashboards :member dashboard-detail)

(smithy/sdk/shapes:define-structure data-resource common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type")
                                     (values :target-type data-resource-values
                                      :member-name "Values"))
                                    (:shape-name "DataResource"))

(smithy/sdk/shapes:define-list data-resource-values :member string)

(smithy/sdk/shapes:define-list data-resources :member data-resource)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error
 delegated-admin-account-limit-exceeded-exception common-lisp:nil
 ((message :target-type error-message :member-name "Message"))
 (:shape-name "DelegatedAdminAccountLimitExceededException")
 (:error-name "DelegatedAdminAccountLimitExceeded") (:error-code 400))

(smithy/sdk/shapes:define-input delete-channel-request common-lisp:nil
                                ((channel :target-type channel-arn :required
                                  common-lisp:t :member-name "Channel"))
                                (:shape-name "DeleteChannelRequest"))

(smithy/sdk/shapes:define-output delete-channel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteChannelResponse"))

(smithy/sdk/shapes:define-input delete-dashboard-request common-lisp:nil
                                ((dashboard-id :target-type dashboard-arn
                                  :required common-lisp:t :member-name
                                  "DashboardId"))
                                (:shape-name "DeleteDashboardRequest"))

(smithy/sdk/shapes:define-output delete-dashboard-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDashboardResponse"))

(smithy/sdk/shapes:define-input delete-event-data-store-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore"))
                                (:shape-name "DeleteEventDataStoreRequest"))

(smithy/sdk/shapes:define-output delete-event-data-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteEventDataStoreResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-trail-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteTrailRequest"))

(smithy/sdk/shapes:define-output delete-trail-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTrailResponse"))

(smithy/sdk/shapes:define-type delivery-s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum delivery-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED")
  (:failed-signing-file "FAILED_SIGNING_FILE")
  (:pending "PENDING")
  (:resource-not-found "RESOURCE_NOT_FOUND")
  (:access-denied "ACCESS_DENIED")
  (:access-denied-signing-file "ACCESS_DENIED_SIGNING_FILE")
  (:cancelled "CANCELLED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-input deregister-organization-delegated-admin-request
                                common-lisp:nil
                                ((delegated-admin-account-id :target-type
                                  account-id :required common-lisp:t
                                  :member-name "DelegatedAdminAccountId"))
                                (:shape-name
                                 "DeregisterOrganizationDelegatedAdminRequest"))

(smithy/sdk/shapes:define-output
 deregister-organization-delegated-admin-response common-lisp:nil
 common-lisp:nil (:shape-name "DeregisterOrganizationDelegatedAdminResponse"))

(smithy/sdk/shapes:define-input describe-query-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :member-name
                                  "EventDataStore")
                                 (query-id :target-type uuid :member-name
                                  "QueryId")
                                 (query-alias :target-type query-alias
                                  :member-name "QueryAlias")
                                 (refresh-id :target-type refresh-id
                                  :member-name "RefreshId")
                                 (event-data-store-owner-account-id
                                  :target-type account-id :member-name
                                  "EventDataStoreOwnerAccountId"))
                                (:shape-name "DescribeQueryRequest"))

(smithy/sdk/shapes:define-output describe-query-response common-lisp:nil
                                 ((query-id :target-type uuid :member-name
                                   "QueryId")
                                  (query-string :target-type query-statement
                                   :member-name "QueryString")
                                  (query-status :target-type query-status
                                   :member-name "QueryStatus")
                                  (query-statistics :target-type
                                   query-statistics-for-describe-query
                                   :member-name "QueryStatistics")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage")
                                  (delivery-s3uri :target-type delivery-s3uri
                                   :member-name "DeliveryS3Uri")
                                  (delivery-status :target-type delivery-status
                                   :member-name "DeliveryStatus")
                                  (prompt :target-type prompt :member-name
                                   "Prompt")
                                  (event-data-store-owner-account-id
                                   :target-type account-id :member-name
                                   "EventDataStoreOwnerAccountId"))
                                 (:shape-name "DescribeQueryResponse"))

(smithy/sdk/shapes:define-input describe-trails-request common-lisp:nil
                                ((trail-name-list :target-type trail-name-list
                                  :member-name "trailNameList")
                                 (include-shadow-trails :target-type boolean
                                  :member-name "includeShadowTrails"))
                                (:shape-name "DescribeTrailsRequest"))

(smithy/sdk/shapes:define-output describe-trails-response common-lisp:nil
                                 ((trail-list :target-type trail-list
                                   :member-name "trailList"))
                                 (:shape-name "DescribeTrailsResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((type :target-type destination-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (location :target-type location :required
                                      common-lisp:t :member-name "Location"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-enum destination-type
    common-lisp:nil
  (:event-data-store "EVENT_DATA_STORE")
  (:aws-service "AWS_SERVICE"))

(smithy/sdk/shapes:define-list destinations :member destination)

(smithy/sdk/shapes:define-input disable-federation-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore"))
                                (:shape-name "DisableFederationRequest"))

(smithy/sdk/shapes:define-output disable-federation-response common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (federation-status :target-type
                                   federation-status :member-name
                                   "FederationStatus"))
                                 (:shape-name "DisableFederationResponse"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input enable-federation-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore")
                                 (federation-role-arn :target-type
                                  federation-role-arn :required common-lisp:t
                                  :member-name "FederationRoleArn"))
                                (:shape-name "EnableFederationRequest"))

(smithy/sdk/shapes:define-output enable-federation-response common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (federation-status :target-type
                                   federation-status :member-name
                                   "FederationStatus")
                                  (federation-role-arn :target-type
                                   federation-role-arn :member-name
                                   "FederationRoleArn"))
                                 (:shape-name "EnableFederationResponse"))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((event-id :target-type string :member-name
                                      "EventId")
                                     (event-name :target-type string
                                      :member-name "EventName")
                                     (read-only :target-type string
                                      :member-name "ReadOnly")
                                     (access-key-id :target-type string
                                      :member-name "AccessKeyId")
                                     (event-time :target-type date :member-name
                                      "EventTime")
                                     (event-source :target-type string
                                      :member-name "EventSource")
                                     (username :target-type string :member-name
                                      "Username")
                                     (resources :target-type resource-list
                                      :member-name "Resources")
                                     (cloud-trail-event :target-type string
                                      :member-name "CloudTrailEvent"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-enum event-category
    common-lisp:nil
  (:insight "insight"))

(smithy/sdk/shapes:define-structure event-data-store common-lisp:nil
                                    ((event-data-store-arn :target-type
                                      event-data-store-arn :member-name
                                      "EventDataStoreArn")
                                     (name :target-type event-data-store-name
                                      :member-name "Name")
                                     (termination-protection-enabled
                                      :target-type
                                      termination-protection-enabled
                                      :member-name
                                      "TerminationProtectionEnabled")
                                     (status :target-type
                                      event-data-store-status :member-name
                                      "Status")
                                     (advanced-event-selectors :target-type
                                      advanced-event-selectors :member-name
                                      "AdvancedEventSelectors")
                                     (multi-region-enabled :target-type boolean
                                      :member-name "MultiRegionEnabled")
                                     (organization-enabled :target-type boolean
                                      :member-name "OrganizationEnabled")
                                     (retention-period :target-type
                                      retention-period :member-name
                                      "RetentionPeriod")
                                     (created-timestamp :target-type date
                                      :member-name "CreatedTimestamp")
                                     (updated-timestamp :target-type date
                                      :member-name "UpdatedTimestamp"))
                                    (:shape-name "EventDataStore"))

(smithy/sdk/shapes:define-error event-data-store-arninvalid-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EventDataStoreARNInvalidException")
                                (:error-name "EventDataStoreARNInvalid")
                                (:error-code 400))

(smithy/sdk/shapes:define-error event-data-store-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EventDataStoreAlreadyExistsException")
                                (:error-name "EventDataStoreAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type event-data-store-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error event-data-store-federation-enabled-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EventDataStoreFederationEnabledException")
                                (:error-name "EventDataStoreFederationEnabled")
                                (:error-code 400))

(smithy/sdk/shapes:define-error event-data-store-has-ongoing-import-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EventDataStoreHasOngoingImportException")
                                (:error-name "EventDataStoreHasOngoingImport")
                                (:error-code 400))

(smithy/sdk/shapes:define-type event-data-store-kms-key-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-data-store-list :member
                               event-data-store-arn)

(smithy/sdk/shapes:define-error event-data-store-max-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EventDataStoreMaxLimitExceededException")
                                (:error-name "EventDataStoreMaxLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type event-data-store-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error event-data-store-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "EventDataStoreNotFoundException")
                                (:error-name "EventDataStoreNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum event-data-store-status
    common-lisp:nil
  (:created "CREATED")
  (:enabled "ENABLED")
  (:pending-deletion "PENDING_DELETION")
  (:starting-ingestion "STARTING_INGESTION")
  (:stopping-ingestion "STOPPING_INGESTION")
  (:stopped-ingestion "STOPPED_INGESTION"))

(smithy/sdk/shapes:define-error
 event-data-store-termination-protected-exception common-lisp:nil
 ((message :target-type error-message :member-name "Message"))
 (:shape-name "EventDataStoreTerminationProtectedException")
 (:error-name "EventDataStoreTerminationProtectedException") (:error-code 400))

(smithy/sdk/shapes:define-list event-data-stores :member event-data-store)

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-selector common-lisp:nil
                                    ((read-write-type :target-type
                                      read-write-type :member-name
                                      "ReadWriteType")
                                     (include-management-events :target-type
                                      boolean :member-name
                                      "IncludeManagementEvents")
                                     (data-resources :target-type
                                      data-resources :member-name
                                      "DataResources")
                                     (exclude-management-event-sources
                                      :target-type
                                      exclude-management-event-sources
                                      :member-name
                                      "ExcludeManagementEventSources"))
                                    (:shape-name "EventSelector"))

(smithy/sdk/shapes:define-list event-selectors :member event-selector)

(smithy/sdk/shapes:define-type event-source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list events-list :member event)

(smithy/sdk/shapes:define-list exclude-management-event-sources :member string)

(smithy/sdk/shapes:define-type federation-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum federation-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input generate-query-request common-lisp:nil
                                ((event-data-stores :target-type
                                  event-data-store-list :required common-lisp:t
                                  :member-name "EventDataStores")
                                 (prompt :target-type prompt :required
                                  common-lisp:t :member-name "Prompt"))
                                (:shape-name "GenerateQueryRequest"))

(smithy/sdk/shapes:define-output generate-query-response common-lisp:nil
                                 ((query-statement :target-type query-statement
                                   :member-name "QueryStatement")
                                  (query-alias :target-type query-alias
                                   :member-name "QueryAlias")
                                  (event-data-store-owner-account-id
                                   :target-type account-id :member-name
                                   "EventDataStoreOwnerAccountId"))
                                 (:shape-name "GenerateQueryResponse"))

(smithy/sdk/shapes:define-error generate-response-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "GenerateResponseException")
                                (:error-name "GenerateResponse")
                                (:error-code 400))

(smithy/sdk/shapes:define-input get-channel-request common-lisp:nil
                                ((channel :target-type channel-arn :required
                                  common-lisp:t :member-name "Channel"))
                                (:shape-name "GetChannelRequest"))

(smithy/sdk/shapes:define-output get-channel-response common-lisp:nil
                                 ((channel-arn :target-type channel-arn
                                   :member-name "ChannelArn")
                                  (name :target-type channel-name :member-name
                                   "Name")
                                  (source :target-type source :member-name
                                   "Source")
                                  (source-config :target-type source-config
                                   :member-name "SourceConfig")
                                  (destinations :target-type destinations
                                   :member-name "Destinations")
                                  (ingestion-status :target-type
                                   ingestion-status :member-name
                                   "IngestionStatus"))
                                 (:shape-name "GetChannelResponse"))

(smithy/sdk/shapes:define-input get-dashboard-request common-lisp:nil
                                ((dashboard-id :target-type dashboard-arn
                                  :required common-lisp:t :member-name
                                  "DashboardId"))
                                (:shape-name "GetDashboardRequest"))

(smithy/sdk/shapes:define-output get-dashboard-response common-lisp:nil
                                 ((dashboard-arn :target-type dashboard-arn
                                   :member-name "DashboardArn")
                                  (type :target-type dashboard-type
                                   :member-name "Type")
                                  (status :target-type dashboard-status
                                   :member-name "Status")
                                  (widgets :target-type widget-list
                                   :member-name "Widgets")
                                  (refresh-schedule :target-type
                                   refresh-schedule :member-name
                                   "RefreshSchedule")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (last-refresh-id :target-type refresh-id
                                   :member-name "LastRefreshId")
                                  (last-refresh-failure-reason :target-type
                                   error-message :member-name
                                   "LastRefreshFailureReason")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled"))
                                 (:shape-name "GetDashboardResponse"))

(smithy/sdk/shapes:define-input get-event-configuration-request common-lisp:nil
                                ((event-data-store :target-type string
                                  :member-name "EventDataStore"))
                                (:shape-name "GetEventConfigurationRequest"))

(smithy/sdk/shapes:define-output get-event-configuration-response
                                 common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (max-event-size :target-type max-event-size
                                   :member-name "MaxEventSize")
                                  (context-key-selectors :target-type
                                   context-key-selectors :member-name
                                   "ContextKeySelectors"))
                                 (:shape-name "GetEventConfigurationResponse"))

(smithy/sdk/shapes:define-input get-event-data-store-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore"))
                                (:shape-name "GetEventDataStoreRequest"))

(smithy/sdk/shapes:define-output get-event-data-store-response common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (name :target-type event-data-store-name
                                   :member-name "Name")
                                  (status :target-type event-data-store-status
                                   :member-name "Status")
                                  (advanced-event-selectors :target-type
                                   advanced-event-selectors :member-name
                                   "AdvancedEventSelectors")
                                  (multi-region-enabled :target-type boolean
                                   :member-name "MultiRegionEnabled")
                                  (organization-enabled :target-type boolean
                                   :member-name "OrganizationEnabled")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (kms-key-id :target-type
                                   event-data-store-kms-key-id :member-name
                                   "KmsKeyId")
                                  (billing-mode :target-type billing-mode
                                   :member-name "BillingMode")
                                  (federation-status :target-type
                                   federation-status :member-name
                                   "FederationStatus")
                                  (federation-role-arn :target-type
                                   federation-role-arn :member-name
                                   "FederationRoleArn")
                                  (partition-keys :target-type
                                   partition-key-list :member-name
                                   "PartitionKeys"))
                                 (:shape-name "GetEventDataStoreResponse"))

(smithy/sdk/shapes:define-input get-event-selectors-request common-lisp:nil
                                ((trail-name :target-type string :required
                                  common-lisp:t :member-name "TrailName"))
                                (:shape-name "GetEventSelectorsRequest"))

(smithy/sdk/shapes:define-output get-event-selectors-response common-lisp:nil
                                 ((trail-arn :target-type string :member-name
                                   "TrailARN")
                                  (event-selectors :target-type event-selectors
                                   :member-name "EventSelectors")
                                  (advanced-event-selectors :target-type
                                   advanced-event-selectors :member-name
                                   "AdvancedEventSelectors"))
                                 (:shape-name "GetEventSelectorsResponse"))

(smithy/sdk/shapes:define-input get-import-request common-lisp:nil
                                ((import-id :target-type uuid :required
                                  common-lisp:t :member-name "ImportId"))
                                (:shape-name "GetImportRequest"))

(smithy/sdk/shapes:define-output get-import-response common-lisp:nil
                                 ((import-id :target-type uuid :member-name
                                   "ImportId")
                                  (destinations :target-type
                                   import-destinations :member-name
                                   "Destinations")
                                  (import-source :target-type import-source
                                   :member-name "ImportSource")
                                  (start-event-time :target-type date
                                   :member-name "StartEventTime")
                                  (end-event-time :target-type date
                                   :member-name "EndEventTime")
                                  (import-status :target-type import-status
                                   :member-name "ImportStatus")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (import-statistics :target-type
                                   import-statistics :member-name
                                   "ImportStatistics"))
                                 (:shape-name "GetImportResponse"))

(smithy/sdk/shapes:define-input get-insight-selectors-request common-lisp:nil
                                ((trail-name :target-type string :member-name
                                  "TrailName")
                                 (event-data-store :target-type
                                  event-data-store-arn :member-name
                                  "EventDataStore"))
                                (:shape-name "GetInsightSelectorsRequest"))

(smithy/sdk/shapes:define-output get-insight-selectors-response common-lisp:nil
                                 ((trail-arn :target-type string :member-name
                                   "TrailARN")
                                  (insight-selectors :target-type
                                   insight-selectors :member-name
                                   "InsightSelectors")
                                  (event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (insights-destination :target-type
                                   event-data-store-arn :member-name
                                   "InsightsDestination"))
                                 (:shape-name "GetInsightSelectorsResponse"))

(smithy/sdk/shapes:define-input get-query-results-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :member-name
                                  "EventDataStore")
                                 (query-id :target-type uuid :required
                                  common-lisp:t :member-name "QueryId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-query-results :target-type
                                  max-query-results :member-name
                                  "MaxQueryResults")
                                 (event-data-store-owner-account-id
                                  :target-type account-id :member-name
                                  "EventDataStoreOwnerAccountId"))
                                (:shape-name "GetQueryResultsRequest"))

(smithy/sdk/shapes:define-output get-query-results-response common-lisp:nil
                                 ((query-status :target-type query-status
                                   :member-name "QueryStatus")
                                  (query-statistics :target-type
                                   query-statistics :member-name
                                   "QueryStatistics")
                                  (query-result-rows :target-type
                                   query-result-rows :member-name
                                   "QueryResultRows")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage"))
                                 (:shape-name "GetQueryResultsResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy")
                                  (delegated-admin-resource-policy :target-type
                                   resource-policy :member-name
                                   "DelegatedAdminResourcePolicy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-input get-trail-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "GetTrailRequest"))

(smithy/sdk/shapes:define-output get-trail-response common-lisp:nil
                                 ((trail :target-type trail :member-name
                                   "Trail"))
                                 (:shape-name "GetTrailResponse"))

(smithy/sdk/shapes:define-input get-trail-status-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "GetTrailStatusRequest"))

(smithy/sdk/shapes:define-output get-trail-status-response common-lisp:nil
                                 ((is-logging :target-type boolean :member-name
                                   "IsLogging")
                                  (latest-delivery-error :target-type string
                                   :member-name "LatestDeliveryError")
                                  (latest-notification-error :target-type
                                   string :member-name
                                   "LatestNotificationError")
                                  (latest-delivery-time :target-type date
                                   :member-name "LatestDeliveryTime")
                                  (latest-notification-time :target-type date
                                   :member-name "LatestNotificationTime")
                                  (start-logging-time :target-type date
                                   :member-name "StartLoggingTime")
                                  (stop-logging-time :target-type date
                                   :member-name "StopLoggingTime")
                                  (latest-cloud-watch-logs-delivery-error
                                   :target-type string :member-name
                                   "LatestCloudWatchLogsDeliveryError")
                                  (latest-cloud-watch-logs-delivery-time
                                   :target-type date :member-name
                                   "LatestCloudWatchLogsDeliveryTime")
                                  (latest-digest-delivery-time :target-type
                                   date :member-name
                                   "LatestDigestDeliveryTime")
                                  (latest-digest-delivery-error :target-type
                                   string :member-name
                                   "LatestDigestDeliveryError")
                                  (latest-delivery-attempt-time :target-type
                                   string :member-name
                                   "LatestDeliveryAttemptTime")
                                  (latest-notification-attempt-time
                                   :target-type string :member-name
                                   "LatestNotificationAttemptTime")
                                  (latest-notification-attempt-succeeded
                                   :target-type string :member-name
                                   "LatestNotificationAttemptSucceeded")
                                  (latest-delivery-attempt-succeeded
                                   :target-type string :member-name
                                   "LatestDeliveryAttemptSucceeded")
                                  (time-logging-started :target-type string
                                   :member-name "TimeLoggingStarted")
                                  (time-logging-stopped :target-type string
                                   :member-name "TimeLoggingStopped"))
                                 (:shape-name "GetTrailStatusResponse"))

(smithy/sdk/shapes:define-list import-destinations :member event-data-store-arn)

(smithy/sdk/shapes:define-list import-failure-list :member
                               import-failure-list-item)

(smithy/sdk/shapes:define-structure import-failure-list-item common-lisp:nil
                                    ((location :target-type string :member-name
                                      "Location")
                                     (status :target-type import-failure-status
                                      :member-name "Status")
                                     (error-type :target-type string
                                      :member-name "ErrorType")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (last-updated-time :target-type date
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "ImportFailureListItem"))

(smithy/sdk/shapes:define-enum import-failure-status
    common-lisp:nil
  (:failed "FAILED")
  (:retry "RETRY")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-error import-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ImportNotFoundException")
                                (:error-name "ImportNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure import-source common-lisp:nil
                                    ((s3 :target-type s3import-source :required
                                      common-lisp:t :member-name "S3"))
                                    (:shape-name "ImportSource"))

(smithy/sdk/shapes:define-structure import-statistics common-lisp:nil
                                    ((prefixes-found :target-type long
                                      :member-name "PrefixesFound")
                                     (prefixes-completed :target-type long
                                      :member-name "PrefixesCompleted")
                                     (files-completed :target-type long
                                      :member-name "FilesCompleted")
                                     (events-completed :target-type long
                                      :member-name "EventsCompleted")
                                     (failed-entries :target-type long
                                      :member-name "FailedEntries"))
                                    (:shape-name "ImportStatistics"))

(smithy/sdk/shapes:define-enum import-status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:stopped "STOPPED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-list imports-list :member imports-list-item)

(smithy/sdk/shapes:define-structure imports-list-item common-lisp:nil
                                    ((import-id :target-type uuid :member-name
                                      "ImportId")
                                     (import-status :target-type import-status
                                      :member-name "ImportStatus")
                                     (destinations :target-type
                                      import-destinations :member-name
                                      "Destinations")
                                     (created-timestamp :target-type date
                                      :member-name "CreatedTimestamp")
                                     (updated-timestamp :target-type date
                                      :member-name "UpdatedTimestamp"))
                                    (:shape-name "ImportsListItem"))

(smithy/sdk/shapes:define-error inactive-event-data-store-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InactiveEventDataStoreException")
                                (:error-name "InactiveEventDataStore")
                                (:error-code 400))

(smithy/sdk/shapes:define-error inactive-query-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InactiveQueryException")
                                (:error-name "InactiveQuery") (:error-code 400))

(smithy/sdk/shapes:define-structure ingestion-status common-lisp:nil
                                    ((latest-ingestion-success-time
                                      :target-type date :member-name
                                      "LatestIngestionSuccessTime")
                                     (latest-ingestion-success-event-id
                                      :target-type uuid :member-name
                                      "LatestIngestionSuccessEventID")
                                     (latest-ingestion-error-code :target-type
                                      error-message :member-name
                                      "LatestIngestionErrorCode")
                                     (latest-ingestion-attempt-time
                                      :target-type date :member-name
                                      "LatestIngestionAttemptTime")
                                     (latest-ingestion-attempt-event-id
                                      :target-type uuid :member-name
                                      "LatestIngestionAttemptEventID"))
                                    (:shape-name "IngestionStatus"))

(smithy/sdk/shapes:define-error insight-not-enabled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InsightNotEnabledException")
                                (:error-name "InsightNotEnabled")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure insight-selector common-lisp:nil
                                    ((insight-type :target-type insight-type
                                      :member-name "InsightType"))
                                    (:shape-name "InsightSelector"))

(smithy/sdk/shapes:define-list insight-selectors :member insight-selector)

(smithy/sdk/shapes:define-enum insight-type
    common-lisp:nil
  (:api-call-rate-insight "ApiCallRateInsight")
  (:api-error-rate-insight "ApiErrorRateInsight"))

(smithy/sdk/shapes:define-enum insights-metric-data-type
    common-lisp:nil
  (:fill-with-zeros "FillWithZeros")
  (:non-zero-data "NonZeroData"))

(smithy/sdk/shapes:define-type insights-metric-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type insights-metric-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type insights-metric-period
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list insights-metric-values :member double)

(smithy/sdk/shapes:define-error
 insufficient-dependency-service-access-permission-exception common-lisp:nil
 ((message :target-type error-message :member-name "Message"))
 (:shape-name "InsufficientDependencyServiceAccessPermissionException")
 (:error-name "InsufficientDependencyServiceAccessPermission")
 (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-encryption-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InsufficientEncryptionPolicyException")
                                (:error-name "InsufficientEncryptionPolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-iamaccess-permission-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InsufficientIAMAccessPermissionException")
                                (:error-name "InsufficientIAMAccessPermission")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-s3bucket-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InsufficientS3BucketPolicyException")
                                (:error-name "InsufficientS3BucketPolicy")
                                (:error-code 403))

(smithy/sdk/shapes:define-error insufficient-sns-topic-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InsufficientSnsTopicPolicyException")
                                (:error-name "InsufficientSnsTopicPolicy")
                                (:error-code 403))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error
 invalid-cloud-watch-logs-log-group-arn-exception common-lisp:nil
 ((message :target-type error-message :member-name "Message"))
 (:shape-name "InvalidCloudWatchLogsLogGroupArnException")
 (:error-name "InvalidCloudWatchLogsLogGroupArn") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-cloud-watch-logs-role-arn-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidCloudWatchLogsRoleArnException")
                                (:error-name "InvalidCloudWatchLogsRoleArn")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-date-range-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidDateRangeException")
                                (:error-name "InvalidDateRange")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-event-category-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidEventCategoryException")
                                (:error-name "InvalidEventCategory")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-event-data-store-category-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidEventDataStoreCategoryException")
                                (:error-name "InvalidEventDataStoreCategory")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-event-data-store-status-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidEventDataStoreStatusException")
                                (:error-name "InvalidEventDataStoreStatus")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-event-selectors-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidEventSelectorsException")
                                (:error-name "InvalidEventSelectors")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-home-region-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidHomeRegionException")
                                (:error-name "InvalidHomeRegion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-import-source-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidImportSourceException")
                                (:error-name "InvalidImportSource")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-insight-selectors-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidInsightSelectorsException")
                                (:error-name "InvalidInsightSelectors")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-kms-key-id-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidKmsKeyIdException")
                                (:error-name "InvalidKmsKeyId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-lookup-attributes-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidLookupAttributesException")
                                (:error-name "InvalidLookupAttributes")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-max-results-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidMaxResultsException")
                                (:error-name "InvalidMaxResults")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-name "InvalidNextToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-name
                                 "InvalidParameterCombinationError")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-name "InvalidParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-query-statement-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidQueryStatementException")
                                (:error-name "InvalidQueryStatement")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-query-status-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidQueryStatusException")
                                (:error-name "InvalidQueryStatus")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3bucket-name-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidS3BucketNameException")
                                (:error-name "InvalidS3BucketName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3prefix-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidS3PrefixException")
                                (:error-name "InvalidS3Prefix")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sns-topic-name-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidSnsTopicNameException")
                                (:error-name "InvalidSnsTopicName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-source-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidSourceException")
                                (:error-name "InvalidSource") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTagParameterException")
                                (:error-name "InvalidTagParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-time-range-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTimeRangeException")
                                (:error-name "InvalidTimeRange")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTokenException")
                                (:error-name "InvalidToken") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-trail-name-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTrailNameException")
                                (:error-name "InvalidTrailName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "KmsException")
                                (:error-name "KmsException") (:error-code 400))

(smithy/sdk/shapes:define-error kms-key-disabled-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "KmsKeyDisabledException")
                                (:error-name "KmsKeyDisabled")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-key-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "KmsKeyNotFoundException")
                                (:error-name "KmsKeyNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type list-channels-max-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((max-results :target-type
                                  list-channels-max-results-count :member-name
                                  "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((channels :target-type channels :member-name
                                   "Channels")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-type list-dashboards-max-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-dashboards-request common-lisp:nil
                                ((name-prefix :target-type dashboard-name
                                  :member-name "NamePrefix")
                                 (type :target-type dashboard-type :member-name
                                  "Type")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-dashboards-max-results-count
                                  :member-name "MaxResults"))
                                (:shape-name "ListDashboardsRequest"))

(smithy/sdk/shapes:define-output list-dashboards-response common-lisp:nil
                                 ((dashboards :target-type dashboards
                                   :member-name "Dashboards")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDashboardsResponse"))

(smithy/sdk/shapes:define-type list-event-data-stores-max-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-event-data-stores-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-event-data-stores-max-results-count
                                  :member-name "MaxResults"))
                                (:shape-name "ListEventDataStoresRequest"))

(smithy/sdk/shapes:define-output list-event-data-stores-response
                                 common-lisp:nil
                                 ((event-data-stores :target-type
                                   event-data-stores :member-name
                                   "EventDataStores")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEventDataStoresResponse"))

(smithy/sdk/shapes:define-type list-import-failures-max-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-import-failures-request common-lisp:nil
                                ((import-id :target-type uuid :required
                                  common-lisp:t :member-name "ImportId")
                                 (max-results :target-type
                                  list-import-failures-max-results-count
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListImportFailuresRequest"))

(smithy/sdk/shapes:define-output list-import-failures-response common-lisp:nil
                                 ((failures :target-type import-failure-list
                                   :member-name "Failures")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListImportFailuresResponse"))

(smithy/sdk/shapes:define-type list-imports-max-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-imports-request common-lisp:nil
                                ((max-results :target-type
                                  list-imports-max-results-count :member-name
                                  "MaxResults")
                                 (destination :target-type event-data-store-arn
                                  :member-name "Destination")
                                 (import-status :target-type import-status
                                  :member-name "ImportStatus")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListImportsRequest"))

(smithy/sdk/shapes:define-output list-imports-response common-lisp:nil
                                 ((imports :target-type imports-list
                                   :member-name "Imports")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListImportsResponse"))

(smithy/sdk/shapes:define-input list-insights-metric-data-request
                                common-lisp:nil
                                ((event-source :target-type event-source
                                  :required common-lisp:t :member-name
                                  "EventSource")
                                 (event-name :target-type event-name :required
                                  common-lisp:t :member-name "EventName")
                                 (insight-type :target-type insight-type
                                  :required common-lisp:t :member-name
                                  "InsightType")
                                 (error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (start-time :target-type date :member-name
                                  "StartTime")
                                 (end-time :target-type date :member-name
                                  "EndTime")
                                 (period :target-type insights-metric-period
                                  :member-name "Period")
                                 (data-type :target-type
                                  insights-metric-data-type :member-name
                                  "DataType")
                                 (max-results :target-type
                                  insights-metric-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  insights-metric-next-token :member-name
                                  "NextToken"))
                                (:shape-name "ListInsightsMetricDataRequest"))

(smithy/sdk/shapes:define-output list-insights-metric-data-response
                                 common-lisp:nil
                                 ((event-source :target-type event-source
                                   :member-name "EventSource")
                                  (event-name :target-type event-name
                                   :member-name "EventName")
                                  (insight-type :target-type insight-type
                                   :member-name "InsightType")
                                  (error-code :target-type error-code
                                   :member-name "ErrorCode")
                                  (timestamps :target-type timestamps
                                   :member-name "Timestamps")
                                  (values :target-type insights-metric-values
                                   :member-name "Values")
                                  (next-token :target-type
                                   insights-metric-next-token :member-name
                                   "NextToken"))
                                 (:shape-name "ListInsightsMetricDataResponse"))

(smithy/sdk/shapes:define-input list-public-keys-request common-lisp:nil
                                ((start-time :target-type date :member-name
                                  "StartTime")
                                 (end-time :target-type date :member-name
                                  "EndTime")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListPublicKeysRequest"))

(smithy/sdk/shapes:define-output list-public-keys-response common-lisp:nil
                                 ((public-key-list :target-type public-key-list
                                   :member-name "PublicKeyList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPublicKeysResponse"))

(smithy/sdk/shapes:define-type list-queries-max-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-queries-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-queries-max-results-count :member-name
                                  "MaxResults")
                                 (start-time :target-type date :member-name
                                  "StartTime")
                                 (end-time :target-type date :member-name
                                  "EndTime")
                                 (query-status :target-type query-status
                                  :member-name "QueryStatus"))
                                (:shape-name "ListQueriesRequest"))

(smithy/sdk/shapes:define-output list-queries-response common-lisp:nil
                                 ((queries :target-type queries :member-name
                                   "Queries")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListQueriesResponse"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource-id-list :target-type
                                  resource-id-list :required common-lisp:t
                                  :member-name "ResourceIdList")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((resource-tag-list :target-type
                                   resource-tag-list :member-name
                                   "ResourceTagList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-input list-trails-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListTrailsRequest"))

(smithy/sdk/shapes:define-output list-trails-response common-lisp:nil
                                 ((trails :target-type trails :member-name
                                   "Trails")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListTrailsResponse"))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure lookup-attribute common-lisp:nil
                                    ((attribute-key :target-type
                                      lookup-attribute-key :required
                                      common-lisp:t :member-name
                                      "AttributeKey")
                                     (attribute-value :target-type
                                      lookup-attribute-value :required
                                      common-lisp:t :member-name
                                      "AttributeValue"))
                                    (:shape-name "LookupAttribute"))

(smithy/sdk/shapes:define-enum lookup-attribute-key
    common-lisp:nil
  (:event-id "EventId")
  (:event-name "EventName")
  (:read-only "ReadOnly")
  (:username "Username")
  (:resource-type "ResourceType")
  (:resource-name "ResourceName")
  (:event-source "EventSource")
  (:access-key-id "AccessKeyId"))

(smithy/sdk/shapes:define-type lookup-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lookup-attributes-list :member lookup-attribute)

(smithy/sdk/shapes:define-input lookup-events-request common-lisp:nil
                                ((lookup-attributes :target-type
                                  lookup-attributes-list :member-name
                                  "LookupAttributes")
                                 (start-time :target-type date :member-name
                                  "StartTime")
                                 (end-time :target-type date :member-name
                                  "EndTime")
                                 (event-category :target-type event-category
                                  :member-name "EventCategory")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "LookupEventsRequest"))

(smithy/sdk/shapes:define-output lookup-events-response common-lisp:nil
                                 ((events :target-type events-list :member-name
                                   "Events")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "LookupEventsResponse"))

(smithy/sdk/shapes:define-error max-concurrent-queries-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "MaxConcurrentQueriesException")
                                (:error-name "MaxConcurrentQueries")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum max-event-size
    common-lisp:nil
  (:standard "Standard")
  (:large "Large"))

(smithy/sdk/shapes:define-type max-query-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error maximum-number-of-trails-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "MaximumNumberOfTrailsExceededException")
                                (:error-name "MaximumNumberOfTrailsExceeded")
                                (:error-code 403))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-management-account-slrexists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "NoManagementAccountSLRExistsException")
                                (:error-name "NoManagementAccountSLRExists")
                                (:error-code 403))

(smithy/sdk/shapes:define-error not-organization-management-account-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "NotOrganizationManagementAccountException")
                                (:error-name
                                 "NotOrganizationManagementAccount")
                                (:error-code 403))

(smithy/sdk/shapes:define-error not-organization-master-account-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "NotOrganizationMasterAccountException")
                                (:error-name "NotOrganizationMasterAccount")
                                (:error-code 400))

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-name "OperationNotPermitted")
                                (:error-code 400))

(smithy/sdk/shapes:define-list operator :member operator-value)

(smithy/sdk/shapes:define-list operator-target-list :member
                               operator-target-list-member)

(smithy/sdk/shapes:define-type operator-target-list-member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operator-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error organization-not-in-all-features-mode-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "OrganizationNotInAllFeaturesModeException")
                                (:error-name
                                 "OrganizationNotInAllFeaturesMode")
                                (:error-code 400))

(smithy/sdk/shapes:define-error organizations-not-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OrganizationsNotInUseException")
                                (:error-name "OrganizationsNotInUse")
                                (:error-code 404))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure partition-key common-lisp:nil
                                    ((name :target-type partition-key-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type partition-key-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "PartitionKey"))

(smithy/sdk/shapes:define-list partition-key-list :member partition-key)

(smithy/sdk/shapes:define-type partition-key-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partition-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type prompt smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure public-key common-lisp:nil
                                    ((value :target-type byte-buffer
                                      :member-name "Value")
                                     (validity-start-time :target-type date
                                      :member-name "ValidityStartTime")
                                     (validity-end-time :target-type date
                                      :member-name "ValidityEndTime")
                                     (fingerprint :target-type string
                                      :member-name "Fingerprint"))
                                    (:shape-name "PublicKey"))

(smithy/sdk/shapes:define-list public-key-list :member public-key)

(smithy/sdk/shapes:define-input put-event-configuration-request common-lisp:nil
                                ((event-data-store :target-type string
                                  :member-name "EventDataStore")
                                 (max-event-size :target-type max-event-size
                                  :required common-lisp:t :member-name
                                  "MaxEventSize")
                                 (context-key-selectors :target-type
                                  context-key-selectors :required common-lisp:t
                                  :member-name "ContextKeySelectors"))
                                (:shape-name "PutEventConfigurationRequest"))

(smithy/sdk/shapes:define-output put-event-configuration-response
                                 common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (max-event-size :target-type max-event-size
                                   :member-name "MaxEventSize")
                                  (context-key-selectors :target-type
                                   context-key-selectors :member-name
                                   "ContextKeySelectors"))
                                 (:shape-name "PutEventConfigurationResponse"))

(smithy/sdk/shapes:define-input put-event-selectors-request common-lisp:nil
                                ((trail-name :target-type string :required
                                  common-lisp:t :member-name "TrailName")
                                 (event-selectors :target-type event-selectors
                                  :member-name "EventSelectors")
                                 (advanced-event-selectors :target-type
                                  advanced-event-selectors :member-name
                                  "AdvancedEventSelectors"))
                                (:shape-name "PutEventSelectorsRequest"))

(smithy/sdk/shapes:define-output put-event-selectors-response common-lisp:nil
                                 ((trail-arn :target-type string :member-name
                                   "TrailARN")
                                  (event-selectors :target-type event-selectors
                                   :member-name "EventSelectors")
                                  (advanced-event-selectors :target-type
                                   advanced-event-selectors :member-name
                                   "AdvancedEventSelectors"))
                                 (:shape-name "PutEventSelectorsResponse"))

(smithy/sdk/shapes:define-input put-insight-selectors-request common-lisp:nil
                                ((trail-name :target-type string :member-name
                                  "TrailName")
                                 (insight-selectors :target-type
                                  insight-selectors :required common-lisp:t
                                  :member-name "InsightSelectors")
                                 (event-data-store :target-type
                                  event-data-store-arn :member-name
                                  "EventDataStore")
                                 (insights-destination :target-type
                                  event-data-store-arn :member-name
                                  "InsightsDestination"))
                                (:shape-name "PutInsightSelectorsRequest"))

(smithy/sdk/shapes:define-output put-insight-selectors-response common-lisp:nil
                                 ((trail-arn :target-type string :member-name
                                   "TrailARN")
                                  (insight-selectors :target-type
                                   insight-selectors :member-name
                                   "InsightSelectors")
                                  (event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (insights-destination :target-type
                                   event-data-store-arn :member-name
                                   "InsightsDestination"))
                                 (:shape-name "PutInsightSelectorsResponse"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (resource-policy :target-type resource-policy
                                  :required common-lisp:t :member-name
                                  "ResourcePolicy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (resource-policy :target-type resource-policy
                                   :member-name "ResourcePolicy")
                                  (delegated-admin-resource-policy :target-type
                                   resource-policy :member-name
                                   "DelegatedAdminResourcePolicy"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-list queries :member query)

(smithy/sdk/shapes:define-structure query common-lisp:nil
                                    ((query-id :target-type uuid :member-name
                                      "QueryId")
                                     (query-status :target-type query-status
                                      :member-name "QueryStatus")
                                     (creation-time :target-type date
                                      :member-name "CreationTime"))
                                    (:shape-name "Query"))

(smithy/sdk/shapes:define-type query-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error query-id-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "QueryIdNotFoundException")
                                (:error-name "QueryIdNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-type query-parameter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map query-parameter-values :key query-parameter-key
                              :value query-parameter-value)

(smithy/sdk/shapes:define-list query-parameters :member query-parameter)

(smithy/sdk/shapes:define-map query-result-column :key query-result-key :value
                              query-result-value)

(smithy/sdk/shapes:define-type query-result-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-result-row :member query-result-column)

(smithy/sdk/shapes:define-list query-result-rows :member query-result-row)

(smithy/sdk/shapes:define-type query-result-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-statement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-statistics common-lisp:nil
                                    ((results-count :target-type integer
                                      :member-name "ResultsCount")
                                     (total-results-count :target-type integer
                                      :member-name "TotalResultsCount")
                                     (bytes-scanned :target-type long
                                      :member-name "BytesScanned"))
                                    (:shape-name "QueryStatistics"))

(smithy/sdk/shapes:define-structure query-statistics-for-describe-query
                                    common-lisp:nil
                                    ((events-matched :target-type long
                                      :member-name "EventsMatched")
                                     (events-scanned :target-type long
                                      :member-name "EventsScanned")
                                     (bytes-scanned :target-type long
                                      :member-name "BytesScanned")
                                     (execution-time-in-millis :target-type
                                      integer :member-name
                                      "ExecutionTimeInMillis")
                                     (creation-time :target-type date
                                      :member-name "CreationTime"))
                                    (:shape-name
                                     "QueryStatisticsForDescribeQuery"))

(smithy/sdk/shapes:define-enum query-status
    common-lisp:nil
  (:queued "QUEUED")
  (:running "RUNNING")
  (:finished "FINISHED")
  (:failed "FAILED")
  (:cancelled "CANCELLED")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-enum read-write-type
    common-lisp:nil
  (:read-only "ReadOnly")
  (:write-only "WriteOnly")
  (:all "All"))

(smithy/sdk/shapes:define-type refresh-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure refresh-schedule common-lisp:nil
                                    ((frequency :target-type
                                      refresh-schedule-frequency :member-name
                                      "Frequency")
                                     (status :target-type
                                      refresh-schedule-status :member-name
                                      "Status")
                                     (time-of-day :target-type time-of-day
                                      :member-name "TimeOfDay"))
                                    (:shape-name "RefreshSchedule"))

(smithy/sdk/shapes:define-structure refresh-schedule-frequency common-lisp:nil
                                    ((unit :target-type
                                      refresh-schedule-frequency-unit
                                      :member-name "Unit")
                                     (value :target-type
                                      refresh-schedule-frequency-value
                                      :member-name "Value"))
                                    (:shape-name "RefreshScheduleFrequency"))

(smithy/sdk/shapes:define-enum refresh-schedule-frequency-unit
    common-lisp:nil
  (:hours "HOURS")
  (:days "DAYS"))

(smithy/sdk/shapes:define-type refresh-schedule-frequency-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum refresh-schedule-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input register-organization-delegated-admin-request
                                common-lisp:nil
                                ((member-account-id :target-type account-id
                                  :required common-lisp:t :member-name
                                  "MemberAccountId"))
                                (:shape-name
                                 "RegisterOrganizationDelegatedAdminRequest"))

(smithy/sdk/shapes:define-output register-organization-delegated-admin-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RegisterOrganizationDelegatedAdminResponse"))

(smithy/sdk/shapes:define-input remove-tags-request common-lisp:nil
                                ((resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (tags-list :target-type tags-list :required
                                  common-lisp:t :member-name "TagsList"))
                                (:shape-name "RemoveTagsRequest"))

(smithy/sdk/shapes:define-output remove-tags-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveTagsResponse"))

(smithy/sdk/shapes:define-structure request-widget common-lisp:nil
                                    ((query-statement :target-type
                                      query-statement :required common-lisp:t
                                      :member-name "QueryStatement")
                                     (query-parameters :target-type
                                      query-parameters :member-name
                                      "QueryParameters")
                                     (view-properties :target-type
                                      view-properties-map :required
                                      common-lisp:t :member-name
                                      "ViewProperties"))
                                    (:shape-name "RequestWidget"))

(smithy/sdk/shapes:define-list request-widget-list :member request-widget)

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((resource-type :target-type string
                                      :member-name "ResourceType")
                                     (resource-name :target-type string
                                      :member-name "ResourceName"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-error resource-arnnot-valid-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceARNNotValidException")
                                (:error-name "ResourceARNNotValid")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-id-list :member string)

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-policy-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourcePolicyNotFoundException")
                                (:error-name "ResourcePolicyNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-policy-not-valid-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourcePolicyNotValidException")
                                (:error-name "ResourcePolicyNotValid")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((resource-id :target-type string
                                      :member-name "ResourceId")
                                     (tags-list :target-type tags-list
                                      :member-name "TagsList"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-error resource-type-not-supported-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ResourceTypeNotSupportedException")
                                (:error-name "ResourceTypeNotSupported")
                                (:error-code 400))

(smithy/sdk/shapes:define-input restore-event-data-store-request
                                common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore"))
                                (:shape-name "RestoreEventDataStoreRequest"))

(smithy/sdk/shapes:define-output restore-event-data-store-response
                                 common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (name :target-type event-data-store-name
                                   :member-name "Name")
                                  (status :target-type event-data-store-status
                                   :member-name "Status")
                                  (advanced-event-selectors :target-type
                                   advanced-event-selectors :member-name
                                   "AdvancedEventSelectors")
                                  (multi-region-enabled :target-type boolean
                                   :member-name "MultiRegionEnabled")
                                  (organization-enabled :target-type boolean
                                   :member-name "OrganizationEnabled")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (kms-key-id :target-type
                                   event-data-store-kms-key-id :member-name
                                   "KmsKeyId")
                                  (billing-mode :target-type billing-mode
                                   :member-name "BillingMode"))
                                 (:shape-name "RestoreEventDataStoreResponse"))

(smithy/sdk/shapes:define-type retention-period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error s3bucket-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "S3BucketDoesNotExistException")
                                (:error-name "S3BucketDoesNotExist")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure s3import-source common-lisp:nil
                                    ((s3location-uri :target-type string
                                      :required common-lisp:t :member-name
                                      "S3LocationUri")
                                     (s3bucket-region :target-type string
                                      :required common-lisp:t :member-name
                                      "S3BucketRegion")
                                     (s3bucket-access-role-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "S3BucketAccessRoleArn"))
                                    (:shape-name "S3ImportSource"))

(smithy/sdk/shapes:define-type sample-query-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sample-query-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sample-query-relevance
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type sample-query-sql smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-sample-queries-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input search-sample-queries-request common-lisp:nil
                                ((search-phrase :target-type
                                  search-sample-queries-search-phrase :required
                                  common-lisp:t :member-name "SearchPhrase")
                                 (max-results :target-type
                                  search-sample-queries-max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "SearchSampleQueriesRequest"))

(smithy/sdk/shapes:define-output search-sample-queries-response common-lisp:nil
                                 ((search-results :target-type
                                   search-sample-queries-search-results
                                   :member-name "SearchResults")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "SearchSampleQueriesResponse"))

(smithy/sdk/shapes:define-type search-sample-queries-search-phrase
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure search-sample-queries-search-result
                                    common-lisp:nil
                                    ((name :target-type sample-query-name
                                      :member-name "Name")
                                     (description :target-type
                                      sample-query-description :member-name
                                      "Description")
                                     (sql :target-type sample-query-sql
                                      :member-name "SQL")
                                     (relevance :target-type
                                      sample-query-relevance :member-name
                                      "Relevance"))
                                    (:shape-name
                                     "SearchSampleQueriesSearchResult"))

(smithy/sdk/shapes:define-list search-sample-queries-search-results :member
                               search-sample-queries-search-result)

(smithy/sdk/shapes:define-type selector-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type selector-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-name "ServiceQuotaExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-config common-lisp:nil
                                    ((apply-to-all-regions :target-type boolean
                                      :member-name "ApplyToAllRegions")
                                     (advanced-event-selectors :target-type
                                      advanced-event-selectors :member-name
                                      "AdvancedEventSelectors"))
                                    (:shape-name "SourceConfig"))

(smithy/sdk/shapes:define-input start-dashboard-refresh-request common-lisp:nil
                                ((dashboard-id :target-type dashboard-arn
                                  :required common-lisp:t :member-name
                                  "DashboardId")
                                 (query-parameter-values :target-type
                                  query-parameter-values :member-name
                                  "QueryParameterValues"))
                                (:shape-name "StartDashboardRefreshRequest"))

(smithy/sdk/shapes:define-output start-dashboard-refresh-response
                                 common-lisp:nil
                                 ((refresh-id :target-type refresh-id
                                   :member-name "RefreshId"))
                                 (:shape-name "StartDashboardRefreshResponse"))

(smithy/sdk/shapes:define-input start-event-data-store-ingestion-request
                                common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore"))
                                (:shape-name
                                 "StartEventDataStoreIngestionRequest"))

(smithy/sdk/shapes:define-output start-event-data-store-ingestion-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartEventDataStoreIngestionResponse"))

(smithy/sdk/shapes:define-input start-import-request common-lisp:nil
                                ((destinations :target-type import-destinations
                                  :member-name "Destinations")
                                 (import-source :target-type import-source
                                  :member-name "ImportSource")
                                 (start-event-time :target-type date
                                  :member-name "StartEventTime")
                                 (end-event-time :target-type date :member-name
                                  "EndEventTime")
                                 (import-id :target-type uuid :member-name
                                  "ImportId"))
                                (:shape-name "StartImportRequest"))

(smithy/sdk/shapes:define-output start-import-response common-lisp:nil
                                 ((import-id :target-type uuid :member-name
                                   "ImportId")
                                  (destinations :target-type
                                   import-destinations :member-name
                                   "Destinations")
                                  (import-source :target-type import-source
                                   :member-name "ImportSource")
                                  (start-event-time :target-type date
                                   :member-name "StartEventTime")
                                  (end-event-time :target-type date
                                   :member-name "EndEventTime")
                                  (import-status :target-type import-status
                                   :member-name "ImportStatus")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp"))
                                 (:shape-name "StartImportResponse"))

(smithy/sdk/shapes:define-input start-logging-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StartLoggingRequest"))

(smithy/sdk/shapes:define-output start-logging-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartLoggingResponse"))

(smithy/sdk/shapes:define-input start-query-request common-lisp:nil
                                ((query-statement :target-type query-statement
                                  :member-name "QueryStatement")
                                 (delivery-s3uri :target-type delivery-s3uri
                                  :member-name "DeliveryS3Uri")
                                 (query-alias :target-type query-alias
                                  :member-name "QueryAlias")
                                 (query-parameters :target-type
                                  query-parameters :member-name
                                  "QueryParameters")
                                 (event-data-store-owner-account-id
                                  :target-type account-id :member-name
                                  "EventDataStoreOwnerAccountId"))
                                (:shape-name "StartQueryRequest"))

(smithy/sdk/shapes:define-output start-query-response common-lisp:nil
                                 ((query-id :target-type uuid :member-name
                                   "QueryId")
                                  (event-data-store-owner-account-id
                                   :target-type account-id :member-name
                                   "EventDataStoreOwnerAccountId"))
                                 (:shape-name "StartQueryResponse"))

(smithy/sdk/shapes:define-input stop-event-data-store-ingestion-request
                                common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore"))
                                (:shape-name
                                 "StopEventDataStoreIngestionRequest"))

(smithy/sdk/shapes:define-output stop-event-data-store-ingestion-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopEventDataStoreIngestionResponse"))

(smithy/sdk/shapes:define-input stop-import-request common-lisp:nil
                                ((import-id :target-type uuid :required
                                  common-lisp:t :member-name "ImportId"))
                                (:shape-name "StopImportRequest"))

(smithy/sdk/shapes:define-output stop-import-response common-lisp:nil
                                 ((import-id :target-type uuid :member-name
                                   "ImportId")
                                  (import-source :target-type import-source
                                   :member-name "ImportSource")
                                  (destinations :target-type
                                   import-destinations :member-name
                                   "Destinations")
                                  (import-status :target-type import-status
                                   :member-name "ImportStatus")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (start-event-time :target-type date
                                   :member-name "StartEventTime")
                                  (end-event-time :target-type date
                                   :member-name "EndEventTime")
                                  (import-statistics :target-type
                                   import-statistics :member-name
                                   "ImportStatistics"))
                                 (:shape-name "StopImportResponse"))

(smithy/sdk/shapes:define-input stop-logging-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StopLoggingRequest"))

(smithy/sdk/shapes:define-output stop-logging-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopLoggingResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error tags-limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TagsLimitExceededException")
                                (:error-name "TagsLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tags-list :member tag)

(smithy/sdk/shapes:define-type termination-protection-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time-of-day smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list timestamps :member date)

(smithy/sdk/shapes:define-structure trail common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (s3bucket-name :target-type string
                                      :member-name "S3BucketName")
                                     (s3key-prefix :target-type string
                                      :member-name "S3KeyPrefix")
                                     (sns-topic-name :target-type string
                                      :member-name "SnsTopicName")
                                     (sns-topic-arn :target-type string
                                      :member-name "SnsTopicARN")
                                     (include-global-service-events
                                      :target-type boolean :member-name
                                      "IncludeGlobalServiceEvents")
                                     (is-multi-region-trail :target-type
                                      boolean :member-name
                                      "IsMultiRegionTrail")
                                     (home-region :target-type string
                                      :member-name "HomeRegion")
                                     (trail-arn :target-type string
                                      :member-name "TrailARN")
                                     (log-file-validation-enabled :target-type
                                      boolean :member-name
                                      "LogFileValidationEnabled")
                                     (cloud-watch-logs-log-group-arn
                                      :target-type string :member-name
                                      "CloudWatchLogsLogGroupArn")
                                     (cloud-watch-logs-role-arn :target-type
                                      string :member-name
                                      "CloudWatchLogsRoleArn")
                                     (kms-key-id :target-type string
                                      :member-name "KmsKeyId")
                                     (has-custom-event-selectors :target-type
                                      boolean :member-name
                                      "HasCustomEventSelectors")
                                     (has-insight-selectors :target-type
                                      boolean :member-name
                                      "HasInsightSelectors")
                                     (is-organization-trail :target-type
                                      boolean :member-name
                                      "IsOrganizationTrail"))
                                    (:shape-name "Trail"))

(smithy/sdk/shapes:define-error trail-already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TrailAlreadyExistsException")
                                (:error-name "TrailAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure trail-info common-lisp:nil
                                    ((trail-arn :target-type string
                                      :member-name "TrailARN")
                                     (name :target-type string :member-name
                                      "Name")
                                     (home-region :target-type string
                                      :member-name "HomeRegion"))
                                    (:shape-name "TrailInfo"))

(smithy/sdk/shapes:define-list trail-list :member trail)

(smithy/sdk/shapes:define-list trail-name-list :member string)

(smithy/sdk/shapes:define-error trail-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TrailNotFoundException")
                                (:error-name "TrailNotFound") (:error-code 404))

(smithy/sdk/shapes:define-error trail-not-provided-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TrailNotProvidedException")
                                (:error-name "TrailNotProvided")
                                (:error-code 404))

(smithy/sdk/shapes:define-list trails :member trail-info)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:tag-context "TagContext")
  (:request-context "RequestContext"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-name "UnsupportedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-channel-request common-lisp:nil
                                ((channel :target-type channel-arn :required
                                  common-lisp:t :member-name "Channel")
                                 (destinations :target-type destinations
                                  :member-name "Destinations")
                                 (name :target-type channel-name :member-name
                                  "Name"))
                                (:shape-name "UpdateChannelRequest"))

(smithy/sdk/shapes:define-output update-channel-response common-lisp:nil
                                 ((channel-arn :target-type channel-arn
                                   :member-name "ChannelArn")
                                  (name :target-type channel-name :member-name
                                   "Name")
                                  (source :target-type source :member-name
                                   "Source")
                                  (destinations :target-type destinations
                                   :member-name "Destinations"))
                                 (:shape-name "UpdateChannelResponse"))

(smithy/sdk/shapes:define-input update-dashboard-request common-lisp:nil
                                ((dashboard-id :target-type dashboard-arn
                                  :required common-lisp:t :member-name
                                  "DashboardId")
                                 (widgets :target-type request-widget-list
                                  :member-name "Widgets")
                                 (refresh-schedule :target-type
                                  refresh-schedule :member-name
                                  "RefreshSchedule")
                                 (termination-protection-enabled :target-type
                                  termination-protection-enabled :member-name
                                  "TerminationProtectionEnabled"))
                                (:shape-name "UpdateDashboardRequest"))

(smithy/sdk/shapes:define-output update-dashboard-response common-lisp:nil
                                 ((dashboard-arn :target-type dashboard-arn
                                   :member-name "DashboardArn")
                                  (name :target-type dashboard-name
                                   :member-name "Name")
                                  (type :target-type dashboard-type
                                   :member-name "Type")
                                  (widgets :target-type widget-list
                                   :member-name "Widgets")
                                  (refresh-schedule :target-type
                                   refresh-schedule :member-name
                                   "RefreshSchedule")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp"))
                                 (:shape-name "UpdateDashboardResponse"))

(smithy/sdk/shapes:define-input update-event-data-store-request common-lisp:nil
                                ((event-data-store :target-type
                                  event-data-store-arn :required common-lisp:t
                                  :member-name "EventDataStore")
                                 (name :target-type event-data-store-name
                                  :member-name "Name")
                                 (advanced-event-selectors :target-type
                                  advanced-event-selectors :member-name
                                  "AdvancedEventSelectors")
                                 (multi-region-enabled :target-type boolean
                                  :member-name "MultiRegionEnabled")
                                 (organization-enabled :target-type boolean
                                  :member-name "OrganizationEnabled")
                                 (retention-period :target-type
                                  retention-period :member-name
                                  "RetentionPeriod")
                                 (termination-protection-enabled :target-type
                                  termination-protection-enabled :member-name
                                  "TerminationProtectionEnabled")
                                 (kms-key-id :target-type
                                  event-data-store-kms-key-id :member-name
                                  "KmsKeyId")
                                 (billing-mode :target-type billing-mode
                                  :member-name "BillingMode"))
                                (:shape-name "UpdateEventDataStoreRequest"))

(smithy/sdk/shapes:define-output update-event-data-store-response
                                 common-lisp:nil
                                 ((event-data-store-arn :target-type
                                   event-data-store-arn :member-name
                                   "EventDataStoreArn")
                                  (name :target-type event-data-store-name
                                   :member-name "Name")
                                  (status :target-type event-data-store-status
                                   :member-name "Status")
                                  (advanced-event-selectors :target-type
                                   advanced-event-selectors :member-name
                                   "AdvancedEventSelectors")
                                  (multi-region-enabled :target-type boolean
                                   :member-name "MultiRegionEnabled")
                                  (organization-enabled :target-type boolean
                                   :member-name "OrganizationEnabled")
                                  (retention-period :target-type
                                   retention-period :member-name
                                   "RetentionPeriod")
                                  (termination-protection-enabled :target-type
                                   termination-protection-enabled :member-name
                                   "TerminationProtectionEnabled")
                                  (created-timestamp :target-type date
                                   :member-name "CreatedTimestamp")
                                  (updated-timestamp :target-type date
                                   :member-name "UpdatedTimestamp")
                                  (kms-key-id :target-type
                                   event-data-store-kms-key-id :member-name
                                   "KmsKeyId")
                                  (billing-mode :target-type billing-mode
                                   :member-name "BillingMode")
                                  (federation-status :target-type
                                   federation-status :member-name
                                   "FederationStatus")
                                  (federation-role-arn :target-type
                                   federation-role-arn :member-name
                                   "FederationRoleArn"))
                                 (:shape-name "UpdateEventDataStoreResponse"))

(smithy/sdk/shapes:define-input update-trail-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (s3bucket-name :target-type string
                                  :member-name "S3BucketName")
                                 (s3key-prefix :target-type string :member-name
                                  "S3KeyPrefix")
                                 (sns-topic-name :target-type string
                                  :member-name "SnsTopicName")
                                 (include-global-service-events :target-type
                                  boolean :member-name
                                  "IncludeGlobalServiceEvents")
                                 (is-multi-region-trail :target-type boolean
                                  :member-name "IsMultiRegionTrail")
                                 (enable-log-file-validation :target-type
                                  boolean :member-name
                                  "EnableLogFileValidation")
                                 (cloud-watch-logs-log-group-arn :target-type
                                  string :member-name
                                  "CloudWatchLogsLogGroupArn")
                                 (cloud-watch-logs-role-arn :target-type string
                                  :member-name "CloudWatchLogsRoleArn")
                                 (kms-key-id :target-type string :member-name
                                  "KmsKeyId")
                                 (is-organization-trail :target-type boolean
                                  :member-name "IsOrganizationTrail"))
                                (:shape-name "UpdateTrailRequest"))

(smithy/sdk/shapes:define-output update-trail-response common-lisp:nil
                                 ((name :target-type string :member-name
                                   "Name")
                                  (s3bucket-name :target-type string
                                   :member-name "S3BucketName")
                                  (s3key-prefix :target-type string
                                   :member-name "S3KeyPrefix")
                                  (sns-topic-name :target-type string
                                   :member-name "SnsTopicName")
                                  (sns-topic-arn :target-type string
                                   :member-name "SnsTopicARN")
                                  (include-global-service-events :target-type
                                   boolean :member-name
                                   "IncludeGlobalServiceEvents")
                                  (is-multi-region-trail :target-type boolean
                                   :member-name "IsMultiRegionTrail")
                                  (trail-arn :target-type string :member-name
                                   "TrailARN")
                                  (log-file-validation-enabled :target-type
                                   boolean :member-name
                                   "LogFileValidationEnabled")
                                  (cloud-watch-logs-log-group-arn :target-type
                                   string :member-name
                                   "CloudWatchLogsLogGroupArn")
                                  (cloud-watch-logs-role-arn :target-type
                                   string :member-name "CloudWatchLogsRoleArn")
                                  (kms-key-id :target-type string :member-name
                                   "KmsKeyId")
                                  (is-organization-trail :target-type boolean
                                   :member-name "IsOrganizationTrail"))
                                 (:shape-name "UpdateTrailResponse"))

(smithy/sdk/shapes:define-type view-properties-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map view-properties-map :key view-properties-key
                              :value view-properties-value)

(smithy/sdk/shapes:define-type view-properties-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure widget common-lisp:nil
                                    ((query-alias :target-type query-alias
                                      :member-name "QueryAlias")
                                     (query-statement :target-type
                                      query-statement :member-name
                                      "QueryStatement")
                                     (query-parameters :target-type
                                      query-parameters :member-name
                                      "QueryParameters")
                                     (view-properties :target-type
                                      view-properties-map :member-name
                                      "ViewProperties"))
                                    (:shape-name "Widget"))

(smithy/sdk/shapes:define-list widget-list :member widget)

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-request :output
                                       add-tags-response :errors
                                       (channel-arninvalid-exception
                                        channel-not-found-exception
                                        cloud-trail-arninvalid-exception
                                        conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-tag-parameter-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception
                                        resource-type-not-supported-exception
                                        tags-limit-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation cancel-query :shape-name "CancelQuery"
                                       :input cancel-query-request :output
                                       cancel-query-response :errors
                                       (conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        inactive-query-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        query-id-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-request :output
                                       create-channel-response :errors
                                       (channel-already-exists-exception
                                        channel-max-limit-exceeded-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-event-data-store-category-exception
                                        invalid-parameter-exception
                                        invalid-source-exception
                                        invalid-tag-parameter-exception
                                        operation-not-permitted-exception
                                        tags-limit-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-dashboard :shape-name
                                       "CreateDashboard" :input
                                       create-dashboard-request :output
                                       create-dashboard-response :errors
                                       (conflict-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-encryption-policy-exception
                                        invalid-query-statement-exception
                                        invalid-tag-parameter-exception
                                        service-quota-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-event-data-store :shape-name
                                       "CreateEventDataStore" :input
                                       create-event-data-store-request :output
                                       create-event-data-store-response :errors
                                       (cloud-trail-access-not-enabled-exception
                                        conflict-exception
                                        event-data-store-already-exists-exception
                                        event-data-store-max-limit-exceeded-exception
                                        insufficient-dependency-service-access-permission-exception
                                        insufficient-encryption-policy-exception
                                        invalid-event-selectors-exception
                                        invalid-kms-key-id-exception
                                        invalid-parameter-exception
                                        invalid-tag-parameter-exception
                                        kms-exception
                                        kms-key-not-found-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-trail :shape-name "CreateTrail"
                                       :input create-trail-request :output
                                       create-trail-response :errors
                                       (cloud-trail-access-not-enabled-exception
                                        cloud-trail-invalid-client-token-id-exception
                                        cloud-watch-logs-delivery-unavailable-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        insufficient-encryption-policy-exception
                                        insufficient-s3bucket-policy-exception
                                        insufficient-sns-topic-policy-exception
                                        invalid-cloud-watch-logs-log-group-arn-exception
                                        invalid-cloud-watch-logs-role-arn-exception
                                        invalid-kms-key-id-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-exception
                                        invalid-s3bucket-name-exception
                                        invalid-s3prefix-exception
                                        invalid-sns-topic-name-exception
                                        invalid-tag-parameter-exception
                                        invalid-trail-name-exception
                                        kms-exception
                                        kms-key-disabled-exception
                                        kms-key-not-found-exception
                                        maximum-number-of-trails-exceeded-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        s3bucket-does-not-exist-exception
                                        tags-limit-exceeded-exception
                                        throttling-exception
                                        trail-already-exists-exception
                                        trail-not-provided-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-channel :shape-name
                                       "DeleteChannel" :input
                                       delete-channel-request :output
                                       delete-channel-response :errors
                                       (channel-arninvalid-exception
                                        channel-not-found-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-dashboard :shape-name
                                       "DeleteDashboard" :input
                                       delete-dashboard-request :output
                                       delete-dashboard-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-event-data-store :shape-name
                                       "DeleteEventDataStore" :input
                                       delete-event-data-store-request :output
                                       delete-event-data-store-response :errors
                                       (channel-exists-for-edsexception
                                        conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-federation-enabled-exception
                                        event-data-store-has-ongoing-import-exception
                                        event-data-store-not-found-exception
                                        event-data-store-termination-protected-exception
                                        inactive-event-data-store-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (conflict-exception
                                        operation-not-permitted-exception
                                        resource-arnnot-valid-exception
                                        resource-not-found-exception
                                        resource-policy-not-found-exception
                                        resource-type-not-supported-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-trail :shape-name "DeleteTrail"
                                       :input delete-trail-request :output
                                       delete-trail-response :errors
                                       (cloud-trail-arninvalid-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-home-region-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation deregister-organization-delegated-admin
                                       :shape-name
                                       "DeregisterOrganizationDelegatedAdmin"
                                       :input
                                       deregister-organization-delegated-admin-request
                                       :output
                                       deregister-organization-delegated-admin-response
                                       :errors
                                       (account-not-found-exception
                                        account-not-registered-exception
                                        cloud-trail-access-not-enabled-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-parameter-exception
                                        not-organization-management-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-query :shape-name
                                       "DescribeQuery" :input
                                       describe-query-request :output
                                       describe-query-response :errors
                                       (event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        query-id-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-trails :shape-name
                                       "DescribeTrails" :input
                                       describe-trails-request :output
                                       describe-trails-response :errors
                                       (cloud-trail-arninvalid-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation disable-federation :shape-name
                                       "DisableFederation" :input
                                       disable-federation-request :output
                                       disable-federation-response :errors
                                       (access-denied-exception
                                        cloud-trail-access-not-enabled-exception
                                        concurrent-modification-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation enable-federation :shape-name
                                       "EnableFederation" :input
                                       enable-federation-request :output
                                       enable-federation-response :errors
                                       (access-denied-exception
                                        cloud-trail-access-not-enabled-exception
                                        concurrent-modification-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-federation-enabled-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation generate-query :shape-name
                                       "GenerateQuery" :input
                                       generate-query-request :output
                                       generate-query-response :errors
                                       (event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        generate-response-exception
                                        inactive-event-data-store-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-channel :shape-name "GetChannel"
                                       :input get-channel-request :output
                                       get-channel-response :errors
                                       (channel-arninvalid-exception
                                        channel-not-found-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-dashboard :shape-name "GetDashboard"
                                       :input get-dashboard-request :output
                                       get-dashboard-response :errors
                                       (resource-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-event-configuration :shape-name
                                       "GetEventConfiguration" :input
                                       get-event-configuration-request :output
                                       get-event-configuration-response :errors
                                       (cloud-trail-arninvalid-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        invalid-event-data-store-category-exception
                                        invalid-event-data-store-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-event-data-store :shape-name
                                       "GetEventDataStore" :input
                                       get-event-data-store-request :output
                                       get-event-data-store-response :errors
                                       (event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-event-selectors :shape-name
                                       "GetEventSelectors" :input
                                       get-event-selectors-request :output
                                       get-event-selectors-response :errors
                                       (cloud-trail-arninvalid-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-import :shape-name "GetImport"
                                       :input get-import-request :output
                                       get-import-response :errors
                                       (import-not-found-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-insight-selectors :shape-name
                                       "GetInsightSelectors" :input
                                       get-insight-selectors-request :output
                                       get-insight-selectors-response :errors
                                       (cloud-trail-arninvalid-exception
                                        insight-not-enabled-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-query-results :shape-name
                                       "GetQueryResults" :input
                                       get-query-results-request :output
                                       get-query-results-response :errors
                                       (event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-encryption-policy-exception
                                        invalid-max-results-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        query-id-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (operation-not-permitted-exception
                                        resource-arnnot-valid-exception
                                        resource-not-found-exception
                                        resource-policy-not-found-exception
                                        resource-type-not-supported-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-trail :shape-name "GetTrail" :input
                                       get-trail-request :output
                                       get-trail-response :errors
                                       (cloud-trail-arninvalid-exception
                                        invalid-trail-name-exception
                                        operation-not-permitted-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation get-trail-status :shape-name
                                       "GetTrailStatus" :input
                                       get-trail-status-request :output
                                       get-trail-status-response :errors
                                       (cloud-trail-arninvalid-exception
                                        invalid-trail-name-exception
                                        operation-not-permitted-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (invalid-next-token-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-dashboards :shape-name
                                       "ListDashboards" :input
                                       list-dashboards-request :output
                                       list-dashboards-response :errors
                                       (unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-event-data-stores :shape-name
                                       "ListEventDataStores" :input
                                       list-event-data-stores-request :output
                                       list-event-data-stores-response :errors
                                       (invalid-max-results-exception
                                        invalid-next-token-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-import-failures :shape-name
                                       "ListImportFailures" :input
                                       list-import-failures-request :output
                                       list-import-failures-response :errors
                                       (invalid-next-token-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-imports :shape-name "ListImports"
                                       :input list-imports-request :output
                                       list-imports-response :errors
                                       (event-data-store-arninvalid-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-insights-metric-data :shape-name
                                       "ListInsightsMetricData" :input
                                       list-insights-metric-data-request
                                       :output
                                       list-insights-metric-data-response
                                       :errors
                                       (invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-public-keys :shape-name
                                       "ListPublicKeys" :input
                                       list-public-keys-request :output
                                       list-public-keys-response :errors
                                       (invalid-time-range-exception
                                        invalid-token-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-queries :shape-name "ListQueries"
                                       :input list-queries-request :output
                                       list-queries-response :errors
                                       (event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-date-range-exception
                                        invalid-max-results-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-query-status-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (channel-arninvalid-exception
                                        cloud-trail-arninvalid-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-token-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception
                                        resource-type-not-supported-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-trails :shape-name "ListTrails"
                                       :input list-trails-request :output
                                       list-trails-response :errors
                                       (operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation lookup-events :shape-name "LookupEvents"
                                       :input lookup-events-request :output
                                       lookup-events-response :errors
                                       (invalid-event-category-exception
                                        invalid-lookup-attributes-exception
                                        invalid-max-results-exception
                                        invalid-next-token-exception
                                        invalid-time-range-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation put-event-configuration :shape-name
                                       "PutEventConfiguration" :input
                                       put-event-configuration-request :output
                                       put-event-configuration-response :errors
                                       (cloud-trail-arninvalid-exception
                                        conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-dependency-service-access-permission-exception
                                        insufficient-iamaccess-permission-exception
                                        invalid-event-data-store-category-exception
                                        invalid-event-data-store-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        throttling-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation put-event-selectors :shape-name
                                       "PutEventSelectors" :input
                                       put-event-selectors-request :output
                                       put-event-selectors-response :errors
                                       (cloud-trail-arninvalid-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-event-selectors-exception
                                        invalid-home-region-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation put-insight-selectors :shape-name
                                       "PutInsightSelectors" :input
                                       put-insight-selectors-request :output
                                       put-insight-selectors-response :errors
                                       (cloud-trail-arninvalid-exception
                                        insufficient-encryption-policy-exception
                                        insufficient-s3bucket-policy-exception
                                        invalid-home-region-exception
                                        invalid-insight-selectors-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-exception
                                        invalid-trail-name-exception
                                        kms-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        s3bucket-does-not-exist-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (conflict-exception
                                        operation-not-permitted-exception
                                        resource-arnnot-valid-exception
                                        resource-not-found-exception
                                        resource-policy-not-valid-exception
                                        resource-type-not-supported-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation register-organization-delegated-admin
                                       :shape-name
                                       "RegisterOrganizationDelegatedAdmin"
                                       :input
                                       register-organization-delegated-admin-request
                                       :output
                                       register-organization-delegated-admin-response
                                       :errors
                                       (account-not-found-exception
                                        account-registered-exception
                                        cannot-delegate-management-account-exception
                                        cloud-trail-access-not-enabled-exception
                                        conflict-exception
                                        delegated-admin-account-limit-exceeded-exception
                                        insufficient-dependency-service-access-permission-exception
                                        insufficient-iamaccess-permission-exception
                                        invalid-parameter-exception
                                        not-organization-management-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-request :output
                                       remove-tags-response :errors
                                       (channel-arninvalid-exception
                                        channel-not-found-exception
                                        cloud-trail-arninvalid-exception
                                        conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-tag-parameter-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception
                                        resource-type-not-supported-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation restore-event-data-store :shape-name
                                       "RestoreEventDataStore" :input
                                       restore-event-data-store-request :output
                                       restore-event-data-store-response
                                       :errors
                                       (cloud-trail-access-not-enabled-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-max-limit-exceeded-exception
                                        event-data-store-not-found-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-event-data-store-status-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation search-sample-queries :shape-name
                                       "SearchSampleQueries" :input
                                       search-sample-queries-request :output
                                       search-sample-queries-response :errors
                                       (invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-dashboard-refresh :shape-name
                                       "StartDashboardRefresh" :input
                                       start-dashboard-refresh-request :output
                                       start-dashboard-refresh-response :errors
                                       (event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-event-data-store-ingestion
                                       :shape-name
                                       "StartEventDataStoreIngestion" :input
                                       start-event-data-store-ingestion-request
                                       :output
                                       start-event-data-store-ingestion-response
                                       :errors
                                       (conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-event-data-store-category-exception
                                        invalid-event-data-store-status-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-import :shape-name "StartImport"
                                       :input start-import-request :output
                                       start-import-response :errors
                                       (account-has-ongoing-import-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        import-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-encryption-policy-exception
                                        invalid-event-data-store-category-exception
                                        invalid-event-data-store-status-exception
                                        invalid-import-source-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-logging :shape-name "StartLogging"
                                       :input start-logging-request :output
                                       start-logging-response :errors
                                       (cloud-trail-arninvalid-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-home-region-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-query :shape-name "StartQuery"
                                       :input start-query-request :output
                                       start-query-response :errors
                                       (event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-encryption-policy-exception
                                        insufficient-s3bucket-policy-exception
                                        invalid-parameter-exception
                                        invalid-query-statement-exception
                                        invalid-s3bucket-name-exception
                                        invalid-s3prefix-exception
                                        max-concurrent-queries-exception
                                        no-management-account-slrexists-exception
                                        operation-not-permitted-exception
                                        s3bucket-does-not-exist-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation stop-event-data-store-ingestion
                                       :shape-name
                                       "StopEventDataStoreIngestion" :input
                                       stop-event-data-store-ingestion-request
                                       :output
                                       stop-event-data-store-ingestion-response
                                       :errors
                                       (conflict-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-event-data-store-category-exception
                                        invalid-event-data-store-status-exception
                                        invalid-parameter-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation stop-import :shape-name "StopImport"
                                       :input stop-import-request :output
                                       stop-import-response :errors
                                       (import-not-found-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation stop-logging :shape-name "StopLogging"
                                       :input stop-logging-request :output
                                       stop-logging-response :errors
                                       (cloud-trail-arninvalid-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        invalid-home-region-exception
                                        invalid-trail-name-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-request :output
                                       update-channel-response :errors
                                       (channel-already-exists-exception
                                        channel-arninvalid-exception
                                        channel-not-found-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        invalid-event-data-store-category-exception
                                        invalid-parameter-exception
                                        operation-not-permitted-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-dashboard :shape-name
                                       "UpdateDashboard" :input
                                       update-dashboard-request :output
                                       update-dashboard-response :errors
                                       (conflict-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-encryption-policy-exception
                                        invalid-query-statement-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-event-data-store :shape-name
                                       "UpdateEventDataStore" :input
                                       update-event-data-store-request :output
                                       update-event-data-store-response :errors
                                       (cloud-trail-access-not-enabled-exception
                                        event-data-store-already-exists-exception
                                        event-data-store-arninvalid-exception
                                        event-data-store-has-ongoing-import-exception
                                        event-data-store-not-found-exception
                                        inactive-event-data-store-exception
                                        insufficient-dependency-service-access-permission-exception
                                        insufficient-encryption-policy-exception
                                        invalid-event-selectors-exception
                                        invalid-insight-selectors-exception
                                        invalid-kms-key-id-exception
                                        invalid-parameter-exception
                                        kms-exception
                                        kms-key-not-found-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-trail :shape-name "UpdateTrail"
                                       :input update-trail-request :output
                                       update-trail-response :errors
                                       (cloud-trail-access-not-enabled-exception
                                        cloud-trail-arninvalid-exception
                                        cloud-trail-invalid-client-token-id-exception
                                        cloud-watch-logs-delivery-unavailable-exception
                                        conflict-exception
                                        insufficient-dependency-service-access-permission-exception
                                        insufficient-encryption-policy-exception
                                        insufficient-s3bucket-policy-exception
                                        insufficient-sns-topic-policy-exception
                                        invalid-cloud-watch-logs-log-group-arn-exception
                                        invalid-cloud-watch-logs-role-arn-exception
                                        invalid-event-selectors-exception
                                        invalid-home-region-exception
                                        invalid-kms-key-id-exception
                                        invalid-parameter-combination-exception
                                        invalid-parameter-exception
                                        invalid-s3bucket-name-exception
                                        invalid-s3prefix-exception
                                        invalid-sns-topic-name-exception
                                        invalid-trail-name-exception
                                        kms-exception
                                        kms-key-disabled-exception
                                        kms-key-not-found-exception
                                        no-management-account-slrexists-exception
                                        not-organization-master-account-exception
                                        operation-not-permitted-exception
                                        organization-not-in-all-features-mode-exception
                                        organizations-not-in-use-exception
                                        s3bucket-does-not-exist-exception
                                        throttling-exception
                                        trail-not-found-exception
                                        trail-not-provided-exception
                                        unsupported-operation-exception))
