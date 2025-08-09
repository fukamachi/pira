(uiop/package:define-package #:pira/servicediscovery (:use)
                             (:export #:amazon-resource-name #:arn #:attr-key
                              #:attr-value #:attributes #:code
                              #:create-http-namespace
                              #:create-http-namespace-request
                              #:create-http-namespace-response
                              #:create-private-dns-namespace
                              #:create-private-dns-namespace-request
                              #:create-private-dns-namespace-response
                              #:create-public-dns-namespace
                              #:create-public-dns-namespace-request
                              #:create-public-dns-namespace-response
                              #:create-service #:create-service-request
                              #:create-service-response
                              #:custom-health-not-found #:custom-health-status
                              #:delete-namespace #:delete-namespace-request
                              #:delete-namespace-response #:delete-service
                              #:delete-service-attributes
                              #:delete-service-attributes-request
                              #:delete-service-attributes-response
                              #:delete-service-request
                              #:delete-service-response #:deregister-instance
                              #:deregister-instance-request
                              #:deregister-instance-response
                              #:discover-instances #:discover-instances-request
                              #:discover-instances-response
                              #:discover-instances-revision
                              #:discover-instances-revision-request
                              #:discover-instances-revision-response
                              #:discover-max-results #:dns-config
                              #:dns-config-change #:dns-properties #:dns-record
                              #:dns-record-list #:duplicate-request
                              #:error-message #:failure-threshold
                              #:filter-condition #:filter-value #:filter-values
                              #:get-instance #:get-instance-request
                              #:get-instance-response
                              #:get-instances-health-status
                              #:get-instances-health-status-request
                              #:get-instances-health-status-response
                              #:get-namespace #:get-namespace-request
                              #:get-namespace-response #:get-operation
                              #:get-operation-request #:get-operation-response
                              #:get-service #:get-service-attributes
                              #:get-service-attributes-request
                              #:get-service-attributes-response
                              #:get-service-request #:get-service-response
                              #:health-check-config
                              #:health-check-custom-config #:health-check-type
                              #:health-status #:health-status-filter
                              #:http-instance-summary
                              #:http-instance-summary-list
                              #:http-namespace-change #:http-properties
                              #:instance #:instance-health-status-map
                              #:instance-id #:instance-id-list
                              #:instance-not-found #:instance-summary
                              #:instance-summary-list #:invalid-input
                              #:list-instances #:list-instances-request
                              #:list-instances-response #:list-namespaces
                              #:list-namespaces-request
                              #:list-namespaces-response #:list-operations
                              #:list-operations-request
                              #:list-operations-response #:list-services
                              #:list-services-request #:list-services-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:message #:namespace #:namespace-already-exists
                              #:namespace-filter #:namespace-filter-name
                              #:namespace-filters #:namespace-name
                              #:namespace-name-http #:namespace-name-private
                              #:namespace-name-public #:namespace-not-found
                              #:namespace-properties #:namespace-summaries-list
                              #:namespace-summary #:namespace-type #:next-token
                              #:operation #:operation-filter
                              #:operation-filter-name #:operation-filters
                              #:operation-id #:operation-not-found
                              #:operation-status #:operation-summary
                              #:operation-summary-list #:operation-target-type
                              #:operation-targets-map #:operation-type
                              #:private-dns-namespace-change
                              #:private-dns-namespace-properties
                              #:private-dns-namespace-properties-change
                              #:private-dns-properties-mutable
                              #:private-dns-properties-mutable-change
                              #:public-dns-namespace-change
                              #:public-dns-namespace-properties
                              #:public-dns-namespace-properties-change
                              #:public-dns-properties-mutable
                              #:public-dns-properties-mutable-change
                              #:record-ttl #:record-type #:register-instance
                              #:register-instance-request
                              #:register-instance-response
                              #:request-limit-exceeded #:resource-count
                              #:resource-description #:resource-id
                              #:resource-in-use #:resource-limit-exceeded
                              #:resource-not-found-exception #:resource-path
                              #:revision #:route53auto-naming-v20170314
                              #:routing-policy #:soa #:soachange #:service
                              #:service-already-exists #:service-attribute-key
                              #:service-attribute-key-list
                              #:service-attribute-value #:service-attributes
                              #:service-attributes-limit-exceeded-exception
                              #:service-attributes-map #:service-change
                              #:service-filter #:service-filter-name
                              #:service-filters #:service-name
                              #:service-not-found #:service-summaries-list
                              #:service-summary #:service-type
                              #:service-type-option #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:timestamp #:too-many-tags-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-http-namespace
                              #:update-http-namespace-request
                              #:update-http-namespace-response
                              #:update-instance-custom-health-status
                              #:update-instance-custom-health-status-request
                              #:update-private-dns-namespace
                              #:update-private-dns-namespace-request
                              #:update-private-dns-namespace-response
                              #:update-public-dns-namespace
                              #:update-public-dns-namespace-request
                              #:update-public-dns-namespace-response
                              #:update-service #:update-service-attributes
                              #:update-service-attributes-request
                              #:update-service-attributes-response
                              #:update-service-request
                              #:update-service-response))
(common-lisp:in-package #:pira/servicediscovery)

(smithy/sdk/service:define-service route53auto-naming-v20170314 :shape-name
                                   "Route53AutoNaming_v20170314" :version
                                   "2017-03-14" :title "AWS Cloud Map" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ServiceDiscovery")
                                      ("arnNamespace" . "servicediscovery")
                                      ("cloudFormationName"
                                       . "ServiceDiscovery")
                                      ("cloudTrailEventSource"
                                       . "servicediscovery.amazonaws.com")
                                      ("endpointPrefix" . "servicediscovery"))
                                     ("aws.auth#sigv4"
                                      ("name" . "servicediscovery"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attr-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attr-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attributes :key attr-key :value attr-value)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-http-namespace-request common-lisp:nil
                                ((name :target-type namespace-name-http
                                  :required common-lisp:t :member-name "Name")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateHttpNamespaceRequest"))

(smithy/sdk/shapes:define-output create-http-namespace-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "CreateHttpNamespaceResponse"))

(smithy/sdk/shapes:define-input create-private-dns-namespace-request
                                common-lisp:nil
                                ((name :target-type namespace-name-private
                                  :required common-lisp:t :member-name "Name")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (vpc :target-type resource-id :required
                                  common-lisp:t :member-name "Vpc")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (properties :target-type
                                  private-dns-namespace-properties :member-name
                                  "Properties"))
                                (:shape-name
                                 "CreatePrivateDnsNamespaceRequest"))

(smithy/sdk/shapes:define-output create-private-dns-namespace-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "CreatePrivateDnsNamespaceResponse"))

(smithy/sdk/shapes:define-input create-public-dns-namespace-request
                                common-lisp:nil
                                ((name :target-type namespace-name-public
                                  :required common-lisp:t :member-name "Name")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (properties :target-type
                                  public-dns-namespace-properties :member-name
                                  "Properties"))
                                (:shape-name "CreatePublicDnsNamespaceRequest"))

(smithy/sdk/shapes:define-output create-public-dns-namespace-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "CreatePublicDnsNamespaceResponse"))

(smithy/sdk/shapes:define-input create-service-request common-lisp:nil
                                ((name :target-type service-name :required
                                  common-lisp:t :member-name "Name")
                                 (namespace-id :target-type resource-id
                                  :member-name "NamespaceId")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (description :target-type resource-description
                                  :member-name "Description")
                                 (dns-config :target-type dns-config
                                  :member-name "DnsConfig")
                                 (health-check-config :target-type
                                  health-check-config :member-name
                                  "HealthCheckConfig")
                                 (health-check-custom-config :target-type
                                  health-check-custom-config :member-name
                                  "HealthCheckCustomConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (type :target-type service-type-option
                                  :member-name "Type"))
                                (:shape-name "CreateServiceRequest"))

(smithy/sdk/shapes:define-output create-service-response common-lisp:nil
                                 ((service :target-type service :member-name
                                   "Service"))
                                 (:shape-name "CreateServiceResponse"))

(smithy/sdk/shapes:define-error custom-health-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CustomHealthNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum custom-health-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-input delete-namespace-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "DeleteNamespaceRequest"))

(smithy/sdk/shapes:define-output delete-namespace-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "DeleteNamespaceResponse"))

