(uiop/package:define-package #:pira/networkflowmonitor (:use)
                             (:export #:access-denied-exception #:account-id
                              #:arn #:availability-zone #:aws-region
                              #:component #:component-type #:conflict-exception
                              #:create-monitor #:create-scope #:delete-monitor
                              #:delete-scope #:destination-category
                              #:get-monitor
                              #:get-query-results-monitor-top-contributors
                              #:get-query-results-workload-insights-top-contributors
                              #:get-query-results-workload-insights-top-contributors-data
                              #:get-query-status-monitor-top-contributors
                              #:get-query-status-workload-insights-top-contributors
                              #:get-query-status-workload-insights-top-contributors-data
                              #:get-scope #:instance-arn #:instance-id
                              #:internal-server-exception #:iso8601timestamp
                              #:kubernetes-metadata #:limit #:list-monitors
                              #:list-scopes #:list-tags-for-resource
                              #:max-results #:metric-unit #:monitor-arn
                              #:monitor-list #:monitor-local-resource
                              #:monitor-local-resource-type
                              #:monitor-local-resources #:monitor-metric
                              #:monitor-remote-resource
                              #:monitor-remote-resource-type
                              #:monitor-remote-resources #:monitor-resource
                              #:monitor-status #:monitor-summary
                              #:monitor-top-contributors-row
                              #:monitor-top-contributors-row-list
                              #:network-flow-monitor #:query-status
                              #:resource-name #:resource-not-found-exception
                              #:scope-id #:scope-resource #:scope-status
                              #:scope-summary #:scope-summary-list
                              #:service-quota-exceeded-exception
                              #:start-query-monitor-top-contributors
                              #:start-query-workload-insights-top-contributors
                              #:start-query-workload-insights-top-contributors-data
                              #:stop-query-monitor-top-contributors
                              #:stop-query-workload-insights-top-contributors
                              #:stop-query-workload-insights-top-contributors-data
                              #:subnet-arn #:subnet-id #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value #:target-id
                              #:target-identifier #:target-resource
                              #:target-resource-list #:target-type
                              #:throttling-exception #:traversed-component
                              #:traversed-constructs-list #:untag-resource
                              #:update-monitor #:update-scope #:uuid-string
                              #:validation-exception #:vpc-arn #:vpc-id
                              #:workload-insights-metric
                              #:workload-insights-top-contributors-data-point
                              #:workload-insights-top-contributors-data-points
                              #:workload-insights-top-contributors-row
                              #:workload-insights-top-contributors-row-list
                              #:workload-insights-top-contributors-timestamps-list
                              #:workload-insights-top-contributors-values-list
                              #:networkflowmonitor-error))
(common-lisp:in-package #:pira/networkflowmonitor)

(common-lisp:define-condition networkflowmonitor-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service network-flow-monitor :shape-name
                                   "NetworkFlowMonitor" :version "2023-04-19"
                                   :title "Network Flow Monitor" :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "NetworkFlowMonitor")
                                      ("arnNamespace" . "networkflowmonitor")
                                      ("cloudTrailEventSource"
                                       . "networkflowmonitor.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "networkflowmonitor"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tag key-value pairs attached to the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tag key-value pairs in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-input create-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName")
                                 (local-resources :target-type
                                  monitor-local-resources :required
                                  common-lisp:t :member-name "localResources")
                                 (remote-resources :target-type
                                  monitor-remote-resources :member-name
                                  "remoteResources")
                                 (scope-arn :target-type arn :required
                                  common-lisp:t :member-name "scopeArn")
                                 (client-token :target-type uuid-string
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateMonitorInput"))

(smithy/sdk/shapes:define-output create-monitor-output common-lisp:nil
                                 ((monitor-arn :target-type monitor-arn
                                   :required common-lisp:t :member-name
                                   "monitorArn")
                                  (monitor-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "monitorName")
                                  (monitor-status :target-type monitor-status
                                   :required common-lisp:t :member-name
                                   "monitorStatus")
                                  (local-resources :target-type
                                   monitor-local-resources :required
                                   common-lisp:t :member-name "localResources")
                                  (remote-resources :target-type
                                   monitor-remote-resources :required
                                   common-lisp:t :member-name
                                   "remoteResources")
                                  (created-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "modifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateMonitorOutput"))

(smithy/sdk/shapes:define-input create-scope-input common-lisp:nil
                                ((targets :target-type target-resource-list
                                  :required common-lisp:t :member-name
                                  "targets")
                                 (client-token :target-type uuid-string
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateScopeInput"))

(smithy/sdk/shapes:define-output create-scope-output common-lisp:nil
                                 ((scope-id :target-type scope-id :required
                                   common-lisp:t :member-name "scopeId")
                                  (status :target-type scope-status :required
                                   common-lisp:t :member-name "status")
                                  (scope-arn :target-type arn :required
                                   common-lisp:t :member-name "scopeArn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateScopeOutput"))

(smithy/sdk/shapes:define-input delete-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t))
                                (:shape-name "DeleteMonitorInput"))

(smithy/sdk/shapes:define-output delete-monitor-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMonitorOutput"))

(smithy/sdk/shapes:define-input delete-scope-input common-lisp:nil
                                ((scope-id :target-type scope-id :required
                                  common-lisp:t :member-name "scopeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteScopeInput"))

(smithy/sdk/shapes:define-output delete-scope-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteScopeOutput"))

(smithy/sdk/shapes:define-enum destination-category
    common-lisp:nil
  (:intra-az "INTRA_AZ")
  (:inter-az "INTER_AZ")
  (:inter-vpc "INTER_VPC")
  (:unclassified "UNCLASSIFIED")
  (:amazon-s3 "AMAZON_S3")
  (:amazon-dynamodb "AMAZON_DYNAMODB"))

(smithy/sdk/shapes:define-input get-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t))
                                (:shape-name "GetMonitorInput"))

(smithy/sdk/shapes:define-output get-monitor-output common-lisp:nil
                                 ((monitor-arn :target-type monitor-arn
                                   :required common-lisp:t :member-name
                                   "monitorArn")
                                  (monitor-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "monitorName")
                                  (monitor-status :target-type monitor-status
                                   :required common-lisp:t :member-name
                                   "monitorStatus")
                                  (local-resources :target-type
                                   monitor-local-resources :required
                                   common-lisp:t :member-name "localResources")
                                  (remote-resources :target-type
                                   monitor-remote-resources :required
                                   common-lisp:t :member-name
                                   "remoteResources")
                                  (created-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "modifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetMonitorOutput"))

(smithy/sdk/shapes:define-input
 get-query-results-monitor-top-contributors-input common-lisp:nil
 ((monitor-name :target-type resource-name :required common-lisp:t :member-name
   "monitorName" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t)
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken" :http-query "nextToken")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults"))
 (:shape-name "GetQueryResultsMonitorTopContributorsInput"))

(smithy/sdk/shapes:define-output
 get-query-results-monitor-top-contributors-output common-lisp:nil
 ((unit :target-type metric-unit :member-name "unit")
  (top-contributors :target-type monitor-top-contributors-row-list :member-name
   "topContributors")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken"))
 (:shape-name "GetQueryResultsMonitorTopContributorsOutput"))

(smithy/sdk/shapes:define-input
 get-query-results-workload-insights-top-contributors-data-input
 common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t)
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken" :http-query "nextToken")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults"))
 (:shape-name "GetQueryResultsWorkloadInsightsTopContributorsDataInput"))

(smithy/sdk/shapes:define-output
 get-query-results-workload-insights-top-contributors-data-output
 common-lisp:nil
 ((unit :target-type metric-unit :required common-lisp:t :member-name "unit")
  (datapoints :target-type workload-insights-top-contributors-data-points
   :required common-lisp:t :member-name "datapoints")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken"))
 (:shape-name "GetQueryResultsWorkloadInsightsTopContributorsDataOutput"))

(smithy/sdk/shapes:define-input
 get-query-results-workload-insights-top-contributors-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t)
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken" :http-query "nextToken")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults"))
 (:shape-name "GetQueryResultsWorkloadInsightsTopContributorsInput"))

(smithy/sdk/shapes:define-output
 get-query-results-workload-insights-top-contributors-output common-lisp:nil
 ((top-contributors :target-type workload-insights-top-contributors-row-list
   :member-name "topContributors")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "nextToken"))
 (:shape-name "GetQueryResultsWorkloadInsightsTopContributorsOutput"))

(smithy/sdk/shapes:define-input get-query-status-monitor-top-contributors-input
                                common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetQueryStatusMonitorTopContributorsInput"))

(smithy/sdk/shapes:define-output
 get-query-status-monitor-top-contributors-output common-lisp:nil
 ((status :target-type query-status :required common-lisp:t :member-name
   "status"))
 (:shape-name "GetQueryStatusMonitorTopContributorsOutput"))

(smithy/sdk/shapes:define-input
 get-query-status-workload-insights-top-contributors-data-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t))
 (:shape-name "GetQueryStatusWorkloadInsightsTopContributorsDataInput"))

(smithy/sdk/shapes:define-output
 get-query-status-workload-insights-top-contributors-data-output
 common-lisp:nil
 ((status :target-type query-status :required common-lisp:t :member-name
   "status"))
 (:shape-name "GetQueryStatusWorkloadInsightsTopContributorsDataOutput"))

(smithy/sdk/shapes:define-input
 get-query-status-workload-insights-top-contributors-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t))
 (:shape-name "GetQueryStatusWorkloadInsightsTopContributorsInput"))

