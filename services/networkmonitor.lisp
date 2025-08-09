(uiop/package:define-package #:pira/networkmonitor (:use)
                             (:export #:access-denied-exception
                              #:address-family #:aggregation-period #:arn
                              #:conflict-exception #:create-monitor
                              #:create-monitor-input #:create-monitor-output
                              #:create-monitor-probe-input
                              #:create-monitor-probe-input-list #:create-probe
                              #:create-probe-input #:create-probe-output
                              #:delete-monitor #:delete-monitor-input
                              #:delete-monitor-output #:delete-probe
                              #:delete-probe-input #:delete-probe-output
                              #:destination #:get-monitor #:get-monitor-input
                              #:get-monitor-output #:get-probe
                              #:get-probe-input #:get-probe-output
                              #:internal-server-exception #:iso8601timestamp
                              #:list-monitors #:list-monitors-input
                              #:list-monitors-output #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output #:max-results
                              #:monitor-arn #:monitor-list #:monitor-resource
                              #:monitor-state #:monitor-summary
                              #:network-monitor #:packet-size
                              #:pagination-token #:port #:probe #:probe-id
                              #:probe-input #:probe-list #:probe-resource
                              #:probe-state #:protocol #:resource-name
                              #:resource-not-found-exception
                              #:service-quota-exceeded-exception #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-input #:tag-resource-output
                              #:tag-value #:throttling-exception
                              #:untag-resource #:untag-resource-input
                              #:untag-resource-output #:update-monitor
                              #:update-monitor-input #:update-monitor-output
                              #:update-probe #:update-probe-input
                              #:update-probe-output #:validation-exception
                              #:vpc-id))
(common-lisp:in-package #:pira/networkmonitor)

(smithy/sdk/service:define-service network-monitor :shape-name "NetworkMonitor"
                                   :version "2023-08-01" :title
                                   "Amazon CloudWatch Network Monitor" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "NetworkMonitor")
                                      ("arnNamespace" . "networkmonitor")
                                      ("cloudFormationName" . "NetworkMonitor")
                                      ("cloudTrailEventSource"
                                       . "networkmonitor.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "networkmonitor"))
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

(smithy/sdk/shapes:define-enum address-family
    common-lisp:nil
  (:ipv4 "IPV4")
  (:ipv6 "IPV6"))

(smithy/sdk/shapes:define-type aggregation-period smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName")
                                 (probes :target-type
                                  create-monitor-probe-input-list :member-name
                                  "probes")
                                 (aggregation-period :target-type
                                  aggregation-period :member-name
                                  "aggregationPeriod")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
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
                                  (state :target-type monitor-state :required
                                   common-lisp:t :member-name "state")
                                  (aggregation-period :target-type
                                   aggregation-period :member-name
                                   "aggregationPeriod")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateMonitorOutput"))

(smithy/sdk/shapes:define-structure create-monitor-probe-input common-lisp:nil
                                    ((source-arn :target-type arn :required
                                      common-lisp:t :member-name "sourceArn")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (destination-port :target-type port
                                      :member-name "destinationPort")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "protocol")
                                     (packet-size :target-type packet-size
                                      :member-name "packetSize")
                                     (probe-tags :target-type tag-map
                                      :member-name "probeTags"))
                                    (:shape-name "CreateMonitorProbeInput"))

(smithy/sdk/shapes:define-list create-monitor-probe-input-list :member
                               create-monitor-probe-input)

(smithy/sdk/shapes:define-input create-probe-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (probe :target-type probe-input :required
                                  common-lisp:t :member-name "probe")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateProbeInput"))

(smithy/sdk/shapes:define-output create-probe-output common-lisp:nil
                                 ((probe-id :target-type probe-id :member-name
                                   "probeId")
                                  (probe-arn :target-type arn :member-name
                                   "probeArn")
                                  (source-arn :target-type arn :required
                                   common-lisp:t :member-name "sourceArn")
                                  (destination :target-type destination
                                   :required common-lisp:t :member-name
                                   "destination")
                                  (destination-port :target-type port
                                   :member-name "destinationPort")
                                  (protocol :target-type protocol :required
                                   common-lisp:t :member-name "protocol")
                                  (packet-size :target-type packet-size
                                   :member-name "packetSize")
                                  (address-family :target-type address-family
                                   :member-name "addressFamily")
                                  (vpc-id :target-type vpc-id :member-name
                                   "vpcId")
                                  (state :target-type probe-state :member-name
                                   "state")
                                  (created-at :target-type iso8601timestamp
                                   :member-name "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :member-name "modifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateProbeOutput"))

(smithy/sdk/shapes:define-input delete-monitor-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t))
                                (:shape-name "DeleteMonitorInput"))

(smithy/sdk/shapes:define-output delete-monitor-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMonitorOutput"))

(smithy/sdk/shapes:define-input delete-probe-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (probe-id :target-type probe-id :required
                                  common-lisp:t :member-name "probeId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteProbeInput"))

(smithy/sdk/shapes:define-output delete-probe-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProbeOutput"))

(smithy/sdk/shapes:define-type destination smithy/sdk/smithy-types:string)

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
                                  (state :target-type monitor-state :required
                                   common-lisp:t :member-name "state")
                                  (aggregation-period :target-type
                                   aggregation-period :required common-lisp:t
                                   :member-name "aggregationPeriod")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (probes :target-type probe-list :member-name
                                   "probes")
                                  (created-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :required common-lisp:t :member-name
                                   "modifiedAt"))
                                 (:shape-name "GetMonitorOutput"))

(smithy/sdk/shapes:define-input get-probe-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (probe-id :target-type probe-id :required
                                  common-lisp:t :member-name "probeId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProbeInput"))

(smithy/sdk/shapes:define-output get-probe-output common-lisp:nil
                                 ((probe-id :target-type probe-id :member-name
                                   "probeId")
                                  (probe-arn :target-type arn :member-name
                                   "probeArn")
                                  (source-arn :target-type arn :required
                                   common-lisp:t :member-name "sourceArn")
                                  (destination :target-type destination
                                   :required common-lisp:t :member-name
                                   "destination")
                                  (destination-port :target-type port
                                   :member-name "destinationPort")
                                  (protocol :target-type protocol :required
                                   common-lisp:t :member-name "protocol")
                                  (packet-size :target-type packet-size
                                   :member-name "packetSize")
                                  (address-family :target-type address-family
                                   :member-name "addressFamily")
                                  (vpc-id :target-type vpc-id :member-name
                                   "vpcId")
                                  (state :target-type probe-state :member-name
                                   "state")
                                  (created-at :target-type iso8601timestamp
                                   :member-name "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :member-name "modifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetProbeOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type iso8601timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-monitors-input common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (state :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "state" :http-query "state"))
                                (:shape-name "ListMonitorsInput"))

(smithy/sdk/shapes:define-output list-monitors-output common-lisp:nil
                                 ((monitors :target-type monitor-list :required
                                   common-lisp:t :member-name "monitors")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListMonitorsOutput"))

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

(smithy/sdk/shapes:define-type monitor-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list monitor-list :member monitor-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum monitor-state
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
                                     (state :target-type monitor-state
                                      :required common-lisp:t :member-name
                                      "state")
                                     (aggregation-period :target-type
                                      aggregation-period :member-name
                                      "aggregationPeriod")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "MonitorSummary"))

(smithy/sdk/shapes:define-type packet-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure probe common-lisp:nil
                                    ((probe-id :target-type probe-id
                                      :member-name "probeId")
                                     (probe-arn :target-type arn :member-name
                                      "probeArn")
                                     (source-arn :target-type arn :required
                                      common-lisp:t :member-name "sourceArn")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (destination-port :target-type port
                                      :member-name "destinationPort")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "protocol")
                                     (packet-size :target-type packet-size
                                      :member-name "packetSize")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (state :target-type probe-state
                                      :member-name "state")
                                     (created-at :target-type iso8601timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type iso8601timestamp
                                      :member-name "modifiedAt")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Probe"))

(smithy/sdk/shapes:define-type probe-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure probe-input common-lisp:nil
                                    ((source-arn :target-type arn :required
                                      common-lisp:t :member-name "sourceArn")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "destination")
                                     (destination-port :target-type port
                                      :member-name "destinationPort")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "protocol")
                                     (packet-size :target-type packet-size
                                      :member-name "packetSize")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ProbeInput"))

(smithy/sdk/shapes:define-list probe-list :member probe)

common-lisp:nil

(smithy/sdk/shapes:define-enum probe-state
    common-lisp:nil
  (:pending "PENDING")
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:error "ERROR")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:tcp "TCP")
  (:icmp "ICMP"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

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

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

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
                                 (aggregation-period :target-type
                                  aggregation-period :required common-lisp:t
                                  :member-name "aggregationPeriod"))
                                (:shape-name "UpdateMonitorInput"))

(smithy/sdk/shapes:define-output update-monitor-output common-lisp:nil
                                 ((monitor-arn :target-type monitor-arn
                                   :required common-lisp:t :member-name
                                   "monitorArn")
                                  (monitor-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "monitorName")
                                  (state :target-type monitor-state :required
                                   common-lisp:t :member-name "state")
                                  (aggregation-period :target-type
                                   aggregation-period :member-name
                                   "aggregationPeriod")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateMonitorOutput"))

(smithy/sdk/shapes:define-input update-probe-input common-lisp:nil
                                ((monitor-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "monitorName" :http-label common-lisp:t)
                                 (probe-id :target-type probe-id :required
                                  common-lisp:t :member-name "probeId"
                                  :http-label common-lisp:t)
                                 (state :target-type probe-state :member-name
                                  "state")
                                 (destination :target-type destination
                                  :member-name "destination")
                                 (destination-port :target-type port
                                  :member-name "destinationPort")
                                 (protocol :target-type protocol :member-name
                                  "protocol")
                                 (packet-size :target-type packet-size
                                  :member-name "packetSize"))
                                (:shape-name "UpdateProbeInput"))

(smithy/sdk/shapes:define-output update-probe-output common-lisp:nil
                                 ((probe-id :target-type probe-id :member-name
                                   "probeId")
                                  (probe-arn :target-type arn :member-name
                                   "probeArn")
                                  (source-arn :target-type arn :required
                                   common-lisp:t :member-name "sourceArn")
                                  (destination :target-type destination
                                   :required common-lisp:t :member-name
                                   "destination")
                                  (destination-port :target-type port
                                   :member-name "destinationPort")
                                  (protocol :target-type protocol :required
                                   common-lisp:t :member-name "protocol")
                                  (packet-size :target-type packet-size
                                   :member-name "packetSize")
                                  (address-family :target-type address-family
                                   :member-name "addressFamily")
                                  (vpc-id :target-type vpc-id :member-name
                                   "vpcId")
                                  (state :target-type probe-state :member-name
                                   "state")
                                  (created-at :target-type iso8601timestamp
                                   :member-name "createdAt")
                                  (modified-at :target-type iso8601timestamp
                                   :member-name "modifiedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateProbeOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

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

(smithy/sdk/operation:define-operation create-probe :shape-name "CreateProbe"
                                       :input create-probe-input :output
                                       create-probe-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/monitors/{monitorName}/probes")

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

(smithy/sdk/operation:define-operation delete-probe :shape-name "DeleteProbe"
                                       :input delete-probe-input :output
                                       delete-probe-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/monitors/{monitorName}/probes/{probeId}")

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

(smithy/sdk/operation:define-operation get-probe :shape-name "GetProbe" :input
                                       get-probe-input :output get-probe-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/monitors/{monitorName}/probes/{probeId}")

(smithy/sdk/operation:define-operation list-monitors :shape-name "ListMonitors"
                                       :input list-monitors-input :output
                                       list-monitors-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/monitors")

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
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/monitors/{monitorName}")

(smithy/sdk/operation:define-operation update-probe :shape-name "UpdateProbe"
                                       :input update-probe-input :output
                                       update-probe-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/monitors/{monitorName}/probes/{probeId}")
