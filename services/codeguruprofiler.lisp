(uiop/package:define-package #:pira/codeguruprofiler (:use)
                             (:export #:action-group
                              #:add-notification-channels
                              #:add-notification-channels-request
                              #:add-notification-channels-response
                              #:agent-configuration
                              #:agent-orchestration-config
                              #:agent-parameter-field #:agent-parameters
                              #:agent-profile #:aggregated-profile
                              #:aggregated-profile-time #:aggregation-period
                              #:anomalies #:anomaly #:anomaly-instance
                              #:anomaly-instance-id #:anomaly-instances
                              #:batch-get-frame-metric-data
                              #:batch-get-frame-metric-data-request
                              #:batch-get-frame-metric-data-response #:channel
                              #:channel-id #:channel-uri #:channels
                              #:client-token #:code-guru-profiler
                              #:compute-platform #:configure-agent
                              #:configure-agent-request
                              #:configure-agent-response
                              #:create-profiling-group
                              #:create-profiling-group-request
                              #:create-profiling-group-response
                              #:delete-profiling-group
                              #:delete-profiling-group-request
                              #:delete-profiling-group-response
                              #:describe-profiling-group
                              #:describe-profiling-group-request
                              #:describe-profiling-group-response
                              #:event-publisher #:event-publishers
                              #:feedback-type #:findings-report-id
                              #:findings-report-summaries
                              #:findings-report-summary #:fleet-instance-id
                              #:frame-metric #:frame-metric-data
                              #:frame-metric-datum #:frame-metric-value
                              #:frame-metric-values #:frame-metrics
                              #:get-findings-report-account-summary
                              #:get-findings-report-account-summary-request
                              #:get-findings-report-account-summary-response
                              #:get-notification-configuration
                              #:get-notification-configuration-request
                              #:get-notification-configuration-response
                              #:get-policy #:get-policy-request
                              #:get-policy-response #:get-profile
                              #:get-profile-request #:get-profile-response
                              #:get-recommendations
                              #:get-recommendations-request
                              #:get-recommendations-response
                              #:list-findings-reports
                              #:list-findings-reports-request
                              #:list-findings-reports-response
                              #:list-of-timestamps #:list-profile-times
                              #:list-profile-times-request
                              #:list-profile-times-response
                              #:list-profiling-groups
                              #:list-profiling-groups-request
                              #:list-profiling-groups-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:locale
                              #:match #:matches #:max-depth #:max-results
                              #:metadata #:metadata-field #:metric
                              #:metric-type #:notification-configuration
                              #:order-by #:pagination-token #:pattern
                              #:percentage #:period #:post-agent-profile
                              #:post-agent-profile-request
                              #:post-agent-profile-response #:principal
                              #:principals #:profile-time #:profile-times
                              #:profiling-group #:profiling-group-arn
                              #:profiling-group-description
                              #:profiling-group-descriptions
                              #:profiling-group-name #:profiling-group-names
                              #:profiling-status #:put-permission
                              #:put-permission-request
                              #:put-permission-response #:recommendation
                              #:recommendations #:remove-notification-channel
                              #:remove-notification-channel-request
                              #:remove-notification-channel-response
                              #:remove-permission #:remove-permission-request
                              #:remove-permission-response #:revision-id
                              #:strings #:submit-feedback
                              #:submit-feedback-request
                              #:submit-feedback-response #:tag-keys
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tags-map #:target-frame
                              #:target-frames #:thread-states #:timestamp
                              #:timestamp-structure #:unprocessed-end-time-map
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-profiling-group
                              #:update-profiling-group-request
                              #:update-profiling-group-response
                              #:user-feedback))
(common-lisp:in-package #:pira/codeguruprofiler)

(smithy/sdk/service:define-service code-guru-profiler :shape-name
                                   "CodeGuruProfiler" :version "2019-07-18"
                                   :title "Amazon CodeGuru Profiler"
                                   :operations
                                   '(get-findings-report-account-summary
                                     list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeGuruProfiler")
                                      ("arnNamespace" . "codeguru-profiler")
                                      ("cloudFormationName"
                                       . "CodeGuruProfiler")
                                      ("cloudTrailEventSource"
                                       . "codeguru-profiler.amazonaws.com")
                                      ("endpointPrefix" . "codeguru-profiler"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codeguru-profiler"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type action-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-notification-channels-request
                                common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (channels :target-type channels :required
                                  common-lisp:t :member-name "channels"))
                                (:shape-name "AddNotificationChannelsRequest"))

(smithy/sdk/shapes:define-structure add-notification-channels-response
                                    common-lisp:nil
                                    ((notification-configuration :target-type
                                      notification-configuration :member-name
                                      "notificationConfiguration"))
                                    (:shape-name
                                     "AddNotificationChannelsResponse"))

(smithy/sdk/shapes:define-structure agent-configuration common-lisp:nil
                                    ((should-profile :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "shouldProfile")
                                     (period-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "periodInSeconds")
                                     (agent-parameters :target-type
                                      agent-parameters :member-name
                                      "agentParameters"))
                                    (:shape-name "AgentConfiguration"))

(smithy/sdk/shapes:define-structure agent-orchestration-config common-lisp:nil
                                    ((profiling-enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "profilingEnabled"))
                                    (:shape-name "AgentOrchestrationConfig"))

(smithy/sdk/shapes:define-type agent-parameter-field
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map agent-parameters :key agent-parameter-field
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-profile smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type aggregated-profile smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure aggregated-profile-time common-lisp:nil
                                    ((start :target-type timestamp :member-name
                                      "start")
                                     (period :target-type aggregation-period
                                      :member-name "period"))
                                    (:shape-name "AggregatedProfileTime"))

(smithy/sdk/shapes:define-type aggregation-period
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list anomalies :member anomaly)

(smithy/sdk/shapes:define-structure anomaly common-lisp:nil
                                    ((metric :target-type metric :required
                                      common-lisp:t :member-name "metric")
                                     (reason :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "reason")
                                     (instances :target-type anomaly-instances
                                      :required common-lisp:t :member-name
                                      "instances"))
                                    (:shape-name "Anomaly"))

(smithy/sdk/shapes:define-structure anomaly-instance common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime")
                                     (user-feedback :target-type user-feedback
                                      :member-name "userFeedback"))
                                    (:shape-name "AnomalyInstance"))

(smithy/sdk/shapes:define-type anomaly-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list anomaly-instances :member anomaly-instance)

(smithy/sdk/shapes:define-input batch-get-frame-metric-data-request
                                common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (start-time :target-type timestamp
                                  :member-name "startTime" :http-query
                                  "startTime")
                                 (end-time :target-type timestamp :member-name
                                  "endTime" :http-query "endTime")
                                 (period :target-type period :member-name
                                  "period" :http-query "period")
                                 (target-resolution :target-type
                                  aggregation-period :member-name
                                  "targetResolution" :http-query
                                  "targetResolution")
                                 (frame-metrics :target-type frame-metrics
                                  :member-name "frameMetrics"))
                                (:shape-name "BatchGetFrameMetricDataRequest"))

(smithy/sdk/shapes:define-structure batch-get-frame-metric-data-response
                                    common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "endTime")
                                     (resolution :target-type
                                      aggregation-period :required
                                      common-lisp:t :member-name "resolution")
                                     (end-times :target-type list-of-timestamps
                                      :required common-lisp:t :member-name
                                      "endTimes")
                                     (unprocessed-end-times :target-type
                                      unprocessed-end-time-map :required
                                      common-lisp:t :member-name
                                      "unprocessedEndTimes")
                                     (frame-metric-data :target-type
                                      frame-metric-data :required common-lisp:t
                                      :member-name "frameMetricData"))
                                    (:shape-name
                                     "BatchGetFrameMetricDataResponse"))

