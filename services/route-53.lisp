(uiop/package:define-package #:pira/route-53 (:use)
                             (:export #:arn #:awsaccount-id #:awsdns-v20130401
                              #:awsregion #:account-limit #:account-limit-type
                              #:activate-key-signing-key #:alarm-identifier
                              #:alarm-name #:alias-health-enabled
                              #:alias-target #:associate-vpccomment
                              #:associate-vpcwith-hosted-zone #:bias #:change
                              #:change-action #:change-batch
                              #:change-cidr-collection #:change-id
                              #:change-info #:change-resource-record-sets
                              #:change-status #:change-tags-for-resource
                              #:changes #:checker-ip-ranges
                              #:child-health-check-list #:cidr
                              #:cidr-block-summaries #:cidr-block-summary
                              #:cidr-collection #:cidr-collection-change
                              #:cidr-collection-change-action
                              #:cidr-collection-changes #:cidr-list
                              #:cidr-location-name-default-allowed
                              #:cidr-location-name-default-not-allowed
                              #:cidr-nonce #:cidr-routing-config
                              #:cloud-watch-alarm-configuration
                              #:cloud-watch-logs-log-group-arn
                              #:cloud-watch-region #:collection-name
                              #:collection-summaries #:collection-summary
                              #:collection-version #:comparison-operator
                              #:coordinates #:create-cidr-collection
                              #:create-health-check #:create-hosted-zone
                              #:create-key-signing-key
                              #:create-query-logging-config
                              #:create-reusable-delegation-set
                              #:create-traffic-policy
                              #:create-traffic-policy-instance
                              #:create-traffic-policy-version
                              #:create-vpcassociation-authorization #:dnsname
                              #:dnsrcode #:dnssecstatus
                              #:deactivate-key-signing-key #:delegation-set
                              #:delegation-set-name-servers #:delegation-sets
                              #:delete-cidr-collection #:delete-health-check
                              #:delete-hosted-zone #:delete-key-signing-key
                              #:delete-query-logging-config
                              #:delete-reusable-delegation-set
                              #:delete-traffic-policy
                              #:delete-traffic-policy-instance
                              #:delete-vpcassociation-authorization #:dimension
                              #:dimension-field #:dimension-list
                              #:disable-hosted-zone-dnssec #:disabled
                              #:disassociate-vpccomment
                              #:disassociate-vpcfrom-hosted-zone
                              #:enable-hosted-zone-dnssec #:enable-sni
                              #:error-message #:error-messages
                              #:evaluation-periods #:failure-threshold
                              #:fully-qualified-domain-name #:geo-location
                              #:geo-location-continent-code
                              #:geo-location-continent-name
                              #:geo-location-country-code
                              #:geo-location-country-name
                              #:geo-location-details
                              #:geo-location-details-list
                              #:geo-location-subdivision-code
                              #:geo-location-subdivision-name
                              #:geo-proximity-location #:get-account-limit
                              #:get-change #:get-checker-ip-ranges #:get-dnssec
                              #:get-geo-location #:get-health-check
                              #:get-health-check-count
                              #:get-health-check-last-failure-reason
                              #:get-health-check-status #:get-hosted-zone
                              #:get-hosted-zone-count #:get-hosted-zone-limit
                              #:get-query-logging-config
                              #:get-reusable-delegation-set
                              #:get-reusable-delegation-set-limit
                              #:get-traffic-policy
                              #:get-traffic-policy-instance
                              #:get-traffic-policy-instance-count
                              #:health-check #:health-check-config
                              #:health-check-count #:health-check-id
                              #:health-check-nonce #:health-check-observation
                              #:health-check-observations #:health-check-region
                              #:health-check-region-list #:health-check-type
                              #:health-check-version #:health-checks
                              #:health-threshold #:hosted-zone
                              #:hosted-zone-config #:hosted-zone-count
                              #:hosted-zone-limit #:hosted-zone-limit-type
                              #:hosted-zone-owner #:hosted-zone-owning-service
                              #:hosted-zone-rrset-count #:hosted-zone-summaries
                              #:hosted-zone-summary #:hosted-zone-type
                              #:hosted-zones #:ipaddress #:ipaddress-cidr
                              #:insufficient-data-health-status #:inverted
                              #:is-private-zone #:key-signing-key
                              #:key-signing-keys #:latitude #:limit-value
                              #:linked-service #:list-cidr-blocks
                              #:list-cidr-collections #:list-cidr-locations
                              #:list-geo-locations #:list-health-checks
                              #:list-hosted-zones #:list-hosted-zones-by-name
                              #:list-hosted-zones-by-vpc
                              #:list-query-logging-configs
                              #:list-resource-record-sets
                              #:list-reusable-delegation-sets
                              #:list-tags-for-resource
                              #:list-tags-for-resources #:list-traffic-policies
                              #:list-traffic-policy-instances
                              #:list-traffic-policy-instances-by-hosted-zone
                              #:list-traffic-policy-instances-by-policy
                              #:list-traffic-policy-versions
                              #:list-vpcassociation-authorizations
                              #:local-zone-group #:location-summaries
                              #:location-summary #:longitude #:measure-latency
                              #:message #:metric-name #:nameserver #:namespace
                              #:nonce #:page-marker #:page-truncated
                              #:pagination-token #:period #:port
                              #:query-logging-config #:query-logging-config-id
                              #:query-logging-configs #:rdata #:rrtype
                              #:record-data #:record-data-entry
                              #:request-interval #:resettable-element-name
                              #:resettable-element-name-list
                              #:resource-description #:resource-id
                              #:resource-path #:resource-record
                              #:resource-record-set
                              #:resource-record-set-failover
                              #:resource-record-set-identifier
                              #:resource-record-set-multi-value-answer
                              #:resource-record-set-region
                              #:resource-record-set-weight
                              #:resource-record-sets #:resource-records
                              #:resource-tag-set #:resource-tag-set-list
                              #:resource-uri #:reusable-delegation-set-limit
                              #:reusable-delegation-set-limit-type
                              #:routing-control-arn #:search-string
                              #:serve-signature #:service-principal
                              #:signing-key-integer #:signing-key-name
                              #:signing-key-status #:signing-key-status-message
                              #:signing-key-string #:signing-key-tag
                              #:statistic #:status #:status-report
                              #:subnet-mask #:ttl #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource-id
                              #:tag-resource-id-list #:tag-resource-type
                              #:tag-value #:test-dnsanswer #:threshold
                              #:time-stamp #:traffic-policies #:traffic-policy
                              #:traffic-policy-comment
                              #:traffic-policy-document #:traffic-policy-id
                              #:traffic-policy-instance
                              #:traffic-policy-instance-count
                              #:traffic-policy-instance-id
                              #:traffic-policy-instance-state
                              #:traffic-policy-instances #:traffic-policy-name
                              #:traffic-policy-summaries
                              #:traffic-policy-summary #:traffic-policy-version
                              #:traffic-policy-version-marker
                              #:transport-protocol #:uuid #:update-health-check
                              #:update-hosted-zone-comment
                              #:update-traffic-policy-comment
                              #:update-traffic-policy-instance #:usage-count
                              #:vpc #:vpcid #:vpcregion #:vpcs))
(common-lisp:in-package #:pira/route-53)

(smithy/sdk/service:define-service awsdns-v20130401 :shape-name
                                   "AWSDnsV20130401" :version "2013-04-01"
                                   :title "Amazon Route 53" :xml-namespace
                                   '(:uri
                                     "https://route53.amazonaws.com/doc/2013-04-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Route 53")
                                      ("arnNamespace" . "route53")
                                      ("cloudFormationName" . "Route53")
                                      ("cloudTrailEventSource"
                                       . "route53.amazonaws.com")
                                      ("docId" . "route53-2013-04-01")
                                      ("endpointPrefix" . "route53"))
                                     ("aws.auth#sigv4" ("name" . "route53"))
                                     ("aws.protocols#restXml")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type awsregion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-limit common-lisp:nil
                                    ((type :target-type account-limit-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type limit-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "AccountLimit"))

(smithy/sdk/shapes:define-enum account-limit-type
    common-lisp:nil
  (:max-health-checks-by-owner "MAX_HEALTH_CHECKS_BY_OWNER")
  (:max-hosted-zones-by-owner "MAX_HOSTED_ZONES_BY_OWNER")
  (:max-traffic-policy-instances-by-owner
   "MAX_TRAFFIC_POLICY_INSTANCES_BY_OWNER")
  (:max-reusable-delegation-sets-by-owner
   "MAX_REUSABLE_DELEGATION_SETS_BY_OWNER")
  (:max-traffic-policies-by-owner "MAX_TRAFFIC_POLICIES_BY_OWNER"))

(smithy/sdk/shapes:define-input activate-key-signing-key-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (name :target-type signing-key-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "ActivateKeySigningKeyRequest"))

(smithy/sdk/shapes:define-output activate-key-signing-key-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name "ActivateKeySigningKeyResponse"))

(smithy/sdk/shapes:define-structure alarm-identifier common-lisp:nil
                                    ((region :target-type cloud-watch-region
                                      :required common-lisp:t :member-name
                                      "Region")
                                     (name :target-type alarm-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "AlarmIdentifier"))

(smithy/sdk/shapes:define-type alarm-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type alias-health-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure alias-target common-lisp:nil
                                    ((hosted-zone-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "HostedZoneId")
                                     (dnsname :target-type dnsname :required
                                      common-lisp:t :member-name "DNSName")
                                     (evaluate-target-health :target-type
                                      alias-health-enabled :required
                                      common-lisp:t :member-name
                                      "EvaluateTargetHealth"))
                                    (:shape-name "AliasTarget"))

(smithy/sdk/shapes:define-type associate-vpccomment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-vpcwith-hosted-zone-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (vpc :target-type vpc :required common-lisp:t
                                  :member-name "VPC")
                                 (comment :target-type associate-vpccomment
                                  :member-name "Comment"))
                                (:shape-name
                                 "AssociateVPCWithHostedZoneRequest"))

(smithy/sdk/shapes:define-output associate-vpcwith-hosted-zone-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name
                                  "AssociateVPCWithHostedZoneResponse"))

(smithy/sdk/shapes:define-type bias smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure change common-lisp:nil
                                    ((action :target-type change-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (resource-record-set :target-type
                                      resource-record-set :required
                                      common-lisp:t :member-name
                                      "ResourceRecordSet"))
                                    (:shape-name "Change"))

(smithy/sdk/shapes:define-enum change-action
    common-lisp:nil
  (:create "CREATE")
  (:delete "DELETE")
  (:upsert "UPSERT"))

(smithy/sdk/shapes:define-structure change-batch common-lisp:nil
                                    ((comment :target-type resource-description
                                      :member-name "Comment")
                                     (changes :target-type changes :required
                                      common-lisp:t :member-name "Changes"))
                                    (:shape-name "ChangeBatch"))

(smithy/sdk/shapes:define-input change-cidr-collection-request common-lisp:nil
                                ((id :target-type uuid :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t)
                                 (collection-version :target-type
                                  collection-version :member-name
                                  "CollectionVersion")
                                 (changes :target-type cidr-collection-changes
                                  :required common-lisp:t :member-name
                                  "Changes"))
                                (:shape-name "ChangeCidrCollectionRequest"))

(smithy/sdk/shapes:define-output change-cidr-collection-response
                                 common-lisp:nil
                                 ((id :target-type change-id :required
                                   common-lisp:t :member-name "Id"))
                                 (:shape-name "ChangeCidrCollectionResponse"))

(smithy/sdk/shapes:define-type change-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure change-info common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "Id")
                                     (status :target-type change-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (submitted-at :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "SubmittedAt")
                                     (comment :target-type resource-description
                                      :member-name "Comment"))
                                    (:shape-name "ChangeInfo"))

(smithy/sdk/shapes:define-input change-resource-record-sets-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (change-batch :target-type change-batch
                                  :required common-lisp:t :member-name
                                  "ChangeBatch"))
                                (:shape-name "ChangeResourceRecordSetsRequest"))

(smithy/sdk/shapes:define-output change-resource-record-sets-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name
                                  "ChangeResourceRecordSetsResponse"))

(smithy/sdk/shapes:define-enum change-status
    common-lisp:nil
  (:pending "PENDING")
  (:insync "INSYNC"))

(smithy/sdk/shapes:define-input change-tags-for-resource-request
                                common-lisp:nil
                                ((resource-type :target-type tag-resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType" :http-label common-lisp:t)
                                 (resource-id :target-type tag-resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t)
                                 (add-tags :target-type tag-list :member-name
                                  "AddTags")
                                 (remove-tag-keys :target-type tag-key-list
                                  :member-name "RemoveTagKeys"))
                                (:shape-name "ChangeTagsForResourceRequest"))

(smithy/sdk/shapes:define-output change-tags-for-resource-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ChangeTagsForResourceResponse"))

(smithy/sdk/shapes:define-list changes :member (change :xml-name "Change"))

(smithy/sdk/shapes:define-list checker-ip-ranges :member ipaddress-cidr)

(smithy/sdk/shapes:define-list child-health-check-list :member
                               (health-check-id :xml-name "ChildHealthCheck"))

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error cidr-block-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CidrBlockInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list cidr-block-summaries :member cidr-block-summary)

(smithy/sdk/shapes:define-structure cidr-block-summary common-lisp:nil
                                    ((cidr-block :target-type cidr :member-name
                                      "CidrBlock")
                                     (location-name :target-type
                                      cidr-location-name-default-not-allowed
                                      :member-name "LocationName"))
                                    (:shape-name "CidrBlockSummary"))

(smithy/sdk/shapes:define-structure cidr-collection common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (id :target-type uuid :member-name "Id")
                                     (name :target-type collection-name
                                      :member-name "Name")
                                     (version :target-type collection-version
                                      :member-name "Version"))
                                    (:shape-name "CidrCollection"))

(smithy/sdk/shapes:define-error cidr-collection-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CidrCollectionAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cidr-collection-change common-lisp:nil
                                    ((location-name :target-type
                                      cidr-location-name-default-not-allowed
                                      :required common-lisp:t :member-name
                                      "LocationName")
                                     (action :target-type
                                      cidr-collection-change-action :required
                                      common-lisp:t :member-name "Action")
                                     (cidr-list :target-type cidr-list
                                      :required common-lisp:t :member-name
                                      "CidrList"))
                                    (:shape-name "CidrCollectionChange"))

(smithy/sdk/shapes:define-enum cidr-collection-change-action
    common-lisp:nil
  (:put "PUT")
  (:delete-if-exists "DELETE_IF_EXISTS"))

(smithy/sdk/shapes:define-list cidr-collection-changes :member
                               cidr-collection-change)

(smithy/sdk/shapes:define-error cidr-collection-in-use-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "CidrCollectionInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cidr-collection-version-mismatch-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CidrCollectionVersionMismatchException")
                                (:error-code 409))