(smithy/sdk/shapes:define-input delete-service-attributes-request
                                common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (attributes :target-type
                                  service-attribute-key-list :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name "DeleteServiceAttributesRequest"))

(smithy/sdk/shapes:define-output delete-service-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteServiceAttributesResponse"))

(smithy/sdk/shapes:define-input delete-service-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "DeleteServiceRequest"))

(smithy/sdk/shapes:define-output delete-service-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteServiceResponse"))

(smithy/sdk/shapes:define-input deregister-instance-request common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (instance-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "InstanceId"))
                                (:shape-name "DeregisterInstanceRequest"))

(smithy/sdk/shapes:define-output deregister-instance-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "DeregisterInstanceResponse"))

(smithy/sdk/shapes:define-input discover-instances-request common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "NamespaceName")
                                 (service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName")
                                 (max-results :target-type discover-max-results
                                  :member-name "MaxResults")
                                 (query-parameters :target-type attributes
                                  :member-name "QueryParameters")
                                 (optional-parameters :target-type attributes
                                  :member-name "OptionalParameters")
                                 (health-status :target-type
                                  health-status-filter :member-name
                                  "HealthStatus"))
                                (:shape-name "DiscoverInstancesRequest"))

(smithy/sdk/shapes:define-output discover-instances-response common-lisp:nil
                                 ((instances :target-type
                                   http-instance-summary-list :member-name
                                   "Instances")
                                  (instances-revision :target-type revision
                                   :member-name "InstancesRevision"))
                                 (:shape-name "DiscoverInstancesResponse"))

