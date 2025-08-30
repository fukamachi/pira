(uiop/package:define-package #:pira/shield (:use)
                             (:export #:awsshield-20160616
                              #:access-denied-exception
                              #:access-denied-for-dependency-exception
                              #:application-layer-automatic-response-configuration
                              #:application-layer-automatic-response-status
                              #:associate-drtlog-bucket #:associate-drtrole
                              #:associate-health-check
                              #:associate-proactive-engagement-details
                              #:attack-detail #:attack-id #:attack-layer
                              #:attack-properties #:attack-property
                              #:attack-property-identifier
                              #:attack-statistics-data-item
                              #:attack-statistics-data-list #:attack-summaries
                              #:attack-summary #:attack-timestamp
                              #:attack-vector-description
                              #:attack-vector-description-list #:attack-volume
                              #:attack-volume-statistics #:auto-renew
                              #:block-action #:contact-notes #:contributor
                              #:count-action #:create-protection
                              #:create-protection-group #:create-subscription
                              #:delete-protection #:delete-protection-group
                              #:delete-subscription #:describe-attack
                              #:describe-attack-statistics #:describe-drtaccess
                              #:describe-emergency-contact-settings
                              #:describe-protection #:describe-protection-group
                              #:describe-subscription
                              #:disable-application-layer-automatic-response
                              #:disable-proactive-engagement
                              #:disassociate-drtlog-bucket
                              #:disassociate-drtrole
                              #:disassociate-health-check #:double
                              #:duration-in-seconds #:email-address
                              #:emergency-contact #:emergency-contact-list
                              #:enable-application-layer-automatic-response
                              #:enable-proactive-engagement
                              #:get-subscription-state #:health-check-arn
                              #:health-check-id #:health-check-ids
                              #:inclusion-protection-filters
                              #:inclusion-protection-group-filters #:integer
                              #:internal-error-exception
                              #:invalid-operation-exception
                              #:invalid-pagination-token-exception
                              #:invalid-parameter-exception
                              #:invalid-resource-exception #:limit
                              #:limit-number #:limit-type #:limits
                              #:limits-exceeded-exception #:list-attacks
                              #:list-protection-groups #:list-protections
                              #:list-resources-in-protection-group
                              #:list-tags-for-resource
                              #:locked-subscription-exception #:log-bucket
                              #:log-bucket-list #:long #:max-results
                              #:mitigation #:mitigation-list
                              #:no-associated-role-exception
                              #:optimistic-lock-exception #:phone-number
                              #:proactive-engagement-status
                              #:protected-resource-type
                              #:protected-resource-type-filters #:protection
                              #:protection-group #:protection-group-aggregation
                              #:protection-group-aggregation-filters
                              #:protection-group-arbitrary-pattern-limits
                              #:protection-group-id
                              #:protection-group-id-filters
                              #:protection-group-limits
                              #:protection-group-members
                              #:protection-group-pattern
                              #:protection-group-pattern-filters
                              #:protection-group-pattern-type-limits
                              #:protection-groups #:protection-id
                              #:protection-limits #:protection-name
                              #:protection-name-filters #:protections
                              #:resource-already-exists-exception
                              #:resource-arn #:resource-arn-filter-list
                              #:resource-arn-filters #:resource-arn-list
                              #:resource-not-found-exception #:response-action
                              #:role-arn #:string #:sub-resource-summary
                              #:sub-resource-summary-list #:sub-resource-type
                              #:subscription #:subscription-limits
                              #:subscription-state #:summarized-attack-vector
                              #:summarized-attack-vector-list
                              #:summarized-counter #:summarized-counter-list
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:time-range
                              #:timestamp #:token #:top-contributors #:unit
                              #:untag-resource
                              #:update-application-layer-automatic-response
                              #:update-emergency-contact-settings
                              #:update-protection-group #:update-subscription
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:error-message
                              #:shield-error))
(common-lisp:in-package #:pira/shield)

(common-lisp:define-condition shield-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsshield-20160616 :shape-name
                                   "AWSShield_20160616" :version "2016-06-02"
                                   :title "AWS Shield" :operations
                                   '(associate-drtlog-bucket associate-drtrole
                                     associate-health-check
                                     associate-proactive-engagement-details
                                     create-protection create-protection-group
                                     create-subscription delete-protection
                                     delete-protection-group
                                     delete-subscription describe-attack
                                     describe-attack-statistics
                                     describe-drtaccess
                                     describe-emergency-contact-settings
                                     describe-protection
                                     describe-protection-group
                                     describe-subscription
                                     disable-application-layer-automatic-response
                                     disable-proactive-engagement
                                     disassociate-drtlog-bucket
                                     disassociate-drtrole
                                     disassociate-health-check
                                     enable-application-layer-automatic-response
                                     enable-proactive-engagement
                                     get-subscription-state list-attacks
                                     list-protection-groups list-protections
                                     list-resources-in-protection-group
                                     list-tags-for-resource tag-resource
                                     untag-resource
                                     update-application-layer-automatic-response
                                     update-emergency-contact-settings
                                     update-protection-group
                                     update-subscription)
                                   :xml-namespace
                                   '(:uri
                                     "http://ddp.amazonaws.com/doc/2016-06-02/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Shield")
                                      ("arnNamespace" . "shield")
                                      ("cloudFormationName" . "Shield")
                                      ("cloudTrailEventSource"
                                       . "shield.amazonaws.com")
                                      ("endpointPrefix" . "shield"))
                                     ("aws.auth#sigv4" ("name" . "shield"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-error access-denied-for-dependency-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "AccessDeniedForDependencyException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-structure
 application-layer-automatic-response-configuration common-lisp:nil
 ((status :target-type application-layer-automatic-response-status :required
   common-lisp:t :member-name "Status")
  (action :target-type response-action :required common-lisp:t :member-name
   "Action"))
 (:shape-name "ApplicationLayerAutomaticResponseConfiguration"))

(smithy/sdk/shapes:define-enum application-layer-automatic-response-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-input associate-drtlog-bucket-request common-lisp:nil
                                ((log-bucket :target-type log-bucket :required
                                  common-lisp:t :member-name "LogBucket"))
                                (:shape-name "AssociateDRTLogBucketRequest"))

(smithy/sdk/shapes:define-output associate-drtlog-bucket-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateDRTLogBucketResponse"))

(smithy/sdk/shapes:define-input associate-drtrole-request common-lisp:nil
                                ((role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn"))
                                (:shape-name "AssociateDRTRoleRequest"))

(smithy/sdk/shapes:define-output associate-drtrole-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateDRTRoleResponse"))

(smithy/sdk/shapes:define-input associate-health-check-request common-lisp:nil
                                ((protection-id :target-type protection-id
                                  :required common-lisp:t :member-name
                                  "ProtectionId")
                                 (health-check-arn :target-type
                                  health-check-arn :required common-lisp:t
                                  :member-name "HealthCheckArn"))
                                (:shape-name "AssociateHealthCheckRequest"))

(smithy/sdk/shapes:define-output associate-health-check-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateHealthCheckResponse"))

(smithy/sdk/shapes:define-input associate-proactive-engagement-details-request
                                common-lisp:nil
                                ((emergency-contact-list :target-type
                                  emergency-contact-list :required
                                  common-lisp:t :member-name
                                  "EmergencyContactList"))
                                (:shape-name
                                 "AssociateProactiveEngagementDetailsRequest"))

(smithy/sdk/shapes:define-output
 associate-proactive-engagement-details-response common-lisp:nil
 common-lisp:nil (:shape-name "AssociateProactiveEngagementDetailsResponse"))

(smithy/sdk/shapes:define-structure attack-detail common-lisp:nil
                                    ((attack-id :target-type attack-id
                                      :member-name "AttackId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (sub-resources :target-type
                                      sub-resource-summary-list :member-name
                                      "SubResources")
                                     (start-time :target-type attack-timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type attack-timestamp
                                      :member-name "EndTime")
                                     (attack-counters :target-type
                                      summarized-counter-list :member-name
                                      "AttackCounters")
                                     (attack-properties :target-type
                                      attack-properties :member-name
                                      "AttackProperties")
                                     (mitigations :target-type mitigation-list
                                      :member-name "Mitigations"))
                                    (:shape-name "AttackDetail"))

(smithy/sdk/shapes:define-type attack-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attack-layer
    common-lisp:nil
  (:network "NETWORK")
  (:application "APPLICATION"))

(smithy/sdk/shapes:define-list attack-properties :member attack-property)

(smithy/sdk/shapes:define-structure attack-property common-lisp:nil
                                    ((attack-layer :target-type attack-layer
                                      :member-name "AttackLayer")
                                     (attack-property-identifier :target-type
                                      attack-property-identifier :member-name
                                      "AttackPropertyIdentifier")
                                     (top-contributors :target-type
                                      top-contributors :member-name
                                      "TopContributors")
                                     (unit :target-type unit :member-name
                                      "Unit")
                                     (total :target-type long :member-name
                                      "Total"))
                                    (:shape-name "AttackProperty"))

(smithy/sdk/shapes:define-enum attack-property-identifier
    common-lisp:nil
  (:destination-url "DESTINATION_URL")
  (:referrer "REFERRER")
  (:source-asn "SOURCE_ASN")
  (:source-country "SOURCE_COUNTRY")
  (:source-ip-address "SOURCE_IP_ADDRESS")
  (:source-user-agent "SOURCE_USER_AGENT")
  (:wordpress-pingback-reflector "WORDPRESS_PINGBACK_REFLECTOR")
  (:wordpress-pingback-source "WORDPRESS_PINGBACK_SOURCE"))

(smithy/sdk/shapes:define-structure attack-statistics-data-item common-lisp:nil
                                    ((attack-volume :target-type attack-volume
                                      :member-name "AttackVolume")
                                     (attack-count :target-type long :required
                                      common-lisp:t :member-name
                                      "AttackCount"))
                                    (:shape-name "AttackStatisticsDataItem"))

(smithy/sdk/shapes:define-list attack-statistics-data-list :member
                               attack-statistics-data-item)

(smithy/sdk/shapes:define-list attack-summaries :member attack-summary)

(smithy/sdk/shapes:define-structure attack-summary common-lisp:nil
                                    ((attack-id :target-type string
                                      :member-name "AttackId")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn")
                                     (start-time :target-type attack-timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type attack-timestamp
                                      :member-name "EndTime")
                                     (attack-vectors :target-type
                                      attack-vector-description-list
                                      :member-name "AttackVectors"))
                                    (:shape-name "AttackSummary"))

(smithy/sdk/shapes:define-type attack-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure attack-vector-description common-lisp:nil
                                    ((vector-type :target-type string :required
                                      common-lisp:t :member-name "VectorType"))
                                    (:shape-name "AttackVectorDescription"))

(smithy/sdk/shapes:define-list attack-vector-description-list :member
                               attack-vector-description)

(smithy/sdk/shapes:define-structure attack-volume common-lisp:nil
                                    ((bits-per-second :target-type
                                      attack-volume-statistics :member-name
                                      "BitsPerSecond")
                                     (packets-per-second :target-type
                                      attack-volume-statistics :member-name
                                      "PacketsPerSecond")
                                     (requests-per-second :target-type
                                      attack-volume-statistics :member-name
                                      "RequestsPerSecond"))
                                    (:shape-name "AttackVolume"))

(smithy/sdk/shapes:define-structure attack-volume-statistics common-lisp:nil
                                    ((max :target-type double :required
                                      common-lisp:t :member-name "Max"))
                                    (:shape-name "AttackVolumeStatistics"))

(smithy/sdk/shapes:define-enum auto-renew
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure block-action common-lisp:nil
                                    common-lisp:nil (:shape-name "BlockAction"))

(smithy/sdk/shapes:define-type contact-notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure contributor common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (value :target-type long :member-name
                                      "Value"))
                                    (:shape-name "Contributor"))

(smithy/sdk/shapes:define-structure count-action common-lisp:nil
                                    common-lisp:nil (:shape-name "CountAction"))

(smithy/sdk/shapes:define-input create-protection-group-request common-lisp:nil
                                ((protection-group-id :target-type
                                  protection-group-id :required common-lisp:t
                                  :member-name "ProtectionGroupId")
                                 (aggregation :target-type
                                  protection-group-aggregation :required
                                  common-lisp:t :member-name "Aggregation")
                                 (pattern :target-type protection-group-pattern
                                  :required common-lisp:t :member-name
                                  "Pattern")
                                 (resource-type :target-type
                                  protected-resource-type :member-name
                                  "ResourceType")
                                 (members :target-type protection-group-members
                                  :member-name "Members")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateProtectionGroupRequest"))

(smithy/sdk/shapes:define-output create-protection-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateProtectionGroupResponse"))

(smithy/sdk/shapes:define-input create-protection-request common-lisp:nil
                                ((name :target-type protection-name :required
                                  common-lisp:t :member-name "Name")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateProtectionRequest"))

(smithy/sdk/shapes:define-output create-protection-response common-lisp:nil
                                 ((protection-id :target-type protection-id
                                   :member-name "ProtectionId"))
                                 (:shape-name "CreateProtectionResponse"))

(smithy/sdk/shapes:define-input create-subscription-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "CreateSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-subscription-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateSubscriptionResponse"))

(smithy/sdk/shapes:define-input delete-protection-group-request common-lisp:nil
                                ((protection-group-id :target-type
                                  protection-group-id :required common-lisp:t
                                  :member-name "ProtectionGroupId"))
                                (:shape-name "DeleteProtectionGroupRequest"))

(smithy/sdk/shapes:define-output delete-protection-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteProtectionGroupResponse"))

(smithy/sdk/shapes:define-input delete-protection-request common-lisp:nil
                                ((protection-id :target-type protection-id
                                  :required common-lisp:t :member-name
                                  "ProtectionId"))
                                (:shape-name "DeleteProtectionRequest"))

(smithy/sdk/shapes:define-output delete-protection-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProtectionResponse"))

(smithy/sdk/shapes:define-input delete-subscription-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DeleteSubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-subscription-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSubscriptionResponse"))

(smithy/sdk/shapes:define-input describe-attack-request common-lisp:nil
                                ((attack-id :target-type attack-id :required
                                  common-lisp:t :member-name "AttackId"))
                                (:shape-name "DescribeAttackRequest"))

(smithy/sdk/shapes:define-output describe-attack-response common-lisp:nil
                                 ((attack :target-type attack-detail
                                   :member-name "Attack"))
                                 (:shape-name "DescribeAttackResponse"))

(smithy/sdk/shapes:define-input describe-attack-statistics-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "DescribeAttackStatisticsRequest"))

(smithy/sdk/shapes:define-output describe-attack-statistics-response
                                 common-lisp:nil
                                 ((time-range :target-type time-range :required
                                   common-lisp:t :member-name "TimeRange")
                                  (data-items :target-type
                                   attack-statistics-data-list :required
                                   common-lisp:t :member-name "DataItems"))
                                 (:shape-name
                                  "DescribeAttackStatisticsResponse"))

(smithy/sdk/shapes:define-input describe-drtaccess-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeDRTAccessRequest"))

(smithy/sdk/shapes:define-output describe-drtaccess-response common-lisp:nil
                                 ((role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (log-bucket-list :target-type log-bucket-list
                                   :member-name "LogBucketList"))
                                 (:shape-name "DescribeDRTAccessResponse"))

(smithy/sdk/shapes:define-input describe-emergency-contact-settings-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeEmergencyContactSettingsRequest"))

(smithy/sdk/shapes:define-output describe-emergency-contact-settings-response
                                 common-lisp:nil
                                 ((emergency-contact-list :target-type
                                   emergency-contact-list :member-name
                                   "EmergencyContactList"))
                                 (:shape-name
                                  "DescribeEmergencyContactSettingsResponse"))

(smithy/sdk/shapes:define-input describe-protection-group-request
                                common-lisp:nil
                                ((protection-group-id :target-type
                                  protection-group-id :required common-lisp:t
                                  :member-name "ProtectionGroupId"))
                                (:shape-name "DescribeProtectionGroupRequest"))

(smithy/sdk/shapes:define-output describe-protection-group-response
                                 common-lisp:nil
                                 ((protection-group :target-type
                                   protection-group :required common-lisp:t
                                   :member-name "ProtectionGroup"))
                                 (:shape-name
                                  "DescribeProtectionGroupResponse"))

(smithy/sdk/shapes:define-input describe-protection-request common-lisp:nil
                                ((protection-id :target-type protection-id
                                  :member-name "ProtectionId")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceArn"))
                                (:shape-name "DescribeProtectionRequest"))

(smithy/sdk/shapes:define-output describe-protection-response common-lisp:nil
                                 ((protection :target-type protection
                                   :member-name "Protection"))
                                 (:shape-name "DescribeProtectionResponse"))

(smithy/sdk/shapes:define-input describe-subscription-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeSubscriptionRequest"))

(smithy/sdk/shapes:define-output describe-subscription-response common-lisp:nil
                                 ((subscription :target-type subscription
                                   :member-name "Subscription"))
                                 (:shape-name "DescribeSubscriptionResponse"))

(smithy/sdk/shapes:define-input
 disable-application-layer-automatic-response-request common-lisp:nil
 ((resource-arn :target-type resource-arn :required common-lisp:t :member-name
   "ResourceArn"))
 (:shape-name "DisableApplicationLayerAutomaticResponseRequest"))

(smithy/sdk/shapes:define-output
 disable-application-layer-automatic-response-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisableApplicationLayerAutomaticResponseResponse"))

(smithy/sdk/shapes:define-input disable-proactive-engagement-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisableProactiveEngagementRequest"))

(smithy/sdk/shapes:define-output disable-proactive-engagement-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisableProactiveEngagementResponse"))

(smithy/sdk/shapes:define-input disassociate-drtlog-bucket-request
                                common-lisp:nil
                                ((log-bucket :target-type log-bucket :required
                                  common-lisp:t :member-name "LogBucket"))
                                (:shape-name "DisassociateDRTLogBucketRequest"))

(smithy/sdk/shapes:define-output disassociate-drtlog-bucket-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateDRTLogBucketResponse"))

(smithy/sdk/shapes:define-input disassociate-drtrole-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DisassociateDRTRoleRequest"))

(smithy/sdk/shapes:define-output disassociate-drtrole-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateDRTRoleResponse"))

(smithy/sdk/shapes:define-input disassociate-health-check-request
                                common-lisp:nil
                                ((protection-id :target-type protection-id
                                  :required common-lisp:t :member-name
                                  "ProtectionId")
                                 (health-check-arn :target-type
                                  health-check-arn :required common-lisp:t
                                  :member-name "HealthCheckArn"))
                                (:shape-name "DisassociateHealthCheckRequest"))

(smithy/sdk/shapes:define-output disassociate-health-check-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateHealthCheckResponse"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type duration-in-seconds smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure emergency-contact common-lisp:nil
                                    ((email-address :target-type email-address
                                      :required common-lisp:t :member-name
                                      "EmailAddress")
                                     (phone-number :target-type phone-number
                                      :member-name "PhoneNumber")
                                     (contact-notes :target-type contact-notes
                                      :member-name "ContactNotes"))
                                    (:shape-name "EmergencyContact"))

(smithy/sdk/shapes:define-list emergency-contact-list :member emergency-contact)

(smithy/sdk/shapes:define-input
 enable-application-layer-automatic-response-request common-lisp:nil
 ((resource-arn :target-type resource-arn :required common-lisp:t :member-name
   "ResourceArn")
  (action :target-type response-action :required common-lisp:t :member-name
   "Action"))
 (:shape-name "EnableApplicationLayerAutomaticResponseRequest"))

(smithy/sdk/shapes:define-output
 enable-application-layer-automatic-response-response common-lisp:nil
 common-lisp:nil
 (:shape-name "EnableApplicationLayerAutomaticResponseResponse"))

(smithy/sdk/shapes:define-input enable-proactive-engagement-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "EnableProactiveEngagementRequest"))

(smithy/sdk/shapes:define-output enable-proactive-engagement-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "EnableProactiveEngagementResponse"))

(smithy/sdk/shapes:define-input get-subscription-state-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetSubscriptionStateRequest"))

(smithy/sdk/shapes:define-output get-subscription-state-response
                                 common-lisp:nil
                                 ((subscription-state :target-type
                                   subscription-state :required common-lisp:t
                                   :member-name "SubscriptionState"))
                                 (:shape-name "GetSubscriptionStateResponse"))

(smithy/sdk/shapes:define-type health-check-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list health-check-ids :member health-check-id)

(smithy/sdk/shapes:define-structure inclusion-protection-filters
                                    common-lisp:nil
                                    ((resource-arns :target-type
                                      resource-arn-filters :member-name
                                      "ResourceArns")
                                     (protection-names :target-type
                                      protection-name-filters :member-name
                                      "ProtectionNames")
                                     (resource-types :target-type
                                      protected-resource-type-filters
                                      :member-name "ResourceTypes"))
                                    (:shape-name "InclusionProtectionFilters"))

(smithy/sdk/shapes:define-structure inclusion-protection-group-filters
                                    common-lisp:nil
                                    ((protection-group-ids :target-type
                                      protection-group-id-filters :member-name
                                      "ProtectionGroupIds")
                                     (patterns :target-type
                                      protection-group-pattern-filters
                                      :member-name "Patterns")
                                     (resource-types :target-type
                                      protected-resource-type-filters
                                      :member-name "ResourceTypes")
                                     (aggregations :target-type
                                      protection-group-aggregation-filters
                                      :member-name "Aggregations"))
                                    (:shape-name
                                     "InclusionProtectionGroupFilters"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500) (:base-class shield-error))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-error invalid-pagination-token-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidPaginationTokenException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "fields"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-error invalid-resource-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidResourceException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-structure limit common-lisp:nil
                                    ((type :target-type string :member-name
                                      "Type")
                                     (max :target-type long :member-name
                                      "Max"))
                                    (:shape-name "Limit"))

(smithy/sdk/shapes:define-type limit-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type limit-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list limits :member limit)

(smithy/sdk/shapes:define-error limits-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (type :target-type limit-type :member-name
                                  "Type")
                                 (limit :target-type limit-number :member-name
                                  "Limit"))
                                (:shape-name "LimitsExceededException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-input list-attacks-request common-lisp:nil
                                ((resource-arns :target-type
                                  resource-arn-filter-list :member-name
                                  "ResourceArns")
                                 (start-time :target-type time-range
                                  :member-name "StartTime")
                                 (end-time :target-type time-range :member-name
                                  "EndTime")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListAttacksRequest"))

(smithy/sdk/shapes:define-output list-attacks-response common-lisp:nil
                                 ((attack-summaries :target-type
                                   attack-summaries :member-name
                                   "AttackSummaries")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListAttacksResponse"))

(smithy/sdk/shapes:define-input list-protection-groups-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (inclusion-filters :target-type
                                  inclusion-protection-group-filters
                                  :member-name "InclusionFilters"))
                                (:shape-name "ListProtectionGroupsRequest"))

(smithy/sdk/shapes:define-output list-protection-groups-response
                                 common-lisp:nil
                                 ((protection-groups :target-type
                                   protection-groups :required common-lisp:t
                                   :member-name "ProtectionGroups")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListProtectionGroupsResponse"))

(smithy/sdk/shapes:define-input list-protections-request common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (inclusion-filters :target-type
                                  inclusion-protection-filters :member-name
                                  "InclusionFilters"))
                                (:shape-name "ListProtectionsRequest"))

(smithy/sdk/shapes:define-output list-protections-response common-lisp:nil
                                 ((protections :target-type protections
                                   :member-name "Protections")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListProtectionsResponse"))

(smithy/sdk/shapes:define-input list-resources-in-protection-group-request
                                common-lisp:nil
                                ((protection-group-id :target-type
                                  protection-group-id :required common-lisp:t
                                  :member-name "ProtectionGroupId")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListResourcesInProtectionGroupRequest"))

(smithy/sdk/shapes:define-output list-resources-in-protection-group-response
                                 common-lisp:nil
                                 ((resource-arns :target-type resource-arn-list
                                   :required common-lisp:t :member-name
                                   "ResourceArns")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListResourcesInProtectionGroupResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-error locked-subscription-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LockedSubscriptionException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-type log-bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-bucket-list :member log-bucket)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure mitigation common-lisp:nil
                                    ((mitigation-name :target-type string
                                      :member-name "MitigationName"))
                                    (:shape-name "Mitigation"))

(smithy/sdk/shapes:define-list mitigation-list :member mitigation)

(smithy/sdk/shapes:define-error no-associated-role-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NoAssociatedRoleException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-error optimistic-lock-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "OptimisticLockException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum proactive-engagement-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-enum protected-resource-type
    common-lisp:nil
  (:cloudfront-distribution "CLOUDFRONT_DISTRIBUTION")
  (:route-53-hosted-zone "ROUTE_53_HOSTED_ZONE")
  (:elastic-ip-allocation "ELASTIC_IP_ALLOCATION")
  (:classic-load-balancer "CLASSIC_LOAD_BALANCER")
  (:application-load-balancer "APPLICATION_LOAD_BALANCER")
  (:global-accelerator "GLOBAL_ACCELERATOR"))

(smithy/sdk/shapes:define-list protected-resource-type-filters :member
                               protected-resource-type)

(smithy/sdk/shapes:define-structure protection common-lisp:nil
                                    ((id :target-type protection-id
                                      :member-name "Id")
                                     (name :target-type protection-name
                                      :member-name "Name")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (health-check-ids :target-type
                                      health-check-ids :member-name
                                      "HealthCheckIds")
                                     (protection-arn :target-type resource-arn
                                      :member-name "ProtectionArn")
                                     (application-layer-automatic-response-configuration
                                      :target-type
                                      application-layer-automatic-response-configuration
                                      :member-name
                                      "ApplicationLayerAutomaticResponseConfiguration"))
                                    (:shape-name "Protection"))

(smithy/sdk/shapes:define-structure protection-group common-lisp:nil
                                    ((protection-group-id :target-type
                                      protection-group-id :required
                                      common-lisp:t :member-name
                                      "ProtectionGroupId")
                                     (aggregation :target-type
                                      protection-group-aggregation :required
                                      common-lisp:t :member-name "Aggregation")
                                     (pattern :target-type
                                      protection-group-pattern :required
                                      common-lisp:t :member-name "Pattern")
                                     (resource-type :target-type
                                      protected-resource-type :member-name
                                      "ResourceType")
                                     (members :target-type
                                      protection-group-members :required
                                      common-lisp:t :member-name "Members")
                                     (protection-group-arn :target-type
                                      resource-arn :member-name
                                      "ProtectionGroupArn"))
                                    (:shape-name "ProtectionGroup"))

(smithy/sdk/shapes:define-enum protection-group-aggregation
    common-lisp:nil
  (:sum "SUM")
  (:mean "MEAN")
  (:max "MAX"))

(smithy/sdk/shapes:define-list protection-group-aggregation-filters :member
                               protection-group-aggregation)

(smithy/sdk/shapes:define-structure protection-group-arbitrary-pattern-limits
                                    common-lisp:nil
                                    ((max-members :target-type long :required
                                      common-lisp:t :member-name "MaxMembers"))
                                    (:shape-name
                                     "ProtectionGroupArbitraryPatternLimits"))

(smithy/sdk/shapes:define-type protection-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list protection-group-id-filters :member
                               protection-group-id)

(smithy/sdk/shapes:define-structure protection-group-limits common-lisp:nil
                                    ((max-protection-groups :target-type long
                                      :required common-lisp:t :member-name
                                      "MaxProtectionGroups")
                                     (pattern-type-limits :target-type
                                      protection-group-pattern-type-limits
                                      :required common-lisp:t :member-name
                                      "PatternTypeLimits"))
                                    (:shape-name "ProtectionGroupLimits"))

(smithy/sdk/shapes:define-list protection-group-members :member resource-arn)

(smithy/sdk/shapes:define-enum protection-group-pattern
    common-lisp:nil
  (:all "ALL")
  (:arbitrary "ARBITRARY")
  (:by-resource-type "BY_RESOURCE_TYPE"))

(smithy/sdk/shapes:define-list protection-group-pattern-filters :member
                               protection-group-pattern)

(smithy/sdk/shapes:define-structure protection-group-pattern-type-limits
                                    common-lisp:nil
                                    ((arbitrary-pattern-limits :target-type
                                      protection-group-arbitrary-pattern-limits
                                      :required common-lisp:t :member-name
                                      "ArbitraryPatternLimits"))
                                    (:shape-name
                                     "ProtectionGroupPatternTypeLimits"))

(smithy/sdk/shapes:define-list protection-groups :member protection-group)

(smithy/sdk/shapes:define-type protection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure protection-limits common-lisp:nil
                                    ((protected-resource-type-limits
                                      :target-type limits :required
                                      common-lisp:t :member-name
                                      "ProtectedResourceTypeLimits"))
                                    (:shape-name "ProtectionLimits"))

(smithy/sdk/shapes:define-type protection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list protection-name-filters :member protection-name)

(smithy/sdk/shapes:define-list protections :member protection)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-type :target-type string
                                  :member-name "resourceType"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arn-filter-list :member resource-arn)

(smithy/sdk/shapes:define-list resource-arn-filters :member resource-arn)

(smithy/sdk/shapes:define-list resource-arn-list :member resource-arn)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (resource-type :target-type string
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400) (:base-class shield-error))

(smithy/sdk/shapes:define-structure response-action common-lisp:nil
                                    ((block :target-type block-action
                                      :member-name "Block")
                                     (count :target-type count-action
                                      :member-name "Count"))
                                    (:shape-name "ResponseAction"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sub-resource-summary common-lisp:nil
                                    ((type :target-type sub-resource-type
                                      :member-name "Type")
                                     (id :target-type string :member-name "Id")
                                     (attack-vectors :target-type
                                      summarized-attack-vector-list
                                      :member-name "AttackVectors")
                                     (counters :target-type
                                      summarized-counter-list :member-name
                                      "Counters"))
                                    (:shape-name "SubResourceSummary"))

(smithy/sdk/shapes:define-list sub-resource-summary-list :member
                               sub-resource-summary)

(smithy/sdk/shapes:define-enum sub-resource-type
    common-lisp:nil
  (:ip "IP")
  (:url "URL"))

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (end-time :target-type timestamp
                                      :member-name "EndTime")
                                     (time-commitment-in-seconds :target-type
                                      duration-in-seconds :member-name
                                      "TimeCommitmentInSeconds")
                                     (auto-renew :target-type auto-renew
                                      :member-name "AutoRenew")
                                     (limits :target-type limits :member-name
                                      "Limits")
                                     (proactive-engagement-status :target-type
                                      proactive-engagement-status :member-name
                                      "ProactiveEngagementStatus")
                                     (subscription-limits :target-type
                                      subscription-limits :required
                                      common-lisp:t :member-name
                                      "SubscriptionLimits")
                                     (subscription-arn :target-type
                                      resource-arn :member-name
                                      "SubscriptionArn"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-structure subscription-limits common-lisp:nil
                                    ((protection-limits :target-type
                                      protection-limits :required common-lisp:t
                                      :member-name "ProtectionLimits")
                                     (protection-group-limits :target-type
                                      protection-group-limits :required
                                      common-lisp:t :member-name
                                      "ProtectionGroupLimits"))
                                    (:shape-name "SubscriptionLimits"))

(smithy/sdk/shapes:define-enum subscription-state
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure summarized-attack-vector common-lisp:nil
                                    ((vector-type :target-type string :required
                                      common-lisp:t :member-name "VectorType")
                                     (vector-counters :target-type
                                      summarized-counter-list :member-name
                                      "VectorCounters"))
                                    (:shape-name "SummarizedAttackVector"))

(smithy/sdk/shapes:define-list summarized-attack-vector-list :member
                               summarized-attack-vector)

(smithy/sdk/shapes:define-structure summarized-counter common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (max :target-type double :member-name
                                      "Max")
                                     (average :target-type double :member-name
                                      "Average")
                                     (sum :target-type double :member-name
                                      "Sum")
                                     (n :target-type integer :member-name "N")
                                     (unit :target-type string :member-name
                                      "Unit"))
                                    (:shape-name "SummarizedCounter"))

(smithy/sdk/shapes:define-list summarized-counter-list :member
                               summarized-counter)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((from-inclusive :target-type timestamp
                                      :member-name "FromInclusive")
                                     (to-exclusive :target-type timestamp
                                      :member-name "ToExclusive"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list top-contributors :member contributor)

(smithy/sdk/shapes:define-enum unit
    common-lisp:nil
  (:bits "BITS")
  (:bytes "BYTES")
  (:packets "PACKETS")
  (:requests "REQUESTS"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-application-layer-automatic-response-request common-lisp:nil
 ((resource-arn :target-type resource-arn :required common-lisp:t :member-name
   "ResourceArn")
  (action :target-type response-action :required common-lisp:t :member-name
   "Action"))
 (:shape-name "UpdateApplicationLayerAutomaticResponseRequest"))

(smithy/sdk/shapes:define-output
 update-application-layer-automatic-response-response common-lisp:nil
 common-lisp:nil
 (:shape-name "UpdateApplicationLayerAutomaticResponseResponse"))

(smithy/sdk/shapes:define-input update-emergency-contact-settings-request
                                common-lisp:nil
                                ((emergency-contact-list :target-type
                                  emergency-contact-list :member-name
                                  "EmergencyContactList"))
                                (:shape-name
                                 "UpdateEmergencyContactSettingsRequest"))

(smithy/sdk/shapes:define-output update-emergency-contact-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateEmergencyContactSettingsResponse"))

(smithy/sdk/shapes:define-input update-protection-group-request common-lisp:nil
                                ((protection-group-id :target-type
                                  protection-group-id :required common-lisp:t
                                  :member-name "ProtectionGroupId")
                                 (aggregation :target-type
                                  protection-group-aggregation :required
                                  common-lisp:t :member-name "Aggregation")
                                 (pattern :target-type protection-group-pattern
                                  :required common-lisp:t :member-name
                                  "Pattern")
                                 (resource-type :target-type
                                  protected-resource-type :member-name
                                  "ResourceType")
                                 (members :target-type protection-group-members
                                  :member-name "Members"))
                                (:shape-name "UpdateProtectionGroupRequest"))

(smithy/sdk/shapes:define-output update-protection-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateProtectionGroupResponse"))

(smithy/sdk/shapes:define-input update-subscription-request common-lisp:nil
                                ((auto-renew :target-type auto-renew
                                  :member-name "AutoRenew"))
                                (:shape-name "UpdateSubscriptionRequest"))

(smithy/sdk/shapes:define-output update-subscription-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateSubscriptionResponse"))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-drtlog-bucket :shape-name
                                       "AssociateDRTLogBucket" :input
                                       associate-drtlog-bucket-request :output
                                       associate-drtlog-bucket-response :errors
                                       (access-denied-for-dependency-exception
                                        internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        limits-exceeded-exception
                                        no-associated-role-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-drtrole :shape-name
                                       "AssociateDRTRole" :input
                                       associate-drtrole-request :output
                                       associate-drtrole-response :errors
                                       (access-denied-for-dependency-exception
                                        internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-health-check :shape-name
                                       "AssociateHealthCheck" :input
                                       associate-health-check-request :output
                                       associate-health-check-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-resource-exception
                                        limits-exceeded-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-proactive-engagement-details
                                       :shape-name
                                       "AssociateProactiveEngagementDetails"
                                       :input
                                       associate-proactive-engagement-details-request
                                       :output
                                       associate-proactive-engagement-details-response
                                       :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-protection :shape-name
                                       "CreateProtection" :input
                                       create-protection-request :output
                                       create-protection-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        invalid-resource-exception
                                        limits-exceeded-exception
                                        optimistic-lock-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-protection-group :shape-name
                                       "CreateProtectionGroup" :input
                                       create-protection-group-request :output
                                       create-protection-group-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        limits-exceeded-exception
                                        optimistic-lock-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-subscription :shape-name
                                       "CreateSubscription" :input
                                       create-subscription-request :output
                                       create-subscription-response :errors
                                       (internal-error-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation delete-protection :shape-name
                                       "DeleteProtection" :input
                                       delete-protection-request :output
                                       delete-protection-response :errors
                                       (internal-error-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-protection-group :shape-name
                                       "DeleteProtectionGroup" :input
                                       delete-protection-group-request :output
                                       delete-protection-group-response :errors
                                       (internal-error-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-subscription :shape-name
                                       "DeleteSubscription" :input
                                       delete-subscription-request :output
                                       delete-subscription-response :errors
                                       (internal-error-exception
                                        locked-subscription-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-attack :shape-name
                                       "DescribeAttack" :input
                                       describe-attack-request :output
                                       describe-attack-response :errors
                                       (access-denied-exception
                                        internal-error-exception))

(smithy/sdk/operation:define-operation describe-attack-statistics :shape-name
                                       "DescribeAttackStatistics" :input
                                       describe-attack-statistics-request
                                       :output
                                       describe-attack-statistics-response
                                       :errors (internal-error-exception))

(smithy/sdk/operation:define-operation describe-drtaccess :shape-name
                                       "DescribeDRTAccess" :input
                                       describe-drtaccess-request :output
                                       describe-drtaccess-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-emergency-contact-settings
                                       :shape-name
                                       "DescribeEmergencyContactSettings"
                                       :input
                                       describe-emergency-contact-settings-request
                                       :output
                                       describe-emergency-contact-settings-response
                                       :errors
                                       (internal-error-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-protection :shape-name
                                       "DescribeProtection" :input
                                       describe-protection-request :output
                                       describe-protection-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-protection-group :shape-name
                                       "DescribeProtectionGroup" :input
                                       describe-protection-group-request
                                       :output
                                       describe-protection-group-response
                                       :errors
                                       (internal-error-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-subscription :shape-name
                                       "DescribeSubscription" :input
                                       describe-subscription-request :output
                                       describe-subscription-response :errors
                                       (internal-error-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 disable-application-layer-automatic-response :shape-name
 "DisableApplicationLayerAutomaticResponse" :input
 disable-application-layer-automatic-response-request :output
 disable-application-layer-automatic-response-response :errors
 (internal-error-exception invalid-operation-exception
  invalid-parameter-exception optimistic-lock-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation disable-proactive-engagement :shape-name
                                       "DisableProactiveEngagement" :input
                                       disable-proactive-engagement-request
                                       :output
                                       disable-proactive-engagement-response
                                       :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-drtlog-bucket :shape-name
                                       "DisassociateDRTLogBucket" :input
                                       disassociate-drtlog-bucket-request
                                       :output
                                       disassociate-drtlog-bucket-response
                                       :errors
                                       (access-denied-for-dependency-exception
                                        internal-error-exception
                                        invalid-operation-exception
                                        no-associated-role-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-drtrole :shape-name
                                       "DisassociateDRTRole" :input
                                       disassociate-drtrole-request :output
                                       disassociate-drtrole-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-health-check :shape-name
                                       "DisassociateHealthCheck" :input
                                       disassociate-health-check-request
                                       :output
                                       disassociate-health-check-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-resource-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 enable-application-layer-automatic-response :shape-name
 "EnableApplicationLayerAutomaticResponse" :input
 enable-application-layer-automatic-response-request :output
 enable-application-layer-automatic-response-response :errors
 (internal-error-exception invalid-operation-exception
  invalid-parameter-exception limits-exceeded-exception
  optimistic-lock-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation enable-proactive-engagement :shape-name
                                       "EnableProactiveEngagement" :input
                                       enable-proactive-engagement-request
                                       :output
                                       enable-proactive-engagement-response
                                       :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-subscription-state :shape-name
                                       "GetSubscriptionState" :input
                                       get-subscription-state-request :output
                                       get-subscription-state-response :errors
                                       (internal-error-exception))

(smithy/sdk/operation:define-operation list-attacks :shape-name "ListAttacks"
                                       :input list-attacks-request :output
                                       list-attacks-response :errors
                                       (internal-error-exception
                                        invalid-operation-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation list-protection-groups :shape-name
                                       "ListProtectionGroups" :input
                                       list-protection-groups-request :output
                                       list-protection-groups-response :errors
                                       (internal-error-exception
                                        invalid-pagination-token-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-protections :shape-name
                                       "ListProtections" :input
                                       list-protections-request :output
                                       list-protections-response :errors
                                       (internal-error-exception
                                        invalid-pagination-token-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-resources-in-protection-group
                                       :shape-name
                                       "ListResourcesInProtectionGroup" :input
                                       list-resources-in-protection-group-request
                                       :output
                                       list-resources-in-protection-group-response
                                       :errors
                                       (internal-error-exception
                                        invalid-pagination-token-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-error-exception
                                        invalid-resource-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-resource-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        invalid-resource-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 update-application-layer-automatic-response :shape-name
 "UpdateApplicationLayerAutomaticResponse" :input
 update-application-layer-automatic-response-request :output
 update-application-layer-automatic-response-response :errors
 (internal-error-exception invalid-operation-exception
  invalid-parameter-exception optimistic-lock-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation update-emergency-contact-settings
                                       :shape-name
                                       "UpdateEmergencyContactSettings" :input
                                       update-emergency-contact-settings-request
                                       :output
                                       update-emergency-contact-settings-response
                                       :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-protection-group :shape-name
                                       "UpdateProtectionGroup" :input
                                       update-protection-group-request :output
                                       update-protection-group-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-subscription :shape-name
                                       "UpdateSubscription" :input
                                       update-subscription-request :output
                                       update-subscription-response :errors
                                       (internal-error-exception
                                        invalid-parameter-exception
                                        locked-subscription-exception
                                        optimistic-lock-exception
                                        resource-not-found-exception))