(smithy/sdk/shapes:define-list cidr-list :member (cidr :xml-name "Cidr"))

(smithy/sdk/shapes:define-type cidr-location-name-default-allowed
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cidr-location-name-default-not-allowed
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cidr-nonce smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cidr-routing-config common-lisp:nil
                                    ((collection-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "CollectionId")
                                     (location-name :target-type
                                      cidr-location-name-default-allowed
                                      :required common-lisp:t :member-name
                                      "LocationName"))
                                    (:shape-name "CidrRoutingConfig"))

(smithy/sdk/shapes:define-structure cloud-watch-alarm-configuration
                                    common-lisp:nil
                                    ((evaluation-periods :target-type
                                      evaluation-periods :required
                                      common-lisp:t :member-name
                                      "EvaluationPeriods")
                                     (threshold :target-type threshold
                                      :required common-lisp:t :member-name
                                      "Threshold")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (period :target-type period :required
                                      common-lisp:t :member-name "Period")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName")
                                     (namespace :target-type namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (statistic :target-type statistic
                                      :required common-lisp:t :member-name
                                      "Statistic")
                                     (dimensions :target-type dimension-list
                                      :member-name "Dimensions"))
                                    (:shape-name
                                     "CloudWatchAlarmConfiguration"))

(smithy/sdk/shapes:define-type cloud-watch-logs-log-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cloud-watch-region
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:ca-central-1 "ca-central-1")
  (:eu-central-1 "eu-central-1")
  (:eu-central-2 "eu-central-2")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:ap-east-1 "ap-east-1")
  (:me-south-1 "me-south-1")
  (:me-central-1 "me-central-1")
  (:ap-south-1 "ap-south-1")
  (:ap-south-2 "ap-south-2")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-southeast-3 "ap-southeast-3")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-northeast-3 "ap-northeast-3")
  (:eu-north-1 "eu-north-1")
  (:sa-east-1 "sa-east-1")
  (:cn-northwest-1 "cn-northwest-1")
  (:cn-north-1 "cn-north-1")
  (:af-south-1 "af-south-1")
  (:eu-south-1 "eu-south-1")
  (:eu-south-2 "eu-south-2")
  (:us-gov-west-1 "us-gov-west-1")
  (:us-gov-east-1 "us-gov-east-1")
  (:us-iso-east-1 "us-iso-east-1")
  (:us-iso-west-1 "us-iso-west-1")
  (:us-isob-east-1 "us-isob-east-1")
  (:ap-southeast-4 "ap-southeast-4")
  (:il-central-1 "il-central-1")
  (:ca-west-1 "ca-west-1")
  (:ap-southeast-5 "ap-southeast-5")
  (:mx-central-1 "mx-central-1")
  (:us-isof-south-1 "us-isof-south-1")
  (:us-isof-east-1 "us-isof-east-1")
  (:ap-southeast-7 "ap-southeast-7")
  (:ap-east-2 "ap-east-2")
  (:eu-isoe-west-1 "eu-isoe-west-1"))

(smithy/sdk/shapes:define-type collection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list collection-summaries :member collection-summary)

(smithy/sdk/shapes:define-structure collection-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (id :target-type uuid :member-name "Id")
                                     (name :target-type collection-name
                                      :member-name "Name")
                                     (version :target-type collection-version
                                      :member-name "Version"))
                                    (:shape-name "CollectionSummary"))

(smithy/sdk/shapes:define-type collection-version smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:greater-than-or-equal-to-threshold "GreaterThanOrEqualToThreshold")
  (:greater-than-threshold "GreaterThanThreshold")
  (:less-than-threshold "LessThanThreshold")
  (:less-than-or-equal-to-threshold "LessThanOrEqualToThreshold"))

(smithy/sdk/shapes:define-error concurrent-modification common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModification")
                                (:error-code 400))

(smithy/sdk/shapes:define-error conflicting-domain-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictingDomainExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error conflicting-types common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictingTypes")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure coordinates common-lisp:nil
                                    ((latitude :target-type latitude :required
                                      common-lisp:t :member-name "Latitude")
                                     (longitude :target-type longitude
                                      :required common-lisp:t :member-name
                                      "Longitude"))
                                    (:shape-name "Coordinates"))

(smithy/sdk/shapes:define-input create-cidr-collection-request common-lisp:nil
                                ((name :target-type collection-name :required
                                  common-lisp:t :member-name "Name")
                                 (caller-reference :target-type cidr-nonce
                                  :required common-lisp:t :member-name
                                  "CallerReference"))
                                (:shape-name "CreateCidrCollectionRequest"))

(smithy/sdk/shapes:define-output create-cidr-collection-response
                                 common-lisp:nil
                                 ((collection :target-type cidr-collection
                                   :member-name "Collection")
                                  (location :target-type resource-uri
                                   :member-name "Location" :http-header
                                   "Location"))
                                 (:shape-name "CreateCidrCollectionResponse"))

(smithy/sdk/shapes:define-input create-health-check-request common-lisp:nil
                                ((caller-reference :target-type
                                  health-check-nonce :required common-lisp:t
                                  :member-name "CallerReference")
                                 (health-check-config :target-type
                                  health-check-config :required common-lisp:t
                                  :member-name "HealthCheckConfig"))
                                (:shape-name "CreateHealthCheckRequest"))

(smithy/sdk/shapes:define-output create-health-check-response common-lisp:nil
                                 ((health-check :target-type health-check
                                   :required common-lisp:t :member-name
                                   "HealthCheck")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name "CreateHealthCheckResponse"))

(smithy/sdk/shapes:define-input create-hosted-zone-request common-lisp:nil
                                ((name :target-type dnsname :required
                                  common-lisp:t :member-name "Name")
                                 (vpc :target-type vpc :member-name "VPC")
                                 (caller-reference :target-type nonce :required
                                  common-lisp:t :member-name "CallerReference")
                                 (hosted-zone-config :target-type
                                  hosted-zone-config :member-name
                                  "HostedZoneConfig")
                                 (delegation-set-id :target-type resource-id
                                  :member-name "DelegationSetId"))
                                (:shape-name "CreateHostedZoneRequest"))

(smithy/sdk/shapes:define-output create-hosted-zone-response common-lisp:nil
                                 ((hosted-zone :target-type hosted-zone
                                   :required common-lisp:t :member-name
                                   "HostedZone")
                                  (change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo")
                                  (delegation-set :target-type delegation-set
                                   :required common-lisp:t :member-name
                                   "DelegationSet")
                                  (vpc :target-type vpc :member-name "VPC")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name "CreateHostedZoneResponse"))

(smithy/sdk/shapes:define-input create-key-signing-key-request common-lisp:nil
                                ((caller-reference :target-type nonce :required
                                  common-lisp:t :member-name "CallerReference")
                                 (hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId")
                                 (key-management-service-arn :target-type
                                  signing-key-string :required common-lisp:t
                                  :member-name "KeyManagementServiceArn")
                                 (name :target-type signing-key-name :required
                                  common-lisp:t :member-name "Name")
                                 (status :target-type signing-key-status
                                  :required common-lisp:t :member-name
                                  "Status"))
                                (:shape-name "CreateKeySigningKeyRequest"))

(smithy/sdk/shapes:define-output create-key-signing-key-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo")
                                  (key-signing-key :target-type key-signing-key
                                   :required common-lisp:t :member-name
                                   "KeySigningKey")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name "CreateKeySigningKeyResponse"))

(smithy/sdk/shapes:define-input create-query-logging-config-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId")
                                 (cloud-watch-logs-log-group-arn :target-type
                                  cloud-watch-logs-log-group-arn :required
                                  common-lisp:t :member-name
                                  "CloudWatchLogsLogGroupArn"))
                                (:shape-name "CreateQueryLoggingConfigRequest"))

(smithy/sdk/shapes:define-output create-query-logging-config-response
                                 common-lisp:nil
                                 ((query-logging-config :target-type
                                   query-logging-config :required common-lisp:t
                                   :member-name "QueryLoggingConfig")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name
                                  "CreateQueryLoggingConfigResponse"))

(smithy/sdk/shapes:define-input create-reusable-delegation-set-request
                                common-lisp:nil
                                ((caller-reference :target-type nonce :required
                                  common-lisp:t :member-name "CallerReference")
                                 (hosted-zone-id :target-type resource-id
                                  :member-name "HostedZoneId"))
                                (:shape-name
                                 "CreateReusableDelegationSetRequest"))

(smithy/sdk/shapes:define-output create-reusable-delegation-set-response
                                 common-lisp:nil
                                 ((delegation-set :target-type delegation-set
                                   :required common-lisp:t :member-name
                                   "DelegationSet")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name
                                  "CreateReusableDelegationSetResponse"))

(smithy/sdk/shapes:define-input create-traffic-policy-instance-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId")
                                 (name :target-type dnsname :required
                                  common-lisp:t :member-name "Name")
                                 (ttl :target-type ttl :required common-lisp:t
                                  :member-name "TTL")
                                 (traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId")
                                 (traffic-policy-version :target-type
                                  traffic-policy-version :required
                                  common-lisp:t :member-name
                                  "TrafficPolicyVersion"))
                                (:shape-name
                                 "CreateTrafficPolicyInstanceRequest"))

(smithy/sdk/shapes:define-output create-traffic-policy-instance-response
                                 common-lisp:nil
                                 ((traffic-policy-instance :target-type
                                   traffic-policy-instance :required
                                   common-lisp:t :member-name
                                   "TrafficPolicyInstance")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name
                                  "CreateTrafficPolicyInstanceResponse"))

