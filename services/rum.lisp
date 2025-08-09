(uiop/package:define-package #:pira/rum (:use)
                             (:export #:alias #:app-monitor
                              #:app-monitor-configuration #:app-monitor-details
                              #:app-monitor-domain #:app-monitor-domain-list
                              #:app-monitor-id #:app-monitor-name
                              #:app-monitor-resource #:app-monitor-summary
                              #:app-monitor-summary-list #:arn
                              #:batch-create-rum-metric-definitions
                              #:batch-create-rum-metric-definitions-error
                              #:batch-create-rum-metric-definitions-errors
                              #:batch-create-rum-metric-definitions-request
                              #:batch-create-rum-metric-definitions-response
                              #:batch-delete-rum-metric-definitions
                              #:batch-delete-rum-metric-definitions-error
                              #:batch-delete-rum-metric-definitions-errors
                              #:batch-delete-rum-metric-definitions-request
                              #:batch-delete-rum-metric-definitions-response
                              #:batch-get-rum-metric-definitions
                              #:batch-get-rum-metric-definitions-request
                              #:batch-get-rum-metric-definitions-response
                              #:create-app-monitor #:create-app-monitor-request
                              #:create-app-monitor-response #:custom-events
                              #:custom-events-status #:cw-log #:data-storage
                              #:delete-app-monitor #:delete-app-monitor-request
                              #:delete-app-monitor-response
                              #:delete-resource-policy
                              #:delete-rum-metrics-destination
                              #:delete-rum-metrics-destination-request
                              #:delete-rum-metrics-destination-response
                              #:deobfuscation-configuration
                              #:deobfuscation-s3uri #:deobfuscation-status
                              #:destination-arn #:dimension-key
                              #:dimension-keys-map #:dimension-name
                              #:event-data #:event-data-list #:event-pattern
                              #:favorite-pages #:get-app-monitor
                              #:get-app-monitor-data
                              #:get-app-monitor-data-request
                              #:get-app-monitor-data-response
                              #:get-app-monitor-request
                              #:get-app-monitor-response #:get-resource-policy
                              #:isotimestamp-string #:iam-role-arn
                              #:identity-pool-id #:java-script-source-maps
                              #:json-value #:list-app-monitors
                              #:list-app-monitors-request
                              #:list-app-monitors-response
                              #:list-rum-metrics-destinations
                              #:list-rum-metrics-destinations-request
                              #:list-rum-metrics-destinations-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:max-query-results #:max-results-integer
                              #:metric-definition #:metric-definition-id
                              #:metric-definition-ids
                              #:metric-definition-request #:metric-definitions
                              #:metric-definitions-request #:metric-destination
                              #:metric-destination-summary
                              #:metric-destination-summary-list #:metric-name
                              #:namespace #:pages #:policy-revision-id
                              #:put-resource-policy #:put-rum-events
                              #:put-rum-events-request
                              #:put-rum-events-response
                              #:put-rum-metrics-destination
                              #:put-rum-metrics-destination-request
                              #:put-rum-metrics-destination-response
                              #:query-filter #:query-filter-key
                              #:query-filter-value #:query-filter-value-list
                              #:query-filters #:query-timestamp #:rum
                              #:rum-event #:rum-event-list
                              #:session-sample-rate #:state-enum #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:telemetries #:telemetry
                              #:time-range #:token #:unit-label
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-app-monitor
                              #:update-app-monitor-request
                              #:update-app-monitor-response
                              #:update-rum-metric-definition
                              #:update-rum-metric-definition-request
                              #:update-rum-metric-definition-response #:url
                              #:user-details #:value-key))
(common-lisp:in-package #:pira/rum)

(smithy/sdk/service:define-service rum :shape-name "RUM" :version "2018-05-10"
                                   :title "CloudWatch RUM" :traits
                                   '(("aws.api#service" ("sdkId" . "RUM")
                                      ("arnNamespace" . "rum")
                                      ("serviceName" . "rum"))
                                     ("aws.auth#sigv4" ("name" . "rum"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure app-monitor common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :member-name "Name")
                                     (domain :target-type app-monitor-domain
                                      :member-name "Domain")
                                     (domain-list :target-type
                                      app-monitor-domain-list :member-name
                                      "DomainList")
                                     (id :target-type app-monitor-id
                                      :member-name "Id")
                                     (created :target-type isotimestamp-string
                                      :member-name "Created")
                                     (last-modified :target-type
                                      isotimestamp-string :member-name
                                      "LastModified")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (state :target-type state-enum
                                      :member-name "State")
                                     (app-monitor-configuration :target-type
                                      app-monitor-configuration :member-name
                                      "AppMonitorConfiguration")
                                     (data-storage :target-type data-storage
                                      :member-name "DataStorage")
                                     (custom-events :target-type custom-events
                                      :member-name "CustomEvents")
                                     (deobfuscation-configuration :target-type
                                      deobfuscation-configuration :member-name
                                      "DeobfuscationConfiguration"))
                                    (:shape-name "AppMonitor"))

(smithy/sdk/shapes:define-structure app-monitor-configuration common-lisp:nil
                                    ((identity-pool-id :target-type
                                      identity-pool-id :member-name
                                      "IdentityPoolId")
                                     (excluded-pages :target-type pages
                                      :member-name "ExcludedPages")
                                     (included-pages :target-type pages
                                      :member-name "IncludedPages")
                                     (favorite-pages :target-type
                                      favorite-pages :member-name
                                      "FavoritePages")
                                     (session-sample-rate :target-type
                                      session-sample-rate :member-name
                                      "SessionSampleRate")
                                     (guest-role-arn :target-type arn
                                      :member-name "GuestRoleArn")
                                     (allow-cookies :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AllowCookies")
                                     (telemetries :target-type telemetries
                                      :member-name "Telemetries")
                                     (enable-xray :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EnableXRay"))
                                    (:shape-name "AppMonitorConfiguration"))

(smithy/sdk/shapes:define-structure app-monitor-details common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version"))
                                    (:shape-name "AppMonitorDetails"))

(smithy/sdk/shapes:define-type app-monitor-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list app-monitor-domain-list :member
                               app-monitor-domain)

(smithy/sdk/shapes:define-type app-monitor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-monitor-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure app-monitor-summary common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :member-name "Name")
                                     (id :target-type app-monitor-id
                                      :member-name "Id")
                                     (created :target-type isotimestamp-string
                                      :member-name "Created")
                                     (last-modified :target-type
                                      isotimestamp-string :member-name
                                      "LastModified")
                                     (state :target-type state-enum
                                      :member-name "State"))
                                    (:shape-name "AppMonitorSummary"))

(smithy/sdk/shapes:define-list app-monitor-summary-list :member
                               app-monitor-summary)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-create-rum-metric-definitions-error
                                    common-lisp:nil
                                    ((metric-definition :target-type
                                      metric-definition-request :required
                                      common-lisp:t :member-name
                                      "MetricDefinition")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name
                                     "BatchCreateRumMetricDefinitionsError"))

(smithy/sdk/shapes:define-list batch-create-rum-metric-definitions-errors
                               :member
                               batch-create-rum-metric-definitions-error)

(smithy/sdk/shapes:define-structure batch-create-rum-metric-definitions-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (destination :target-type
                                      metric-destination :required
                                      common-lisp:t :member-name "Destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn")
                                     (metric-definitions :target-type
                                      metric-definitions-request :required
                                      common-lisp:t :member-name
                                      "MetricDefinitions"))
                                    (:shape-name
                                     "BatchCreateRumMetricDefinitionsRequest"))

(smithy/sdk/shapes:define-structure
 batch-create-rum-metric-definitions-response common-lisp:nil
 ((errors :target-type batch-create-rum-metric-definitions-errors :required
   common-lisp:t :member-name "Errors")
  (metric-definitions :target-type metric-definitions :member-name
   "MetricDefinitions"))
 (:shape-name "BatchCreateRumMetricDefinitionsResponse"))

(smithy/sdk/shapes:define-structure batch-delete-rum-metric-definitions-error
                                    common-lisp:nil
                                    ((metric-definition-id :target-type
                                      metric-definition-id :required
                                      common-lisp:t :member-name
                                      "MetricDefinitionId")
                                     (error-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name
                                     "BatchDeleteRumMetricDefinitionsError"))

(smithy/sdk/shapes:define-list batch-delete-rum-metric-definitions-errors
                               :member
                               batch-delete-rum-metric-definitions-error)

(smithy/sdk/shapes:define-structure batch-delete-rum-metric-definitions-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (destination :target-type
                                      metric-destination :required
                                      common-lisp:t :member-name "Destination"
                                      :http-query "destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn" :http-query
                                      "destinationArn")
                                     (metric-definition-ids :target-type
                                      metric-definition-ids :required
                                      common-lisp:t :member-name
                                      "MetricDefinitionIds" :http-query
                                      "metricDefinitionIds"))
                                    (:shape-name
                                     "BatchDeleteRumMetricDefinitionsRequest"))

(smithy/sdk/shapes:define-structure
 batch-delete-rum-metric-definitions-response common-lisp:nil
 ((errors :target-type batch-delete-rum-metric-definitions-errors :required
   common-lisp:t :member-name "Errors")
  (metric-definition-ids :target-type metric-definition-ids :member-name
   "MetricDefinitionIds"))
 (:shape-name "BatchDeleteRumMetricDefinitionsResponse"))

(smithy/sdk/shapes:define-structure batch-get-rum-metric-definitions-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (destination :target-type
                                      metric-destination :required
                                      common-lisp:t :member-name "Destination"
                                      :http-query "destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn" :http-query
                                      "destinationArn")
                                     (max-results :target-type
                                      max-results-integer :member-name
                                      "MaxResults" :http-query "maxResults")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name
                                     "BatchGetRumMetricDefinitionsRequest"))