(smithy/sdk/shapes:define-input discover-instances-revision-request
                                common-lisp:nil
                                ((namespace-name :target-type namespace-name
                                  :required common-lisp:t :member-name
                                  "NamespaceName")
                                 (service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName"))
                                (:shape-name
                                 "DiscoverInstancesRevisionRequest"))

(smithy/sdk/shapes:define-output discover-instances-revision-response
                                 common-lisp:nil
                                 ((instances-revision :target-type revision
                                   :member-name "InstancesRevision"))
                                 (:shape-name
                                  "DiscoverInstancesRevisionResponse"))

(smithy/sdk/shapes:define-type discover-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure dns-config common-lisp:nil
                                    ((namespace-id :target-type resource-id
                                      :member-name "NamespaceId")
                                     (routing-policy :target-type
                                      routing-policy :member-name
                                      "RoutingPolicy")
                                     (dns-records :target-type dns-record-list
                                      :required common-lisp:t :member-name
                                      "DnsRecords"))
                                    (:shape-name "DnsConfig"))

(smithy/sdk/shapes:define-structure dns-config-change common-lisp:nil
                                    ((dns-records :target-type dns-record-list
                                      :required common-lisp:t :member-name
                                      "DnsRecords"))
                                    (:shape-name "DnsConfigChange"))

(smithy/sdk/shapes:define-structure dns-properties common-lisp:nil
                                    ((hosted-zone-id :target-type resource-id
                                      :member-name "HostedZoneId")
                                     (soa :target-type soa :member-name "SOA"))
                                    (:shape-name "DnsProperties"))

(smithy/sdk/shapes:define-structure dns-record common-lisp:nil
                                    ((type :target-type record-type :required
                                      common-lisp:t :member-name "Type")
                                     (ttl :target-type record-ttl :required
                                      common-lisp:t :member-name "TTL"))
                                    (:shape-name "DnsRecord"))

(smithy/sdk/shapes:define-list dns-record-list :member dns-record)

(smithy/sdk/shapes:define-error duplicate-request common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (duplicate-operation-id :target-type
                                  resource-id :member-name
                                  "DuplicateOperationId"))
                                (:shape-name "DuplicateRequest")
                                (:error-code 409))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum filter-condition
    common-lisp:nil
  (:eq "EQ")
  (:in "IN")
  (:between "BETWEEN")
  (:begins-with "BEGINS_WITH"))

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member
                               (filter-value :xml-name "item"))

(smithy/sdk/shapes:define-input get-instance-request common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (instance-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "InstanceId"))
                                (:shape-name "GetInstanceRequest"))

(smithy/sdk/shapes:define-output get-instance-response common-lisp:nil
                                 ((instance :target-type instance :member-name
                                   "Instance"))
                                 (:shape-name "GetInstanceResponse"))

(smithy/sdk/shapes:define-input get-instances-health-status-request
                                common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (instances :target-type instance-id-list
                                  :member-name "Instances")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "GetInstancesHealthStatusRequest"))

(smithy/sdk/shapes:define-output get-instances-health-status-response
                                 common-lisp:nil
                                 ((status :target-type
                                   instance-health-status-map :member-name
                                   "Status")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetInstancesHealthStatusResponse"))

(smithy/sdk/shapes:define-input get-namespace-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "GetNamespaceRequest"))

(smithy/sdk/shapes:define-output get-namespace-response common-lisp:nil
                                 ((namespace :target-type namespace
                                   :member-name "Namespace"))
                                 (:shape-name "GetNamespaceResponse"))

(smithy/sdk/shapes:define-input get-operation-request common-lisp:nil
                                ((operation-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "OperationId"))
                                (:shape-name "GetOperationRequest"))

(smithy/sdk/shapes:define-output get-operation-response common-lisp:nil
                                 ((operation :target-type operation
                                   :member-name "Operation"))
                                 (:shape-name "GetOperationResponse"))

(smithy/sdk/shapes:define-input get-service-attributes-request common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId"))
                                (:shape-name "GetServiceAttributesRequest"))

(smithy/sdk/shapes:define-output get-service-attributes-response
                                 common-lisp:nil
                                 ((service-attributes :target-type
                                   service-attributes :member-name
                                   "ServiceAttributes"))
                                 (:shape-name "GetServiceAttributesResponse"))

(smithy/sdk/shapes:define-input get-service-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "GetServiceRequest"))

(smithy/sdk/shapes:define-output get-service-response common-lisp:nil
                                 ((service :target-type service :member-name
                                   "Service"))
                                 (:shape-name "GetServiceResponse"))

