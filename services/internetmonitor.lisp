(uiop/package:define-package #:pira/internetmonitor (:use)
                             (:export #:account-id #:arn
                              #:availability-measurement #:client-location
                              #:create-monitor #:delete-monitor #:filter-list
                              #:filter-parameter #:filter-parameters
                              #:get-health-event #:get-health-event-input
                              #:get-health-event-output #:get-internet-event
                              #:get-monitor #:get-query-results
                              #:get-query-status #:health-event
                              #:health-event-impact-type #:health-event-list
                              #:health-event-name #:health-event-resource
                              #:health-event-status #:health-events-config
                              #:impacted-location #:impacted-locations-list
                              #:internet-event-id #:internet-event-max-results
                              #:internet-event-resource #:internet-event-status
                              #:internet-event-summary #:internet-event-type
                              #:internet-events-list #:internet-health
                              #:internet-measurements-log-delivery
                              #:internet-monitor20210603 #:ipv4prefix-list
                              #:list-health-events #:list-health-events-input
                              #:list-health-events-output
                              #:list-internet-events #:list-monitors
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:local-health-events-config
                              #:local-health-events-config-status
                              #:log-delivery-status
                              #:max-city-networks-to-monitor #:max-results
                              #:monitor #:monitor-arn #:monitor-config-state
                              #:monitor-list #:monitor-processing-status-code
                              #:monitor-resource #:network #:network-impairment
                              #:network-list #:operator #:percentage
                              #:performance-measurement #:query-data
                              #:query-field #:query-fields #:query-max-results
                              #:query-row #:query-status #:query-type
                              #:resource-name #:round-trip-time #:s3config
                              #:set-of-arns #:start-query #:stop-query
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-input #:tag-resource-output
                              #:tag-value #:traffic-percentage-to-monitor
                              #:triangulation-event-type #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-monitor))
(common-lisp:in-package #:pira/internetmonitor)

(smithy/sdk/service:define-service internet-monitor20210603 :shape-name
                                   "InternetMonitor20210603" :version
                                   "2021-06-03" :title
                                   "Amazon CloudWatch Internet Monitor"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "InternetMonitor")
                                      ("arnNamespace" . "internetmonitor")
                                      ("cloudFormationName"
                                       . "InternetMonitor")
                                      ("cloudTrailEventSource"
                                       . "internetmonitor.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "internetmonitor"))
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
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure availability-measurement common-lisp:nil
                                    ((experience-score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "ExperienceScore")
                                     (percent-of-total-traffic-impacted
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "PercentOfTotalTrafficImpacted")
                                     (percent-of-client-location-impacted
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "PercentOfClientLocationImpacted"))
                                    (:shape-name "AvailabilityMeasurement"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure client-location common-lisp:nil
                                    ((asname :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ASName")
                                     (asnumber :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "ASNumber")
                                     (country :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Country")
                                     (subdivision :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Subdivision")
                                     (metro :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Metro")
                                     (city :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "City")
                                     (latitude :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Latitude")
                                     (longitude :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Longitude"))
                                    (:shape-name "ClientLocation"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName")
                                 (resources :target-type set-of-arns
                                  :member-name "Resources")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (max-city-networks-to-monitor :target-type
                                  max-city-networks-to-monitor :member-name
                                  "MaxCityNetworksToMonitor")
                                 (internet-measurements-log-delivery
                                  :target-type
                                  internet-measurements-log-delivery
                                  :member-name
                                  "InternetMeasurementsLogDelivery")
                                 (traffic-percentage-to-monitor :target-type
                                  traffic-percentage-to-monitor :member-name
                                  "TrafficPercentageToMonitor")
                                 (health-events-config :target-type
                                  health-events-config :member-name
                                  "HealthEventsConfig"))
                                (:shape-name "CreateMonitorInput"))

(smithy/sdk/shapes:define-output create-monitor-output common-lisp:nil
                                 ((arn :target-type monitor-arn :required
                                   common-lisp:t :member-name "Arn")
                                  (status :target-type monitor-config-state
                                   :required common-lisp:t :member-name
                                   "Status"))
                                 (:shape-name "CreateMonitorOutput"))

(smithy/sdk/shapes:define-input delete-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t))
                                (:shape-name "DeleteMonitorInput"))

(smithy/sdk/shapes:define-output delete-monitor-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMonitorOutput"))

(smithy/sdk/shapes:define-list filter-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter-parameter common-lisp:nil
                                    ((field :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Field")
                                     (operator :target-type operator
                                      :member-name "Operator")
                                     (values :target-type filter-list
                                      :member-name "Values"))
                                    (:shape-name "FilterParameter"))

(smithy/sdk/shapes:define-list filter-parameters :member filter-parameter)

(smithy/sdk/shapes:define-input get-health-event-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (event-id :target-type health-event-name
                                  :required common-lisp:t :member-name
                                  "EventId" :http-label common-lisp:t)
                                 (linked-account-id :target-type account-id
                                  :member-name "LinkedAccountId" :http-query
                                  "LinkedAccountId"))
                                (:shape-name "GetHealthEventInput"))

(smithy/sdk/shapes:define-structure get-health-event-output common-lisp:nil
                                    ((event-arn :target-type arn :required
                                      common-lisp:t :member-name "EventArn")
                                     (event-id :target-type health-event-name
                                      :required common-lisp:t :member-name
                                      "EventId")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartedAt" :timestamp-format
                                      "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "EndedAt" :timestamp-format
                                      "date-time")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt" :timestamp-format
                                      "date-time")
                                     (impacted-locations :target-type
                                      impacted-locations-list :required
                                      common-lisp:t :member-name
                                      "ImpactedLocations")
                                     (status :target-type health-event-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (percent-of-total-traffic-impacted
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "PercentOfTotalTrafficImpacted")
                                     (impact-type :target-type
                                      health-event-impact-type :required
                                      common-lisp:t :member-name "ImpactType")
                                     (health-score-threshold :target-type
                                      percentage :member-name
                                      "HealthScoreThreshold"))
                                    (:shape-name "GetHealthEventOutput"))

(smithy/sdk/shapes:define-input get-internet-event-input common-lisp:nil
                                ((event-id :target-type internet-event-id
                                  :required common-lisp:t :member-name
                                  "EventId" :http-label common-lisp:t))
                                (:shape-name "GetInternetEventInput"))

(smithy/sdk/shapes:define-output get-internet-event-output common-lisp:nil
                                 ((event-id :target-type internet-event-id
                                   :required common-lisp:t :member-name
                                   "EventId")
                                  (event-arn :target-type arn :required
                                   common-lisp:t :member-name "EventArn")
                                  (started-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "StartedAt"
                                   :timestamp-format "date-time")
                                  (ended-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "EndedAt" :timestamp-format
                                   "date-time")
                                  (client-location :target-type client-location
                                   :required common-lisp:t :member-name
                                   "ClientLocation")
                                  (event-type :target-type internet-event-type
                                   :required common-lisp:t :member-name
                                   "EventType")
                                  (event-status :target-type
                                   internet-event-status :required
                                   common-lisp:t :member-name "EventStatus"))
                                 (:shape-name "GetInternetEventOutput"))

(smithy/sdk/shapes:define-input get-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (linked-account-id :target-type account-id
                                  :member-name "LinkedAccountId" :http-query
                                  "LinkedAccountId"))
                                (:shape-name "GetMonitorInput"))

(smithy/sdk/shapes:define-output get-monitor-output common-lisp:nil
                                 ((monitor-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "MonitorName")
                                  (monitor-arn :target-type monitor-arn
                                   :required common-lisp:t :member-name
                                   "MonitorArn")
                                  (resources :target-type set-of-arns :required
                                   common-lisp:t :member-name "Resources")
                                  (status :target-type monitor-config-state
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedAt"
                                   :timestamp-format "date-time")
                                  (modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "ModifiedAt"
                                   :timestamp-format "date-time")
                                  (processing-status :target-type
                                   monitor-processing-status-code :member-name
                                   "ProcessingStatus")
                                  (processing-status-info :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ProcessingStatusInfo")
                                  (tags :target-type tag-map :member-name
                                   "Tags")
                                  (max-city-networks-to-monitor :target-type
                                   max-city-networks-to-monitor :member-name
                                   "MaxCityNetworksToMonitor")
                                  (internet-measurements-log-delivery
                                   :target-type
                                   internet-measurements-log-delivery
                                   :member-name
                                   "InternetMeasurementsLogDelivery")
                                  (traffic-percentage-to-monitor :target-type
                                   traffic-percentage-to-monitor :member-name
                                   "TrafficPercentageToMonitor")
                                  (health-events-config :target-type
                                   health-events-config :member-name
                                   "HealthEventsConfig"))
                                 (:shape-name "GetMonitorOutput"))

(smithy/sdk/shapes:define-input get-query-results-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "QueryId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type query-max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "GetQueryResultsInput"))

(smithy/sdk/shapes:define-output get-query-results-output common-lisp:nil
                                 ((fields :target-type query-fields :required
                                   common-lisp:t :member-name "Fields")
                                  (data :target-type query-data :required
                                   common-lisp:t :member-name "Data")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "GetQueryResultsOutput"))

(smithy/sdk/shapes:define-input get-query-status-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "QueryId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetQueryStatusInput"))

(smithy/sdk/shapes:define-output get-query-status-output common-lisp:nil
                                 ((status :target-type query-status :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "GetQueryStatusOutput"))

(smithy/sdk/shapes:define-structure health-event common-lisp:nil
                                    ((event-arn :target-type arn :required
                                      common-lisp:t :member-name "EventArn")
                                     (event-id :target-type health-event-name
                                      :required common-lisp:t :member-name
                                      "EventId")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartedAt" :timestamp-format
                                      "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "EndedAt" :timestamp-format
                                      "date-time")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt" :timestamp-format
                                      "date-time")
                                     (impacted-locations :target-type
                                      impacted-locations-list :required
                                      common-lisp:t :member-name
                                      "ImpactedLocations")
                                     (status :target-type health-event-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (percent-of-total-traffic-impacted
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "PercentOfTotalTrafficImpacted")
                                     (impact-type :target-type
                                      health-event-impact-type :required
                                      common-lisp:t :member-name "ImpactType")
                                     (health-score-threshold :target-type
                                      percentage :member-name
                                      "HealthScoreThreshold"))
                                    (:shape-name "HealthEvent"))

(smithy/sdk/shapes:define-type health-event-impact-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list health-event-list :member health-event)

(smithy/sdk/shapes:define-type health-event-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type health-event-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure health-events-config common-lisp:nil
                                    ((availability-score-threshold :target-type
                                      percentage :member-name
                                      "AvailabilityScoreThreshold")
                                     (performance-score-threshold :target-type
                                      percentage :member-name
                                      "PerformanceScoreThreshold")
                                     (availability-local-health-events-config
                                      :target-type local-health-events-config
                                      :member-name
                                      "AvailabilityLocalHealthEventsConfig")
                                     (performance-local-health-events-config
                                      :target-type local-health-events-config
                                      :member-name
                                      "PerformanceLocalHealthEventsConfig"))
                                    (:shape-name "HealthEventsConfig"))

(smithy/sdk/shapes:define-structure impacted-location common-lisp:nil
                                    ((asname :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ASName")
                                     (asnumber :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "ASNumber")
                                     (country :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Country")
                                     (subdivision :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Subdivision")
                                     (metro :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Metro")
                                     (city :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "City")
                                     (latitude :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Latitude")
                                     (longitude :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "Longitude")
                                     (country-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "CountryCode")
                                     (subdivision-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SubdivisionCode")
                                     (service-location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ServiceLocation")
                                     (status :target-type health-event-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (caused-by :target-type network-impairment
                                      :member-name "CausedBy")
                                     (internet-health :target-type
                                      internet-health :member-name
                                      "InternetHealth")
                                     (ipv4prefixes :target-type ipv4prefix-list
                                      :member-name "Ipv4Prefixes"))
                                    (:shape-name "ImpactedLocation"))

(smithy/sdk/shapes:define-list impacted-locations-list :member
                               impacted-location)

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type internet-event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type internet-event-max-results
                               smithy/sdk/smithy-types:integer)

common-lisp:nil

(smithy/sdk/shapes:define-type internet-event-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure internet-event-summary common-lisp:nil
                                    ((event-id :target-type internet-event-id
                                      :required common-lisp:t :member-name
                                      "EventId")
                                     (event-arn :target-type arn :required
                                      common-lisp:t :member-name "EventArn")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartedAt" :timestamp-format
                                      "date-time")
                                     (ended-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "EndedAt" :timestamp-format
                                      "date-time")
                                     (client-location :target-type
                                      client-location :required common-lisp:t
                                      :member-name "ClientLocation")
                                     (event-type :target-type
                                      internet-event-type :required
                                      common-lisp:t :member-name "EventType")
                                     (event-status :target-type
                                      internet-event-status :required
                                      common-lisp:t :member-name
                                      "EventStatus"))
                                    (:shape-name "InternetEventSummary"))

(smithy/sdk/shapes:define-type internet-event-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list internet-events-list :member
                               internet-event-summary)

(smithy/sdk/shapes:define-structure internet-health common-lisp:nil
                                    ((availability :target-type
                                      availability-measurement :member-name
                                      "Availability")
                                     (performance :target-type
                                      performance-measurement :member-name
                                      "Performance"))
                                    (:shape-name "InternetHealth"))

(smithy/sdk/shapes:define-structure internet-measurements-log-delivery
                                    common-lisp:nil
                                    ((s3config :target-type s3config
                                      :member-name "S3Config"))
                                    (:shape-name
                                     "InternetMeasurementsLogDelivery"))

(smithy/sdk/shapes:define-list ipv4prefix-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input list-health-events-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "StartTime" :http-query
                                  "StartTime" :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "EndTime" :http-query "EndTime"
                                  :timestamp-format "date-time")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (event-status :target-type health-event-status
                                  :member-name "EventStatus" :http-query
                                  "EventStatus")
                                 (linked-account-id :target-type account-id
                                  :member-name "LinkedAccountId" :http-query
                                  "LinkedAccountId"))
                                (:shape-name "ListHealthEventsInput"))

(smithy/sdk/shapes:define-structure list-health-events-output common-lisp:nil
                                    ((health-events :target-type
                                      health-event-list :required common-lisp:t
                                      :member-name "HealthEvents")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name "ListHealthEventsOutput"))

(smithy/sdk/shapes:define-input list-internet-events-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type
                                  internet-event-max-results :member-name
                                  "MaxResults" :http-query
                                  "InternetEventMaxResults")
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "StartTime" :http-query
                                  "StartTime" :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "EndTime" :http-query "EndTime"
                                  :timestamp-format "date-time")
                                 (event-status :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "EventStatus" :http-query "EventStatus")
                                 (event-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "EventType" :http-query "EventType"))
                                (:shape-name "ListInternetEventsInput"))

(smithy/sdk/shapes:define-output list-internet-events-output common-lisp:nil
                                 ((internet-events :target-type
                                   internet-events-list :required common-lisp:t
                                   :member-name "InternetEvents")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListInternetEventsOutput"))

(smithy/sdk/shapes:define-input list-monitors-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (monitor-status :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "MonitorStatus" :http-query "MonitorStatus")
                                 (include-linked-accounts :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "IncludeLinkedAccounts" :http-query
                                  "IncludeLinkedAccounts"))
                                (:shape-name "ListMonitorsInput"))

(smithy/sdk/shapes:define-output list-monitors-output common-lisp:nil
                                 ((monitors :target-type monitor-list :required
                                   common-lisp:t :member-name "Monitors")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListMonitorsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type monitor-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure local-health-events-config common-lisp:nil
                                    ((status :target-type
                                      local-health-events-config-status
                                      :member-name "Status")
                                     (health-score-threshold :target-type
                                      percentage :member-name
                                      "HealthScoreThreshold")
                                     (min-traffic-impact :target-type
                                      percentage :member-name
                                      "MinTrafficImpact"))
                                    (:shape-name "LocalHealthEventsConfig"))

(smithy/sdk/shapes:define-type local-health-events-config-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-delivery-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-city-networks-to-monitor
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure monitor common-lisp:nil
                                    ((monitor-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "MonitorName")
                                     (monitor-arn :target-type monitor-arn
                                      :required common-lisp:t :member-name
                                      "MonitorArn")
                                     (status :target-type monitor-config-state
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (processing-status :target-type
                                      monitor-processing-status-code
                                      :member-name "ProcessingStatus"))
                                    (:shape-name "Monitor"))

(smithy/sdk/shapes:define-type monitor-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type monitor-config-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list monitor-list :member monitor)

(smithy/sdk/shapes:define-type monitor-processing-status-code
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure network common-lisp:nil
                                    ((asname :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ASName")
                                     (asnumber :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "ASNumber"))
                                    (:shape-name "Network"))

(smithy/sdk/shapes:define-structure network-impairment common-lisp:nil
                                    ((networks :target-type network-list
                                      :required common-lisp:t :member-name
                                      "Networks")
                                     (as-path :target-type network-list
                                      :required common-lisp:t :member-name
                                      "AsPath")
                                     (network-event-type :target-type
                                      triangulation-event-type :required
                                      common-lisp:t :member-name
                                      "NetworkEventType"))
                                    (:shape-name "NetworkImpairment"))

(smithy/sdk/shapes:define-list network-list :member network)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type operator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure performance-measurement common-lisp:nil
                                    ((experience-score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "ExperienceScore")
                                     (percent-of-total-traffic-impacted
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "PercentOfTotalTrafficImpacted")
                                     (percent-of-client-location-impacted
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "PercentOfClientLocationImpacted")
                                     (round-trip-time :target-type
                                      round-trip-time :member-name
                                      "RoundTripTime"))
                                    (:shape-name "PerformanceMeasurement"))

(smithy/sdk/shapes:define-list query-data :member query-row)

(smithy/sdk/shapes:define-structure query-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Type"))
                                    (:shape-name "QueryField"))

(smithy/sdk/shapes:define-list query-fields :member query-field)

(smithy/sdk/shapes:define-type query-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list query-row :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure round-trip-time common-lisp:nil
                                    ((p50 :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "P50")
                                     (p90 :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "P90")
                                     (p95 :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "P95"))
                                    (:shape-name "RoundTripTime"))

(smithy/sdk/shapes:define-structure s3config common-lisp:nil
                                    ((bucket-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BucketName")
                                     (bucket-prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BucketPrefix")
                                     (log-delivery-status :target-type
                                      log-delivery-status :member-name
                                      "LogDeliveryStatus"))
                                    (:shape-name "S3Config"))

(smithy/sdk/shapes:define-list set-of-arns :member arn)

(smithy/sdk/shapes:define-input start-query-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "StartTime"
                                  :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "EndTime"
                                  :timestamp-format "date-time")
                                 (query-type :target-type query-type :required
                                  common-lisp:t :member-name "QueryType")
                                 (filter-parameters :target-type
                                  filter-parameters :member-name
                                  "FilterParameters")
                                 (linked-account-id :target-type account-id
                                  :member-name "LinkedAccountId"))
                                (:shape-name "StartQueryInput"))

(smithy/sdk/shapes:define-output start-query-output common-lisp:nil
                                 ((query-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "QueryId"))
                                 (:shape-name "StartQueryOutput"))

(smithy/sdk/shapes:define-input stop-query-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (query-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "QueryId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopQueryInput"))

(smithy/sdk/shapes:define-output stop-query-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopQueryOutput"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type monitor-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type traffic-percentage-to-monitor
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type triangulation-event-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type monitor-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "MonitorName" :http-label common-lisp:t)
                                 (resources-to-add :target-type set-of-arns
                                  :member-name "ResourcesToAdd")
                                 (resources-to-remove :target-type set-of-arns
                                  :member-name "ResourcesToRemove")
                                 (status :target-type monitor-config-state
                                  :member-name "Status")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (max-city-networks-to-monitor :target-type
                                  max-city-networks-to-monitor :member-name
                                  "MaxCityNetworksToMonitor")
                                 (internet-measurements-log-delivery
                                  :target-type
                                  internet-measurements-log-delivery
                                  :member-name
                                  "InternetMeasurementsLogDelivery")
                                 (traffic-percentage-to-monitor :target-type
                                  traffic-percentage-to-monitor :member-name
                                  "TrafficPercentageToMonitor")
                                 (health-events-config :target-type
                                  health-events-config :member-name
                                  "HealthEventsConfig"))
                                (:shape-name "UpdateMonitorInput"))

(smithy/sdk/shapes:define-output update-monitor-output common-lisp:nil
                                 ((monitor-arn :target-type monitor-arn
                                   :required common-lisp:t :member-name
                                   "MonitorArn")
                                  (status :target-type monitor-config-state
                                   :required common-lisp:t :member-name
                                   "Status"))
                                 (:shape-name "UpdateMonitorOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-monitor :shape-name
                                       "CreateMonitor" :input
                                       create-monitor-input :output
                                       create-monitor-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v20210603/Monitors")

(smithy/sdk/operation:define-operation delete-monitor :shape-name
                                       "DeleteMonitor" :input
                                       delete-monitor-input :output
                                       delete-monitor-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v20210603/Monitors/{MonitorName}")

(smithy/sdk/operation:define-operation get-health-event :shape-name
                                       "GetHealthEvent" :input
                                       get-health-event-input :output
                                       get-health-event-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}")

(smithy/sdk/operation:define-operation get-internet-event :shape-name
                                       "GetInternetEvent" :input
                                       get-internet-event-input :output
                                       get-internet-event-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/InternetEvents/{EventId}")

(smithy/sdk/operation:define-operation get-monitor :shape-name "GetMonitor"
                                       :input get-monitor-input :output
                                       get-monitor-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/Monitors/{MonitorName}")

(smithy/sdk/operation:define-operation get-query-results :shape-name
                                       "GetQueryResults" :input
                                       get-query-results-input :output
                                       get-query-results-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results")

(smithy/sdk/operation:define-operation get-query-status :shape-name
                                       "GetQueryStatus" :input
                                       get-query-status-input :output
                                       get-query-status-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status")

(smithy/sdk/operation:define-operation list-health-events :shape-name
                                       "ListHealthEvents" :input
                                       list-health-events-input :output
                                       list-health-events-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/Monitors/{MonitorName}/HealthEvents")

(smithy/sdk/operation:define-operation list-internet-events :shape-name
                                       "ListInternetEvents" :input
                                       list-internet-events-input :output
                                       list-internet-events-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v20210603/InternetEvents")

(smithy/sdk/operation:define-operation list-monitors :shape-name "ListMonitors"
                                       :input list-monitors-input :output
                                       list-monitors-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v20210603/Monitors")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation start-query :shape-name "StartQuery"
                                       :input start-query-input :output
                                       start-query-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v20210603/Monitors/{MonitorName}/Queries")

(smithy/sdk/operation:define-operation stop-query :shape-name "StopQuery"
                                       :input stop-query-input :output
                                       stop-query-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-monitor :shape-name
                                       "UpdateMonitor" :input
                                       update-monitor-input :output
                                       update-monitor-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/v20210603/Monitors/{MonitorName}")