(smithy/sdk/shapes:define-structure batch-get-rum-metric-definitions-response
                                    common-lisp:nil
                                    ((metric-definitions :target-type
                                      metric-definitions :member-name
                                      "MetricDefinitions")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "BatchGetRumMetricDefinitionsResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceName")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-app-monitor-request common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (domain :target-type app-monitor-domain
                                      :member-name "Domain")
                                     (domain-list :target-type
                                      app-monitor-domain-list :member-name
                                      "DomainList")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (app-monitor-configuration :target-type
                                      app-monitor-configuration :member-name
                                      "AppMonitorConfiguration")
                                     (cw-log-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CwLogEnabled")
                                     (custom-events :target-type custom-events
                                      :member-name "CustomEvents")
                                     (deobfuscation-configuration :target-type
                                      deobfuscation-configuration :member-name
                                      "DeobfuscationConfiguration"))
                                    (:shape-name "CreateAppMonitorRequest"))

(smithy/sdk/shapes:define-structure create-app-monitor-response common-lisp:nil
                                    ((id :target-type app-monitor-id
                                      :member-name "Id"))
                                    (:shape-name "CreateAppMonitorResponse"))

(smithy/sdk/shapes:define-structure custom-events common-lisp:nil
                                    ((status :target-type custom-events-status
                                      :member-name "Status"))
                                    (:shape-name "CustomEvents"))