(smithy/sdk/shapes:define-structure health-check-config common-lisp:nil
                                    ((type :target-type health-check-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (resource-path :target-type resource-path
                                      :member-name "ResourcePath")
                                     (failure-threshold :target-type
                                      failure-threshold :member-name
                                      "FailureThreshold"))
                                    (:shape-name "HealthCheckConfig"))

(smithy/sdk/shapes:define-structure health-check-custom-config common-lisp:nil
                                    ((failure-threshold :target-type
                                      failure-threshold :member-name
                                      "FailureThreshold"))
                                    (:shape-name "HealthCheckCustomConfig"))

(smithy/sdk/shapes:define-enum health-check-type
    common-lisp:nil
  (:http "HTTP")
  (:https "HTTPS")
  (:tcp "TCP"))

(smithy/sdk/shapes:define-enum health-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum health-status-filter
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY")
  (:all "ALL")
  (:healthy-or-else-all "HEALTHY_OR_ELSE_ALL"))

(smithy/sdk/shapes:define-structure http-instance-summary common-lisp:nil
                                    ((instance-id :target-type resource-id
                                      :member-name "InstanceId")
                                     (namespace-name :target-type
                                      namespace-name-http :member-name
                                      "NamespaceName")
                                     (service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (health-status :target-type health-status
                                      :member-name "HealthStatus")
                                     (attributes :target-type attributes
                                      :member-name "Attributes"))
                                    (:shape-name "HttpInstanceSummary"))

(smithy/sdk/shapes:define-list http-instance-summary-list :member
                               http-instance-summary)

(smithy/sdk/shapes:define-structure http-namespace-change common-lisp:nil
                                    ((description :target-type
                                      resource-description :required
                                      common-lisp:t :member-name
                                      "Description"))
                                    (:shape-name "HttpNamespaceChange"))

(smithy/sdk/shapes:define-structure http-properties common-lisp:nil
                                    ((http-name :target-type namespace-name
                                      :member-name "HttpName"))
                                    (:shape-name "HttpProperties"))

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "Id")
                                     (creator-request-id :target-type
                                      resource-id :member-name
                                      "CreatorRequestId")
                                     (attributes :target-type attributes
                                      :member-name "Attributes"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-map instance-health-status-map :key resource-id
                              :value health-status)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-id-list :member
                               (resource-id :xml-name "InstanceId"))

(smithy/sdk/shapes:define-error instance-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InstanceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure instance-summary common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (attributes :target-type attributes
                                      :member-name "Attributes"))
                                    (:shape-name "InstanceSummary"))

(smithy/sdk/shapes:define-list instance-summary-list :member
                               (instance-summary :xml-name "InstanceSummary"))

(smithy/sdk/shapes:define-error invalid-input common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInput") (:error-code 400))

(smithy/sdk/shapes:define-input list-instances-request common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListInstancesRequest"))

(smithy/sdk/shapes:define-output list-instances-response common-lisp:nil
                                 ((instances :target-type instance-summary-list
                                   :member-name "Instances")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInstancesResponse"))

(smithy/sdk/shapes:define-input list-namespaces-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type namespace-filters
                                  :member-name "Filters"))
                                (:shape-name "ListNamespacesRequest"))

(smithy/sdk/shapes:define-output list-namespaces-response common-lisp:nil
                                 ((namespaces :target-type
                                   namespace-summaries-list :member-name
                                   "Namespaces")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListNamespacesResponse"))

(smithy/sdk/shapes:define-input list-operations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type operation-filters
                                  :member-name "Filters"))
                                (:shape-name "ListOperationsRequest"))

(smithy/sdk/shapes:define-output list-operations-response common-lisp:nil
                                 ((operations :target-type
                                   operation-summary-list :member-name
                                   "Operations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOperationsResponse"))

(smithy/sdk/shapes:define-input list-services-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filters :target-type service-filters
                                  :member-name "Filters"))
                                (:shape-name "ListServicesRequest"))

(smithy/sdk/shapes:define-output list-services-response common-lisp:nil
                                 ((services :target-type service-summaries-list
                                   :member-name "Services")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListServicesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure namespace common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type namespace-name
                                      :member-name "Name")
                                     (type :target-type namespace-type
                                      :member-name "Type")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (service-count :target-type resource-count
                                      :member-name "ServiceCount")
                                     (properties :target-type
                                      namespace-properties :member-name
                                      "Properties")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate")
                                     (creator-request-id :target-type
                                      resource-id :member-name
                                      "CreatorRequestId"))
                                    (:shape-name "Namespace"))

(smithy/sdk/shapes:define-error namespace-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (namespace-id :target-type resource-id
                                  :member-name "NamespaceId"))
                                (:shape-name "NamespaceAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure namespace-filter common-lisp:nil
                                    ((name :target-type namespace-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (condition :target-type filter-condition
                                      :member-name "Condition"))
                                    (:shape-name "NamespaceFilter"))

(smithy/sdk/shapes:define-enum namespace-filter-name
    common-lisp:nil
  (:type "TYPE")
  (:name "NAME")
  (:http-name "HTTP_NAME"))

(smithy/sdk/shapes:define-list namespace-filters :member
                               (namespace-filter :xml-name "item"))

(smithy/sdk/shapes:define-type namespace-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace-name-http
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace-name-private
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace-name-public
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error namespace-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NamespaceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure namespace-properties common-lisp:nil
                                    ((dns-properties :target-type
                                      dns-properties :member-name
                                      "DnsProperties")
                                     (http-properties :target-type
                                      http-properties :member-name
                                      "HttpProperties"))
                                    (:shape-name "NamespaceProperties"))

(smithy/sdk/shapes:define-list namespace-summaries-list :member
                               namespace-summary)

(smithy/sdk/shapes:define-structure namespace-summary common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type namespace-name
                                      :member-name "Name")
                                     (type :target-type namespace-type
                                      :member-name "Type")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (service-count :target-type resource-count
                                      :member-name "ServiceCount")
                                     (properties :target-type
                                      namespace-properties :member-name
                                      "Properties")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate"))
                                    (:shape-name "NamespaceSummary"))