(smithy/sdk/shapes:define-structure channel common-lisp:nil
                                    ((id :target-type channel-id :member-name
                                      "id")
                                     (uri :target-type channel-uri :required
                                      common-lisp:t :member-name "uri")
                                     (event-publishers :target-type
                                      event-publishers :required common-lisp:t
                                      :member-name "eventPublishers"))
                                    (:shape-name "Channel"))

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channels :member channel)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type compute-platform smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input configure-agent-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (fleet-instance-id :target-type
                                  fleet-instance-id :member-name
                                  "fleetInstanceId")
                                 (metadata :target-type metadata :member-name
                                  "metadata"))
                                (:shape-name "ConfigureAgentRequest"))

(smithy/sdk/shapes:define-interface configure-agent-response common-lisp:nil
                                    ((configuration :target-type
                                      agent-configuration :required
                                      common-lisp:t :member-name
                                      "configuration" :http-payload
                                      common-lisp:t))
                                    (:shape-name "ConfigureAgentResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-profiling-group-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName")
                                 (compute-platform :target-type
                                  compute-platform :member-name
                                  "computePlatform")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken" :http-query "clientToken")
                                 (agent-orchestration-config :target-type
                                  agent-orchestration-config :member-name
                                  "agentOrchestrationConfig")
                                 (tags :target-type tags-map :member-name
                                  "tags"))
                                (:shape-name "CreateProfilingGroupRequest"))