(smithy/sdk/shapes:define-type custom-events-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cw-log common-lisp:nil
                                    ((cw-log-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CwLogEnabled")
                                     (cw-log-group :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CwLogGroup"))
                                    (:shape-name "CwLog"))

(smithy/sdk/shapes:define-structure data-storage common-lisp:nil
                                    ((cw-log :target-type cw-log :member-name
                                      "CwLog"))
                                    (:shape-name "DataStorage"))

(smithy/sdk/shapes:define-structure delete-app-monitor-request common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "DeleteAppMonitorRequest"))

(smithy/sdk/shapes:define-structure delete-app-monitor-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteAppMonitorResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((name :target-type app-monitor-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId" :http-query
                                  "policyRevisionId"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil
                                 ((policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure delete-rum-metrics-destination-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (destination :target-type
                                      metric-destination :required
                                      common-lisp:t :member-name "Destination"
                                      :http-query "destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn" :http-query
                                      "destinationArn"))
                                    (:shape-name
                                     "DeleteRumMetricsDestinationRequest"))

(smithy/sdk/shapes:define-structure delete-rum-metrics-destination-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteRumMetricsDestinationResponse"))

(smithy/sdk/shapes:define-structure deobfuscation-configuration common-lisp:nil
                                    ((java-script-source-maps :target-type
                                      java-script-source-maps :member-name
                                      "JavaScriptSourceMaps"))
                                    (:shape-name "DeobfuscationConfiguration"))

(smithy/sdk/shapes:define-type deobfuscation-s3uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deobfuscation-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map dimension-keys-map :key dimension-key :value
                              dimension-name)

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-data-list :member event-data)

(smithy/sdk/shapes:define-type event-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list favorite-pages :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-app-monitor-data-request
                                    common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (time-range :target-type time-range
                                      :required common-lisp:t :member-name
                                      "TimeRange")
                                     (filters :target-type query-filters
                                      :member-name "Filters")
                                     (max-results :target-type
                                      max-query-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "GetAppMonitorDataRequest"))

(smithy/sdk/shapes:define-structure get-app-monitor-data-response
                                    common-lisp:nil
                                    ((events :target-type event-data-list
                                      :member-name "Events")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "GetAppMonitorDataResponse"))

(smithy/sdk/shapes:define-structure get-app-monitor-request common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "GetAppMonitorRequest"))

(smithy/sdk/shapes:define-structure get-app-monitor-response common-lisp:nil
                                    ((app-monitor :target-type app-monitor
                                      :member-name "AppMonitor"))
                                    (:shape-name "GetAppMonitorResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((name :target-type app-monitor-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((policy-document :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PolicyDocument")
                                  (policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-type isotimestamp-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity-pool-id smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-error invalid-policy-revision-id-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "InvalidPolicyRevisionIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure java-script-source-maps common-lisp:nil
                                    ((status :target-type deobfuscation-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (s3uri :target-type deobfuscation-s3uri
                                      :member-name "S3Uri"))
                                    (:shape-name "JavaScriptSourceMaps"))

(smithy/sdk/shapes:define-type json-value smithy/sdk/smithy-types:string
                               :media-type "application/json")

(smithy/sdk/shapes:define-structure list-app-monitors-request common-lisp:nil
                                    ((max-results :target-type
                                      max-results-integer :member-name
                                      "MaxResults" :http-query "maxResults")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListAppMonitorsRequest"))

(smithy/sdk/shapes:define-structure list-app-monitors-response common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken")
                                     (app-monitor-summaries :target-type
                                      app-monitor-summary-list :member-name
                                      "AppMonitorSummaries"))
                                    (:shape-name "ListAppMonitorsResponse"))

(smithy/sdk/shapes:define-structure list-rum-metrics-destinations-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (max-results :target-type
                                      max-results-integer :member-name
                                      "MaxResults" :http-query "maxResults")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name
                                     "ListRumMetricsDestinationsRequest"))

(smithy/sdk/shapes:define-structure list-rum-metrics-destinations-response
                                    common-lisp:nil
                                    ((destinations :target-type
                                      metric-destination-summary-list
                                      :member-name "Destinations")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListRumMetricsDestinationsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max-query-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metric-definition common-lisp:nil
                                    ((metric-definition-id :target-type
                                      metric-definition-id :required
                                      common-lisp:t :member-name
                                      "MetricDefinitionId")
                                     (name :target-type metric-name :required
                                      common-lisp:t :member-name "Name")
                                     (value-key :target-type value-key
                                      :member-name "ValueKey")
                                     (unit-label :target-type unit-label
                                      :member-name "UnitLabel")
                                     (dimension-keys :target-type
                                      dimension-keys-map :member-name
                                      "DimensionKeys")
                                     (event-pattern :target-type event-pattern
                                      :member-name "EventPattern")
                                     (namespace :target-type namespace
                                      :member-name "Namespace"))
                                    (:shape-name "MetricDefinition"))

(smithy/sdk/shapes:define-type metric-definition-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metric-definition-ids :member
                               metric-definition-id)

(smithy/sdk/shapes:define-structure metric-definition-request common-lisp:nil
                                    ((name :target-type metric-name :required
                                      common-lisp:t :member-name "Name")
                                     (value-key :target-type value-key
                                      :member-name "ValueKey")
                                     (unit-label :target-type unit-label
                                      :member-name "UnitLabel")
                                     (dimension-keys :target-type
                                      dimension-keys-map :member-name
                                      "DimensionKeys")
                                     (event-pattern :target-type event-pattern
                                      :member-name "EventPattern")
                                     (namespace :target-type namespace
                                      :member-name "Namespace"))
                                    (:shape-name "MetricDefinitionRequest"))

(smithy/sdk/shapes:define-list metric-definitions :member metric-definition)

(smithy/sdk/shapes:define-list metric-definitions-request :member
                               metric-definition-request)

(smithy/sdk/shapes:define-type metric-destination
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric-destination-summary common-lisp:nil
                                    ((destination :target-type
                                      metric-destination :member-name
                                      "Destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn")
                                     (iam-role-arn :target-type iam-role-arn
                                      :member-name "IamRoleArn"))
                                    (:shape-name "MetricDestinationSummary"))

(smithy/sdk/shapes:define-list metric-destination-summary-list :member
                               metric-destination-summary)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pages :member url)

(smithy/sdk/shapes:define-error policy-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "PolicyNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type policy-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error policy-size-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "PolicySizeLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((name :target-type app-monitor-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (policy-document :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "PolicyDocument")
                                 (policy-revision-id :target-type
                                  policy-revision-id :member-name
                                  "PolicyRevisionId"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 ((policy-document :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PolicyDocument")
                                  (policy-revision-id :target-type
                                   policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure put-rum-events-request common-lisp:nil
                                    ((id :target-type app-monitor-id :required
                                      common-lisp:t :member-name "Id")
                                     (batch-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BatchId")
                                     (app-monitor-details :target-type
                                      app-monitor-details :required
                                      common-lisp:t :member-name
                                      "AppMonitorDetails")
                                     (user-details :target-type user-details
                                      :required common-lisp:t :member-name
                                      "UserDetails")
                                     (rum-events :target-type rum-event-list
                                      :required common-lisp:t :member-name
                                      "RumEvents")
                                     (alias :target-type alias :member-name
                                      "Alias"))
                                    (:shape-name "PutRumEventsRequest"))

(smithy/sdk/shapes:define-structure put-rum-events-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PutRumEventsResponse"))

(smithy/sdk/shapes:define-structure put-rum-metrics-destination-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (destination :target-type
                                      metric-destination :required
                                      common-lisp:t :member-name "Destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn")
                                     (iam-role-arn :target-type iam-role-arn
                                      :member-name "IamRoleArn"))
                                    (:shape-name
                                     "PutRumMetricsDestinationRequest"))

(smithy/sdk/shapes:define-structure put-rum-metrics-destination-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "PutRumMetricsDestinationResponse"))

(smithy/sdk/shapes:define-structure query-filter common-lisp:nil
                                    ((name :target-type query-filter-key
                                      :member-name "Name")
                                     (values :target-type
                                      query-filter-value-list :member-name
                                      "Values"))
                                    (:shape-name "QueryFilter"))

(smithy/sdk/shapes:define-type query-filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-filter-value-list :member
                               query-filter-value)

(smithy/sdk/shapes:define-list query-filters :member query-filter)

(smithy/sdk/shapes:define-type query-timestamp smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceName")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure rum-event common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "timestamp")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (metadata :target-type json-value
                                      :member-name "metadata")
                                     (details :target-type json-value :required
                                      common-lisp:t :member-name "details"))
                                    (:shape-name "RumEvent"))

(smithy/sdk/shapes:define-list rum-event-list :member rum-event)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type session-sample-rate
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type state-enum smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list telemetries :member telemetry)

(smithy/sdk/shapes:define-type telemetry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((after :target-type query-timestamp
                                      :required common-lisp:t :member-name
                                      "After")
                                     (before :target-type query-timestamp
                                      :member-name "Before"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unit-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-app-monitor-request common-lisp:nil
                                    ((name :target-type app-monitor-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (domain :target-type app-monitor-domain
                                      :member-name "Domain")
                                     (domain-list :target-type
                                      app-monitor-domain-list :member-name
                                      "DomainList")
                                     (app-monitor-configuration :target-type
                                      app-monitor-configuration :member-name
                                      "AppMonitorConfiguration")
                                     (cw-log-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "CwLogEnabled")
                                     (custom-events :target-type custom-events
                                      :member-name "CustomEvents")
                                     (deobfuscation-configuration :target-type
                                      deobfuscation-configuration :member-name
                                      "DeobfuscationConfiguration"))
                                    (:shape-name "UpdateAppMonitorRequest"))

(smithy/sdk/shapes:define-structure update-app-monitor-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpdateAppMonitorResponse"))

(smithy/sdk/shapes:define-structure update-rum-metric-definition-request
                                    common-lisp:nil
                                    ((app-monitor-name :target-type
                                      app-monitor-name :required common-lisp:t
                                      :member-name "AppMonitorName")
                                     (destination :target-type
                                      metric-destination :required
                                      common-lisp:t :member-name "Destination")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn")
                                     (metric-definition :target-type
                                      metric-definition-request :required
                                      common-lisp:t :member-name
                                      "MetricDefinition")
                                     (metric-definition-id :target-type
                                      metric-definition-id :required
                                      common-lisp:t :member-name
                                      "MetricDefinitionId"))
                                    (:shape-name
                                     "UpdateRumMetricDefinitionRequest"))

(smithy/sdk/shapes:define-structure update-rum-metric-definition-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "UpdateRumMetricDefinitionResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure user-details common-lisp:nil
                                    ((user-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "userId")
                                     (session-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sessionId"))
                                    (:shape-name "UserDetails"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value-key smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-create-rum-metric-definitions
                                       :shape-name
                                       "BatchCreateRumMetricDefinitions" :input
                                       batch-create-rum-metric-definitions-request
                                       :output
                                       batch-create-rum-metric-definitions-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/rummetrics/{AppMonitorName}/metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-delete-rum-metric-definitions
                                       :shape-name
                                       "BatchDeleteRumMetricDefinitions" :input
                                       batch-delete-rum-metric-definitions-request
                                       :output
                                       batch-delete-rum-metric-definitions-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/rummetrics/{AppMonitorName}/metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-get-rum-metric-definitions
                                       :shape-name
                                       "BatchGetRumMetricDefinitions" :input
                                       batch-get-rum-metric-definitions-request
                                       :output
                                       batch-get-rum-metric-definitions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/rummetrics/{AppMonitorName}/metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation create-app-monitor :shape-name
                                       "CreateAppMonitor" :input
                                       create-app-monitor-request :output
                                       create-app-monitor-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/appmonitor" :code
                                       200)

(smithy/sdk/operation:define-operation delete-app-monitor :shape-name
                                       "DeleteAppMonitor" :input
                                       delete-app-monitor-request :output
                                       delete-app-monitor-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/appmonitor/{Name}" :code 200)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-policy-revision-id-exception
                                        policy-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/appmonitor/{Name}/policy" :code 200)

(smithy/sdk/operation:define-operation delete-rum-metrics-destination
                                       :shape-name
                                       "DeleteRumMetricsDestination" :input
                                       delete-rum-metrics-destination-request
                                       :output
                                       delete-rum-metrics-destination-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/rummetrics/{AppMonitorName}/metricsdestination"
                                       :code 200)

(smithy/sdk/operation:define-operation get-app-monitor :shape-name
                                       "GetAppMonitor" :input
                                       get-app-monitor-request :output
                                       get-app-monitor-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/appmonitor/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-app-monitor-data :shape-name
                                       "GetAppMonitorData" :input
                                       get-app-monitor-data-request :output
                                       get-app-monitor-data-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/appmonitor/{Name}/data" :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        policy-not-found-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/appmonitor/{Name}/policy" :code 200)

(smithy/sdk/operation:define-operation list-app-monitors :shape-name
                                       "ListAppMonitors" :input
                                       list-app-monitors-request :output
                                       list-app-monitors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/appmonitors" :code
                                       200)

(smithy/sdk/operation:define-operation list-rum-metrics-destinations
                                       :shape-name "ListRumMetricsDestinations"
                                       :input
                                       list-rum-metrics-destinations-request
                                       :output
                                       list-rum-metrics-destinations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/rummetrics/{AppMonitorName}/metricsdestination"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-policy-revision-id-exception
                                        malformed-policy-document-exception
                                        policy-size-limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/appmonitor/{Name}/policy" :code 200)

(smithy/sdk/operation:define-operation put-rum-events :shape-name
                                       "PutRumEvents" :input
                                       put-rum-events-request :output
                                       put-rum-events-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/appmonitors/{Id}/"
                                       :code 200 :endpoint-host-prefix
                                       "dataplane.")

(smithy/sdk/operation:define-operation put-rum-metrics-destination :shape-name
                                       "PutRumMetricsDestination" :input
                                       put-rum-metrics-destination-request
                                       :output
                                       put-rum-metrics-destination-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/rummetrics/{AppMonitorName}/metricsdestination"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-app-monitor :shape-name
                                       "UpdateAppMonitor" :input
                                       update-app-monitor-request :output
                                       update-app-monitor-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/appmonitor/{Name}" :code 200)

(smithy/sdk/operation:define-operation update-rum-metric-definition :shape-name
                                       "UpdateRumMetricDefinition" :input
                                       update-rum-metric-definition-request
                                       :output
                                       update-rum-metric-definition-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/rummetrics/{AppMonitorName}/metrics"
                                       :code 200)