(smithy/sdk/shapes:define-enum namespace-type
    common-lisp:nil
  (:dns-public "DNS_PUBLIC")
  (:dns-private "DNS_PRIVATE")
  (:http "HTTP"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure operation common-lisp:nil
                                    ((id :target-type operation-id :member-name
                                      "Id")
                                     (type :target-type operation-type
                                      :member-name "Type")
                                     (status :target-type operation-status
                                      :member-name "Status")
                                     (error-message :target-type message
                                      :member-name "ErrorMessage")
                                     (error-code :target-type code :member-name
                                      "ErrorCode")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate")
                                     (update-date :target-type timestamp
                                      :member-name "UpdateDate")
                                     (targets :target-type
                                      operation-targets-map :member-name
                                      "Targets"))
                                    (:shape-name "Operation"))

(smithy/sdk/shapes:define-structure operation-filter common-lisp:nil
                                    ((name :target-type operation-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (condition :target-type filter-condition
                                      :member-name "Condition"))
                                    (:shape-name "OperationFilter"))

(smithy/sdk/shapes:define-enum operation-filter-name
    common-lisp:nil
  (:namespace-id "NAMESPACE_ID")
  (:service-id "SERVICE_ID")
  (:status "STATUS")
  (:type "TYPE")
  (:update-date "UPDATE_DATE"))

(smithy/sdk/shapes:define-list operation-filters :member
                               (operation-filter :xml-name "item"))

(smithy/sdk/shapes:define-type operation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error operation-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OperationNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum operation-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:pending "PENDING")
  (:success "SUCCESS")
  (:fail "FAIL"))

(smithy/sdk/shapes:define-structure operation-summary common-lisp:nil
                                    ((id :target-type operation-id :member-name
                                      "Id")
                                     (status :target-type operation-status
                                      :member-name "Status"))
                                    (:shape-name "OperationSummary"))

(smithy/sdk/shapes:define-list operation-summary-list :member
                               (operation-summary :xml-name "OperationSummary"))

(smithy/sdk/shapes:define-enum operation-target-type
    common-lisp:nil
  (:namespace "NAMESPACE")
  (:service "SERVICE")
  (:instance "INSTANCE"))

(smithy/sdk/shapes:define-map operation-targets-map :key operation-target-type
                              :value resource-id)

(smithy/sdk/shapes:define-enum operation-type
    common-lisp:nil
  (:create-namespace "CREATE_NAMESPACE")
  (:delete-namespace "DELETE_NAMESPACE")
  (:update-namespace "UPDATE_NAMESPACE")
  (:update-service "UPDATE_SERVICE")
  (:register-instance "REGISTER_INSTANCE")
  (:deregister-instance "DEREGISTER_INSTANCE"))

(smithy/sdk/shapes:define-structure private-dns-namespace-change
                                    common-lisp:nil
                                    ((description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (properties :target-type
                                      private-dns-namespace-properties-change
                                      :member-name "Properties"))
                                    (:shape-name "PrivateDnsNamespaceChange"))

(smithy/sdk/shapes:define-structure private-dns-namespace-properties
                                    common-lisp:nil
                                    ((dns-properties :target-type
                                      private-dns-properties-mutable :required
                                      common-lisp:t :member-name
                                      "DnsProperties"))
                                    (:shape-name
                                     "PrivateDnsNamespaceProperties"))

(smithy/sdk/shapes:define-structure private-dns-namespace-properties-change
                                    common-lisp:nil
                                    ((dns-properties :target-type
                                      private-dns-properties-mutable-change
                                      :required common-lisp:t :member-name
                                      "DnsProperties"))
                                    (:shape-name
                                     "PrivateDnsNamespacePropertiesChange"))

(smithy/sdk/shapes:define-structure private-dns-properties-mutable
                                    common-lisp:nil
                                    ((soa :target-type soa :required
                                      common-lisp:t :member-name "SOA"))
                                    (:shape-name "PrivateDnsPropertiesMutable"))

(smithy/sdk/shapes:define-structure private-dns-properties-mutable-change
                                    common-lisp:nil
                                    ((soa :target-type soachange :required
                                      common-lisp:t :member-name "SOA"))
                                    (:shape-name
                                     "PrivateDnsPropertiesMutableChange"))

(smithy/sdk/shapes:define-structure public-dns-namespace-change common-lisp:nil
                                    ((description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (properties :target-type
                                      public-dns-namespace-properties-change
                                      :member-name "Properties"))
                                    (:shape-name "PublicDnsNamespaceChange"))

(smithy/sdk/shapes:define-structure public-dns-namespace-properties
                                    common-lisp:nil
                                    ((dns-properties :target-type
                                      public-dns-properties-mutable :required
                                      common-lisp:t :member-name
                                      "DnsProperties"))
                                    (:shape-name
                                     "PublicDnsNamespaceProperties"))

(smithy/sdk/shapes:define-structure public-dns-namespace-properties-change
                                    common-lisp:nil
                                    ((dns-properties :target-type
                                      public-dns-properties-mutable-change
                                      :required common-lisp:t :member-name
                                      "DnsProperties"))
                                    (:shape-name
                                     "PublicDnsNamespacePropertiesChange"))

(smithy/sdk/shapes:define-structure public-dns-properties-mutable
                                    common-lisp:nil
                                    ((soa :target-type soa :required
                                      common-lisp:t :member-name "SOA"))
                                    (:shape-name "PublicDnsPropertiesMutable"))

(smithy/sdk/shapes:define-structure public-dns-properties-mutable-change
                                    common-lisp:nil
                                    ((soa :target-type soachange :required
                                      common-lisp:t :member-name "SOA"))
                                    (:shape-name
                                     "PublicDnsPropertiesMutableChange"))

(smithy/sdk/shapes:define-type record-ttl smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum record-type
    common-lisp:nil
  (:srv "SRV")
  (:a "A")
  (:aaaa "AAAA")
  (:cname "CNAME"))

(smithy/sdk/shapes:define-input register-instance-request common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (attributes :target-type attributes :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name "RegisterInstanceRequest"))

(smithy/sdk/shapes:define-output register-instance-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "RegisterInstanceResponse"))

(smithy/sdk/shapes:define-error request-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RequestLimitExceeded")
                                (:error-code 429))

(smithy/sdk/shapes:define-type resource-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUse") (:error-code 409))

(smithy/sdk/shapes:define-error resource-limit-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type revision smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum routing-policy
    common-lisp:nil
  (:multivalue "MULTIVALUE")
  (:weighted "WEIGHTED"))

(smithy/sdk/shapes:define-structure soa common-lisp:nil
                                    ((ttl :target-type record-ttl :required
                                      common-lisp:t :member-name "TTL"))
                                    (:shape-name "SOA"))

(smithy/sdk/shapes:define-structure soachange common-lisp:nil
                                    ((ttl :target-type record-ttl :required
                                      common-lisp:t :member-name "TTL"))
                                    (:shape-name "SOAChange"))

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type service-name
                                      :member-name "Name")
                                     (namespace-id :target-type resource-id
                                      :member-name "NamespaceId")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (instance-count :target-type
                                      resource-count :member-name
                                      "InstanceCount")
                                     (dns-config :target-type dns-config
                                      :member-name "DnsConfig")
                                     (type :target-type service-type
                                      :member-name "Type")
                                     (health-check-config :target-type
                                      health-check-config :member-name
                                      "HealthCheckConfig")
                                     (health-check-custom-config :target-type
                                      health-check-custom-config :member-name
                                      "HealthCheckCustomConfig")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate")
                                     (creator-request-id :target-type
                                      resource-id :member-name
                                      "CreatorRequestId"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-error service-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (creator-request-id :target-type resource-id
                                  :member-name "CreatorRequestId")
                                 (service-id :target-type resource-id
                                  :member-name "ServiceId"))
                                (:shape-name "ServiceAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-type service-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-attribute-key-list :member
                               service-attribute-key)

(smithy/sdk/shapes:define-type service-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-attributes common-lisp:nil
                                    ((service-arn :target-type arn :member-name
                                      "ServiceArn")
                                     (attributes :target-type
                                      service-attributes-map :member-name
                                      "Attributes"))
                                    (:shape-name "ServiceAttributes"))

(smithy/sdk/shapes:define-error service-attributes-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ServiceAttributesLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map service-attributes-map :key service-attribute-key
                              :value service-attribute-value)

(smithy/sdk/shapes:define-structure service-change common-lisp:nil
                                    ((description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (dns-config :target-type dns-config-change
                                      :member-name "DnsConfig")
                                     (health-check-config :target-type
                                      health-check-config :member-name
                                      "HealthCheckConfig"))
                                    (:shape-name "ServiceChange"))

(smithy/sdk/shapes:define-structure service-filter common-lisp:nil
                                    ((name :target-type service-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "Values")
                                     (condition :target-type filter-condition
                                      :member-name "Condition"))
                                    (:shape-name "ServiceFilter"))

(smithy/sdk/shapes:define-enum service-filter-name
    common-lisp:nil
  (:namespace-id "NAMESPACE_ID"))

(smithy/sdk/shapes:define-list service-filters :member
                               (service-filter :xml-name "item"))

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-list service-summaries-list :member service-summary)

(smithy/sdk/shapes:define-structure service-summary common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type service-name
                                      :member-name "Name")
                                     (type :target-type service-type
                                      :member-name "Type")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description")
                                     (instance-count :target-type
                                      resource-count :member-name
                                      "InstanceCount")
                                     (dns-config :target-type dns-config
                                      :member-name "DnsConfig")
                                     (health-check-config :target-type
                                      health-check-config :member-name
                                      "HealthCheckConfig")
                                     (health-check-custom-config :target-type
                                      health-check-custom-config :member-name
                                      "HealthCheckCustomConfig")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate"))
                                    (:shape-name "ServiceSummary"))

(smithy/sdk/shapes:define-enum service-type
    common-lisp:nil
  (:http "HTTP")
  (:dns-http "DNS_HTTP")
  (:dns "DNS"))

(smithy/sdk/shapes:define-enum service-type-option
    common-lisp:nil
  (:http "HTTP"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-http-namespace-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id")
                                 (updater-request-id :target-type resource-id
                                  :member-name "UpdaterRequestId")
                                 (namespace :target-type http-namespace-change
                                  :required common-lisp:t :member-name
                                  "Namespace"))
                                (:shape-name "UpdateHttpNamespaceRequest"))

(smithy/sdk/shapes:define-output update-http-namespace-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "UpdateHttpNamespaceResponse"))