(smithy/sdk/shapes:define-input create-traffic-policy-request common-lisp:nil
                                ((name :target-type traffic-policy-name
                                  :required common-lisp:t :member-name "Name")
                                 (document :target-type traffic-policy-document
                                  :required common-lisp:t :member-name
                                  "Document")
                                 (comment :target-type traffic-policy-comment
                                  :member-name "Comment"))
                                (:shape-name "CreateTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output create-traffic-policy-response common-lisp:nil
                                 ((traffic-policy :target-type traffic-policy
                                   :required common-lisp:t :member-name
                                   "TrafficPolicy")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name "CreateTrafficPolicyResponse"))

(smithy/sdk/shapes:define-input create-traffic-policy-version-request
                                common-lisp:nil
                                ((id :target-type traffic-policy-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (document :target-type traffic-policy-document
                                  :required common-lisp:t :member-name
                                  "Document")
                                 (comment :target-type traffic-policy-comment
                                  :member-name "Comment"))
                                (:shape-name
                                 "CreateTrafficPolicyVersionRequest"))

(smithy/sdk/shapes:define-output create-traffic-policy-version-response
                                 common-lisp:nil
                                 ((traffic-policy :target-type traffic-policy
                                   :required common-lisp:t :member-name
                                   "TrafficPolicy")
                                  (location :target-type resource-uri :required
                                   common-lisp:t :member-name "Location"
                                   :http-header "Location"))
                                 (:shape-name
                                  "CreateTrafficPolicyVersionResponse"))

(smithy/sdk/shapes:define-input create-vpcassociation-authorization-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (vpc :target-type vpc :required common-lisp:t
                                  :member-name "VPC"))
                                (:shape-name
                                 "CreateVPCAssociationAuthorizationRequest"))

(smithy/sdk/shapes:define-output create-vpcassociation-authorization-response
                                 common-lisp:nil
                                 ((hosted-zone-id :target-type resource-id
                                   :required common-lisp:t :member-name
                                   "HostedZoneId")
                                  (vpc :target-type vpc :required common-lisp:t
                                   :member-name "VPC"))
                                 (:shape-name
                                  "CreateVPCAssociationAuthorizationResponse"))

(smithy/sdk/shapes:define-type dnsname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dnsrcode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error dnssecnot-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DNSSECNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure dnssecstatus common-lisp:nil
                                    ((serve-signature :target-type
                                      serve-signature :member-name
                                      "ServeSignature")
                                     (status-message :target-type
                                      signing-key-status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "DNSSECStatus"))

(smithy/sdk/shapes:define-input deactivate-key-signing-key-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (name :target-type signing-key-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeactivateKeySigningKeyRequest"))

(smithy/sdk/shapes:define-output deactivate-key-signing-key-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name
                                  "DeactivateKeySigningKeyResponse"))

(smithy/sdk/shapes:define-structure delegation-set common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (caller-reference :target-type nonce
                                      :member-name "CallerReference")
                                     (name-servers :target-type
                                      delegation-set-name-servers :required
                                      common-lisp:t :member-name
                                      "NameServers"))
                                    (:shape-name "DelegationSet"))

(smithy/sdk/shapes:define-error delegation-set-already-created common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DelegationSetAlreadyCreated")
                                (:error-code 400))

(smithy/sdk/shapes:define-error delegation-set-already-reusable common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DelegationSetAlreadyReusable")
                                (:error-code 400))

(smithy/sdk/shapes:define-error delegation-set-in-use common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DelegationSetInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-list delegation-set-name-servers :member
                               (dnsname :xml-name "NameServer"))

(smithy/sdk/shapes:define-error delegation-set-not-available common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DelegationSetNotAvailable")
                                (:error-code 400))

(smithy/sdk/shapes:define-error delegation-set-not-reusable common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DelegationSetNotReusable")
                                (:error-code 400))

(smithy/sdk/shapes:define-list delegation-sets :member
                               (delegation-set :xml-name "DelegationSet"))

(smithy/sdk/shapes:define-input delete-cidr-collection-request common-lisp:nil
                                ((id :target-type uuid :required common-lisp:t
                                  :member-name "Id" :http-label common-lisp:t))
                                (:shape-name "DeleteCidrCollectionRequest"))

(smithy/sdk/shapes:define-output delete-cidr-collection-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCidrCollectionResponse"))

(smithy/sdk/shapes:define-input delete-health-check-request common-lisp:nil
                                ((health-check-id :target-type health-check-id
                                  :required common-lisp:t :member-name
                                  "HealthCheckId" :http-label common-lisp:t))
                                (:shape-name "DeleteHealthCheckRequest"))

(smithy/sdk/shapes:define-output delete-health-check-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteHealthCheckResponse"))

(smithy/sdk/shapes:define-input delete-hosted-zone-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteHostedZoneRequest"))

(smithy/sdk/shapes:define-output delete-hosted-zone-response common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name "DeleteHostedZoneResponse"))

(smithy/sdk/shapes:define-input delete-key-signing-key-request common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (name :target-type signing-key-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteKeySigningKeyRequest"))

(smithy/sdk/shapes:define-output delete-key-signing-key-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name "DeleteKeySigningKeyResponse"))

(smithy/sdk/shapes:define-input delete-query-logging-config-request
                                common-lisp:nil
                                ((id :target-type query-logging-config-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteQueryLoggingConfigRequest"))

(smithy/sdk/shapes:define-output delete-query-logging-config-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteQueryLoggingConfigResponse"))

(smithy/sdk/shapes:define-input delete-reusable-delegation-set-request
                                common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteReusableDelegationSetRequest"))

(smithy/sdk/shapes:define-output delete-reusable-delegation-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteReusableDelegationSetResponse"))

(smithy/sdk/shapes:define-input delete-traffic-policy-instance-request
                                common-lisp:nil
                                ((id :target-type traffic-policy-instance-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteTrafficPolicyInstanceRequest"))

(smithy/sdk/shapes:define-output delete-traffic-policy-instance-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTrafficPolicyInstanceResponse"))

(smithy/sdk/shapes:define-input delete-traffic-policy-request common-lisp:nil
                                ((id :target-type traffic-policy-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (version :target-type traffic-policy-version
                                  :required common-lisp:t :member-name
                                  "Version" :http-label common-lisp:t))
                                (:shape-name "DeleteTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output delete-traffic-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTrafficPolicyResponse"))

(smithy/sdk/shapes:define-input delete-vpcassociation-authorization-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (vpc :target-type vpc :required common-lisp:t
                                  :member-name "VPC"))
                                (:shape-name
                                 "DeleteVPCAssociationAuthorizationRequest"))

(smithy/sdk/shapes:define-output delete-vpcassociation-authorization-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteVPCAssociationAuthorizationResponse"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type dimension-field
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type dimension-field
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-type dimension-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimension-list :member
                               (dimension :xml-name "Dimension"))

(smithy/sdk/shapes:define-input disable-hosted-zone-dnssecrequest
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t))
                                (:shape-name "DisableHostedZoneDNSSECRequest"))

(smithy/sdk/shapes:define-output disable-hosted-zone-dnssecresponse
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name
                                  "DisableHostedZoneDNSSECResponse"))

(smithy/sdk/shapes:define-type disabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type disassociate-vpccomment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-vpcfrom-hosted-zone-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (vpc :target-type vpc :required common-lisp:t
                                  :member-name "VPC")
                                 (comment :target-type disassociate-vpccomment
                                  :member-name "Comment"))
                                (:shape-name
                                 "DisassociateVPCFromHostedZoneRequest"))

(smithy/sdk/shapes:define-output disassociate-vpcfrom-hosted-zone-response
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name
                                  "DisassociateVPCFromHostedZoneResponse"))

(smithy/sdk/shapes:define-input enable-hosted-zone-dnssecrequest
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t))
                                (:shape-name "EnableHostedZoneDNSSECRequest"))

(smithy/sdk/shapes:define-output enable-hosted-zone-dnssecresponse
                                 common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name "EnableHostedZoneDNSSECResponse"))

(smithy/sdk/shapes:define-type enable-sni smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list error-messages :member
                               (error-message :xml-name "Message"))

(smithy/sdk/shapes:define-type evaluation-periods
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type failure-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type fully-qualified-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure geo-location common-lisp:nil
                                    ((continent-code :target-type
                                      geo-location-continent-code :member-name
                                      "ContinentCode")
                                     (country-code :target-type
                                      geo-location-country-code :member-name
                                      "CountryCode")
                                     (subdivision-code :target-type
                                      geo-location-subdivision-code
                                      :member-name "SubdivisionCode"))
                                    (:shape-name "GeoLocation"))

(smithy/sdk/shapes:define-type geo-location-continent-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type geo-location-continent-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type geo-location-country-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type geo-location-country-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure geo-location-details common-lisp:nil
                                    ((continent-code :target-type
                                      geo-location-continent-code :member-name
                                      "ContinentCode")
                                     (continent-name :target-type
                                      geo-location-continent-name :member-name
                                      "ContinentName")
                                     (country-code :target-type
                                      geo-location-country-code :member-name
                                      "CountryCode")
                                     (country-name :target-type
                                      geo-location-country-name :member-name
                                      "CountryName")
                                     (subdivision-code :target-type
                                      geo-location-subdivision-code
                                      :member-name "SubdivisionCode")
                                     (subdivision-name :target-type
                                      geo-location-subdivision-name
                                      :member-name "SubdivisionName"))
                                    (:shape-name "GeoLocationDetails"))

(smithy/sdk/shapes:define-list geo-location-details-list :member
                               (geo-location-details :xml-name
                                "GeoLocationDetails"))

(smithy/sdk/shapes:define-type geo-location-subdivision-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type geo-location-subdivision-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure geo-proximity-location common-lisp:nil
                                    ((awsregion :target-type awsregion
                                      :member-name "AWSRegion")
                                     (local-zone-group :target-type
                                      local-zone-group :member-name
                                      "LocalZoneGroup")
                                     (coordinates :target-type coordinates
                                      :member-name "Coordinates")
                                     (bias :target-type bias :member-name
                                      "Bias"))
                                    (:shape-name "GeoProximityLocation"))

(smithy/sdk/shapes:define-input get-account-limit-request common-lisp:nil
                                ((type :target-type account-limit-type
                                  :required common-lisp:t :member-name "Type"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAccountLimitRequest"))

(smithy/sdk/shapes:define-output get-account-limit-response common-lisp:nil
                                 ((limit :target-type account-limit :required
                                   common-lisp:t :member-name "Limit")
                                  (count :target-type usage-count :required
                                   common-lisp:t :member-name "Count"))
                                 (:shape-name "GetAccountLimitResponse"))

(smithy/sdk/shapes:define-input get-change-request common-lisp:nil
                                ((id :target-type change-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetChangeRequest"))

(smithy/sdk/shapes:define-output get-change-response common-lisp:nil
                                 ((change-info :target-type change-info
                                   :required common-lisp:t :member-name
                                   "ChangeInfo"))
                                 (:shape-name "GetChangeResponse"))

(smithy/sdk/shapes:define-input get-checker-ip-ranges-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetCheckerIpRangesRequest"))

(smithy/sdk/shapes:define-output get-checker-ip-ranges-response common-lisp:nil
                                 ((checker-ip-ranges :target-type
                                   checker-ip-ranges :required common-lisp:t
                                   :member-name "CheckerIpRanges"))
                                 (:shape-name "GetCheckerIpRangesResponse"))

(smithy/sdk/shapes:define-input get-dnssecrequest common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t))
                                (:shape-name "GetDNSSECRequest"))

(smithy/sdk/shapes:define-output get-dnssecresponse common-lisp:nil
                                 ((status :target-type dnssecstatus :required
                                   common-lisp:t :member-name "Status")
                                  (key-signing-keys :target-type
                                   key-signing-keys :required common-lisp:t
                                   :member-name "KeySigningKeys"))
                                 (:shape-name "GetDNSSECResponse"))

(smithy/sdk/shapes:define-input get-geo-location-request common-lisp:nil
                                ((continent-code :target-type
                                  geo-location-continent-code :member-name
                                  "ContinentCode" :http-query "continentcode")
                                 (country-code :target-type
                                  geo-location-country-code :member-name
                                  "CountryCode" :http-query "countrycode")
                                 (subdivision-code :target-type
                                  geo-location-subdivision-code :member-name
                                  "SubdivisionCode" :http-query
                                  "subdivisioncode"))
                                (:shape-name "GetGeoLocationRequest"))

(smithy/sdk/shapes:define-output get-geo-location-response common-lisp:nil
                                 ((geo-location-details :target-type
                                   geo-location-details :required common-lisp:t
                                   :member-name "GeoLocationDetails"))
                                 (:shape-name "GetGeoLocationResponse"))

(smithy/sdk/shapes:define-input get-health-check-count-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetHealthCheckCountRequest"))

(smithy/sdk/shapes:define-output get-health-check-count-response
                                 common-lisp:nil
                                 ((health-check-count :target-type
                                   health-check-count :required common-lisp:t
                                   :member-name "HealthCheckCount"))
                                 (:shape-name "GetHealthCheckCountResponse"))

(smithy/sdk/shapes:define-input get-health-check-last-failure-reason-request
                                common-lisp:nil
                                ((health-check-id :target-type health-check-id
                                  :required common-lisp:t :member-name
                                  "HealthCheckId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetHealthCheckLastFailureReasonRequest"))

(smithy/sdk/shapes:define-output get-health-check-last-failure-reason-response
                                 common-lisp:nil
                                 ((health-check-observations :target-type
                                   health-check-observations :required
                                   common-lisp:t :member-name
                                   "HealthCheckObservations"))
                                 (:shape-name
                                  "GetHealthCheckLastFailureReasonResponse"))

(smithy/sdk/shapes:define-input get-health-check-request common-lisp:nil
                                ((health-check-id :target-type health-check-id
                                  :required common-lisp:t :member-name
                                  "HealthCheckId" :http-label common-lisp:t))
                                (:shape-name "GetHealthCheckRequest"))

(smithy/sdk/shapes:define-output get-health-check-response common-lisp:nil
                                 ((health-check :target-type health-check
                                   :required common-lisp:t :member-name
                                   "HealthCheck"))
                                 (:shape-name "GetHealthCheckResponse"))

(smithy/sdk/shapes:define-input get-health-check-status-request common-lisp:nil
                                ((health-check-id :target-type health-check-id
                                  :required common-lisp:t :member-name
                                  "HealthCheckId" :http-label common-lisp:t))
                                (:shape-name "GetHealthCheckStatusRequest"))

(smithy/sdk/shapes:define-output get-health-check-status-response
                                 common-lisp:nil
                                 ((health-check-observations :target-type
                                   health-check-observations :required
                                   common-lisp:t :member-name
                                   "HealthCheckObservations"))
                                 (:shape-name "GetHealthCheckStatusResponse"))

(smithy/sdk/shapes:define-input get-hosted-zone-count-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetHostedZoneCountRequest"))

(smithy/sdk/shapes:define-output get-hosted-zone-count-response common-lisp:nil
                                 ((hosted-zone-count :target-type
                                   hosted-zone-count :required common-lisp:t
                                   :member-name "HostedZoneCount"))
                                 (:shape-name "GetHostedZoneCountResponse"))

(smithy/sdk/shapes:define-input get-hosted-zone-limit-request common-lisp:nil
                                ((type :target-type hosted-zone-limit-type
                                  :required common-lisp:t :member-name "Type"
                                  :http-label common-lisp:t)
                                 (hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t))
                                (:shape-name "GetHostedZoneLimitRequest"))

(smithy/sdk/shapes:define-output get-hosted-zone-limit-response common-lisp:nil
                                 ((limit :target-type hosted-zone-limit
                                   :required common-lisp:t :member-name
                                   "Limit")
                                  (count :target-type usage-count :required
                                   common-lisp:t :member-name "Count"))
                                 (:shape-name "GetHostedZoneLimitResponse"))

(smithy/sdk/shapes:define-input get-hosted-zone-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetHostedZoneRequest"))

(smithy/sdk/shapes:define-output get-hosted-zone-response common-lisp:nil
                                 ((hosted-zone :target-type hosted-zone
                                   :required common-lisp:t :member-name
                                   "HostedZone")
                                  (delegation-set :target-type delegation-set
                                   :member-name "DelegationSet")
                                  (vpcs :target-type vpcs :member-name "VPCs"))
                                 (:shape-name "GetHostedZoneResponse"))

(smithy/sdk/shapes:define-input get-query-logging-config-request
                                common-lisp:nil
                                ((id :target-type query-logging-config-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name "GetQueryLoggingConfigRequest"))

(smithy/sdk/shapes:define-output get-query-logging-config-response
                                 common-lisp:nil
                                 ((query-logging-config :target-type
                                   query-logging-config :required common-lisp:t
                                   :member-name "QueryLoggingConfig"))
                                 (:shape-name "GetQueryLoggingConfigResponse"))

(smithy/sdk/shapes:define-input get-reusable-delegation-set-limit-request
                                common-lisp:nil
                                ((type :target-type
                                  reusable-delegation-set-limit-type :required
                                  common-lisp:t :member-name "Type" :http-label
                                  common-lisp:t)
                                 (delegation-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "DelegationSetId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetReusableDelegationSetLimitRequest"))

(smithy/sdk/shapes:define-output get-reusable-delegation-set-limit-response
                                 common-lisp:nil
                                 ((limit :target-type
                                   reusable-delegation-set-limit :required
                                   common-lisp:t :member-name "Limit")
                                  (count :target-type usage-count :required
                                   common-lisp:t :member-name "Count"))
                                 (:shape-name
                                  "GetReusableDelegationSetLimitResponse"))

(smithy/sdk/shapes:define-input get-reusable-delegation-set-request
                                common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReusableDelegationSetRequest"))

(smithy/sdk/shapes:define-output get-reusable-delegation-set-response
                                 common-lisp:nil
                                 ((delegation-set :target-type delegation-set
                                   :required common-lisp:t :member-name
                                   "DelegationSet"))
                                 (:shape-name
                                  "GetReusableDelegationSetResponse"))

(smithy/sdk/shapes:define-input get-traffic-policy-instance-count-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetTrafficPolicyInstanceCountRequest"))

(smithy/sdk/shapes:define-output get-traffic-policy-instance-count-response
                                 common-lisp:nil
                                 ((traffic-policy-instance-count :target-type
                                   traffic-policy-instance-count :required
                                   common-lisp:t :member-name
                                   "TrafficPolicyInstanceCount"))
                                 (:shape-name
                                  "GetTrafficPolicyInstanceCountResponse"))

(smithy/sdk/shapes:define-input get-traffic-policy-instance-request
                                common-lisp:nil
                                ((id :target-type traffic-policy-instance-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTrafficPolicyInstanceRequest"))

(smithy/sdk/shapes:define-output get-traffic-policy-instance-response
                                 common-lisp:nil
                                 ((traffic-policy-instance :target-type
                                   traffic-policy-instance :required
                                   common-lisp:t :member-name
                                   "TrafficPolicyInstance"))
                                 (:shape-name
                                  "GetTrafficPolicyInstanceResponse"))

(smithy/sdk/shapes:define-input get-traffic-policy-request common-lisp:nil
                                ((id :target-type traffic-policy-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (version :target-type traffic-policy-version
                                  :required common-lisp:t :member-name
                                  "Version" :http-label common-lisp:t))
                                (:shape-name "GetTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output get-traffic-policy-response common-lisp:nil
                                 ((traffic-policy :target-type traffic-policy
                                   :required common-lisp:t :member-name
                                   "TrafficPolicy"))
                                 (:shape-name "GetTrafficPolicyResponse"))

(smithy/sdk/shapes:define-structure health-check common-lisp:nil
                                    ((id :target-type health-check-id :required
                                      common-lisp:t :member-name "Id")
                                     (caller-reference :target-type
                                      health-check-nonce :required
                                      common-lisp:t :member-name
                                      "CallerReference")
                                     (linked-service :target-type
                                      linked-service :member-name
                                      "LinkedService")
                                     (health-check-config :target-type
                                      health-check-config :required
                                      common-lisp:t :member-name
                                      "HealthCheckConfig")
                                     (health-check-version :target-type
                                      health-check-version :required
                                      common-lisp:t :member-name
                                      "HealthCheckVersion")
                                     (cloud-watch-alarm-configuration
                                      :target-type
                                      cloud-watch-alarm-configuration
                                      :member-name
                                      "CloudWatchAlarmConfiguration"))
                                    (:shape-name "HealthCheck"))

(smithy/sdk/shapes:define-error health-check-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HealthCheckAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure health-check-config common-lisp:nil
                                    ((ipaddress :target-type ipaddress
                                      :member-name "IPAddress")
                                     (port :target-type port :member-name
                                      "Port")
                                     (type :target-type health-check-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (resource-path :target-type resource-path
                                      :member-name "ResourcePath")
                                     (fully-qualified-domain-name :target-type
                                      fully-qualified-domain-name :member-name
                                      "FullyQualifiedDomainName")
                                     (search-string :target-type search-string
                                      :member-name "SearchString")
                                     (request-interval :target-type
                                      request-interval :member-name
                                      "RequestInterval")
                                     (failure-threshold :target-type
                                      failure-threshold :member-name
                                      "FailureThreshold")
                                     (measure-latency :target-type
                                      measure-latency :member-name
                                      "MeasureLatency")
                                     (inverted :target-type inverted
                                      :member-name "Inverted")
                                     (disabled :target-type disabled
                                      :member-name "Disabled")
                                     (health-threshold :target-type
                                      health-threshold :member-name
                                      "HealthThreshold")
                                     (child-health-checks :target-type
                                      child-health-check-list :member-name
                                      "ChildHealthChecks")
                                     (enable-sni :target-type enable-sni
                                      :member-name "EnableSNI")
                                     (regions :target-type
                                      health-check-region-list :member-name
                                      "Regions")
                                     (alarm-identifier :target-type
                                      alarm-identifier :member-name
                                      "AlarmIdentifier")
                                     (insufficient-data-health-status
                                      :target-type
                                      insufficient-data-health-status
                                      :member-name
                                      "InsufficientDataHealthStatus")
                                     (routing-control-arn :target-type
                                      routing-control-arn :member-name
                                      "RoutingControlArn"))
                                    (:shape-name "HealthCheckConfig"))

(smithy/sdk/shapes:define-type health-check-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type health-check-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error health-check-in-use common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HealthCheckInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-type health-check-nonce
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure health-check-observation common-lisp:nil
                                    ((region :target-type health-check-region
                                      :member-name "Region")
                                     (ipaddress :target-type ipaddress
                                      :member-name "IPAddress")
                                     (status-report :target-type status-report
                                      :member-name "StatusReport"))
                                    (:shape-name "HealthCheckObservation"))

(smithy/sdk/shapes:define-list health-check-observations :member
                               (health-check-observation :xml-name
                                "HealthCheckObservation"))

(smithy/sdk/shapes:define-enum health-check-region
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:eu-west-1 "eu-west-1")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-northeast-1 "ap-northeast-1")
  (:sa-east-1 "sa-east-1"))

(smithy/sdk/shapes:define-list health-check-region-list :member
                               (health-check-region :xml-name "Region"))

(smithy/sdk/shapes:define-enum health-check-type
    common-lisp:nil
  (:http "HTTP")
  (:https "HTTPS")
  (:http-str-match "HTTP_STR_MATCH")
  (:https-str-match "HTTPS_STR_MATCH")
  (:tcp "TCP")
  (:calculated "CALCULATED")
  (:cloudwatch-metric "CLOUDWATCH_METRIC")
  (:recovery-control "RECOVERY_CONTROL"))

(smithy/sdk/shapes:define-type health-check-version
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error health-check-version-mismatch common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HealthCheckVersionMismatch")
                                (:error-code 409))

(smithy/sdk/shapes:define-list health-checks :member
                               (health-check :xml-name "HealthCheck"))

(smithy/sdk/shapes:define-type health-threshold smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure hosted-zone common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type dnsname :required
                                      common-lisp:t :member-name "Name")
                                     (caller-reference :target-type nonce
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (config :target-type hosted-zone-config
                                      :member-name "Config")
                                     (resource-record-set-count :target-type
                                      hosted-zone-rrset-count :member-name
                                      "ResourceRecordSetCount")
                                     (linked-service :target-type
                                      linked-service :member-name
                                      "LinkedService"))
                                    (:shape-name "HostedZone"))

(smithy/sdk/shapes:define-error hosted-zone-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HostedZoneAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure hosted-zone-config common-lisp:nil
                                    ((comment :target-type resource-description
                                      :member-name "Comment")
                                     (private-zone :target-type is-private-zone
                                      :member-name "PrivateZone"))
                                    (:shape-name "HostedZoneConfig"))

(smithy/sdk/shapes:define-type hosted-zone-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure hosted-zone-limit common-lisp:nil
                                    ((type :target-type hosted-zone-limit-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type limit-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "HostedZoneLimit"))

(smithy/sdk/shapes:define-enum hosted-zone-limit-type
    common-lisp:nil
  (:max-rrsets-by-zone "MAX_RRSETS_BY_ZONE")
  (:max-vpcs-associated-by-zone "MAX_VPCS_ASSOCIATED_BY_ZONE"))

(smithy/sdk/shapes:define-error hosted-zone-not-empty common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HostedZoneNotEmpty")
                                (:error-code 400))

(smithy/sdk/shapes:define-error hosted-zone-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HostedZoneNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error hosted-zone-not-private common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HostedZoneNotPrivate")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure hosted-zone-owner common-lisp:nil
                                    ((owning-account :target-type awsaccount-id
                                      :member-name "OwningAccount")
                                     (owning-service :target-type
                                      hosted-zone-owning-service :member-name
                                      "OwningService"))
                                    (:shape-name "HostedZoneOwner"))

(smithy/sdk/shapes:define-type hosted-zone-owning-service
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error hosted-zone-partially-delegated common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "HostedZonePartiallyDelegated")
                                (:error-code 400))

(smithy/sdk/shapes:define-type hosted-zone-rrset-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list hosted-zone-summaries :member
                               (hosted-zone-summary :xml-name
                                "HostedZoneSummary"))

(smithy/sdk/shapes:define-structure hosted-zone-summary common-lisp:nil
                                    ((hosted-zone-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "HostedZoneId")
                                     (name :target-type dnsname :required
                                      common-lisp:t :member-name "Name")
                                     (owner :target-type hosted-zone-owner
                                      :required common-lisp:t :member-name
                                      "Owner"))
                                    (:shape-name "HostedZoneSummary"))

(smithy/sdk/shapes:define-enum hosted-zone-type
    common-lisp:nil
  (:private-hosted-zone "PrivateHostedZone"))

(smithy/sdk/shapes:define-list hosted-zones :member
                               (hosted-zone :xml-name "HostedZone"))

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ipaddress-cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error incompatible-version common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "IncompatibleVersion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-cloud-watch-logs-resource-policy
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InsufficientCloudWatchLogsResourcePolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum insufficient-data-health-status
    common-lisp:nil
  (:healthy "Healthy")
  (:unhealthy "Unhealthy")
  (:last-known-status "LastKnownStatus"))

(smithy/sdk/shapes:define-error invalid-argument common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidArgument")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-change-batch common-lisp:nil
                                ((messages :target-type error-messages
                                  :member-name "messages")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidChangeBatch")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-domain-name common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidDomainName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-input common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidInput") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-kmsarn common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidKMSArn") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-key-signing-key-name common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidKeySigningKeyName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-key-signing-key-status common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidKeySigningKeyStatus")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-pagination-token common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidPaginationToken")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-signing-status common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSigningStatus")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-traffic-policy-document common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTrafficPolicyDocument")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-vpcid common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidVPCId") (:error-code 400))

(smithy/sdk/shapes:define-type inverted smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-private-zone smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure key-signing-key common-lisp:nil
                                    ((name :target-type signing-key-name
                                      :member-name "Name")
                                     (kms-arn :target-type signing-key-string
                                      :member-name "KmsArn")
                                     (flag :target-type signing-key-integer
                                      :member-name "Flag")
                                     (signing-algorithm-mnemonic :target-type
                                      signing-key-string :member-name
                                      "SigningAlgorithmMnemonic")
                                     (signing-algorithm-type :target-type
                                      signing-key-integer :member-name
                                      "SigningAlgorithmType")
                                     (digest-algorithm-mnemonic :target-type
                                      signing-key-string :member-name
                                      "DigestAlgorithmMnemonic")
                                     (digest-algorithm-type :target-type
                                      signing-key-integer :member-name
                                      "DigestAlgorithmType")
                                     (key-tag :target-type signing-key-tag
                                      :member-name "KeyTag")
                                     (digest-value :target-type
                                      signing-key-string :member-name
                                      "DigestValue")
                                     (public-key :target-type
                                      signing-key-string :member-name
                                      "PublicKey")
                                     (dsrecord :target-type signing-key-string
                                      :member-name "DSRecord")
                                     (dnskeyrecord :target-type
                                      signing-key-string :member-name
                                      "DNSKEYRecord")
                                     (status :target-type signing-key-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      signing-key-status-message :member-name
                                      "StatusMessage")
                                     (created-date :target-type time-stamp
                                      :member-name "CreatedDate")
                                     (last-modified-date :target-type
                                      time-stamp :member-name
                                      "LastModifiedDate"))
                                    (:shape-name "KeySigningKey"))

(smithy/sdk/shapes:define-error key-signing-key-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KeySigningKeyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error key-signing-key-in-parent-dsrecord
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KeySigningKeyInParentDSRecord")
                                (:error-code 400))

(smithy/sdk/shapes:define-error key-signing-key-in-use common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "KeySigningKeyInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-error key-signing-key-with-active-status-not-found
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "KeySigningKeyWithActiveStatusNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list key-signing-keys :member key-signing-key)

(smithy/sdk/shapes:define-error last-vpcassociation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LastVPCAssociation")
                                (:error-code 400))

(smithy/sdk/shapes:define-type latitude smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error limits-exceeded common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitsExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure linked-service common-lisp:nil
                                    ((service-principal :target-type
                                      service-principal :member-name
                                      "ServicePrincipal")
                                     (description :target-type
                                      resource-description :member-name
                                      "Description"))
                                    (:shape-name "LinkedService"))

(smithy/sdk/shapes:define-input list-cidr-blocks-request common-lisp:nil
                                ((collection-id :target-type uuid :required
                                  common-lisp:t :member-name "CollectionId"
                                  :http-label common-lisp:t)
                                 (location-name :target-type
                                  cidr-location-name-default-not-allowed
                                  :member-name "LocationName" :http-query
                                  "location")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxresults"))
                                (:shape-name "ListCidrBlocksRequest"))

(smithy/sdk/shapes:define-output list-cidr-blocks-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (cidr-blocks :target-type
                                   cidr-block-summaries :member-name
                                   "CidrBlocks"))
                                 (:shape-name "ListCidrBlocksResponse"))

(smithy/sdk/shapes:define-input list-cidr-collections-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxresults"))
                                (:shape-name "ListCidrCollectionsRequest"))

(smithy/sdk/shapes:define-output list-cidr-collections-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (cidr-collections :target-type
                                   collection-summaries :member-name
                                   "CidrCollections"))
                                 (:shape-name "ListCidrCollectionsResponse"))

(smithy/sdk/shapes:define-input list-cidr-locations-request common-lisp:nil
                                ((collection-id :target-type uuid :required
                                  common-lisp:t :member-name "CollectionId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxresults"))
                                (:shape-name "ListCidrLocationsRequest"))

(smithy/sdk/shapes:define-output list-cidr-locations-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (cidr-locations :target-type
                                   location-summaries :member-name
                                   "CidrLocations"))
                                 (:shape-name "ListCidrLocationsResponse"))

(smithy/sdk/shapes:define-input list-geo-locations-request common-lisp:nil
                                ((start-continent-code :target-type
                                  geo-location-continent-code :member-name
                                  "StartContinentCode" :http-query
                                  "startcontinentcode")
                                 (start-country-code :target-type
                                  geo-location-country-code :member-name
                                  "StartCountryCode" :http-query
                                  "startcountrycode")
                                 (start-subdivision-code :target-type
                                  geo-location-subdivision-code :member-name
                                  "StartSubdivisionCode" :http-query
                                  "startsubdivisioncode")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name "ListGeoLocationsRequest"))

(smithy/sdk/shapes:define-output list-geo-locations-response common-lisp:nil
                                 ((geo-location-details-list :target-type
                                   geo-location-details-list :required
                                   common-lisp:t :member-name
                                   "GeoLocationDetailsList")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (next-continent-code :target-type
                                   geo-location-continent-code :member-name
                                   "NextContinentCode")
                                  (next-country-code :target-type
                                   geo-location-country-code :member-name
                                   "NextCountryCode")
                                  (next-subdivision-code :target-type
                                   geo-location-subdivision-code :member-name
                                   "NextSubdivisionCode")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name "ListGeoLocationsResponse"))

(smithy/sdk/shapes:define-input list-health-checks-request common-lisp:nil
                                ((marker :target-type page-marker :member-name
                                  "Marker" :http-query "marker")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name "ListHealthChecksRequest"))

(smithy/sdk/shapes:define-output list-health-checks-response common-lisp:nil
                                 ((health-checks :target-type health-checks
                                   :required common-lisp:t :member-name
                                   "HealthChecks")
                                  (marker :target-type page-marker :required
                                   common-lisp:t :member-name "Marker")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (next-marker :target-type page-marker
                                   :member-name "NextMarker")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name "ListHealthChecksResponse"))

(smithy/sdk/shapes:define-input list-hosted-zones-by-name-request
                                common-lisp:nil
                                ((dnsname :target-type dnsname :member-name
                                  "DNSName" :http-query "dnsname")
                                 (hosted-zone-id :target-type resource-id
                                  :member-name "HostedZoneId" :http-query
                                  "hostedzoneid")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name "ListHostedZonesByNameRequest"))

(smithy/sdk/shapes:define-output list-hosted-zones-by-name-response
                                 common-lisp:nil
                                 ((hosted-zones :target-type hosted-zones
                                   :required common-lisp:t :member-name
                                   "HostedZones")
                                  (dnsname :target-type dnsname :member-name
                                   "DNSName")
                                  (hosted-zone-id :target-type resource-id
                                   :member-name "HostedZoneId")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (next-dnsname :target-type dnsname
                                   :member-name "NextDNSName")
                                  (next-hosted-zone-id :target-type resource-id
                                   :member-name "NextHostedZoneId")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name "ListHostedZonesByNameResponse"))

(smithy/sdk/shapes:define-input list-hosted-zones-by-vpcrequest common-lisp:nil
                                ((vpcid :target-type vpcid :required
                                  common-lisp:t :member-name "VPCId"
                                  :http-query "vpcid")
                                 (vpcregion :target-type vpcregion :required
                                  common-lisp:t :member-name "VPCRegion"
                                  :http-query "vpcregion")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken"))
                                (:shape-name "ListHostedZonesByVPCRequest"))

(smithy/sdk/shapes:define-output list-hosted-zones-by-vpcresponse
                                 common-lisp:nil
                                 ((hosted-zone-summaries :target-type
                                   hosted-zone-summaries :required
                                   common-lisp:t :member-name
                                   "HostedZoneSummaries")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListHostedZonesByVPCResponse"))

(smithy/sdk/shapes:define-input list-hosted-zones-request common-lisp:nil
                                ((marker :target-type page-marker :member-name
                                  "Marker" :http-query "marker")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems")
                                 (delegation-set-id :target-type resource-id
                                  :member-name "DelegationSetId" :http-query
                                  "delegationsetid")
                                 (hosted-zone-type :target-type
                                  hosted-zone-type :member-name
                                  "HostedZoneType" :http-query
                                  "hostedzonetype"))
                                (:shape-name "ListHostedZonesRequest"))

(smithy/sdk/shapes:define-output list-hosted-zones-response common-lisp:nil
                                 ((hosted-zones :target-type hosted-zones
                                   :required common-lisp:t :member-name
                                   "HostedZones")
                                  (marker :target-type page-marker :required
                                   common-lisp:t :member-name "Marker")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (next-marker :target-type page-marker
                                   :member-name "NextMarker")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name "ListHostedZonesResponse"))

(smithy/sdk/shapes:define-input list-query-logging-configs-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :member-name "HostedZoneId" :http-query
                                  "hostedzoneid")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxresults"))
                                (:shape-name "ListQueryLoggingConfigsRequest"))

(smithy/sdk/shapes:define-output list-query-logging-configs-response
                                 common-lisp:nil
                                 ((query-logging-configs :target-type
                                   query-logging-configs :required
                                   common-lisp:t :member-name
                                   "QueryLoggingConfigs")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListQueryLoggingConfigsResponse"))

(smithy/sdk/shapes:define-input list-resource-record-sets-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (start-record-name :target-type dnsname
                                  :member-name "StartRecordName" :http-query
                                  "name")
                                 (start-record-type :target-type rrtype
                                  :member-name "StartRecordType" :http-query
                                  "type")
                                 (start-record-identifier :target-type
                                  resource-record-set-identifier :member-name
                                  "StartRecordIdentifier" :http-query
                                  "identifier")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name "ListResourceRecordSetsRequest"))

(smithy/sdk/shapes:define-output list-resource-record-sets-response
                                 common-lisp:nil
                                 ((resource-record-sets :target-type
                                   resource-record-sets :required common-lisp:t
                                   :member-name "ResourceRecordSets")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (next-record-name :target-type dnsname
                                   :member-name "NextRecordName")
                                  (next-record-type :target-type rrtype
                                   :member-name "NextRecordType")
                                  (next-record-identifier :target-type
                                   resource-record-set-identifier :member-name
                                   "NextRecordIdentifier")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name "ListResourceRecordSetsResponse"))

(smithy/sdk/shapes:define-input list-reusable-delegation-sets-request
                                common-lisp:nil
                                ((marker :target-type page-marker :member-name
                                  "Marker" :http-query "marker")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name
                                 "ListReusableDelegationSetsRequest"))

(smithy/sdk/shapes:define-output list-reusable-delegation-sets-response
                                 common-lisp:nil
                                 ((delegation-sets :target-type delegation-sets
                                   :required common-lisp:t :member-name
                                   "DelegationSets")
                                  (marker :target-type page-marker :required
                                   common-lisp:t :member-name "Marker")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (next-marker :target-type page-marker
                                   :member-name "NextMarker")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name
                                  "ListReusableDelegationSetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-type :target-type tag-resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType" :http-label common-lisp:t)
                                 (resource-id :target-type tag-resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tag-set :target-type
                                   resource-tag-set :required common-lisp:t
                                   :member-name "ResourceTagSet"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resources-request common-lisp:nil
                                ((resource-type :target-type tag-resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType" :http-label common-lisp:t)
                                 (resource-ids :target-type
                                  tag-resource-id-list :required common-lisp:t
                                  :member-name "ResourceIds"))
                                (:shape-name "ListTagsForResourcesRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resources-response
                                 common-lisp:nil
                                 ((resource-tag-sets :target-type
                                   resource-tag-set-list :required
                                   common-lisp:t :member-name
                                   "ResourceTagSets"))
                                 (:shape-name "ListTagsForResourcesResponse"))

(smithy/sdk/shapes:define-input list-traffic-policies-request common-lisp:nil
                                ((traffic-policy-id-marker :target-type
                                  traffic-policy-id :member-name
                                  "TrafficPolicyIdMarker" :http-query
                                  "trafficpolicyid")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name "ListTrafficPoliciesRequest"))

(smithy/sdk/shapes:define-output list-traffic-policies-response common-lisp:nil
                                 ((traffic-policy-summaries :target-type
                                   traffic-policy-summaries :required
                                   common-lisp:t :member-name
                                   "TrafficPolicySummaries")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (traffic-policy-id-marker :target-type
                                   traffic-policy-id :required common-lisp:t
                                   :member-name "TrafficPolicyIdMarker")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name "ListTrafficPoliciesResponse"))

(smithy/sdk/shapes:define-input
 list-traffic-policy-instances-by-hosted-zone-request common-lisp:nil
 ((hosted-zone-id :target-type resource-id :required common-lisp:t :member-name
   "HostedZoneId" :http-query "id")
  (traffic-policy-instance-name-marker :target-type dnsname :member-name
   "TrafficPolicyInstanceNameMarker" :http-query "trafficpolicyinstancename")
  (traffic-policy-instance-type-marker :target-type rrtype :member-name
   "TrafficPolicyInstanceTypeMarker" :http-query "trafficpolicyinstancetype")
  (max-items :target-type smithy/sdk/smithy-types:integer :member-name
   "MaxItems" :http-query "maxitems"))
 (:shape-name "ListTrafficPolicyInstancesByHostedZoneRequest"))

(smithy/sdk/shapes:define-output
 list-traffic-policy-instances-by-hosted-zone-response common-lisp:nil
 ((traffic-policy-instances :target-type traffic-policy-instances :required
   common-lisp:t :member-name "TrafficPolicyInstances")
  (traffic-policy-instance-name-marker :target-type dnsname :member-name
   "TrafficPolicyInstanceNameMarker")
  (traffic-policy-instance-type-marker :target-type rrtype :member-name
   "TrafficPolicyInstanceTypeMarker")
  (is-truncated :target-type page-truncated :required common-lisp:t
   :member-name "IsTruncated")
  (max-items :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "MaxItems"))
 (:shape-name "ListTrafficPolicyInstancesByHostedZoneResponse"))

(smithy/sdk/shapes:define-input list-traffic-policy-instances-by-policy-request
                                common-lisp:nil
                                ((traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId" :http-query
                                  "id")
                                 (traffic-policy-version :target-type
                                  traffic-policy-version :required
                                  common-lisp:t :member-name
                                  "TrafficPolicyVersion" :http-query "version")
                                 (hosted-zone-id-marker :target-type
                                  resource-id :member-name "HostedZoneIdMarker"
                                  :http-query "hostedzoneid")
                                 (traffic-policy-instance-name-marker
                                  :target-type dnsname :member-name
                                  "TrafficPolicyInstanceNameMarker" :http-query
                                  "trafficpolicyinstancename")
                                 (traffic-policy-instance-type-marker
                                  :target-type rrtype :member-name
                                  "TrafficPolicyInstanceTypeMarker" :http-query
                                  "trafficpolicyinstancetype")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name
                                 "ListTrafficPolicyInstancesByPolicyRequest"))

(smithy/sdk/shapes:define-output
 list-traffic-policy-instances-by-policy-response common-lisp:nil
 ((traffic-policy-instances :target-type traffic-policy-instances :required
   common-lisp:t :member-name "TrafficPolicyInstances")
  (hosted-zone-id-marker :target-type resource-id :member-name
   "HostedZoneIdMarker")
  (traffic-policy-instance-name-marker :target-type dnsname :member-name
   "TrafficPolicyInstanceNameMarker")
  (traffic-policy-instance-type-marker :target-type rrtype :member-name
   "TrafficPolicyInstanceTypeMarker")
  (is-truncated :target-type page-truncated :required common-lisp:t
   :member-name "IsTruncated")
  (max-items :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "MaxItems"))
 (:shape-name "ListTrafficPolicyInstancesByPolicyResponse"))

(smithy/sdk/shapes:define-input list-traffic-policy-instances-request
                                common-lisp:nil
                                ((hosted-zone-id-marker :target-type
                                  resource-id :member-name "HostedZoneIdMarker"
                                  :http-query "hostedzoneid")
                                 (traffic-policy-instance-name-marker
                                  :target-type dnsname :member-name
                                  "TrafficPolicyInstanceNameMarker" :http-query
                                  "trafficpolicyinstancename")
                                 (traffic-policy-instance-type-marker
                                  :target-type rrtype :member-name
                                  "TrafficPolicyInstanceTypeMarker" :http-query
                                  "trafficpolicyinstancetype")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name
                                 "ListTrafficPolicyInstancesRequest"))

(smithy/sdk/shapes:define-output list-traffic-policy-instances-response
                                 common-lisp:nil
                                 ((traffic-policy-instances :target-type
                                   traffic-policy-instances :required
                                   common-lisp:t :member-name
                                   "TrafficPolicyInstances")
                                  (hosted-zone-id-marker :target-type
                                   resource-id :member-name
                                   "HostedZoneIdMarker")
                                  (traffic-policy-instance-name-marker
                                   :target-type dnsname :member-name
                                   "TrafficPolicyInstanceNameMarker")
                                  (traffic-policy-instance-type-marker
                                   :target-type rrtype :member-name
                                   "TrafficPolicyInstanceTypeMarker")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name
                                  "ListTrafficPolicyInstancesResponse"))

(smithy/sdk/shapes:define-input list-traffic-policy-versions-request
                                common-lisp:nil
                                ((id :target-type traffic-policy-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (traffic-policy-version-marker :target-type
                                  traffic-policy-version-marker :member-name
                                  "TrafficPolicyVersionMarker" :http-query
                                  "trafficpolicyversion")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems" :http-query "maxitems"))
                                (:shape-name
                                 "ListTrafficPolicyVersionsRequest"))

(smithy/sdk/shapes:define-output list-traffic-policy-versions-response
                                 common-lisp:nil
                                 ((traffic-policies :target-type
                                   traffic-policies :required common-lisp:t
                                   :member-name "TrafficPolicies")
                                  (is-truncated :target-type page-truncated
                                   :required common-lisp:t :member-name
                                   "IsTruncated")
                                  (traffic-policy-version-marker :target-type
                                   traffic-policy-version-marker :required
                                   common-lisp:t :member-name
                                   "TrafficPolicyVersionMarker")
                                  (max-items :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name "MaxItems"))
                                 (:shape-name
                                  "ListTrafficPolicyVersionsResponse"))

(smithy/sdk/shapes:define-input list-vpcassociation-authorizations-request
                                common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken" :http-query
                                  "nexttoken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults" :http-query "maxresults"))
                                (:shape-name
                                 "ListVPCAssociationAuthorizationsRequest"))

(smithy/sdk/shapes:define-output list-vpcassociation-authorizations-response
                                 common-lisp:nil
                                 ((hosted-zone-id :target-type resource-id
                                   :required common-lisp:t :member-name
                                   "HostedZoneId")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (vpcs :target-type vpcs :required
                                   common-lisp:t :member-name "VPCs"))
                                 (:shape-name
                                  "ListVPCAssociationAuthorizationsResponse"))

(smithy/sdk/shapes:define-type local-zone-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list location-summaries :member location-summary)

(smithy/sdk/shapes:define-structure location-summary common-lisp:nil
                                    ((location-name :target-type
                                      cidr-location-name-default-allowed
                                      :member-name "LocationName"))
                                    (:shape-name "LocationSummary"))

(smithy/sdk/shapes:define-type longitude smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type measure-latency smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nameserver smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-such-change common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchChange") (:error-code 404))

(smithy/sdk/shapes:define-error no-such-cidr-collection-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NoSuchCidrCollectionException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-cidr-location-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NoSuchCidrLocationException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-cloud-watch-logs-log-group
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchCloudWatchLogsLogGroup")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-delegation-set common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchDelegationSet")
                                (:error-code 400))

(smithy/sdk/shapes:define-error no-such-geo-location common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchGeoLocation")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-health-check common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchHealthCheck")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-hosted-zone common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchHostedZone")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-key-signing-key common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchKeySigningKey")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-query-logging-config common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchQueryLoggingConfig")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-traffic-policy common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchTrafficPolicy")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-traffic-policy-instance common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoSuchTrafficPolicyInstance")
                                (:error-code 404))

(smithy/sdk/shapes:define-type nonce smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-authorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotAuthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-type page-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-truncated smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error prior-request-not-complete common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PriorRequestNotComplete")
                                (:error-code 400))

(smithy/sdk/shapes:define-error public-zone-vpcassociation common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PublicZoneVPCAssociation")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure query-logging-config common-lisp:nil
                                    ((id :target-type query-logging-config-id
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (hosted-zone-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "HostedZoneId")
                                     (cloud-watch-logs-log-group-arn
                                      :target-type
                                      cloud-watch-logs-log-group-arn :required
                                      common-lisp:t :member-name
                                      "CloudWatchLogsLogGroupArn"))
                                    (:shape-name "QueryLoggingConfig"))

(smithy/sdk/shapes:define-error query-logging-config-already-exists
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "QueryLoggingConfigAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-type query-logging-config-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list query-logging-configs :member
                               (query-logging-config :xml-name
                                "QueryLoggingConfig"))

(smithy/sdk/shapes:define-type rdata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rrtype
    common-lisp:nil
  (:soa "SOA")
  (:a "A")
  (:txt "TXT")
  (:ns "NS")
  (:cname "CNAME")
  (:mx "MX")
  (:naptr "NAPTR")
  (:ptr "PTR")
  (:srv "SRV")
  (:spf "SPF")
  (:aaaa "AAAA")
  (:caa "CAA")
  (:ds "DS")
  (:tlsa "TLSA")
  (:sshfp "SSHFP")
  (:svcb "SVCB")
  (:https "HTTPS"))

(smithy/sdk/shapes:define-list record-data :member
                               (record-data-entry :xml-name "RecordDataEntry"))

(smithy/sdk/shapes:define-type record-data-entry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-interval smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum resettable-element-name
    common-lisp:nil
  (:fully-qualified-domain-name "FullyQualifiedDomainName")
  (:regions "Regions")
  (:resource-path "ResourcePath")
  (:child-health-checks "ChildHealthChecks"))

(smithy/sdk/shapes:define-list resettable-element-name-list :member
                               (resettable-element-name :xml-name
                                "ResettableElementName"))

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-record common-lisp:nil
                                    ((value :target-type rdata :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ResourceRecord"))

(smithy/sdk/shapes:define-structure resource-record-set common-lisp:nil
                                    ((name :target-type dnsname :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type rrtype :required
                                      common-lisp:t :member-name "Type")
                                     (set-identifier :target-type
                                      resource-record-set-identifier
                                      :member-name "SetIdentifier")
                                     (weight :target-type
                                      resource-record-set-weight :member-name
                                      "Weight")
                                     (region :target-type
                                      resource-record-set-region :member-name
                                      "Region")
                                     (geo-location :target-type geo-location
                                      :member-name "GeoLocation")
                                     (failover :target-type
                                      resource-record-set-failover :member-name
                                      "Failover")
                                     (multi-value-answer :target-type
                                      resource-record-set-multi-value-answer
                                      :member-name "MultiValueAnswer")
                                     (ttl :target-type ttl :member-name "TTL")
                                     (resource-records :target-type
                                      resource-records :member-name
                                      "ResourceRecords")
                                     (alias-target :target-type alias-target
                                      :member-name "AliasTarget")
                                     (health-check-id :target-type
                                      health-check-id :member-name
                                      "HealthCheckId")
                                     (traffic-policy-instance-id :target-type
                                      traffic-policy-instance-id :member-name
                                      "TrafficPolicyInstanceId")
                                     (cidr-routing-config :target-type
                                      cidr-routing-config :member-name
                                      "CidrRoutingConfig")
                                     (geo-proximity-location :target-type
                                      geo-proximity-location :member-name
                                      "GeoProximityLocation"))
                                    (:shape-name "ResourceRecordSet"))

(smithy/sdk/shapes:define-enum resource-record-set-failover
    common-lisp:nil
  (:primary "PRIMARY")
  (:secondary "SECONDARY"))

(smithy/sdk/shapes:define-type resource-record-set-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-record-set-multi-value-answer
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum resource-record-set-region
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:ca-central-1 "ca-central-1")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:eu-central-1 "eu-central-1")
  (:eu-central-2 "eu-central-2")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-southeast-3 "ap-southeast-3")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-northeast-3 "ap-northeast-3")
  (:eu-north-1 "eu-north-1")
  (:sa-east-1 "sa-east-1")
  (:cn-north-1 "cn-north-1")
  (:cn-northwest-1 "cn-northwest-1")
  (:ap-east-1 "ap-east-1")
  (:me-south-1 "me-south-1")
  (:me-central-1 "me-central-1")
  (:ap-south-1 "ap-south-1")
  (:ap-south-2 "ap-south-2")
  (:af-south-1 "af-south-1")
  (:eu-south-1 "eu-south-1")
  (:eu-south-2 "eu-south-2")
  (:ap-southeast-4 "ap-southeast-4")
  (:il-central-1 "il-central-1")
  (:ca-west-1 "ca-west-1")
  (:ap-southeast-5 "ap-southeast-5")
  (:mx-central-1 "mx-central-1")
  (:ap-southeast-7 "ap-southeast-7")
  (:us-gov-east-1 "us-gov-east-1")
  (:us-gov-west-1 "us-gov-west-1")
  (:ap-east-2 "ap-east-2"))

(smithy/sdk/shapes:define-type resource-record-set-weight
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list resource-record-sets :member
                               (resource-record-set :xml-name
                                "ResourceRecordSet"))

(smithy/sdk/shapes:define-list resource-records :member
                               (resource-record :xml-name "ResourceRecord"))

(smithy/sdk/shapes:define-structure resource-tag-set common-lisp:nil
                                    ((resource-type :target-type
                                      tag-resource-type :member-name
                                      "ResourceType")
                                     (resource-id :target-type tag-resource-id
                                      :member-name "ResourceId")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "ResourceTagSet"))

(smithy/sdk/shapes:define-list resource-tag-set-list :member
                               (resource-tag-set :xml-name "ResourceTagSet"))

(smithy/sdk/shapes:define-type resource-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reusable-delegation-set-limit
                                    common-lisp:nil
                                    ((type :target-type
                                      reusable-delegation-set-limit-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (value :target-type limit-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ReusableDelegationSetLimit"))

(smithy/sdk/shapes:define-enum reusable-delegation-set-limit-type
    common-lisp:nil
  (:max-zones-by-reusable-delegation-set
   "MAX_ZONES_BY_REUSABLE_DELEGATION_SET"))

(smithy/sdk/shapes:define-type routing-control-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type serve-signature smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-key-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type signing-key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-key-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-key-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-key-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type signing-key-tag smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum statistic
    common-lisp:nil
  (:average "Average")
  (:sum "Sum")
  (:sample-count "SampleCount")
  (:maximum "Maximum")
  (:minimum "Minimum"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure status-report common-lisp:nil
                                    ((status :target-type status :member-name
                                      "Status")
                                     (checked-time :target-type time-stamp
                                      :member-name "CheckedTime"))
                                    (:shape-name "StatusReport"))

(smithy/sdk/shapes:define-type subnet-mask smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ttl smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member (tag-key :xml-name "Key"))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-type tag-resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-resource-id-list :member
                               (tag-resource-id :xml-name "ResourceId"))

(smithy/sdk/shapes:define-enum tag-resource-type
    common-lisp:nil
  (:healthcheck "healthcheck")
  (:hostedzone "hostedzone"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-dnsanswer-request common-lisp:nil
                                ((hosted-zone-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "HostedZoneId" :http-query "hostedzoneid")
                                 (record-name :target-type dnsname :required
                                  common-lisp:t :member-name "RecordName"
                                  :http-query "recordname")
                                 (record-type :target-type rrtype :required
                                  common-lisp:t :member-name "RecordType"
                                  :http-query "recordtype")
                                 (resolver-ip :target-type ipaddress
                                  :member-name "ResolverIP" :http-query
                                  "resolverip")
                                 (edns0client-subnet-ip :target-type ipaddress
                                  :member-name "EDNS0ClientSubnetIP"
                                  :http-query "edns0clientsubnetip")
                                 (edns0client-subnet-mask :target-type
                                  subnet-mask :member-name
                                  "EDNS0ClientSubnetMask" :http-query
                                  "edns0clientsubnetmask"))
                                (:shape-name "TestDNSAnswerRequest"))

(smithy/sdk/shapes:define-output test-dnsanswer-response common-lisp:nil
                                 ((nameserver :target-type nameserver :required
                                   common-lisp:t :member-name "Nameserver")
                                  (record-name :target-type dnsname :required
                                   common-lisp:t :member-name "RecordName")
                                  (record-type :target-type rrtype :required
                                   common-lisp:t :member-name "RecordType")
                                  (record-data :target-type record-data
                                   :required common-lisp:t :member-name
                                   "RecordData")
                                  (response-code :target-type dnsrcode
                                   :required common-lisp:t :member-name
                                   "ResponseCode")
                                  (protocol :target-type transport-protocol
                                   :required common-lisp:t :member-name
                                   "Protocol"))
                                 (:shape-name "TestDNSAnswerResponse"))

(smithy/sdk/shapes:define-type threshold smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-health-checks common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyHealthChecks")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-hosted-zones common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyHostedZones")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-key-signing-keys common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyKeySigningKeys")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-traffic-policies common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTrafficPolicies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-traffic-policy-instances
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTrafficPolicyInstances")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-traffic-policy-versions-for-current-policy common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "TooManyTrafficPolicyVersionsForCurrentPolicy") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-vpcassociation-authorizations
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "TooManyVPCAssociationAuthorizations")
                                (:error-code 400))

(smithy/sdk/shapes:define-list traffic-policies :member
                               (traffic-policy :xml-name "TrafficPolicy"))

(smithy/sdk/shapes:define-structure traffic-policy common-lisp:nil
                                    ((id :target-type traffic-policy-id
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (version :target-type
                                      traffic-policy-version :required
                                      common-lisp:t :member-name "Version")
                                     (name :target-type traffic-policy-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type rrtype :required
                                      common-lisp:t :member-name "Type")
                                     (document :target-type
                                      traffic-policy-document :required
                                      common-lisp:t :member-name "Document")
                                     (comment :target-type
                                      traffic-policy-comment :member-name
                                      "Comment"))
                                    (:shape-name "TrafficPolicy"))

(smithy/sdk/shapes:define-error traffic-policy-already-exists common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TrafficPolicyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-type traffic-policy-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type traffic-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type traffic-policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error traffic-policy-in-use common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TrafficPolicyInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure traffic-policy-instance common-lisp:nil
                                    ((id :target-type
                                      traffic-policy-instance-id :required
                                      common-lisp:t :member-name "Id")
                                     (hosted-zone-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "HostedZoneId")
                                     (name :target-type dnsname :required
                                      common-lisp:t :member-name "Name")
                                     (ttl :target-type ttl :required
                                      common-lisp:t :member-name "TTL")
                                     (state :target-type
                                      traffic-policy-instance-state :required
                                      common-lisp:t :member-name "State")
                                     (message :target-type message :required
                                      common-lisp:t :member-name "Message")
                                     (traffic-policy-id :target-type
                                      traffic-policy-id :required common-lisp:t
                                      :member-name "TrafficPolicyId")
                                     (traffic-policy-version :target-type
                                      traffic-policy-version :required
                                      common-lisp:t :member-name
                                      "TrafficPolicyVersion")
                                     (traffic-policy-type :target-type rrtype
                                      :required common-lisp:t :member-name
                                      "TrafficPolicyType"))
                                    (:shape-name "TrafficPolicyInstance"))

(smithy/sdk/shapes:define-error traffic-policy-instance-already-exists
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "TrafficPolicyInstanceAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-type traffic-policy-instance-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type traffic-policy-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type traffic-policy-instance-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list traffic-policy-instances :member
                               (traffic-policy-instance :xml-name
                                "TrafficPolicyInstance"))

(smithy/sdk/shapes:define-type traffic-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list traffic-policy-summaries :member
                               (traffic-policy-summary :xml-name
                                "TrafficPolicySummary"))

(smithy/sdk/shapes:define-structure traffic-policy-summary common-lisp:nil
                                    ((id :target-type traffic-policy-id
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (name :target-type traffic-policy-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (type :target-type rrtype :required
                                      common-lisp:t :member-name "Type")
                                     (latest-version :target-type
                                      traffic-policy-version :required
                                      common-lisp:t :member-name
                                      "LatestVersion")
                                     (traffic-policy-count :target-type
                                      traffic-policy-version :required
                                      common-lisp:t :member-name
                                      "TrafficPolicyCount"))
                                    (:shape-name "TrafficPolicySummary"))

(smithy/sdk/shapes:define-type traffic-policy-version
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type traffic-policy-version-marker
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transport-protocol
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-health-check-request common-lisp:nil
                                ((health-check-id :target-type health-check-id
                                  :required common-lisp:t :member-name
                                  "HealthCheckId" :http-label common-lisp:t)
                                 (health-check-version :target-type
                                  health-check-version :member-name
                                  "HealthCheckVersion")
                                 (ipaddress :target-type ipaddress :member-name
                                  "IPAddress")
                                 (port :target-type port :member-name "Port")
                                 (resource-path :target-type resource-path
                                  :member-name "ResourcePath")
                                 (fully-qualified-domain-name :target-type
                                  fully-qualified-domain-name :member-name
                                  "FullyQualifiedDomainName")
                                 (search-string :target-type search-string
                                  :member-name "SearchString")
                                 (failure-threshold :target-type
                                  failure-threshold :member-name
                                  "FailureThreshold")
                                 (inverted :target-type inverted :member-name
                                  "Inverted")
                                 (disabled :target-type disabled :member-name
                                  "Disabled")
                                 (health-threshold :target-type
                                  health-threshold :member-name
                                  "HealthThreshold")
                                 (child-health-checks :target-type
                                  child-health-check-list :member-name
                                  "ChildHealthChecks")
                                 (enable-sni :target-type enable-sni
                                  :member-name "EnableSNI")
                                 (regions :target-type health-check-region-list
                                  :member-name "Regions")
                                 (alarm-identifier :target-type
                                  alarm-identifier :member-name
                                  "AlarmIdentifier")
                                 (insufficient-data-health-status :target-type
                                  insufficient-data-health-status :member-name
                                  "InsufficientDataHealthStatus")
                                 (reset-elements :target-type
                                  resettable-element-name-list :member-name
                                  "ResetElements"))
                                (:shape-name "UpdateHealthCheckRequest"))

(smithy/sdk/shapes:define-output update-health-check-response common-lisp:nil
                                 ((health-check :target-type health-check
                                   :required common-lisp:t :member-name
                                   "HealthCheck"))
                                 (:shape-name "UpdateHealthCheckResponse"))

(smithy/sdk/shapes:define-input update-hosted-zone-comment-request
                                common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (comment :target-type resource-description
                                  :member-name "Comment"))
                                (:shape-name "UpdateHostedZoneCommentRequest"))

(smithy/sdk/shapes:define-output update-hosted-zone-comment-response
                                 common-lisp:nil
                                 ((hosted-zone :target-type hosted-zone
                                   :required common-lisp:t :member-name
                                   "HostedZone"))
                                 (:shape-name
                                  "UpdateHostedZoneCommentResponse"))

(smithy/sdk/shapes:define-input update-traffic-policy-comment-request
                                common-lisp:nil
                                ((id :target-type traffic-policy-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (version :target-type traffic-policy-version
                                  :required common-lisp:t :member-name
                                  "Version" :http-label common-lisp:t)
                                 (comment :target-type traffic-policy-comment
                                  :required common-lisp:t :member-name
                                  "Comment"))
                                (:shape-name
                                 "UpdateTrafficPolicyCommentRequest"))

(smithy/sdk/shapes:define-output update-traffic-policy-comment-response
                                 common-lisp:nil
                                 ((traffic-policy :target-type traffic-policy
                                   :required common-lisp:t :member-name
                                   "TrafficPolicy"))
                                 (:shape-name
                                  "UpdateTrafficPolicyCommentResponse"))

(smithy/sdk/shapes:define-input update-traffic-policy-instance-request
                                common-lisp:nil
                                ((id :target-type traffic-policy-instance-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t)
                                 (ttl :target-type ttl :required common-lisp:t
                                  :member-name "TTL")
                                 (traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId")
                                 (traffic-policy-version :target-type
                                  traffic-policy-version :required
                                  common-lisp:t :member-name
                                  "TrafficPolicyVersion"))
                                (:shape-name
                                 "UpdateTrafficPolicyInstanceRequest"))

(smithy/sdk/shapes:define-output update-traffic-policy-instance-response
                                 common-lisp:nil
                                 ((traffic-policy-instance :target-type
                                   traffic-policy-instance :required
                                   common-lisp:t :member-name
                                   "TrafficPolicyInstance"))
                                 (:shape-name
                                  "UpdateTrafficPolicyInstanceResponse"))

(smithy/sdk/shapes:define-type usage-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure vpc common-lisp:nil
                                    ((vpcregion :target-type vpcregion
                                      :member-name "VPCRegion")
                                     (vpcid :target-type vpcid :member-name
                                      "VPCId"))
                                    (:shape-name "VPC"))

(smithy/sdk/shapes:define-error vpcassociation-authorization-not-found
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "VPCAssociationAuthorizationNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error vpcassociation-not-found common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "VPCAssociationNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-type vpcid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum vpcregion
    common-lisp:nil
  (:us-east-1 "us-east-1")
  (:us-east-2 "us-east-2")
  (:us-west-1 "us-west-1")
  (:us-west-2 "us-west-2")
  (:eu-west-1 "eu-west-1")
  (:eu-west-2 "eu-west-2")
  (:eu-west-3 "eu-west-3")
  (:eu-central-1 "eu-central-1")
  (:eu-central-2 "eu-central-2")
  (:ap-east-1 "ap-east-1")
  (:me-south-1 "me-south-1")
  (:us-gov-west-1 "us-gov-west-1")
  (:us-gov-east-1 "us-gov-east-1")
  (:us-iso-east-1 "us-iso-east-1")
  (:us-iso-west-1 "us-iso-west-1")
  (:us-isob-east-1 "us-isob-east-1")
  (:me-central-1 "me-central-1")
  (:ap-southeast-1 "ap-southeast-1")
  (:ap-southeast-2 "ap-southeast-2")
  (:ap-southeast-3 "ap-southeast-3")
  (:ap-south-1 "ap-south-1")
  (:ap-south-2 "ap-south-2")
  (:ap-northeast-1 "ap-northeast-1")
  (:ap-northeast-2 "ap-northeast-2")
  (:ap-northeast-3 "ap-northeast-3")
  (:eu-north-1 "eu-north-1")
  (:sa-east-1 "sa-east-1")
  (:ca-central-1 "ca-central-1")
  (:cn-north-1 "cn-north-1")
  (:cn-northwest-1 "cn-northwest-1")
  (:af-south-1 "af-south-1")
  (:eu-south-1 "eu-south-1")
  (:eu-south-2 "eu-south-2")
  (:ap-southeast-4 "ap-southeast-4")
  (:il-central-1 "il-central-1")
  (:ca-west-1 "ca-west-1")
  (:ap-southeast-5 "ap-southeast-5")
  (:mx-central-1 "mx-central-1")
  (:us-isof-south-1 "us-isof-south-1")
  (:us-isof-east-1 "us-isof-east-1")
  (:ap-southeast-7 "ap-southeast-7")
  (:ap-east-2 "ap-east-2")
  (:eu-isoe-west-1 "eu-isoe-west-1"))

(smithy/sdk/shapes:define-list vpcs :member (vpc :xml-name "VPC"))

(smithy/sdk/operation:define-operation activate-key-signing-key :shape-name
                                       "ActivateKeySigningKey" :input
                                       activate-key-signing-key-request :output
                                       activate-key-signing-key-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        invalid-key-signing-key-status
                                        invalid-kmsarn invalid-signing-status
                                        no-such-key-signing-key)
                                       :method "POST" :uri
                                       "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/activate"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-vpcwith-hosted-zone
                                       :shape-name "AssociateVPCWithHostedZone"
                                       :input
                                       associate-vpcwith-hosted-zone-request
                                       :output
                                       associate-vpcwith-hosted-zone-response
                                       :errors
                                       (conflicting-domain-exists invalid-input
                                        invalid-vpcid limits-exceeded
                                        no-such-hosted-zone
                                        not-authorized-exception
                                        prior-request-not-complete
                                        public-zone-vpcassociation)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/associatevpc"
                                       :code 200)

(smithy/sdk/operation:define-operation change-cidr-collection :shape-name
                                       "ChangeCidrCollection" :input
                                       change-cidr-collection-request :output
                                       change-cidr-collection-response :errors
                                       (cidr-block-in-use-exception
                                        cidr-collection-version-mismatch-exception
                                        concurrent-modification invalid-input
                                        limits-exceeded
                                        no-such-cidr-collection-exception)
                                       :method "POST" :uri
                                       "/2013-04-01/cidrcollection/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation change-resource-record-sets :shape-name
                                       "ChangeResourceRecordSets" :input
                                       change-resource-record-sets-request
                                       :output
                                       change-resource-record-sets-response
                                       :errors
                                       (invalid-change-batch invalid-input
                                        no-such-health-check
                                        no-such-hosted-zone
                                        prior-request-not-complete)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/rrset"
                                       :code 200)

(smithy/sdk/operation:define-operation change-tags-for-resource :shape-name
                                       "ChangeTagsForResource" :input
                                       change-tags-for-resource-request :output
                                       change-tags-for-resource-response
                                       :errors
                                       (invalid-input no-such-health-check
                                        no-such-hosted-zone
                                        prior-request-not-complete
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/2013-04-01/tags/{ResourceType}/{ResourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-cidr-collection :shape-name
                                       "CreateCidrCollection" :input
                                       create-cidr-collection-request :output
                                       create-cidr-collection-response :errors
                                       (cidr-collection-already-exists-exception
                                        concurrent-modification invalid-input
                                        limits-exceeded)
                                       :method "POST" :uri
                                       "/2013-04-01/cidrcollection" :code 201)

(smithy/sdk/operation:define-operation create-health-check :shape-name
                                       "CreateHealthCheck" :input
                                       create-health-check-request :output
                                       create-health-check-response :errors
                                       (health-check-already-exists
                                        invalid-input too-many-health-checks)
                                       :method "POST" :uri
                                       "/2013-04-01/healthcheck" :code 201)

(smithy/sdk/operation:define-operation create-hosted-zone :shape-name
                                       "CreateHostedZone" :input
                                       create-hosted-zone-request :output
                                       create-hosted-zone-response :errors
                                       (conflicting-domain-exists
                                        delegation-set-not-available
                                        delegation-set-not-reusable
                                        hosted-zone-already-exists
                                        invalid-domain-name invalid-input
                                        invalid-vpcid no-such-delegation-set
                                        too-many-hosted-zones)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone" :code 201)

(smithy/sdk/operation:define-operation create-key-signing-key :shape-name
                                       "CreateKeySigningKey" :input
                                       create-key-signing-key-request :output
                                       create-key-signing-key-response :errors
                                       (concurrent-modification
                                        invalid-argument invalid-input
                                        invalid-key-signing-key-name
                                        invalid-key-signing-key-status
                                        invalid-kmsarn invalid-signing-status
                                        key-signing-key-already-exists
                                        no-such-hosted-zone
                                        too-many-key-signing-keys)
                                       :method "POST" :uri
                                       "/2013-04-01/keysigningkey" :code 201)

(smithy/sdk/operation:define-operation create-query-logging-config :shape-name
                                       "CreateQueryLoggingConfig" :input
                                       create-query-logging-config-request
                                       :output
                                       create-query-logging-config-response
                                       :errors
                                       (concurrent-modification
                                        insufficient-cloud-watch-logs-resource-policy
                                        invalid-input
                                        no-such-cloud-watch-logs-log-group
                                        no-such-hosted-zone
                                        query-logging-config-already-exists)
                                       :method "POST" :uri
                                       "/2013-04-01/queryloggingconfig" :code
                                       201)

(smithy/sdk/operation:define-operation create-reusable-delegation-set
                                       :shape-name
                                       "CreateReusableDelegationSet" :input
                                       create-reusable-delegation-set-request
                                       :output
                                       create-reusable-delegation-set-response
                                       :errors
                                       (delegation-set-already-created
                                        delegation-set-already-reusable
                                        delegation-set-not-available
                                        hosted-zone-not-found invalid-argument
                                        invalid-input limits-exceeded)
                                       :method "POST" :uri
                                       "/2013-04-01/delegationset" :code 201)

(smithy/sdk/operation:define-operation create-traffic-policy :shape-name
                                       "CreateTrafficPolicy" :input
                                       create-traffic-policy-request :output
                                       create-traffic-policy-response :errors
                                       (invalid-input
                                        invalid-traffic-policy-document
                                        too-many-traffic-policies
                                        traffic-policy-already-exists)
                                       :method "POST" :uri
                                       "/2013-04-01/trafficpolicy" :code 201)

(smithy/sdk/operation:define-operation create-traffic-policy-instance
                                       :shape-name
                                       "CreateTrafficPolicyInstance" :input
                                       create-traffic-policy-instance-request
                                       :output
                                       create-traffic-policy-instance-response
                                       :errors
                                       (invalid-input no-such-hosted-zone
                                        no-such-traffic-policy
                                        too-many-traffic-policy-instances
                                        traffic-policy-instance-already-exists)
                                       :method "POST" :uri
                                       "/2013-04-01/trafficpolicyinstance"
                                       :code 201)

(smithy/sdk/operation:define-operation create-traffic-policy-version
                                       :shape-name "CreateTrafficPolicyVersion"
                                       :input
                                       create-traffic-policy-version-request
                                       :output
                                       create-traffic-policy-version-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        invalid-traffic-policy-document
                                        no-such-traffic-policy
                                        too-many-traffic-policy-versions-for-current-policy)
                                       :method "POST" :uri
                                       "/2013-04-01/trafficpolicy/{Id}" :code
                                       201)

(smithy/sdk/operation:define-operation create-vpcassociation-authorization
                                       :shape-name
                                       "CreateVPCAssociationAuthorization"
                                       :input
                                       create-vpcassociation-authorization-request
                                       :output
                                       create-vpcassociation-authorization-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        invalid-vpcid no-such-hosted-zone
                                        too-many-vpcassociation-authorizations)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/authorizevpcassociation"
                                       :code 200)

(smithy/sdk/operation:define-operation deactivate-key-signing-key :shape-name
                                       "DeactivateKeySigningKey" :input
                                       deactivate-key-signing-key-request
                                       :output
                                       deactivate-key-signing-key-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        invalid-key-signing-key-status
                                        invalid-signing-status
                                        key-signing-key-in-parent-dsrecord
                                        key-signing-key-in-use
                                        no-such-key-signing-key)
                                       :method "POST" :uri
                                       "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/deactivate"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cidr-collection :shape-name
                                       "DeleteCidrCollection" :input
                                       delete-cidr-collection-request :output
                                       delete-cidr-collection-response :errors
                                       (cidr-collection-in-use-exception
                                        concurrent-modification invalid-input
                                        no-such-cidr-collection-exception)
                                       :method "DELETE" :uri
                                       "/2013-04-01/cidrcollection/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-health-check :shape-name
                                       "DeleteHealthCheck" :input
                                       delete-health-check-request :output
                                       delete-health-check-response :errors
                                       (health-check-in-use invalid-input
                                        no-such-health-check)
                                       :method "DELETE" :uri
                                       "/2013-04-01/healthcheck/{HealthCheckId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-hosted-zone :shape-name
                                       "DeleteHostedZone" :input
                                       delete-hosted-zone-request :output
                                       delete-hosted-zone-response :errors
                                       (hosted-zone-not-empty
                                        invalid-domain-name invalid-input
                                        no-such-hosted-zone
                                        prior-request-not-complete)
                                       :method "DELETE" :uri
                                       "/2013-04-01/hostedzone/{Id}" :code 200)

(smithy/sdk/operation:define-operation delete-key-signing-key :shape-name
                                       "DeleteKeySigningKey" :input
                                       delete-key-signing-key-request :output
                                       delete-key-signing-key-response :errors
                                       (concurrent-modification invalid-input
                                        invalid-key-signing-key-status
                                        invalid-kmsarn invalid-signing-status
                                        no-such-key-signing-key)
                                       :method "DELETE" :uri
                                       "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-query-logging-config :shape-name
                                       "DeleteQueryLoggingConfig" :input
                                       delete-query-logging-config-request
                                       :output
                                       delete-query-logging-config-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        no-such-query-logging-config)
                                       :method "DELETE" :uri
                                       "/2013-04-01/queryloggingconfig/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-reusable-delegation-set
                                       :shape-name
                                       "DeleteReusableDelegationSet" :input
                                       delete-reusable-delegation-set-request
                                       :output
                                       delete-reusable-delegation-set-response
                                       :errors
                                       (delegation-set-in-use
                                        delegation-set-not-reusable
                                        invalid-input no-such-delegation-set)
                                       :method "DELETE" :uri
                                       "/2013-04-01/delegationset/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-traffic-policy :shape-name
                                       "DeleteTrafficPolicy" :input
                                       delete-traffic-policy-request :output
                                       delete-traffic-policy-response :errors
                                       (concurrent-modification invalid-input
                                        no-such-traffic-policy
                                        traffic-policy-in-use)
                                       :method "DELETE" :uri
                                       "/2013-04-01/trafficpolicy/{Id}/{Version}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-traffic-policy-instance
                                       :shape-name
                                       "DeleteTrafficPolicyInstance" :input
                                       delete-traffic-policy-instance-request
                                       :output
                                       delete-traffic-policy-instance-response
                                       :errors
                                       (invalid-input
                                        no-such-traffic-policy-instance
                                        prior-request-not-complete)
                                       :method "DELETE" :uri
                                       "/2013-04-01/trafficpolicyinstance/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-vpcassociation-authorization
                                       :shape-name
                                       "DeleteVPCAssociationAuthorization"
                                       :input
                                       delete-vpcassociation-authorization-request
                                       :output
                                       delete-vpcassociation-authorization-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        invalid-vpcid no-such-hosted-zone
                                        vpcassociation-authorization-not-found)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/deauthorizevpcassociation"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-hosted-zone-dnssec :shape-name
                                       "DisableHostedZoneDNSSEC" :input
                                       disable-hosted-zone-dnssecrequest
                                       :output
                                       disable-hosted-zone-dnssecresponse
                                       :errors
                                       (concurrent-modification dnssecnot-found
                                        invalid-argument invalid-input
                                        invalid-key-signing-key-status
                                        invalid-kmsarn
                                        key-signing-key-in-parent-dsrecord
                                        no-such-hosted-zone)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/disable-dnssec"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-vpcfrom-hosted-zone
                                       :shape-name
                                       "DisassociateVPCFromHostedZone" :input
                                       disassociate-vpcfrom-hosted-zone-request
                                       :output
                                       disassociate-vpcfrom-hosted-zone-response
                                       :errors
                                       (invalid-input invalid-vpcid
                                        last-vpcassociation no-such-hosted-zone
                                        vpcassociation-not-found)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/disassociatevpc"
                                       :code 200)

(smithy/sdk/operation:define-operation enable-hosted-zone-dnssec :shape-name
                                       "EnableHostedZoneDNSSEC" :input
                                       enable-hosted-zone-dnssecrequest :output
                                       enable-hosted-zone-dnssecresponse
                                       :errors
                                       (concurrent-modification dnssecnot-found
                                        hosted-zone-partially-delegated
                                        invalid-argument invalid-input
                                        invalid-key-signing-key-status
                                        invalid-kmsarn
                                        key-signing-key-with-active-status-not-found
                                        no-such-hosted-zone)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/enable-dnssec"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account-limit :shape-name
                                       "GetAccountLimit" :input
                                       get-account-limit-request :output
                                       get-account-limit-response :errors
                                       (invalid-input) :method "GET" :uri
                                       "/2013-04-01/accountlimit/{Type}" :code
                                       200)

(smithy/sdk/operation:define-operation get-change :shape-name "GetChange"
                                       :input get-change-request :output
                                       get-change-response :errors
                                       (invalid-input no-such-change) :method
                                       "GET" :uri "/2013-04-01/change/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-checker-ip-ranges :shape-name
                                       "GetCheckerIpRanges" :input
                                       get-checker-ip-ranges-request :output
                                       get-checker-ip-ranges-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/2013-04-01/checkeripranges" :code 200)

(smithy/sdk/operation:define-operation get-dnssec :shape-name "GetDNSSEC"
                                       :input get-dnssecrequest :output
                                       get-dnssecresponse :errors
                                       (invalid-argument invalid-input
                                        no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/dnssec"
                                       :code 200)

(smithy/sdk/operation:define-operation get-geo-location :shape-name
                                       "GetGeoLocation" :input
                                       get-geo-location-request :output
                                       get-geo-location-response :errors
                                       (invalid-input no-such-geo-location)
                                       :method "GET" :uri
                                       "/2013-04-01/geolocation" :code 200)

(smithy/sdk/operation:define-operation get-health-check :shape-name
                                       "GetHealthCheck" :input
                                       get-health-check-request :output
                                       get-health-check-response :errors
                                       (incompatible-version invalid-input
                                        no-such-health-check)
                                       :method "GET" :uri
                                       "/2013-04-01/healthcheck/{HealthCheckId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-health-check-count :shape-name
                                       "GetHealthCheckCount" :input
                                       get-health-check-count-request :output
                                       get-health-check-count-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/2013-04-01/healthcheckcount" :code 200)

(smithy/sdk/operation:define-operation get-health-check-last-failure-reason
                                       :shape-name
                                       "GetHealthCheckLastFailureReason" :input
                                       get-health-check-last-failure-reason-request
                                       :output
                                       get-health-check-last-failure-reason-response
                                       :errors
                                       (invalid-input no-such-health-check)
                                       :method "GET" :uri
                                       "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason"
                                       :code 200)

(smithy/sdk/operation:define-operation get-health-check-status :shape-name
                                       "GetHealthCheckStatus" :input
                                       get-health-check-status-request :output
                                       get-health-check-status-response :errors
                                       (invalid-input no-such-health-check)
                                       :method "GET" :uri
                                       "/2013-04-01/healthcheck/{HealthCheckId}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation get-hosted-zone :shape-name
                                       "GetHostedZone" :input
                                       get-hosted-zone-request :output
                                       get-hosted-zone-response :errors
                                       (invalid-input no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzone/{Id}" :code 200)

(smithy/sdk/operation:define-operation get-hosted-zone-count :shape-name
                                       "GetHostedZoneCount" :input
                                       get-hosted-zone-count-request :output
                                       get-hosted-zone-count-response :errors
                                       (invalid-input) :method "GET" :uri
                                       "/2013-04-01/hostedzonecount" :code 200)

(smithy/sdk/operation:define-operation get-hosted-zone-limit :shape-name
                                       "GetHostedZoneLimit" :input
                                       get-hosted-zone-limit-request :output
                                       get-hosted-zone-limit-response :errors
                                       (hosted-zone-not-private invalid-input
                                        no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzonelimit/{HostedZoneId}/{Type}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-query-logging-config :shape-name
                                       "GetQueryLoggingConfig" :input
                                       get-query-logging-config-request :output
                                       get-query-logging-config-response
                                       :errors
                                       (invalid-input
                                        no-such-query-logging-config)
                                       :method "GET" :uri
                                       "/2013-04-01/queryloggingconfig/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-reusable-delegation-set :shape-name
                                       "GetReusableDelegationSet" :input
                                       get-reusable-delegation-set-request
                                       :output
                                       get-reusable-delegation-set-response
                                       :errors
                                       (delegation-set-not-reusable
                                        invalid-input no-such-delegation-set)
                                       :method "GET" :uri
                                       "/2013-04-01/delegationset/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-reusable-delegation-set-limit
                                       :shape-name
                                       "GetReusableDelegationSetLimit" :input
                                       get-reusable-delegation-set-limit-request
                                       :output
                                       get-reusable-delegation-set-limit-response
                                       :errors
                                       (invalid-input no-such-delegation-set)
                                       :method "GET" :uri
                                       "/2013-04-01/reusabledelegationsetlimit/{DelegationSetId}/{Type}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-traffic-policy :shape-name
                                       "GetTrafficPolicy" :input
                                       get-traffic-policy-request :output
                                       get-traffic-policy-response :errors
                                       (invalid-input no-such-traffic-policy)
                                       :method "GET" :uri
                                       "/2013-04-01/trafficpolicy/{Id}/{Version}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-traffic-policy-instance :shape-name
                                       "GetTrafficPolicyInstance" :input
                                       get-traffic-policy-instance-request
                                       :output
                                       get-traffic-policy-instance-response
                                       :errors
                                       (invalid-input
                                        no-such-traffic-policy-instance)
                                       :method "GET" :uri
                                       "/2013-04-01/trafficpolicyinstance/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-traffic-policy-instance-count
                                       :shape-name
                                       "GetTrafficPolicyInstanceCount" :input
                                       get-traffic-policy-instance-count-request
                                       :output
                                       get-traffic-policy-instance-count-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri
                                       "/2013-04-01/trafficpolicyinstancecount"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cidr-blocks :shape-name
                                       "ListCidrBlocks" :input
                                       list-cidr-blocks-request :output
                                       list-cidr-blocks-response :errors
                                       (invalid-input
                                        no-such-cidr-collection-exception
                                        no-such-cidr-location-exception)
                                       :method "GET" :uri
                                       "/2013-04-01/cidrcollection/{CollectionId}/cidrblocks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-cidr-collections :shape-name
                                       "ListCidrCollections" :input
                                       list-cidr-collections-request :output
                                       list-cidr-collections-response :errors
                                       (invalid-input) :method "GET" :uri
                                       "/2013-04-01/cidrcollection" :code 200)

(smithy/sdk/operation:define-operation list-cidr-locations :shape-name
                                       "ListCidrLocations" :input
                                       list-cidr-locations-request :output
                                       list-cidr-locations-response :errors
                                       (invalid-input
                                        no-such-cidr-collection-exception)
                                       :method "GET" :uri
                                       "/2013-04-01/cidrcollection/{CollectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-geo-locations :shape-name
                                       "ListGeoLocations" :input
                                       list-geo-locations-request :output
                                       list-geo-locations-response :errors
                                       (invalid-input) :method "GET" :uri
                                       "/2013-04-01/geolocations" :code 200)

(smithy/sdk/operation:define-operation list-health-checks :shape-name
                                       "ListHealthChecks" :input
                                       list-health-checks-request :output
                                       list-health-checks-response :errors
                                       (incompatible-version invalid-input)
                                       :method "GET" :uri
                                       "/2013-04-01/healthcheck" :code 200)

(smithy/sdk/operation:define-operation list-hosted-zones :shape-name
                                       "ListHostedZones" :input
                                       list-hosted-zones-request :output
                                       list-hosted-zones-response :errors
                                       (delegation-set-not-reusable
                                        invalid-input no-such-delegation-set)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzone" :code 200)

(smithy/sdk/operation:define-operation list-hosted-zones-by-name :shape-name
                                       "ListHostedZonesByName" :input
                                       list-hosted-zones-by-name-request
                                       :output
                                       list-hosted-zones-by-name-response
                                       :errors
                                       (invalid-domain-name invalid-input)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzonesbyname" :code
                                       200)

(smithy/sdk/operation:define-operation list-hosted-zones-by-vpc :shape-name
                                       "ListHostedZonesByVPC" :input
                                       list-hosted-zones-by-vpcrequest :output
                                       list-hosted-zones-by-vpcresponse :errors
                                       (invalid-input invalid-pagination-token)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzonesbyvpc" :code 200)

(smithy/sdk/operation:define-operation list-query-logging-configs :shape-name
                                       "ListQueryLoggingConfigs" :input
                                       list-query-logging-configs-request
                                       :output
                                       list-query-logging-configs-response
                                       :errors
                                       (invalid-input invalid-pagination-token
                                        no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/queryloggingconfig" :code
                                       200)

(smithy/sdk/operation:define-operation list-resource-record-sets :shape-name
                                       "ListResourceRecordSets" :input
                                       list-resource-record-sets-request
                                       :output
                                       list-resource-record-sets-response
                                       :errors
                                       (invalid-input no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/rrset"
                                       :code 200)

(smithy/sdk/operation:define-operation list-reusable-delegation-sets
                                       :shape-name "ListReusableDelegationSets"
                                       :input
                                       list-reusable-delegation-sets-request
                                       :output
                                       list-reusable-delegation-sets-response
                                       :errors (invalid-input) :method "GET"
                                       :uri "/2013-04-01/delegationset" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-input no-such-health-check
                                        no-such-hosted-zone
                                        prior-request-not-complete
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/2013-04-01/tags/{ResourceType}/{ResourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resources :shape-name
                                       "ListTagsForResources" :input
                                       list-tags-for-resources-request :output
                                       list-tags-for-resources-response :errors
                                       (invalid-input no-such-health-check
                                        no-such-hosted-zone
                                        prior-request-not-complete
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/2013-04-01/tags/{ResourceType}" :code
                                       200)

(smithy/sdk/operation:define-operation list-traffic-policies :shape-name
                                       "ListTrafficPolicies" :input
                                       list-traffic-policies-request :output
                                       list-traffic-policies-response :errors
                                       (invalid-input) :method "GET" :uri
                                       "/2013-04-01/trafficpolicies" :code 200)

(smithy/sdk/operation:define-operation list-traffic-policy-instances
                                       :shape-name "ListTrafficPolicyInstances"
                                       :input
                                       list-traffic-policy-instances-request
                                       :output
                                       list-traffic-policy-instances-response
                                       :errors
                                       (invalid-input
                                        no-such-traffic-policy-instance)
                                       :method "GET" :uri
                                       "/2013-04-01/trafficpolicyinstances"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-traffic-policy-instances-by-hosted-zone :shape-name
 "ListTrafficPolicyInstancesByHostedZone" :input
 list-traffic-policy-instances-by-hosted-zone-request :output
 list-traffic-policy-instances-by-hosted-zone-response :errors
 (invalid-input no-such-hosted-zone no-such-traffic-policy-instance) :method
 "GET" :uri "/2013-04-01/trafficpolicyinstances/hostedzone" :code 200)

(smithy/sdk/operation:define-operation list-traffic-policy-instances-by-policy
                                       :shape-name
                                       "ListTrafficPolicyInstancesByPolicy"
                                       :input
                                       list-traffic-policy-instances-by-policy-request
                                       :output
                                       list-traffic-policy-instances-by-policy-response
                                       :errors
                                       (invalid-input no-such-traffic-policy
                                        no-such-traffic-policy-instance)
                                       :method "GET" :uri
                                       "/2013-04-01/trafficpolicyinstances/trafficpolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-traffic-policy-versions :shape-name
                                       "ListTrafficPolicyVersions" :input
                                       list-traffic-policy-versions-request
                                       :output
                                       list-traffic-policy-versions-response
                                       :errors
                                       (invalid-input no-such-traffic-policy)
                                       :method "GET" :uri
                                       "/2013-04-01/trafficpolicies/{Id}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vpcassociation-authorizations
                                       :shape-name
                                       "ListVPCAssociationAuthorizations"
                                       :input
                                       list-vpcassociation-authorizations-request
                                       :output
                                       list-vpcassociation-authorizations-response
                                       :errors
                                       (invalid-input invalid-pagination-token
                                        no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/hostedzone/{HostedZoneId}/authorizevpcassociation"
                                       :code 200)

(smithy/sdk/operation:define-operation test-dnsanswer :shape-name
                                       "TestDNSAnswer" :input
                                       test-dnsanswer-request :output
                                       test-dnsanswer-response :errors
                                       (invalid-input no-such-hosted-zone)
                                       :method "GET" :uri
                                       "/2013-04-01/testdnsanswer" :code 200)

(smithy/sdk/operation:define-operation update-health-check :shape-name
                                       "UpdateHealthCheck" :input
                                       update-health-check-request :output
                                       update-health-check-response :errors
                                       (health-check-version-mismatch
                                        invalid-input no-such-health-check)
                                       :method "POST" :uri
                                       "/2013-04-01/healthcheck/{HealthCheckId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-hosted-zone-comment :shape-name
                                       "UpdateHostedZoneComment" :input
                                       update-hosted-zone-comment-request
                                       :output
                                       update-hosted-zone-comment-response
                                       :errors
                                       (invalid-input no-such-hosted-zone
                                        prior-request-not-complete)
                                       :method "POST" :uri
                                       "/2013-04-01/hostedzone/{Id}" :code 200)

(smithy/sdk/operation:define-operation update-traffic-policy-comment
                                       :shape-name "UpdateTrafficPolicyComment"
                                       :input
                                       update-traffic-policy-comment-request
                                       :output
                                       update-traffic-policy-comment-response
                                       :errors
                                       (concurrent-modification invalid-input
                                        no-such-traffic-policy)
                                       :method "POST" :uri
                                       "/2013-04-01/trafficpolicy/{Id}/{Version}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-traffic-policy-instance
                                       :shape-name
                                       "UpdateTrafficPolicyInstance" :input
                                       update-traffic-policy-instance-request
                                       :output
                                       update-traffic-policy-instance-response
                                       :errors
                                       (conflicting-types invalid-input
                                        no-such-traffic-policy
                                        no-such-traffic-policy-instance
                                        prior-request-not-complete)
                                       :method "POST" :uri
                                       "/2013-04-01/trafficpolicyinstance/{Id}"
                                       :code 200)