(smithy/sdk/shapes:define-output
 get-query-status-workload-insights-top-contributors-output common-lisp:nil
 ((status :target-type query-status :required common-lisp:t :member-name
   "status"))
 (:shape-name "GetQueryStatusWorkloadInsightsTopContributorsOutput"))

(smithy/sdk/shapes:define-input get-scope-input common-lisp:nil
                                ((scope-id :target-type scope-id :required
                                  common-lisp:t :member-name "scopeId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetScopeInput"))

(smithy/sdk/shapes:define-output get-scope-output common-lisp:nil
                                 ((scope-id :target-type scope-id :required
                                   common-lisp:t :member-name "scopeId")
                                  (status :target-type scope-status :required
                                   common-lisp:t :member-name "status")
                                  (scope-arn :target-type arn :required
                                   common-lisp:t :member-name "scopeArn")
                                  (targets :target-type target-resource-list
                                   :required common-lisp:t :member-name
                                   "targets")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetScopeOutput"))

(smithy/sdk/shapes:define-type instance-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-type iso8601timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure kubernetes-metadata common-lisp:nil
                                    ((local-service-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "localServiceName")
                                     (local-pod-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "localPodName")
                                     (local-pod-namespace :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "localPodNamespace")
                                     (remote-service-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "remoteServiceName")
                                     (remote-pod-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "remotePodName")
                                     (remote-pod-namespace :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "remotePodNamespace"))
                                    (:shape-name "KubernetesMetadata"))

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-monitors-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (monitor-status :target-type monitor-status
                                  :member-name "monitorStatus" :http-query
                                  "monitorStatus"))
                                (:shape-name "ListMonitorsInput"))

(smithy/sdk/shapes:define-output list-monitors-output common-lisp:nil
                                 ((monitors :target-type monitor-list :required
                                   common-lisp:t :member-name "monitors")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListMonitorsOutput"))

(smithy/sdk/shapes:define-input list-scopes-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListScopesInput"))

(smithy/sdk/shapes:define-output list-scopes-output common-lisp:nil
                                 ((scopes :target-type scope-summary-list
                                   :required common-lisp:t :member-name
                                   "scopes")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListScopesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum metric-unit
    common-lisp:nil
  (:seconds "Seconds")
  (:microseconds "Microseconds")
  (:milliseconds "Milliseconds")
  (:bytes "Bytes")
  (:kilobytes "Kilobytes")
  (:megabytes "Megabytes")
  (:gigabytes "Gigabytes")
  (:terabytes "Terabytes")
  (:bits "Bits")
  (:kilobits "Kilobits")
  (:megabits "Megabits")
  (:gigabits "Gigabits")
  (:terabits "Terabits")
  (:percent "Percent")
  (:count "Count")
  (:bytes-per-second "Bytes/Second")
  (:kilobytes-per-second "Kilobytes/Second")
  (:megabytes-per-second "Megabytes/Second")
  (:gigabytes-per-second "Gigabytes/Second")
  (:terabytes-per-second "Terabytes/Second")
  (:bits-per-second "Bits/Second")
  (:kilobits-per-second "Kilobits/Second")
  (:megabits-per-second "Megabits/Second")
  (:gigabits-per-second "Gigabits/Second")
  (:terabits-per-second "Terabits/Second")
  (:count-per-second "Count/Second")
  (:none "None"))

(smithy/sdk/shapes:define-type monitor-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list monitor-list :member monitor-summary)

(smithy/sdk/shapes:define-structure monitor-local-resource common-lisp:nil
                                    ((type :target-type
                                      monitor-local-resource-type :required
                                      common-lisp:t :member-name "type")
                                     (identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "identifier"))
                                    (:shape-name "MonitorLocalResource"))

(smithy/sdk/shapes:define-enum monitor-local-resource-type
    common-lisp:nil
  (:aws-vpc "AWS::EC2::VPC")
  (:aws-az "AWS::AvailabilityZone")
  (:aws-subnet "AWS::EC2::Subnet"))

(smithy/sdk/shapes:define-list monitor-local-resources :member
                               monitor-local-resource)

(smithy/sdk/shapes:define-enum monitor-metric
    common-lisp:nil
  (:round-trip-time "ROUND_TRIP_TIME")
  (:timeouts "TIMEOUTS")
  (:retransmissions "RETRANSMISSIONS")
  (:data-transferred "DATA_TRANSFERRED"))

(smithy/sdk/shapes:define-structure monitor-remote-resource common-lisp:nil
                                    ((type :target-type
                                      monitor-remote-resource-type :required
                                      common-lisp:t :member-name "type")
                                     (identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "identifier"))
                                    (:shape-name "MonitorRemoteResource"))

(smithy/sdk/shapes:define-enum monitor-remote-resource-type
    common-lisp:nil
  (:aws-vpc "AWS::EC2::VPC")
  (:aws-az "AWS::AvailabilityZone")
  (:aws-subnet "AWS::EC2::Subnet")
  (:aws-service "AWS::AWSService"))

(smithy/sdk/shapes:define-list monitor-remote-resources :member
                               monitor-remote-resource)

common-lisp:nil

(smithy/sdk/shapes:define-enum monitor-status
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:error "ERROR")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure monitor-summary common-lisp:nil
                                    ((monitor-arn :target-type monitor-arn
                                      :required common-lisp:t :member-name
                                      "monitorArn")
                                     (monitor-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "monitorName")
                                     (monitor-status :target-type
                                      monitor-status :required common-lisp:t
                                      :member-name "monitorStatus"))
                                    (:shape-name "MonitorSummary"))

(smithy/sdk/shapes:define-structure monitor-top-contributors-row
                                    common-lisp:nil
                                    ((local-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "localIp")
                                     (snat-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "snatIp")
                                     (local-instance-id :target-type
                                      instance-id :member-name
                                      "localInstanceId")
                                     (local-vpc-id :target-type vpc-id
                                      :member-name "localVpcId")
                                     (local-region :target-type aws-region
                                      :member-name "localRegion")
                                     (local-az :target-type availability-zone
                                      :member-name "localAz")
                                     (local-subnet-id :target-type subnet-id
                                      :member-name "localSubnetId")
                                     (target-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "targetPort")
                                     (destination-category :target-type
                                      destination-category :member-name
                                      "destinationCategory")
                                     (remote-vpc-id :target-type vpc-id
                                      :member-name "remoteVpcId")
                                     (remote-region :target-type aws-region
                                      :member-name "remoteRegion")
                                     (remote-az :target-type availability-zone
                                      :member-name "remoteAz")
                                     (remote-subnet-id :target-type subnet-id
                                      :member-name "remoteSubnetId")
                                     (remote-instance-id :target-type
                                      instance-id :member-name
                                      "remoteInstanceId")
                                     (remote-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "remoteIp")
                                     (dnat-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dnatIp")
                                     (value :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "value")
                                     (traversed-constructs :target-type
                                      traversed-constructs-list :member-name
                                      "traversedConstructs")
                                     (kubernetes-metadata :target-type
                                      kubernetes-metadata :member-name
                                      "kubernetesMetadata")
                                     (local-instance-arn :target-type
                                      instance-arn :member-name
                                      "localInstanceArn")
                                     (local-subnet-arn :target-type subnet-arn
                                      :member-name "localSubnetArn")
                                     (local-vpc-arn :target-type vpc-arn
                                      :member-name "localVpcArn")
                                     (remote-instance-arn :target-type
                                      instance-arn :member-name
                                      "remoteInstanceArn")
                                     (remote-subnet-arn :target-type subnet-arn
                                      :member-name "remoteSubnetArn")
                                     (remote-vpc-arn :target-type vpc-arn
                                      :member-name "remoteVpcArn"))
                                    (:shape-name "MonitorTopContributorsRow"))

(smithy/sdk/shapes:define-list monitor-top-contributors-row-list :member
                               monitor-top-contributors-row)

(smithy/sdk/shapes:define-enum query-status
    common-lisp:nil
  (:queued "QUEUED")
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-type scope-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum scope-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:deactivating "DEACTIVATING")
  (:deactivated "DEACTIVATED"))

(smithy/sdk/shapes:define-structure scope-summary common-lisp:nil
                                    ((scope-id :target-type scope-id :required
                                      common-lisp:t :member-name "scopeId")
                                     (status :target-type scope-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (scope-arn :target-type arn :required
                                      common-lisp:t :member-name "scopeArn"))
                                    (:shape-name "ScopeSummary"))

(smithy/sdk/shapes:define-list scope-summary-list :member scope-summary)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-input start-query-monitor-top-contributors-input
                                common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "startTime"
                                  :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "endTime"
                                  :timestamp-format "date-time")
                                 (metric-name :target-type monitor-metric
                                  :required common-lisp:t :member-name
                                  "metricName")
                                 (destination-category :target-type
                                  destination-category :required common-lisp:t
                                  :member-name "destinationCategory")
                                 (limit :target-type limit :member-name
                                  "limit"))
                                (:shape-name
                                 "StartQueryMonitorTopContributorsInput"))

(smithy/sdk/shapes:define-output start-query-monitor-top-contributors-output
                                 common-lisp:nil
                                 ((query-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "queryId"))
                                 (:shape-name
                                  "StartQueryMonitorTopContributorsOutput"))

(smithy/sdk/shapes:define-input
 start-query-workload-insights-top-contributors-data-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (start-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "startTime" :timestamp-format "date-time")
  (end-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "endTime" :timestamp-format "date-time")
  (metric-name :target-type workload-insights-metric :required common-lisp:t
   :member-name "metricName")
  (destination-category :target-type destination-category :required
   common-lisp:t :member-name "destinationCategory"))
 (:shape-name "StartQueryWorkloadInsightsTopContributorsDataInput"))

(smithy/sdk/shapes:define-output
 start-query-workload-insights-top-contributors-data-output common-lisp:nil
 ((query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId"))
 (:shape-name "StartQueryWorkloadInsightsTopContributorsDataOutput"))

(smithy/sdk/shapes:define-input
 start-query-workload-insights-top-contributors-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (start-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "startTime" :timestamp-format "date-time")
  (end-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "endTime" :timestamp-format "date-time")
  (metric-name :target-type workload-insights-metric :required common-lisp:t
   :member-name "metricName")
  (destination-category :target-type destination-category :required
   common-lisp:t :member-name "destinationCategory")
  (limit :target-type limit :member-name "limit"))
 (:shape-name "StartQueryWorkloadInsightsTopContributorsInput"))

(smithy/sdk/shapes:define-output
 start-query-workload-insights-top-contributors-output common-lisp:nil
 ((query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId"))
 (:shape-name "StartQueryWorkloadInsightsTopContributorsOutput"))

(smithy/sdk/shapes:define-input stop-query-monitor-top-contributors-input
                                common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "queryId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "StopQueryMonitorTopContributorsInput"))

(smithy/sdk/shapes:define-output stop-query-monitor-top-contributors-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopQueryMonitorTopContributorsOutput"))

(smithy/sdk/shapes:define-input
 stop-query-workload-insights-top-contributors-data-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t))
 (:shape-name "StopQueryWorkloadInsightsTopContributorsDataInput"))

(smithy/sdk/shapes:define-output
 stop-query-workload-insights-top-contributors-data-output common-lisp:nil
 common-lisp:nil
 (:shape-name "StopQueryWorkloadInsightsTopContributorsDataOutput"))

(smithy/sdk/shapes:define-input
 stop-query-workload-insights-top-contributors-input common-lisp:nil
 ((scope-id :target-type scope-id :required common-lisp:t :member-name
   "scopeId" :http-label common-lisp:t)
  (query-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "queryId" :http-label common-lisp:t))
 (:shape-name "StopQueryWorkloadInsightsTopContributorsInput"))

(smithy/sdk/shapes:define-output
 stop-query-workload-insights-top-contributors-output common-lisp:nil
 common-lisp:nil (:shape-name "StopQueryWorkloadInsightsTopContributorsOutput"))

(smithy/sdk/shapes:define-type subnet-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union target-id common-lisp:nil
                                ((account-id :target-type account-id
                                  :member-name "accountId"))
                                (:shape-name "TargetId"))

(smithy/sdk/shapes:define-structure target-identifier common-lisp:nil
                                    ((target-id :target-type target-id
                                      :required common-lisp:t :member-name
                                      "targetId")
                                     (target-type :target-type target-type
                                      :required common-lisp:t :member-name
                                      "targetType"))
                                    (:shape-name "TargetIdentifier"))

(smithy/sdk/shapes:define-structure target-resource common-lisp:nil
                                    ((target-identifier :target-type
                                      target-identifier :required common-lisp:t
                                      :member-name "targetIdentifier")
                                     (region :target-type aws-region :required
                                      common-lisp:t :member-name "region"))
                                    (:shape-name "TargetResource"))

(smithy/sdk/shapes:define-list target-resource-list :member target-resource)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-structure traversed-component common-lisp:nil
                                    ((component-id :target-type component
                                      :member-name "componentId")
                                     (component-type :target-type
                                      component-type :member-name
                                      "componentType")
                                     (component-arn :target-type arn
                                      :member-name "componentArn")
                                     (service-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "serviceName"))
                                    (:shape-name "TraversedComponent"))

(smithy/sdk/shapes:define-list traversed-constructs-list :member
                               traversed-component)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (local-resources-to-add :target-type
                                  monitor-local-resources :member-name
                                  "localResourcesToAdd")
                                 (local-resources-to-remove :target-type
                                  monitor-local-resources :member-name
                                  "localResourcesToRemove")
                                 (remote-resources-to-add :target-type
                                  monitor-remote-resources :member-name
                                  "remoteResourcesToAdd")
                                 (remote-resources-to-remove :target-type
                                  monitor-remote-resources :member-name
                                  "remoteResourcesToRemove")
                                 (client-token :target-type uuid-string
                                  :member-name "clientToken"))
                                (:shape-name "UpdateMonitorInput"))

(smithy/sdk/shapes:define-output update-monitor-output common-lisp:nil
                                 ((monitor-arn :target-type monitor-arn
                                   :required common-lisp:t :member-name
                                   "monitorArn")
                                  (monitor-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "monitorName")
                                  (monitor-status :target-type monitor-status
                                   :required common-lisp:t :member-name
                                   "monitorStatus")
                                  (local-resources :target-type
                                   monitor-local-resources :required
                                   common-lisp:t :member-name "localResources")
                                  (remote-resources :target-type
                                   monitor-remote-resources :required
                                   common-lisp:t :member-name
                                   "remoteResources")
                                  (created-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "modifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateMonitorOutput"))

(smithy/sdk/shapes:define-input update-scope-input common-lisp:nil
                                ((scope-id :target-type scope-id :required
                                  common-lisp:t :member-name "scopeId"
                                  :http-label common-lisp:t)
                                 (resources-to-add :target-type
                                  target-resource-list :member-name
                                  "resourcesToAdd")
                                 (resources-to-delete :target-type
                                  target-resource-list :member-name
                                  "resourcesToDelete"))
                                (:shape-name "UpdateScopeInput"))

(smithy/sdk/shapes:define-output update-scope-output common-lisp:nil
                                 ((scope-id :target-type scope-id :required
                                   common-lisp:t :member-name "scopeId")
                                  (status :target-type scope-status :required
                                   common-lisp:t :member-name "status")
                                  (scope-arn :target-type arn :required
                                   common-lisp:t :member-name "scopeArn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateScopeOutput"))

(smithy/sdk/shapes:define-type uuid-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class networkflowmonitor-error))

(smithy/sdk/shapes:define-type vpc-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workload-insights-metric
    common-lisp:nil
  (:timeouts "TIMEOUTS")
  (:retransmissions "RETRANSMISSIONS")
  (:data-transferred "DATA_TRANSFERRED"))

(smithy/sdk/shapes:define-structure
 workload-insights-top-contributors-data-point common-lisp:nil
 ((timestamps :target-type workload-insights-top-contributors-timestamps-list
   :required common-lisp:t :member-name "timestamps")
  (values :target-type workload-insights-top-contributors-values-list :required
   common-lisp:t :member-name "values")
  (label :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "label"))
 (:shape-name "WorkloadInsightsTopContributorsDataPoint"))

(smithy/sdk/shapes:define-list workload-insights-top-contributors-data-points
                               :member
                               workload-insights-top-contributors-data-point)

(smithy/sdk/shapes:define-structure workload-insights-top-contributors-row
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (local-subnet-id :target-type subnet-id
                                      :member-name "localSubnetId")
                                     (local-az :target-type availability-zone
                                      :member-name "localAz")
                                     (local-vpc-id :target-type vpc-id
                                      :member-name "localVpcId")
                                     (local-region :target-type aws-region
                                      :member-name "localRegion")
                                     (remote-identifier :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "remoteIdentifier")
                                     (value :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "value")
                                     (local-subnet-arn :target-type subnet-arn
                                      :member-name "localSubnetArn")
                                     (local-vpc-arn :target-type vpc-arn
                                      :member-name "localVpcArn"))
                                    (:shape-name
                                     "WorkloadInsightsTopContributorsRow"))

(smithy/sdk/shapes:define-list workload-insights-top-contributors-row-list
                               :member workload-insights-top-contributors-row)

(smithy/sdk/shapes:define-list
 workload-insights-top-contributors-timestamps-list :member
 smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list workload-insights-top-contributors-values-list
                               :member smithy/sdk/smithy-types:double)

(smithy/sdk/operation:define-operation create-monitor :shape-name
                                       "CreateMonitor" :input
                                       create-monitor-input :output
                                       create-monitor-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/monitors")

(smithy/sdk/operation:define-operation create-scope :shape-name "CreateScope"
                                       :input create-scope-input :output
                                       create-scope-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/scopes")

(smithy/sdk/operation:define-operation delete-monitor :shape-name
                                       "DeleteMonitor" :input
                                       delete-monitor-input :output
                                       delete-monitor-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/monitors/{monitorName}")

(smithy/sdk/operation:define-operation delete-scope :shape-name "DeleteScope"
                                       :input delete-scope-input :output
                                       delete-scope-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/scopes/{scopeId}")

(smithy/sdk/operation:define-operation get-monitor :shape-name "GetMonitor"
                                       :input get-monitor-input :output
                                       get-monitor-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/monitors/{monitorName}")

(smithy/sdk/operation:define-operation
 get-query-results-monitor-top-contributors :shape-name
 "GetQueryResultsMonitorTopContributors" :input
 get-query-results-monitor-top-contributors-input :output
 get-query-results-monitor-top-contributors-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "GET" :uri
 "/monitors/{monitorName}/topContributorsQueries/{queryId}/results")

(smithy/sdk/operation:define-operation
 get-query-results-workload-insights-top-contributors :shape-name
 "GetQueryResultsWorkloadInsightsTopContributors" :input
 get-query-results-workload-insights-top-contributors-input :output
 get-query-results-workload-insights-top-contributors-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "GET" :uri
 "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/results")

(smithy/sdk/operation:define-operation
 get-query-results-workload-insights-top-contributors-data :shape-name
 "GetQueryResultsWorkloadInsightsTopContributorsData" :input
 get-query-results-workload-insights-top-contributors-data-input :output
 get-query-results-workload-insights-top-contributors-data-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "GET" :uri
 "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/results")

(smithy/sdk/operation:define-operation
 get-query-status-monitor-top-contributors :shape-name
 "GetQueryStatusMonitorTopContributors" :input
 get-query-status-monitor-top-contributors-input :output
 get-query-status-monitor-top-contributors-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/monitors/{monitorName}/topContributorsQueries/{queryId}/status")

(smithy/sdk/operation:define-operation
 get-query-status-workload-insights-top-contributors :shape-name
 "GetQueryStatusWorkloadInsightsTopContributors" :input
 get-query-status-workload-insights-top-contributors-input :output
 get-query-status-workload-insights-top-contributors-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}/status")

(smithy/sdk/operation:define-operation
 get-query-status-workload-insights-top-contributors-data :shape-name
 "GetQueryStatusWorkloadInsightsTopContributorsData" :input
 get-query-status-workload-insights-top-contributors-data-input :output
 get-query-status-workload-insights-top-contributors-data-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}/status")

(smithy/sdk/operation:define-operation get-scope :shape-name "GetScope" :input
                                       get-scope-input :output get-scope-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/scopes/{scopeId}")

(smithy/sdk/operation:define-operation list-monitors :shape-name "ListMonitors"
                                       :input list-monitors-input :output
                                       list-monitors-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/monitors")

(smithy/sdk/operation:define-operation list-scopes :shape-name "ListScopes"
                                       :input list-scopes-input :output
                                       list-scopes-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/scopes")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation start-query-monitor-top-contributors
                                       :shape-name
                                       "StartQueryMonitorTopContributors"
                                       :input
                                       start-query-monitor-top-contributors-input
                                       :output
                                       start-query-monitor-top-contributors-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/monitors/{monitorName}/topContributorsQueries")

(smithy/sdk/operation:define-operation
 start-query-workload-insights-top-contributors :shape-name
 "StartQueryWorkloadInsightsTopContributors" :input
 start-query-workload-insights-top-contributors-input :output
 start-query-workload-insights-top-contributors-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "POST" :uri "/workloadInsights/{scopeId}/topContributorsQueries")

(smithy/sdk/operation:define-operation
 start-query-workload-insights-top-contributors-data :shape-name
 "StartQueryWorkloadInsightsTopContributorsData" :input
 start-query-workload-insights-top-contributors-data-input :output
 start-query-workload-insights-top-contributors-data-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "POST" :uri "/workloadInsights/{scopeId}/topContributorsDataQueries")

(smithy/sdk/operation:define-operation stop-query-monitor-top-contributors
                                       :shape-name
                                       "StopQueryMonitorTopContributors" :input
                                       stop-query-monitor-top-contributors-input
                                       :output
                                       stop-query-monitor-top-contributors-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/monitors/{monitorName}/topContributorsQueries/{queryId}")

(smithy/sdk/operation:define-operation
 stop-query-workload-insights-top-contributors :shape-name
 "StopQueryWorkloadInsightsTopContributors" :input
 stop-query-workload-insights-top-contributors-input :output
 stop-query-workload-insights-top-contributors-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/workloadInsights/{scopeId}/topContributorsQueries/{queryId}")

(smithy/sdk/operation:define-operation
 stop-query-workload-insights-top-contributors-data :shape-name
 "StopQueryWorkloadInsightsTopContributorsData" :input
 stop-query-workload-insights-top-contributors-data-input :output
 stop-query-workload-insights-top-contributors-data-output :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/workloadInsights/{scopeId}/topContributorsDataQueries/{queryId}")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-monitor :shape-name
                                       "UpdateMonitor" :input
                                       update-monitor-input :output
                                       update-monitor-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/monitors/{monitorName}")

(smithy/sdk/operation:define-operation update-scope :shape-name "UpdateScope"
                                       :input update-scope-input :output
                                       update-scope-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/scopes/{scopeId}")