(smithy/sdk/shapes:define-input update-instance-custom-health-status-request
                                common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (instance-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (status :target-type custom-health-status
                                  :required common-lisp:t :member-name
                                  "Status"))
                                (:shape-name
                                 "UpdateInstanceCustomHealthStatusRequest"))

(smithy/sdk/shapes:define-input update-private-dns-namespace-request
                                common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id")
                                 (updater-request-id :target-type resource-id
                                  :member-name "UpdaterRequestId")
                                 (namespace :target-type
                                  private-dns-namespace-change :required
                                  common-lisp:t :member-name "Namespace"))
                                (:shape-name
                                 "UpdatePrivateDnsNamespaceRequest"))

(smithy/sdk/shapes:define-output update-private-dns-namespace-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "UpdatePrivateDnsNamespaceResponse"))

(smithy/sdk/shapes:define-input update-public-dns-namespace-request
                                common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id")
                                 (updater-request-id :target-type resource-id
                                  :member-name "UpdaterRequestId")
                                 (namespace :target-type
                                  public-dns-namespace-change :required
                                  common-lisp:t :member-name "Namespace"))
                                (:shape-name "UpdatePublicDnsNamespaceRequest"))

(smithy/sdk/shapes:define-output update-public-dns-namespace-response
                                 common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name
                                  "UpdatePublicDnsNamespaceResponse"))