(smithy/sdk/shapes:define-interface create-profiling-group-response
                                    common-lisp:nil
                                    ((profiling-group :target-type
                                      profiling-group-description :required
                                      common-lisp:t :member-name
                                      "profilingGroup" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "CreateProfilingGroupResponse"))

(smithy/sdk/shapes:define-input delete-profiling-group-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteProfilingGroupRequest"))

(smithy/sdk/shapes:define-structure delete-profiling-group-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteProfilingGroupResponse"))

(smithy/sdk/shapes:define-input describe-profiling-group-request
                                common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeProfilingGroupRequest"))

(smithy/sdk/shapes:define-interface describe-profiling-group-response
                                    common-lisp:nil
                                    ((profiling-group :target-type
                                      profiling-group-description :required
                                      common-lisp:t :member-name
                                      "profilingGroup" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "DescribeProfilingGroupResponse"))

(smithy/sdk/shapes:define-type event-publisher smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-publishers :member event-publisher)

(smithy/sdk/shapes:define-type feedback-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type findings-report-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list findings-report-summaries :member
                               findings-report-summary)

(smithy/sdk/shapes:define-structure findings-report-summary common-lisp:nil
                                    ((id :target-type findings-report-id
                                      :member-name "id")
                                     (profiling-group-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "profilingGroupName")
                                     (profile-start-time :target-type timestamp
                                      :member-name "profileStartTime")
                                     (profile-end-time :target-type timestamp
                                      :member-name "profileEndTime")
                                     (total-number-of-findings :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalNumberOfFindings"))
                                    (:shape-name "FindingsReportSummary"))

(smithy/sdk/shapes:define-type fleet-instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure frame-metric common-lisp:nil
                                    ((frame-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "frameName")
                                     (type :target-type metric-type :required
                                      common-lisp:t :member-name "type")
                                     (thread-states :target-type thread-states
                                      :required common-lisp:t :member-name
                                      "threadStates"))
                                    (:shape-name "FrameMetric"))

(smithy/sdk/shapes:define-list frame-metric-data :member frame-metric-datum)

(smithy/sdk/shapes:define-structure frame-metric-datum common-lisp:nil
                                    ((frame-metric :target-type frame-metric
                                      :required common-lisp:t :member-name
                                      "frameMetric")
                                     (values :target-type frame-metric-values
                                      :required common-lisp:t :member-name
                                      "values"))
                                    (:shape-name "FrameMetricDatum"))

(smithy/sdk/shapes:define-type frame-metric-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-list frame-metric-values :member frame-metric-value)

(smithy/sdk/shapes:define-list frame-metrics :member frame-metric)

(smithy/sdk/shapes:define-input get-findings-report-account-summary-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (daily-reports-only :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "dailyReportsOnly" :http-query
                                  "dailyReportsOnly"))
                                (:shape-name
                                 "GetFindingsReportAccountSummaryRequest"))

(smithy/sdk/shapes:define-structure
 get-findings-report-account-summary-response common-lisp:nil
 ((report-summaries :target-type findings-report-summaries :required
   common-lisp:t :member-name "reportSummaries")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "GetFindingsReportAccountSummaryResponse"))

(smithy/sdk/shapes:define-input get-notification-configuration-request
                                common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-notification-configuration-response
                                    common-lisp:nil
                                    ((notification-configuration :target-type
                                      notification-configuration :required
                                      common-lisp:t :member-name
                                      "notificationConfiguration"))
                                    (:shape-name
                                     "GetNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-structure get-policy-response common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "policy")
                                     (revision-id :target-type revision-id
                                      :required common-lisp:t :member-name
                                      "revisionId"))
                                    (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-profile-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (start-time :target-type timestamp
                                  :member-name "startTime" :http-query
                                  "startTime")
                                 (period :target-type period :member-name
                                  "period" :http-query "period")
                                 (end-time :target-type timestamp :member-name
                                  "endTime" :http-query "endTime")
                                 (max-depth :target-type max-depth :member-name
                                  "maxDepth" :http-query "maxDepth")
                                 (accept :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "accept" :http-header "Accept"))
                                (:shape-name "GetProfileRequest"))

(smithy/sdk/shapes:define-interface get-profile-response common-lisp:nil
                                    ((profile :target-type aggregated-profile
                                      :required common-lisp:t :member-name
                                      "profile" :http-payload common-lisp:t)
                                     (content-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "contentType"
                                      :http-header "Content-Type")
                                     (content-encoding :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "contentEncoding"
                                      :http-header "Content-Encoding"))
                                    (:shape-name "GetProfileResponse"))

(smithy/sdk/shapes:define-input get-recommendations-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (locale :target-type locale :member-name
                                  "locale" :http-query "locale"))
                                (:shape-name "GetRecommendationsRequest"))

(smithy/sdk/shapes:define-structure get-recommendations-response
                                    common-lisp:nil
                                    ((profiling-group-name :target-type
                                      profiling-group-name :required
                                      common-lisp:t :member-name
                                      "profilingGroupName")
                                     (profile-start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "profileStartTime")
                                     (profile-end-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "profileEndTime")
                                     (recommendations :target-type
                                      recommendations :required common-lisp:t
                                      :member-name "recommendations")
                                     (anomalies :target-type anomalies
                                      :required common-lisp:t :member-name
                                      "anomalies"))
                                    (:shape-name "GetRecommendationsResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-findings-reports-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (daily-reports-only :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "dailyReportsOnly" :http-query
                                  "dailyReportsOnly"))
                                (:shape-name "ListFindingsReportsRequest"))

(smithy/sdk/shapes:define-structure list-findings-reports-response
                                    common-lisp:nil
                                    ((findings-report-summaries :target-type
                                      findings-report-summaries :required
                                      common-lisp:t :member-name
                                      "findingsReportSummaries")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFindingsReportsResponse"))

(smithy/sdk/shapes:define-list list-of-timestamps :member timestamp-structure)

(smithy/sdk/shapes:define-input list-profile-times-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (start-time :target-type timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :http-query "startTime")
                                 (end-time :target-type timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :http-query "endTime")
                                 (period :target-type aggregation-period
                                  :required common-lisp:t :member-name "period"
                                  :http-query "period")
                                 (order-by :target-type order-by :member-name
                                  "orderBy" :http-query "orderBy")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListProfileTimesRequest"))

(smithy/sdk/shapes:define-structure list-profile-times-response common-lisp:nil
                                    ((profile-times :target-type profile-times
                                      :required common-lisp:t :member-name
                                      "profileTimes")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListProfileTimesResponse"))

(smithy/sdk/shapes:define-input list-profiling-groups-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (include-description :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeDescription" :http-query
                                  "includeDescription"))
                                (:shape-name "ListProfilingGroupsRequest"))

(smithy/sdk/shapes:define-structure list-profiling-groups-response
                                    common-lisp:nil
                                    ((profiling-group-names :target-type
                                      profiling-group-names :required
                                      common-lisp:t :member-name
                                      "profilingGroupNames")
                                     (profiling-groups :target-type
                                      profiling-group-descriptions :member-name
                                      "profilingGroups")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListProfilingGroupsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type profiling-group-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type locale smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure match common-lisp:nil
                                    ((target-frames-index :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "targetFramesIndex")
                                     (frame-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "frameAddress")
                                     (threshold-breach-value :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "thresholdBreachValue"))
                                    (:shape-name "Match"))

(smithy/sdk/shapes:define-list matches :member match)

(smithy/sdk/shapes:define-type max-depth smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map metadata :key metadata-field :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metadata-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metric common-lisp:nil
                                    ((frame-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "frameName")
                                     (type :target-type metric-type :required
                                      common-lisp:t :member-name "type")
                                     (thread-states :target-type strings
                                      :required common-lisp:t :member-name
                                      "threadStates"))
                                    (:shape-name "Metric"))

(smithy/sdk/shapes:define-type metric-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-configuration common-lisp:nil
                                    ((channels :target-type channels
                                      :member-name "channels"))
                                    (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-type order-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pattern common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (resolution-steps :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resolutionSteps")
                                     (target-frames :target-type target-frames
                                      :member-name "targetFrames")
                                     (threshold-percent :target-type percentage
                                      :member-name "thresholdPercent")
                                     (counters-to-aggregate :target-type
                                      strings :member-name
                                      "countersToAggregate"))
                                    (:shape-name "Pattern"))

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type period smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input post-agent-profile-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (agent-profile :target-type agent-profile
                                  :required common-lisp:t :member-name
                                  "agentProfile" :http-payload common-lisp:t)
                                 (profile-token :target-type client-token
                                  :member-name "profileToken" :http-query
                                  "profileToken")
                                 (content-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "contentType"
                                  :http-header "Content-Type"))
                                (:shape-name "PostAgentProfileRequest"))

(smithy/sdk/shapes:define-structure post-agent-profile-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PostAgentProfileResponse"))

(smithy/sdk/shapes:define-type principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list principals :member principal)

(smithy/sdk/shapes:define-structure profile-time common-lisp:nil
                                    ((start :target-type timestamp :member-name
                                      "start"))
                                    (:shape-name "ProfileTime"))

(smithy/sdk/shapes:define-list profile-times :member profile-time)

common-lisp:nil

(smithy/sdk/shapes:define-type profiling-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure profiling-group-description common-lisp:nil
                                    ((name :target-type profiling-group-name
                                      :member-name "name")
                                     (agent-orchestration-config :target-type
                                      agent-orchestration-config :member-name
                                      "agentOrchestrationConfig")
                                     (arn :target-type profiling-group-arn
                                      :member-name "arn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (profiling-status :target-type
                                      profiling-status :member-name
                                      "profilingStatus")
                                     (compute-platform :target-type
                                      compute-platform :member-name
                                      "computePlatform")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ProfilingGroupDescription"))

(smithy/sdk/shapes:define-list profiling-group-descriptions :member
                               profiling-group-description)

(smithy/sdk/shapes:define-type profiling-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profiling-group-names :member
                               profiling-group-name)

(smithy/sdk/shapes:define-structure profiling-status common-lisp:nil
                                    ((latest-agent-profile-reported-at
                                      :target-type timestamp :member-name
                                      "latestAgentProfileReportedAt")
                                     (latest-aggregated-profile :target-type
                                      aggregated-profile-time :member-name
                                      "latestAggregatedProfile")
                                     (latest-agent-orchestrated-at :target-type
                                      timestamp :member-name
                                      "latestAgentOrchestratedAt"))
                                    (:shape-name "ProfilingStatus"))

(smithy/sdk/shapes:define-input put-permission-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (action-group :target-type action-group
                                  :required common-lisp:t :member-name
                                  "actionGroup" :http-label common-lisp:t)
                                 (principals :target-type principals :required
                                  common-lisp:t :member-name "principals")
                                 (revision-id :target-type revision-id
                                  :member-name "revisionId"))
                                (:shape-name "PutPermissionRequest"))

(smithy/sdk/shapes:define-structure put-permission-response common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "policy")
                                     (revision-id :target-type revision-id
                                      :required common-lisp:t :member-name
                                      "revisionId"))
                                    (:shape-name "PutPermissionResponse"))

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((all-matches-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "allMatchesCount")
                                     (all-matches-sum :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "allMatchesSum")
                                     (pattern :target-type pattern :required
                                      common-lisp:t :member-name "pattern")
                                     (top-matches :target-type matches
                                      :required common-lisp:t :member-name
                                      "topMatches")
                                     (start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "endTime"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-list recommendations :member recommendation)

(smithy/sdk/shapes:define-input remove-notification-channel-request
                                common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (channel-id :target-type channel-id :required
                                  common-lisp:t :member-name "channelId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "RemoveNotificationChannelRequest"))

(smithy/sdk/shapes:define-structure remove-notification-channel-response
                                    common-lisp:nil
                                    ((notification-configuration :target-type
                                      notification-configuration :member-name
                                      "notificationConfiguration"))
                                    (:shape-name
                                     "RemoveNotificationChannelResponse"))

(smithy/sdk/shapes:define-input remove-permission-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (action-group :target-type action-group
                                  :required common-lisp:t :member-name
                                  "actionGroup" :http-label common-lisp:t)
                                 (revision-id :target-type revision-id
                                  :required common-lisp:t :member-name
                                  "revisionId" :http-query "revisionId"))
                                (:shape-name "RemovePermissionRequest"))

(smithy/sdk/shapes:define-structure remove-permission-response common-lisp:nil
                                    ((policy :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "policy")
                                     (revision-id :target-type revision-id
                                      :required common-lisp:t :member-name
                                      "revisionId"))
                                    (:shape-name "RemovePermissionResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type revision-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list strings :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input submit-feedback-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (anomaly-instance-id :target-type
                                  anomaly-instance-id :required common-lisp:t
                                  :member-name "anomalyInstanceId" :http-label
                                  common-lisp:t)
                                 (type :target-type feedback-type :required
                                  common-lisp:t :member-name "type")
                                 (comment :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "comment"))
                                (:shape-name "SubmitFeedbackRequest"))

(smithy/sdk/shapes:define-structure submit-feedback-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "SubmitFeedbackResponse"))

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type profiling-group-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-frame :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-frames :member target-frame)

(smithy/sdk/shapes:define-list thread-states :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure timestamp-structure common-lisp:nil
                                    ((value :target-type timestamp :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "TimestampStructure"))

(smithy/sdk/shapes:define-map unprocessed-end-time-map :key
                              smithy/sdk/smithy-types:string :value
                              list-of-timestamps)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type profiling-group-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-profiling-group-request common-lisp:nil
                                ((profiling-group-name :target-type
                                  profiling-group-name :required common-lisp:t
                                  :member-name "profilingGroupName" :http-label
                                  common-lisp:t)
                                 (agent-orchestration-config :target-type
                                  agent-orchestration-config :required
                                  common-lisp:t :member-name
                                  "agentOrchestrationConfig"))
                                (:shape-name "UpdateProfilingGroupRequest"))

(smithy/sdk/shapes:define-interface update-profiling-group-response
                                    common-lisp:nil
                                    ((profiling-group :target-type
                                      profiling-group-description :required
                                      common-lisp:t :member-name
                                      "profilingGroup" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "UpdateProfilingGroupResponse"))

(smithy/sdk/shapes:define-structure user-feedback common-lisp:nil
                                    ((type :target-type feedback-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "UserFeedback"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation add-notification-channels :shape-name
                                       "AddNotificationChannels" :input
                                       add-notification-channels-request
                                       :output
                                       add-notification-channels-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profilingGroups/{profilingGroupName}/notificationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-get-frame-metric-data :shape-name
                                       "BatchGetFrameMetricData" :input
                                       batch-get-frame-metric-data-request
                                       :output
                                       batch-get-frame-metric-data-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profilingGroups/{profilingGroupName}/frames/-/metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation configure-agent :shape-name
                                       "ConfigureAgent" :input
                                       configure-agent-request :output
                                       configure-agent-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profilingGroups/{profilingGroupName}/configureAgent"
                                       :code 200)

(smithy/sdk/operation:define-operation create-profiling-group :shape-name
                                       "CreateProfilingGroup" :input
                                       create-profiling-group-request :output
                                       create-profiling-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/profilingGroups"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-profiling-group :shape-name
                                       "DeleteProfilingGroup" :input
                                       delete-profiling-group-request :output
                                       delete-profiling-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profilingGroups/{profilingGroupName}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-profiling-group :shape-name
                                       "DescribeProfilingGroup" :input
                                       describe-profiling-group-request :output
                                       describe-profiling-group-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profilingGroups/{profilingGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-findings-report-account-summary
                                       :shape-name
                                       "GetFindingsReportAccountSummary" :input
                                       get-findings-report-account-summary-request
                                       :output
                                       get-findings-report-account-summary-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/internal/findingsReports" :code 200)

(smithy/sdk/operation:define-operation get-notification-configuration
                                       :shape-name
                                       "GetNotificationConfiguration" :input
                                       get-notification-configuration-request
                                       :output
                                       get-notification-configuration-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profilingGroups/{profilingGroupName}/notificationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/profilingGroups/{profilingGroupName}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-profile :shape-name "GetProfile"
                                       :input get-profile-request :output
                                       get-profile-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profilingGroups/{profilingGroupName}/profile"
                                       :code 200)

(smithy/sdk/operation:define-operation get-recommendations :shape-name
                                       "GetRecommendations" :input
                                       get-recommendations-request :output
                                       get-recommendations-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/internal/profilingGroups/{profilingGroupName}/recommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-findings-reports :shape-name
                                       "ListFindingsReports" :input
                                       list-findings-reports-request :output
                                       list-findings-reports-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/internal/profilingGroups/{profilingGroupName}/findingsReports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profile-times :shape-name
                                       "ListProfileTimes" :input
                                       list-profile-times-request :output
                                       list-profile-times-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/profilingGroups/{profilingGroupName}/profileTimes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-profiling-groups :shape-name
                                       "ListProfilingGroups" :input
                                       list-profiling-groups-request :output
                                       list-profiling-groups-response :errors
                                       (internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri "/profilingGroups"
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

(smithy/sdk/operation:define-operation post-agent-profile :shape-name
                                       "PostAgentProfile" :input
                                       post-agent-profile-request :output
                                       post-agent-profile-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/profilingGroups/{profilingGroupName}/agentProfile"
                                       :code 204)

(smithy/sdk/operation:define-operation put-permission :shape-name
                                       "PutPermission" :input
                                       put-permission-request :output
                                       put-permission-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/profilingGroups/{profilingGroupName}/policy/{actionGroup}"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-notification-channel :shape-name
                                       "RemoveNotificationChannel" :input
                                       remove-notification-channel-request
                                       :output
                                       remove-notification-channel-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-permission :shape-name
                                       "RemovePermission" :input
                                       remove-permission-request :output
                                       remove-permission-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profilingGroups/{profilingGroupName}/policy/{actionGroup}"
                                       :code 200)

(smithy/sdk/operation:define-operation submit-feedback :shape-name
                                       "SubmitFeedback" :input
                                       submit-feedback-request :output
                                       submit-feedback-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback"
                                       :code 204)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-profiling-group :shape-name
                                       "UpdateProfilingGroup" :input
                                       update-profiling-group-request :output
                                       update-profiling-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/profilingGroups/{profilingGroupName}"
                                       :code 200)