(smithy/sdk/shapes:define-input update-service-attributes-request
                                common-lisp:nil
                                ((service-id :target-type resource-id :required
                                  common-lisp:t :member-name "ServiceId")
                                 (attributes :target-type
                                  service-attributes-map :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name "UpdateServiceAttributesRequest"))

(smithy/sdk/shapes:define-output update-service-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateServiceAttributesResponse"))

(smithy/sdk/shapes:define-input update-service-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id")
                                 (service :target-type service-change :required
                                  common-lisp:t :member-name "Service"))
                                (:shape-name "UpdateServiceRequest"))

(smithy/sdk/shapes:define-output update-service-response common-lisp:nil
                                 ((operation-id :target-type operation-id
                                   :member-name "OperationId"))
                                 (:shape-name "UpdateServiceResponse"))

(smithy/sdk/operation:define-operation create-http-namespace :shape-name
                                       "CreateHttpNamespace" :input
                                       create-http-namespace-request :output
                                       create-http-namespace-response :errors
                                       (duplicate-request invalid-input
                                        namespace-already-exists
                                        resource-limit-exceeded
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-private-dns-namespace :shape-name
                                       "CreatePrivateDnsNamespace" :input
                                       create-private-dns-namespace-request
                                       :output
                                       create-private-dns-namespace-response
                                       :errors
                                       (duplicate-request invalid-input
                                        namespace-already-exists
                                        resource-limit-exceeded
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-public-dns-namespace :shape-name
                                       "CreatePublicDnsNamespace" :input
                                       create-public-dns-namespace-request
                                       :output
                                       create-public-dns-namespace-response
                                       :errors
                                       (duplicate-request invalid-input
                                        namespace-already-exists
                                        resource-limit-exceeded
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-service :shape-name
                                       "CreateService" :input
                                       create-service-request :output
                                       create-service-response :errors
                                       (invalid-input namespace-not-found
                                        resource-limit-exceeded
                                        service-already-exists
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation delete-namespace :shape-name
                                       "DeleteNamespace" :input
                                       delete-namespace-request :output
                                       delete-namespace-response :errors
                                       (duplicate-request invalid-input
                                        namespace-not-found resource-in-use))

(smithy/sdk/operation:define-operation delete-service :shape-name
                                       "DeleteService" :input
                                       delete-service-request :output
                                       delete-service-response :errors
                                       (invalid-input resource-in-use
                                        service-not-found))

(smithy/sdk/operation:define-operation delete-service-attributes :shape-name
                                       "DeleteServiceAttributes" :input
                                       delete-service-attributes-request
                                       :output
                                       delete-service-attributes-response
                                       :errors
                                       (invalid-input service-not-found))

(smithy/sdk/operation:define-operation deregister-instance :shape-name
                                       "DeregisterInstance" :input
                                       deregister-instance-request :output
                                       deregister-instance-response :errors
                                       (duplicate-request instance-not-found
                                        invalid-input resource-in-use
                                        service-not-found))

(smithy/sdk/operation:define-operation discover-instances :shape-name
                                       "DiscoverInstances" :input
                                       discover-instances-request :output
                                       discover-instances-response :errors
                                       (invalid-input namespace-not-found
                                        request-limit-exceeded
                                        service-not-found)
                                       :endpoint-host-prefix "data-")

(smithy/sdk/operation:define-operation discover-instances-revision :shape-name
                                       "DiscoverInstancesRevision" :input
                                       discover-instances-revision-request
                                       :output
                                       discover-instances-revision-response
                                       :errors
                                       (invalid-input namespace-not-found
                                        request-limit-exceeded
                                        service-not-found)
                                       :endpoint-host-prefix "data-")

(smithy/sdk/operation:define-operation get-instance :shape-name "GetInstance"
                                       :input get-instance-request :output
                                       get-instance-response :errors
                                       (instance-not-found invalid-input
                                        service-not-found))

(smithy/sdk/operation:define-operation get-instances-health-status :shape-name
                                       "GetInstancesHealthStatus" :input
                                       get-instances-health-status-request
                                       :output
                                       get-instances-health-status-response
                                       :errors
                                       (instance-not-found invalid-input
                                        service-not-found))

(smithy/sdk/operation:define-operation get-namespace :shape-name "GetNamespace"
                                       :input get-namespace-request :output
                                       get-namespace-response :errors
                                       (invalid-input namespace-not-found))

(smithy/sdk/operation:define-operation get-operation :shape-name "GetOperation"
                                       :input get-operation-request :output
                                       get-operation-response :errors
                                       (invalid-input operation-not-found))

(smithy/sdk/operation:define-operation get-service :shape-name "GetService"
                                       :input get-service-request :output
                                       get-service-response :errors
                                       (invalid-input service-not-found))

(smithy/sdk/operation:define-operation get-service-attributes :shape-name
                                       "GetServiceAttributes" :input
                                       get-service-attributes-request :output
                                       get-service-attributes-response :errors
                                       (invalid-input service-not-found))

(smithy/sdk/operation:define-operation list-instances :shape-name
                                       "ListInstances" :input
                                       list-instances-request :output
                                       list-instances-response :errors
                                       (invalid-input service-not-found))

(smithy/sdk/operation:define-operation list-namespaces :shape-name
                                       "ListNamespaces" :input
                                       list-namespaces-request :output
                                       list-namespaces-response :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation list-operations :shape-name
                                       "ListOperations" :input
                                       list-operations-request :output
                                       list-operations-response :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-request :output
                                       list-services-response :errors
                                       (invalid-input))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-input
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation register-instance :shape-name
                                       "RegisterInstance" :input
                                       register-instance-request :output
                                       register-instance-response :errors
                                       (duplicate-request invalid-input
                                        resource-in-use resource-limit-exceeded
                                        service-not-found))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-input
                                        resource-not-found-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-input
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-http-namespace :shape-name
                                       "UpdateHttpNamespace" :input
                                       update-http-namespace-request :output
                                       update-http-namespace-response :errors
                                       (duplicate-request invalid-input
                                        namespace-not-found resource-in-use))

(smithy/sdk/operation:define-operation update-instance-custom-health-status
                                       :shape-name
                                       "UpdateInstanceCustomHealthStatus"
                                       :input
                                       update-instance-custom-health-status-request
                                       :output common-lisp:null :errors
                                       (custom-health-not-found
                                        instance-not-found invalid-input
                                        service-not-found))

(smithy/sdk/operation:define-operation update-private-dns-namespace :shape-name
                                       "UpdatePrivateDnsNamespace" :input
                                       update-private-dns-namespace-request
                                       :output
                                       update-private-dns-namespace-response
                                       :errors
                                       (duplicate-request invalid-input
                                        namespace-not-found resource-in-use))

(smithy/sdk/operation:define-operation update-public-dns-namespace :shape-name
                                       "UpdatePublicDnsNamespace" :input
                                       update-public-dns-namespace-request
                                       :output
                                       update-public-dns-namespace-response
                                       :errors
                                       (duplicate-request invalid-input
                                        namespace-not-found resource-in-use))

(smithy/sdk/operation:define-operation update-service :shape-name
                                       "UpdateService" :input
                                       update-service-request :output
                                       update-service-response :errors
                                       (duplicate-request invalid-input
                                        service-not-found))

(smithy/sdk/operation:define-operation update-service-attributes :shape-name
                                       "UpdateServiceAttributes" :input
                                       update-service-attributes-request
                                       :output
                                       update-service-attributes-response
                                       :errors
                                       (invalid-input
                                        service-attributes-limit-exceeded-exception
                                        service-not-found))
