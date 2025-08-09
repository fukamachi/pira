(uiop/package:define-package #:pira/pinpoint-email (:use)
                             (:export #:amazon-pinpoint-email-service
                              #:amazon-resource-name #:behavior-on-mx-failure
                              #:blacklist-entries #:blacklist-entry
                              #:blacklist-item-name #:blacklist-item-names
                              #:blacklist-report #:blacklisting-description
                              #:body #:campaign-id #:charset
                              #:cloud-watch-destination
                              #:cloud-watch-dimension-configuration
                              #:cloud-watch-dimension-configurations
                              #:configuration-set-name
                              #:configuration-set-name-list #:content
                              #:create-configuration-set
                              #:create-configuration-set-event-destination
                              #:create-dedicated-ip-pool
                              #:create-deliverability-test-report
                              #:create-email-identity #:custom-redirect-domain
                              #:daily-volume #:daily-volumes #:dedicated-ip
                              #:dedicated-ip-list #:default-dimension-value
                              #:delete-configuration-set
                              #:delete-configuration-set-event-destination
                              #:delete-dedicated-ip-pool
                              #:delete-email-identity
                              #:deliverability-dashboard-account-status
                              #:deliverability-test-report
                              #:deliverability-test-reports
                              #:deliverability-test-status
                              #:deliverability-test-subject #:delivery-options
                              #:destination #:dimension-name
                              #:dimension-value-source #:dkim-attributes
                              #:dkim-status #:dns-token #:dns-token-list
                              #:domain #:domain-deliverability-campaign
                              #:domain-deliverability-campaign-list
                              #:domain-deliverability-tracking-option
                              #:domain-deliverability-tracking-options
                              #:domain-isp-placement #:domain-isp-placements
                              #:email-address #:email-address-list
                              #:email-content #:enabled #:error-message #:esp
                              #:esps #:event-destination
                              #:event-destination-definition
                              #:event-destination-name #:event-destinations
                              #:event-type #:event-types
                              #:general-enforcement-status #:get-account
                              #:get-blacklist-reports #:get-configuration-set
                              #:get-configuration-set-event-destinations
                              #:get-dedicated-ip #:get-dedicated-ips
                              #:get-deliverability-dashboard-options
                              #:get-deliverability-test-report
                              #:get-domain-deliverability-campaign
                              #:get-domain-statistics-report
                              #:get-email-identity #:identity #:identity-info
                              #:identity-info-list #:identity-type #:image-url
                              #:inbox-placement-tracking-option #:ip #:ip-list
                              #:isp-name #:isp-name-list #:isp-placement
                              #:isp-placements #:kinesis-firehose-destination
                              #:last-fresh-start #:list-configuration-sets
                              #:list-dedicated-ip-pools
                              #:list-deliverability-test-reports
                              #:list-domain-deliverability-campaigns
                              #:list-email-identities
                              #:list-of-dedicated-ip-pools
                              #:list-tags-for-resource #:mail-from-attributes
                              #:mail-from-domain-name #:mail-from-domain-status
                              #:max24hour-send #:max-items #:max-send-rate
                              #:message #:message-content #:message-data
                              #:message-tag #:message-tag-list
                              #:message-tag-name #:message-tag-value
                              #:next-token #:outbound-message-id
                              #:overall-volume #:percentage
                              #:percentage100wrapper #:pinpoint-destination
                              #:placement-statistics #:pool-name
                              #:put-account-dedicated-ip-warmup-attributes
                              #:put-account-sending-attributes
                              #:put-configuration-set-delivery-options
                              #:put-configuration-set-reputation-options
                              #:put-configuration-set-sending-options
                              #:put-configuration-set-tracking-options
                              #:put-dedicated-ip-in-pool
                              #:put-dedicated-ip-warmup-attributes
                              #:put-deliverability-dashboard-option
                              #:put-email-identity-dkim-attributes
                              #:put-email-identity-feedback-attributes
                              #:put-email-identity-mail-from-attributes
                              #:raw-message #:raw-message-data #:rbl-name
                              #:report-id #:report-name #:reputation-options
                              #:send-email #:send-quota #:sending-options
                              #:sending-pool-name #:sent-last24hours
                              #:sns-destination #:subject #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:template #:template-arn
                              #:template-data #:timestamp #:tls-policy
                              #:tracking-options #:untag-resource
                              #:update-configuration-set-event-destination
                              #:volume #:volume-statistics #:warmup-status))
(common-lisp:in-package #:pira/pinpoint-email)

(smithy/sdk/service:define-service amazon-pinpoint-email-service :shape-name
                                   "AmazonPinpointEmailService" :version
                                   "2018-07-26" :title
                                   "Amazon Pinpoint Email Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Pinpoint Email")
                                      ("arnNamespace" . "ses")
                                      ("cloudFormationName" . "PinpointEmail")
                                      ("cloudTrailEventSource"
                                       . "pinpointemail.amazonaws.com")
                                      ("endpointPrefix" . "email"))
                                     ("aws.auth#sigv4" ("name" . "ses"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error account-suspended-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccountSuspendedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum behavior-on-mx-failure
    common-lisp:nil
  (:use-default-value "USE_DEFAULT_VALUE")
  (:reject-message "REJECT_MESSAGE"))

(smithy/sdk/shapes:define-list blacklist-entries :member blacklist-entry)

(smithy/sdk/shapes:define-structure blacklist-entry common-lisp:nil
                                    ((rbl-name :target-type rbl-name
                                      :member-name "RblName")
                                     (listing-time :target-type timestamp
                                      :member-name "ListingTime")
                                     (description :target-type
                                      blacklisting-description :member-name
                                      "Description"))
                                    (:shape-name "BlacklistEntry"))

(smithy/sdk/shapes:define-type blacklist-item-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blacklist-item-names :member blacklist-item-name)

(smithy/sdk/shapes:define-map blacklist-report :key blacklist-item-name :value
                              blacklist-entries)

(smithy/sdk/shapes:define-type blacklisting-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure body common-lisp:nil
                                    ((text :target-type content :member-name
                                      "Text")
                                     (html :target-type content :member-name
                                      "Html"))
                                    (:shape-name "Body"))

(smithy/sdk/shapes:define-type campaign-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type charset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-destination common-lisp:nil
                                    ((dimension-configurations :target-type
                                      cloud-watch-dimension-configurations
                                      :required common-lisp:t :member-name
                                      "DimensionConfigurations"))
                                    (:shape-name "CloudWatchDestination"))

(smithy/sdk/shapes:define-structure cloud-watch-dimension-configuration
                                    common-lisp:nil
                                    ((dimension-name :target-type
                                      dimension-name :required common-lisp:t
                                      :member-name "DimensionName")
                                     (dimension-value-source :target-type
                                      dimension-value-source :required
                                      common-lisp:t :member-name
                                      "DimensionValueSource")
                                     (default-dimension-value :target-type
                                      default-dimension-value :required
                                      common-lisp:t :member-name
                                      "DefaultDimensionValue"))
                                    (:shape-name
                                     "CloudWatchDimensionConfiguration"))

(smithy/sdk/shapes:define-list cloud-watch-dimension-configurations :member
                               cloud-watch-dimension-configuration)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type configuration-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-set-name-list :member
                               configuration-set-name)

(smithy/sdk/shapes:define-structure content common-lisp:nil
                                    ((data :target-type message-data :required
                                      common-lisp:t :member-name "Data")
                                     (charset :target-type charset :member-name
                                      "Charset"))
                                    (:shape-name "Content"))

(smithy/sdk/shapes:define-input
 create-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName")
  (event-destination :target-type event-destination-definition :required
   common-lisp:t :member-name "EventDestination"))
 (:shape-name "CreateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 create-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input create-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (tracking-options :target-type
                                  tracking-options :member-name
                                  "TrackingOptions")
                                 (delivery-options :target-type
                                  delivery-options :member-name
                                  "DeliveryOptions")
                                 (reputation-options :target-type
                                  reputation-options :member-name
                                  "ReputationOptions")
                                 (sending-options :target-type sending-options
                                  :member-name "SendingOptions")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateConfigurationSetRequest"))

(smithy/sdk/shapes:define-output create-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateConfigurationSetResponse"))

(smithy/sdk/shapes:define-input create-dedicated-ip-pool-request
                                common-lisp:nil
                                ((pool-name :target-type pool-name :required
                                  common-lisp:t :member-name "PoolName")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDedicatedIpPoolRequest"))

(smithy/sdk/shapes:define-output create-dedicated-ip-pool-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateDedicatedIpPoolResponse"))

(smithy/sdk/shapes:define-input create-deliverability-test-report-request
                                common-lisp:nil
                                ((report-name :target-type report-name
                                  :member-name "ReportName")
                                 (from-email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "FromEmailAddress")
                                 (content :target-type email-content :required
                                  common-lisp:t :member-name "Content")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateDeliverabilityTestReportRequest"))

(smithy/sdk/shapes:define-output create-deliverability-test-report-response
                                 common-lisp:nil
                                 ((report-id :target-type report-id :required
                                   common-lisp:t :member-name "ReportId")
                                  (deliverability-test-status :target-type
                                   deliverability-test-status :required
                                   common-lisp:t :member-name
                                   "DeliverabilityTestStatus"))
                                 (:shape-name
                                  "CreateDeliverabilityTestReportResponse"))

(smithy/sdk/shapes:define-input create-email-identity-request common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateEmailIdentityRequest"))

(smithy/sdk/shapes:define-output create-email-identity-response common-lisp:nil
                                 ((identity-type :target-type identity-type
                                   :member-name "IdentityType")
                                  (verified-for-sending-status :target-type
                                   enabled :member-name
                                   "VerifiedForSendingStatus")
                                  (dkim-attributes :target-type dkim-attributes
                                   :member-name "DkimAttributes"))
                                 (:shape-name "CreateEmailIdentityResponse"))

(smithy/sdk/shapes:define-type custom-redirect-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure daily-volume common-lisp:nil
                                    ((start-date :target-type timestamp
                                      :member-name "StartDate")
                                     (volume-statistics :target-type
                                      volume-statistics :member-name
                                      "VolumeStatistics")
                                     (domain-isp-placements :target-type
                                      domain-isp-placements :member-name
                                      "DomainIspPlacements"))
                                    (:shape-name "DailyVolume"))

(smithy/sdk/shapes:define-list daily-volumes :member daily-volume)

(smithy/sdk/shapes:define-structure dedicated-ip common-lisp:nil
                                    ((ip :target-type ip :required
                                      common-lisp:t :member-name "Ip")
                                     (warmup-status :target-type warmup-status
                                      :required common-lisp:t :member-name
                                      "WarmupStatus")
                                     (warmup-percentage :target-type
                                      percentage100wrapper :required
                                      common-lisp:t :member-name
                                      "WarmupPercentage")
                                     (pool-name :target-type pool-name
                                      :member-name "PoolName"))
                                    (:shape-name "DedicatedIp"))

(smithy/sdk/shapes:define-list dedicated-ip-list :member dedicated-ip)

(smithy/sdk/shapes:define-type default-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 delete-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName" :http-label
   common-lisp:t))
 (:shape-name "DeleteConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 delete-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input delete-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteConfigurationSetRequest"))

(smithy/sdk/shapes:define-output delete-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteConfigurationSetResponse"))

(smithy/sdk/shapes:define-input delete-dedicated-ip-pool-request
                                common-lisp:nil
                                ((pool-name :target-type pool-name :required
                                  common-lisp:t :member-name "PoolName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDedicatedIpPoolRequest"))

(smithy/sdk/shapes:define-output delete-dedicated-ip-pool-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteDedicatedIpPoolResponse"))

(smithy/sdk/shapes:define-input delete-email-identity-request common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t))
                                (:shape-name "DeleteEmailIdentityRequest"))

(smithy/sdk/shapes:define-output delete-email-identity-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEmailIdentityResponse"))

(smithy/sdk/shapes:define-enum deliverability-dashboard-account-status
    common-lisp:nil
  (:active "ACTIVE")
  (:pending-expiration "PENDING_EXPIRATION")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure deliverability-test-report common-lisp:nil
                                    ((report-id :target-type report-id
                                      :member-name "ReportId")
                                     (report-name :target-type report-name
                                      :member-name "ReportName")
                                     (subject :target-type
                                      deliverability-test-subject :member-name
                                      "Subject")
                                     (from-email-address :target-type
                                      email-address :member-name
                                      "FromEmailAddress")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate")
                                     (deliverability-test-status :target-type
                                      deliverability-test-status :member-name
                                      "DeliverabilityTestStatus"))
                                    (:shape-name "DeliverabilityTestReport"))

(smithy/sdk/shapes:define-list deliverability-test-reports :member
                               deliverability-test-report)

(smithy/sdk/shapes:define-enum deliverability-test-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-type deliverability-test-subject
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delivery-options common-lisp:nil
                                    ((tls-policy :target-type tls-policy
                                      :member-name "TlsPolicy")
                                     (sending-pool-name :target-type pool-name
                                      :member-name "SendingPoolName"))
                                    (:shape-name "DeliveryOptions"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((to-addresses :target-type
                                      email-address-list :member-name
                                      "ToAddresses")
                                     (cc-addresses :target-type
                                      email-address-list :member-name
                                      "CcAddresses")
                                     (bcc-addresses :target-type
                                      email-address-list :member-name
                                      "BccAddresses"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dimension-value-source
    common-lisp:nil
  (:message-tag "MESSAGE_TAG")
  (:email-header "EMAIL_HEADER")
  (:link-tag "LINK_TAG"))

(smithy/sdk/shapes:define-structure dkim-attributes common-lisp:nil
                                    ((signing-enabled :target-type enabled
                                      :member-name "SigningEnabled")
                                     (status :target-type dkim-status
                                      :member-name "Status")
                                     (tokens :target-type dns-token-list
                                      :member-name "Tokens"))
                                    (:shape-name "DkimAttributes"))

(smithy/sdk/shapes:define-enum dkim-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:temporary-failure "TEMPORARY_FAILURE")
  (:not-started "NOT_STARTED"))

(smithy/sdk/shapes:define-type dns-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dns-token-list :member dns-token)

(smithy/sdk/shapes:define-type domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-deliverability-campaign
                                    common-lisp:nil
                                    ((campaign-id :target-type campaign-id
                                      :member-name "CampaignId")
                                     (image-url :target-type image-url
                                      :member-name "ImageUrl")
                                     (subject :target-type subject :member-name
                                      "Subject")
                                     (from-address :target-type identity
                                      :member-name "FromAddress")
                                     (sending-ips :target-type ip-list
                                      :member-name "SendingIps")
                                     (first-seen-date-time :target-type
                                      timestamp :member-name
                                      "FirstSeenDateTime")
                                     (last-seen-date-time :target-type
                                      timestamp :member-name
                                      "LastSeenDateTime")
                                     (inbox-count :target-type volume
                                      :member-name "InboxCount")
                                     (spam-count :target-type volume
                                      :member-name "SpamCount")
                                     (read-rate :target-type percentage
                                      :member-name "ReadRate")
                                     (delete-rate :target-type percentage
                                      :member-name "DeleteRate")
                                     (read-delete-rate :target-type percentage
                                      :member-name "ReadDeleteRate")
                                     (projected-volume :target-type volume
                                      :member-name "ProjectedVolume")
                                     (esps :target-type esps :member-name
                                      "Esps"))
                                    (:shape-name
                                     "DomainDeliverabilityCampaign"))

(smithy/sdk/shapes:define-list domain-deliverability-campaign-list :member
                               domain-deliverability-campaign)

(smithy/sdk/shapes:define-structure domain-deliverability-tracking-option
                                    common-lisp:nil
                                    ((domain :target-type domain :member-name
                                      "Domain")
                                     (subscription-start-date :target-type
                                      timestamp :member-name
                                      "SubscriptionStartDate")
                                     (inbox-placement-tracking-option
                                      :target-type
                                      inbox-placement-tracking-option
                                      :member-name
                                      "InboxPlacementTrackingOption"))
                                    (:shape-name
                                     "DomainDeliverabilityTrackingOption"))

(smithy/sdk/shapes:define-list domain-deliverability-tracking-options :member
                               domain-deliverability-tracking-option)

(smithy/sdk/shapes:define-structure domain-isp-placement common-lisp:nil
                                    ((isp-name :target-type isp-name
                                      :member-name "IspName")
                                     (inbox-raw-count :target-type volume
                                      :member-name "InboxRawCount")
                                     (spam-raw-count :target-type volume
                                      :member-name "SpamRawCount")
                                     (inbox-percentage :target-type percentage
                                      :member-name "InboxPercentage")
                                     (spam-percentage :target-type percentage
                                      :member-name "SpamPercentage"))
                                    (:shape-name "DomainIspPlacement"))

(smithy/sdk/shapes:define-list domain-isp-placements :member
                               domain-isp-placement)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list email-address-list :member email-address)

(smithy/sdk/shapes:define-structure email-content common-lisp:nil
                                    ((simple :target-type message :member-name
                                      "Simple")
                                     (raw :target-type raw-message :member-name
                                      "Raw")
                                     (template :target-type template
                                      :member-name "Template"))
                                    (:shape-name "EmailContent"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type esp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list esps :member esp)

(smithy/sdk/shapes:define-structure event-destination common-lisp:nil
                                    ((name :target-type event-destination-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (enabled :target-type enabled :member-name
                                      "Enabled")
                                     (matching-event-types :target-type
                                      event-types :required common-lisp:t
                                      :member-name "MatchingEventTypes")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (cloud-watch-destination :target-type
                                      cloud-watch-destination :member-name
                                      "CloudWatchDestination")
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination")
                                     (pinpoint-destination :target-type
                                      pinpoint-destination :member-name
                                      "PinpointDestination"))
                                    (:shape-name "EventDestination"))

(smithy/sdk/shapes:define-structure event-destination-definition
                                    common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "Enabled")
                                     (matching-event-types :target-type
                                      event-types :member-name
                                      "MatchingEventTypes")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (cloud-watch-destination :target-type
                                      cloud-watch-destination :member-name
                                      "CloudWatchDestination")
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination")
                                     (pinpoint-destination :target-type
                                      pinpoint-destination :member-name
                                      "PinpointDestination"))
                                    (:shape-name "EventDestinationDefinition"))

(smithy/sdk/shapes:define-type event-destination-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-destinations :member event-destination)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:send "SEND")
  (:reject "REJECT")
  (:bounce "BOUNCE")
  (:complaint "COMPLAINT")
  (:delivery "DELIVERY")
  (:open "OPEN")
  (:click "CLICK")
  (:rendering-failure "RENDERING_FAILURE"))

(smithy/sdk/shapes:define-list event-types :member event-type)

(smithy/sdk/shapes:define-type general-enforcement-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountRequest"))

(smithy/sdk/shapes:define-output get-account-response common-lisp:nil
                                 ((send-quota :target-type send-quota
                                   :member-name "SendQuota")
                                  (sending-enabled :target-type enabled
                                   :member-name "SendingEnabled")
                                  (dedicated-ip-auto-warmup-enabled
                                   :target-type enabled :member-name
                                   "DedicatedIpAutoWarmupEnabled")
                                  (enforcement-status :target-type
                                   general-enforcement-status :member-name
                                   "EnforcementStatus")
                                  (production-access-enabled :target-type
                                   enabled :member-name
                                   "ProductionAccessEnabled"))
                                 (:shape-name "GetAccountResponse"))

(smithy/sdk/shapes:define-input get-blacklist-reports-request common-lisp:nil
                                ((blacklist-item-names :target-type
                                  blacklist-item-names :required common-lisp:t
                                  :member-name "BlacklistItemNames" :http-query
                                  "BlacklistItemNames"))
                                (:shape-name "GetBlacklistReportsRequest"))

(smithy/sdk/shapes:define-output get-blacklist-reports-response common-lisp:nil
                                 ((blacklist-report :target-type
                                   blacklist-report :required common-lisp:t
                                   :member-name "BlacklistReport"))
                                 (:shape-name "GetBlacklistReportsResponse"))

(smithy/sdk/shapes:define-input
 get-configuration-set-event-destinations-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label
   common-lisp:t))
 (:shape-name "GetConfigurationSetEventDestinationsRequest"))

(smithy/sdk/shapes:define-output
 get-configuration-set-event-destinations-response common-lisp:nil
 ((event-destinations :target-type event-destinations :member-name
   "EventDestinations"))
 (:shape-name "GetConfigurationSetEventDestinationsResponse"))

(smithy/sdk/shapes:define-input get-configuration-set-request common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetConfigurationSetRequest"))

(smithy/sdk/shapes:define-output get-configuration-set-response common-lisp:nil
                                 ((configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (tracking-options :target-type
                                   tracking-options :member-name
                                   "TrackingOptions")
                                  (delivery-options :target-type
                                   delivery-options :member-name
                                   "DeliveryOptions")
                                  (reputation-options :target-type
                                   reputation-options :member-name
                                   "ReputationOptions")
                                  (sending-options :target-type sending-options
                                   :member-name "SendingOptions")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "GetConfigurationSetResponse"))

(smithy/sdk/shapes:define-input get-dedicated-ip-request common-lisp:nil
                                ((ip :target-type ip :required common-lisp:t
                                  :member-name "Ip" :http-label common-lisp:t))
                                (:shape-name "GetDedicatedIpRequest"))

(smithy/sdk/shapes:define-output get-dedicated-ip-response common-lisp:nil
                                 ((dedicated-ip :target-type dedicated-ip
                                   :member-name "DedicatedIp"))
                                 (:shape-name "GetDedicatedIpResponse"))

(smithy/sdk/shapes:define-input get-dedicated-ips-request common-lisp:nil
                                ((pool-name :target-type pool-name :member-name
                                  "PoolName" :http-query "PoolName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "GetDedicatedIpsRequest"))

(smithy/sdk/shapes:define-output get-dedicated-ips-response common-lisp:nil
                                 ((dedicated-ips :target-type dedicated-ip-list
                                   :member-name "DedicatedIps")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetDedicatedIpsResponse"))

(smithy/sdk/shapes:define-input get-deliverability-dashboard-options-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetDeliverabilityDashboardOptionsRequest"))

(smithy/sdk/shapes:define-output get-deliverability-dashboard-options-response
                                 common-lisp:nil
                                 ((dashboard-enabled :target-type enabled
                                   :required common-lisp:t :member-name
                                   "DashboardEnabled")
                                  (subscription-expiry-date :target-type
                                   timestamp :member-name
                                   "SubscriptionExpiryDate")
                                  (account-status :target-type
                                   deliverability-dashboard-account-status
                                   :member-name "AccountStatus")
                                  (active-subscribed-domains :target-type
                                   domain-deliverability-tracking-options
                                   :member-name "ActiveSubscribedDomains")
                                  (pending-expiration-subscribed-domains
                                   :target-type
                                   domain-deliverability-tracking-options
                                   :member-name
                                   "PendingExpirationSubscribedDomains"))
                                 (:shape-name
                                  "GetDeliverabilityDashboardOptionsResponse"))

(smithy/sdk/shapes:define-input get-deliverability-test-report-request
                                common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "ReportId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetDeliverabilityTestReportRequest"))

(smithy/sdk/shapes:define-output get-deliverability-test-report-response
                                 common-lisp:nil
                                 ((deliverability-test-report :target-type
                                   deliverability-test-report :required
                                   common-lisp:t :member-name
                                   "DeliverabilityTestReport")
                                  (overall-placement :target-type
                                   placement-statistics :required common-lisp:t
                                   :member-name "OverallPlacement")
                                  (isp-placements :target-type isp-placements
                                   :required common-lisp:t :member-name
                                   "IspPlacements")
                                  (message :target-type message-content
                                   :member-name "Message")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name
                                  "GetDeliverabilityTestReportResponse"))

(smithy/sdk/shapes:define-input get-domain-deliverability-campaign-request
                                common-lisp:nil
                                ((campaign-id :target-type campaign-id
                                  :required common-lisp:t :member-name
                                  "CampaignId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetDomainDeliverabilityCampaignRequest"))

(smithy/sdk/shapes:define-output get-domain-deliverability-campaign-response
                                 common-lisp:nil
                                 ((domain-deliverability-campaign :target-type
                                   domain-deliverability-campaign :required
                                   common-lisp:t :member-name
                                   "DomainDeliverabilityCampaign"))
                                 (:shape-name
                                  "GetDomainDeliverabilityCampaignResponse"))

(smithy/sdk/shapes:define-input get-domain-statistics-report-request
                                common-lisp:nil
                                ((domain :target-type identity :required
                                  common-lisp:t :member-name "Domain"
                                  :http-label common-lisp:t)
                                 (start-date :target-type timestamp :required
                                  common-lisp:t :member-name "StartDate"
                                  :http-query "StartDate")
                                 (end-date :target-type timestamp :required
                                  common-lisp:t :member-name "EndDate"
                                  :http-query "EndDate"))
                                (:shape-name
                                 "GetDomainStatisticsReportRequest"))

(smithy/sdk/shapes:define-output get-domain-statistics-report-response
                                 common-lisp:nil
                                 ((overall-volume :target-type overall-volume
                                   :required common-lisp:t :member-name
                                   "OverallVolume")
                                  (daily-volumes :target-type daily-volumes
                                   :required common-lisp:t :member-name
                                   "DailyVolumes"))
                                 (:shape-name
                                  "GetDomainStatisticsReportResponse"))

(smithy/sdk/shapes:define-input get-email-identity-request common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t))
                                (:shape-name "GetEmailIdentityRequest"))

(smithy/sdk/shapes:define-output get-email-identity-response common-lisp:nil
                                 ((identity-type :target-type identity-type
                                   :member-name "IdentityType")
                                  (feedback-forwarding-status :target-type
                                   enabled :member-name
                                   "FeedbackForwardingStatus")
                                  (verified-for-sending-status :target-type
                                   enabled :member-name
                                   "VerifiedForSendingStatus")
                                  (dkim-attributes :target-type dkim-attributes
                                   :member-name "DkimAttributes")
                                  (mail-from-attributes :target-type
                                   mail-from-attributes :member-name
                                   "MailFromAttributes")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "GetEmailIdentityResponse"))

(smithy/sdk/shapes:define-type identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-info common-lisp:nil
                                    ((identity-type :target-type identity-type
                                      :member-name "IdentityType")
                                     (identity-name :target-type identity
                                      :member-name "IdentityName")
                                     (sending-enabled :target-type enabled
                                      :member-name "SendingEnabled"))
                                    (:shape-name "IdentityInfo"))

(smithy/sdk/shapes:define-list identity-info-list :member identity-info)

(smithy/sdk/shapes:define-enum identity-type
    common-lisp:nil
  (:email-address "EMAIL_ADDRESS")
  (:domain "DOMAIN")
  (:managed-domain "MANAGED_DOMAIN"))

(smithy/sdk/shapes:define-type image-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inbox-placement-tracking-option
                                    common-lisp:nil
                                    ((global :target-type enabled :member-name
                                      "Global")
                                     (tracked-isps :target-type isp-name-list
                                      :member-name "TrackedIsps"))
                                    (:shape-name
                                     "InboxPlacementTrackingOption"))

(smithy/sdk/shapes:define-type ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-list :member ip)

(smithy/sdk/shapes:define-type isp-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list isp-name-list :member isp-name)

(smithy/sdk/shapes:define-structure isp-placement common-lisp:nil
                                    ((isp-name :target-type isp-name
                                      :member-name "IspName")
                                     (placement-statistics :target-type
                                      placement-statistics :member-name
                                      "PlacementStatistics"))
                                    (:shape-name "IspPlacement"))

(smithy/sdk/shapes:define-list isp-placements :member isp-placement)

(smithy/sdk/shapes:define-structure kinesis-firehose-destination
                                    common-lisp:nil
                                    ((iam-role-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (delivery-stream-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamArn"))
                                    (:shape-name "KinesisFirehoseDestination"))

(smithy/sdk/shapes:define-type last-fresh-start
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-configuration-sets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListConfigurationSetsRequest"))

(smithy/sdk/shapes:define-output list-configuration-sets-response
                                 common-lisp:nil
                                 ((configuration-sets :target-type
                                   configuration-set-name-list :member-name
                                   "ConfigurationSets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConfigurationSetsResponse"))

(smithy/sdk/shapes:define-input list-dedicated-ip-pools-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListDedicatedIpPoolsRequest"))

(smithy/sdk/shapes:define-output list-dedicated-ip-pools-response
                                 common-lisp:nil
                                 ((dedicated-ip-pools :target-type
                                   list-of-dedicated-ip-pools :member-name
                                   "DedicatedIpPools")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDedicatedIpPoolsResponse"))

(smithy/sdk/shapes:define-input list-deliverability-test-reports-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name
                                 "ListDeliverabilityTestReportsRequest"))

(smithy/sdk/shapes:define-output list-deliverability-test-reports-response
                                 common-lisp:nil
                                 ((deliverability-test-reports :target-type
                                   deliverability-test-reports :required
                                   common-lisp:t :member-name
                                   "DeliverabilityTestReports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDeliverabilityTestReportsResponse"))

(smithy/sdk/shapes:define-input list-domain-deliverability-campaigns-request
                                common-lisp:nil
                                ((start-date :target-type timestamp :required
                                  common-lisp:t :member-name "StartDate"
                                  :http-query "StartDate")
                                 (end-date :target-type timestamp :required
                                  common-lisp:t :member-name "EndDate"
                                  :http-query "EndDate")
                                 (subscribed-domain :target-type domain
                                  :required common-lisp:t :member-name
                                  "SubscribedDomain" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name
                                 "ListDomainDeliverabilityCampaignsRequest"))

(smithy/sdk/shapes:define-output list-domain-deliverability-campaigns-response
                                 common-lisp:nil
                                 ((domain-deliverability-campaigns :target-type
                                   domain-deliverability-campaign-list
                                   :required common-lisp:t :member-name
                                   "DomainDeliverabilityCampaigns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDomainDeliverabilityCampaignsResponse"))

(smithy/sdk/shapes:define-input list-email-identities-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListEmailIdentitiesRequest"))

(smithy/sdk/shapes:define-output list-email-identities-response common-lisp:nil
                                 ((email-identities :target-type
                                   identity-info-list :member-name
                                   "EmailIdentities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEmailIdentitiesResponse"))

(smithy/sdk/shapes:define-list list-of-dedicated-ip-pools :member pool-name)

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure mail-from-attributes common-lisp:nil
                                    ((mail-from-domain :target-type
                                      mail-from-domain-name :required
                                      common-lisp:t :member-name
                                      "MailFromDomain")
                                     (mail-from-domain-status :target-type
                                      mail-from-domain-status :required
                                      common-lisp:t :member-name
                                      "MailFromDomainStatus")
                                     (behavior-on-mx-failure :target-type
                                      behavior-on-mx-failure :required
                                      common-lisp:t :member-name
                                      "BehaviorOnMxFailure"))
                                    (:shape-name "MailFromAttributes"))

(smithy/sdk/shapes:define-type mail-from-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error mail-from-domain-not-verified-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MailFromDomainNotVerifiedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum mail-from-domain-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:temporary-failure "TEMPORARY_FAILURE"))

(smithy/sdk/shapes:define-type max24hour-send smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-send-rate smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((subject :target-type content :required
                                      common-lisp:t :member-name "Subject")
                                     (body :target-type body :required
                                      common-lisp:t :member-name "Body"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error message-rejected common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MessageRejected")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure message-tag common-lisp:nil
                                    ((name :target-type message-tag-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type message-tag-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "MessageTag"))

(smithy/sdk/shapes:define-list message-tag-list :member message-tag)

(smithy/sdk/shapes:define-type message-tag-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type outbound-message-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure overall-volume common-lisp:nil
                                    ((volume-statistics :target-type
                                      volume-statistics :member-name
                                      "VolumeStatistics")
                                     (read-rate-percent :target-type percentage
                                      :member-name "ReadRatePercent")
                                     (domain-isp-placements :target-type
                                      domain-isp-placements :member-name
                                      "DomainIspPlacements"))
                                    (:shape-name "OverallVolume"))

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type percentage100wrapper
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure pinpoint-destination common-lisp:nil
                                    ((application-arn :target-type
                                      amazon-resource-name :member-name
                                      "ApplicationArn"))
                                    (:shape-name "PinpointDestination"))

(smithy/sdk/shapes:define-structure placement-statistics common-lisp:nil
                                    ((inbox-percentage :target-type percentage
                                      :member-name "InboxPercentage")
                                     (spam-percentage :target-type percentage
                                      :member-name "SpamPercentage")
                                     (missing-percentage :target-type
                                      percentage :member-name
                                      "MissingPercentage")
                                     (spf-percentage :target-type percentage
                                      :member-name "SpfPercentage")
                                     (dkim-percentage :target-type percentage
                                      :member-name "DkimPercentage"))
                                    (:shape-name "PlacementStatistics"))

(smithy/sdk/shapes:define-type pool-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 put-account-dedicated-ip-warmup-attributes-request common-lisp:nil
 ((auto-warmup-enabled :target-type enabled :member-name "AutoWarmupEnabled"))
 (:shape-name "PutAccountDedicatedIpWarmupAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-account-dedicated-ip-warmup-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutAccountDedicatedIpWarmupAttributesResponse"))

(smithy/sdk/shapes:define-input put-account-sending-attributes-request
                                common-lisp:nil
                                ((sending-enabled :target-type enabled
                                  :member-name "SendingEnabled"))
                                (:shape-name
                                 "PutAccountSendingAttributesRequest"))

(smithy/sdk/shapes:define-output put-account-sending-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAccountSendingAttributesResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-delivery-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (tls-policy :target-type tls-policy
                                  :member-name "TlsPolicy")
                                 (sending-pool-name :target-type
                                  sending-pool-name :member-name
                                  "SendingPoolName"))
                                (:shape-name
                                 "PutConfigurationSetDeliveryOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-delivery-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetDeliveryOptionsResponse"))

(smithy/sdk/shapes:define-input
 put-configuration-set-reputation-options-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (reputation-metrics-enabled :target-type enabled :member-name
   "ReputationMetricsEnabled"))
 (:shape-name "PutConfigurationSetReputationOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-reputation-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetReputationOptionsResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-sending-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (sending-enabled :target-type enabled
                                  :member-name "SendingEnabled"))
                                (:shape-name
                                 "PutConfigurationSetSendingOptionsRequest"))

(smithy/sdk/shapes:define-output put-configuration-set-sending-options-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutConfigurationSetSendingOptionsResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-tracking-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (custom-redirect-domain :target-type
                                  custom-redirect-domain :member-name
                                  "CustomRedirectDomain"))
                                (:shape-name
                                 "PutConfigurationSetTrackingOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-tracking-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetTrackingOptionsResponse"))

(smithy/sdk/shapes:define-input put-dedicated-ip-in-pool-request
                                common-lisp:nil
                                ((ip :target-type ip :required common-lisp:t
                                  :member-name "Ip" :http-label common-lisp:t)
                                 (destination-pool-name :target-type pool-name
                                  :required common-lisp:t :member-name
                                  "DestinationPoolName"))
                                (:shape-name "PutDedicatedIpInPoolRequest"))

(smithy/sdk/shapes:define-output put-dedicated-ip-in-pool-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutDedicatedIpInPoolResponse"))

(smithy/sdk/shapes:define-input put-dedicated-ip-warmup-attributes-request
                                common-lisp:nil
                                ((ip :target-type ip :required common-lisp:t
                                  :member-name "Ip" :http-label common-lisp:t)
                                 (warmup-percentage :target-type
                                  percentage100wrapper :required common-lisp:t
                                  :member-name "WarmupPercentage"))
                                (:shape-name
                                 "PutDedicatedIpWarmupAttributesRequest"))

(smithy/sdk/shapes:define-output put-dedicated-ip-warmup-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutDedicatedIpWarmupAttributesResponse"))

(smithy/sdk/shapes:define-input put-deliverability-dashboard-option-request
                                common-lisp:nil
                                ((dashboard-enabled :target-type enabled
                                  :required common-lisp:t :member-name
                                  "DashboardEnabled")
                                 (subscribed-domains :target-type
                                  domain-deliverability-tracking-options
                                  :member-name "SubscribedDomains"))
                                (:shape-name
                                 "PutDeliverabilityDashboardOptionRequest"))

(smithy/sdk/shapes:define-output put-deliverability-dashboard-option-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutDeliverabilityDashboardOptionResponse"))

(smithy/sdk/shapes:define-input put-email-identity-dkim-attributes-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (signing-enabled :target-type enabled
                                  :member-name "SigningEnabled"))
                                (:shape-name
                                 "PutEmailIdentityDkimAttributesRequest"))

(smithy/sdk/shapes:define-output put-email-identity-dkim-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutEmailIdentityDkimAttributesResponse"))

(smithy/sdk/shapes:define-input put-email-identity-feedback-attributes-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (email-forwarding-enabled :target-type enabled
                                  :member-name "EmailForwardingEnabled"))
                                (:shape-name
                                 "PutEmailIdentityFeedbackAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-email-identity-feedback-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutEmailIdentityFeedbackAttributesResponse"))

(smithy/sdk/shapes:define-input put-email-identity-mail-from-attributes-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (mail-from-domain :target-type
                                  mail-from-domain-name :member-name
                                  "MailFromDomain")
                                 (behavior-on-mx-failure :target-type
                                  behavior-on-mx-failure :member-name
                                  "BehaviorOnMxFailure"))
                                (:shape-name
                                 "PutEmailIdentityMailFromAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-email-identity-mail-from-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutEmailIdentityMailFromAttributesResponse"))

(smithy/sdk/shapes:define-structure raw-message common-lisp:nil
                                    ((data :target-type raw-message-data
                                      :required common-lisp:t :member-name
                                      "Data"))
                                    (:shape-name "RawMessage"))

(smithy/sdk/shapes:define-type raw-message-data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type rbl-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type report-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type report-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reputation-options common-lisp:nil
                                    ((reputation-metrics-enabled :target-type
                                      enabled :member-name
                                      "ReputationMetricsEnabled")
                                     (last-fresh-start :target-type
                                      last-fresh-start :member-name
                                      "LastFreshStart"))
                                    (:shape-name "ReputationOptions"))

(smithy/sdk/shapes:define-input send-email-request common-lisp:nil
                                ((from-email-address :target-type email-address
                                  :member-name "FromEmailAddress")
                                 (destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (reply-to-addresses :target-type
                                  email-address-list :member-name
                                  "ReplyToAddresses")
                                 (feedback-forwarding-email-address
                                  :target-type email-address :member-name
                                  "FeedbackForwardingEmailAddress")
                                 (content :target-type email-content :required
                                  common-lisp:t :member-name "Content")
                                 (email-tags :target-type message-tag-list
                                  :member-name "EmailTags")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "SendEmailRequest"))

(smithy/sdk/shapes:define-output send-email-response common-lisp:nil
                                 ((message-id :target-type outbound-message-id
                                   :member-name "MessageId"))
                                 (:shape-name "SendEmailResponse"))

(smithy/sdk/shapes:define-structure send-quota common-lisp:nil
                                    ((max24hour-send :target-type
                                      max24hour-send :member-name
                                      "Max24HourSend")
                                     (max-send-rate :target-type max-send-rate
                                      :member-name "MaxSendRate")
                                     (sent-last24hours :target-type
                                      sent-last24hours :member-name
                                      "SentLast24Hours"))
                                    (:shape-name "SendQuota"))

(smithy/sdk/shapes:define-structure sending-options common-lisp:nil
                                    ((sending-enabled :target-type enabled
                                      :member-name "SendingEnabled"))
                                    (:shape-name "SendingOptions"))

(smithy/sdk/shapes:define-error sending-paused-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "SendingPausedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type sending-pool-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sent-last24hours smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure sns-destination common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "TopicArn"))
                                    (:shape-name "SnsDestination"))

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

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
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template common-lisp:nil
                                    ((template-arn :target-type template-arn
                                      :member-name "TemplateArn")
                                     (template-data :target-type template-data
                                      :member-name "TemplateData"))
                                    (:shape-name "Template"))

(smithy/sdk/shapes:define-type template-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum tls-policy
    common-lisp:nil
  (:require "REQUIRE")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tracking-options common-lisp:nil
                                    ((custom-redirect-domain :target-type
                                      custom-redirect-domain :required
                                      common-lisp:t :member-name
                                      "CustomRedirectDomain"))
                                    (:shape-name "TrackingOptions"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName" :http-label common-lisp:t)
  (event-destination :target-type event-destination-definition :required
   common-lisp:t :member-name "EventDestination"))
 (:shape-name "UpdateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 update-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-type volume smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure volume-statistics common-lisp:nil
                                    ((inbox-raw-count :target-type volume
                                      :member-name "InboxRawCount")
                                     (spam-raw-count :target-type volume
                                      :member-name "SpamRawCount")
                                     (projected-inbox :target-type volume
                                      :member-name "ProjectedInbox")
                                     (projected-spam :target-type volume
                                      :member-name "ProjectedSpam"))
                                    (:shape-name "VolumeStatistics"))

(smithy/sdk/shapes:define-enum warmup-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:done "DONE"))

(smithy/sdk/operation:define-operation create-configuration-set :shape-name
                                       "CreateConfigurationSet" :input
                                       create-configuration-set-request :output
                                       create-configuration-set-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/email/configuration-sets" :code 200)

(smithy/sdk/operation:define-operation
 create-configuration-set-event-destination :shape-name
 "CreateConfigurationSetEventDestination" :input
 create-configuration-set-event-destination-request :output
 create-configuration-set-event-destination-response :errors
 (already-exists-exception bad-request-exception limit-exceeded-exception
  not-found-exception too-many-requests-exception)
 :method "POST" :uri
 "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations" :code
 200)

(smithy/sdk/operation:define-operation create-dedicated-ip-pool :shape-name
                                       "CreateDedicatedIpPool" :input
                                       create-dedicated-ip-pool-request :output
                                       create-dedicated-ip-pool-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/email/dedicated-ip-pools" :code 200)

(smithy/sdk/operation:define-operation create-deliverability-test-report
                                       :shape-name
                                       "CreateDeliverabilityTestReport" :input
                                       create-deliverability-test-report-request
                                       :output
                                       create-deliverability-test-report-response
                                       :errors
                                       (account-suspended-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected not-found-exception
                                        sending-paused-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/email/deliverability-dashboard/test"
                                       :code 200)

(smithy/sdk/operation:define-operation create-email-identity :shape-name
                                       "CreateEmailIdentity" :input
                                       create-email-identity-request :output
                                       create-email-identity-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/email/identities" :code 200)

(smithy/sdk/operation:define-operation delete-configuration-set :shape-name
                                       "DeleteConfigurationSet" :input
                                       delete-configuration-set-request :output
                                       delete-configuration-set-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-configuration-set-event-destination :shape-name
 "DeleteConfigurationSetEventDestination" :input
 delete-configuration-set-event-destination-request :output
 delete-configuration-set-event-destination-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "DELETE" :uri
 "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
 :code 200)

(smithy/sdk/operation:define-operation delete-dedicated-ip-pool :shape-name
                                       "DeleteDedicatedIpPool" :input
                                       delete-dedicated-ip-pool-request :output
                                       delete-dedicated-ip-pool-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/email/dedicated-ip-pools/{PoolName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-email-identity :shape-name
                                       "DeleteEmailIdentity" :input
                                       delete-email-identity-request :output
                                       delete-email-identity-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/email/identities/{EmailIdentity}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account :shape-name "GetAccount"
                                       :input get-account-request :output
                                       get-account-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/email/account"
                                       :code 200)

(smithy/sdk/operation:define-operation get-blacklist-reports :shape-name
                                       "GetBlacklistReports" :input
                                       get-blacklist-reports-request :output
                                       get-blacklist-reports-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard/blacklist-report"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration-set :shape-name
                                       "GetConfigurationSet" :input
                                       get-configuration-set-request :output
                                       get-configuration-set-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration-set-event-destinations
                                       :shape-name
                                       "GetConfigurationSetEventDestinations"
                                       :input
                                       get-configuration-set-event-destinations-request
                                       :output
                                       get-configuration-set-event-destinations-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-dedicated-ip :shape-name
                                       "GetDedicatedIp" :input
                                       get-dedicated-ip-request :output
                                       get-dedicated-ip-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/dedicated-ips/{Ip}" :code 200)

(smithy/sdk/operation:define-operation get-dedicated-ips :shape-name
                                       "GetDedicatedIps" :input
                                       get-dedicated-ips-request :output
                                       get-dedicated-ips-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/dedicated-ips" :code 200)

(smithy/sdk/operation:define-operation get-deliverability-dashboard-options
                                       :shape-name
                                       "GetDeliverabilityDashboardOptions"
                                       :input
                                       get-deliverability-dashboard-options-request
                                       :output
                                       get-deliverability-dashboard-options-response
                                       :errors
                                       (bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deliverability-test-report
                                       :shape-name
                                       "GetDeliverabilityTestReport" :input
                                       get-deliverability-test-report-request
                                       :output
                                       get-deliverability-test-report-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard/test-reports/{ReportId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-deliverability-campaign
                                       :shape-name
                                       "GetDomainDeliverabilityCampaign" :input
                                       get-domain-deliverability-campaign-request
                                       :output
                                       get-domain-deliverability-campaign-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard/campaigns/{CampaignId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-statistics-report :shape-name
                                       "GetDomainStatisticsReport" :input
                                       get-domain-statistics-report-request
                                       :output
                                       get-domain-statistics-report-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard/statistics-report/{Domain}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-email-identity :shape-name
                                       "GetEmailIdentity" :input
                                       get-email-identity-request :output
                                       get-email-identity-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/identities/{EmailIdentity}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configuration-sets :shape-name
                                       "ListConfigurationSets" :input
                                       list-configuration-sets-request :output
                                       list-configuration-sets-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/configuration-sets" :code 200)

(smithy/sdk/operation:define-operation list-dedicated-ip-pools :shape-name
                                       "ListDedicatedIpPools" :input
                                       list-dedicated-ip-pools-request :output
                                       list-dedicated-ip-pools-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/dedicated-ip-pools" :code 200)

(smithy/sdk/operation:define-operation list-deliverability-test-reports
                                       :shape-name
                                       "ListDeliverabilityTestReports" :input
                                       list-deliverability-test-reports-request
                                       :output
                                       list-deliverability-test-reports-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard/test-reports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-deliverability-campaigns
                                       :shape-name
                                       "ListDomainDeliverabilityCampaigns"
                                       :input
                                       list-domain-deliverability-campaigns-request
                                       :output
                                       list-domain-deliverability-campaigns-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns"
                                       :code 200)

(smithy/sdk/operation:define-operation list-email-identities :shape-name
                                       "ListEmailIdentities" :input
                                       list-email-identities-request :output
                                       list-email-identities-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/email/identities" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/email/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-account-dedicated-ip-warmup-attributes :shape-name
 "PutAccountDedicatedIpWarmupAttributes" :input
 put-account-dedicated-ip-warmup-attributes-request :output
 put-account-dedicated-ip-warmup-attributes-response :errors
 (bad-request-exception too-many-requests-exception) :method "PUT" :uri
 "/v1/email/account/dedicated-ips/warmup" :code 200)

(smithy/sdk/operation:define-operation put-account-sending-attributes
                                       :shape-name
                                       "PutAccountSendingAttributes" :input
                                       put-account-sending-attributes-request
                                       :output
                                       put-account-sending-attributes-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/account/sending" :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-delivery-options
                                       :shape-name
                                       "PutConfigurationSetDeliveryOptions"
                                       :input
                                       put-configuration-set-delivery-options-request
                                       :output
                                       put-configuration-set-delivery-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-reputation-options
                                       :shape-name
                                       "PutConfigurationSetReputationOptions"
                                       :input
                                       put-configuration-set-reputation-options-request
                                       :output
                                       put-configuration-set-reputation-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-sending-options
                                       :shape-name
                                       "PutConfigurationSetSendingOptions"
                                       :input
                                       put-configuration-set-sending-options-request
                                       :output
                                       put-configuration-set-sending-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}/sending"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-tracking-options
                                       :shape-name
                                       "PutConfigurationSetTrackingOptions"
                                       :input
                                       put-configuration-set-tracking-options-request
                                       :output
                                       put-configuration-set-tracking-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-dedicated-ip-in-pool :shape-name
                                       "PutDedicatedIpInPool" :input
                                       put-dedicated-ip-in-pool-request :output
                                       put-dedicated-ip-in-pool-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/dedicated-ips/{Ip}/pool"
                                       :code 200)

(smithy/sdk/operation:define-operation put-dedicated-ip-warmup-attributes
                                       :shape-name
                                       "PutDedicatedIpWarmupAttributes" :input
                                       put-dedicated-ip-warmup-attributes-request
                                       :output
                                       put-dedicated-ip-warmup-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/dedicated-ips/{Ip}/warmup"
                                       :code 200)

(smithy/sdk/operation:define-operation put-deliverability-dashboard-option
                                       :shape-name
                                       "PutDeliverabilityDashboardOption"
                                       :input
                                       put-deliverability-dashboard-option-request
                                       :output
                                       put-deliverability-dashboard-option-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/deliverability-dashboard"
                                       :code 200)

(smithy/sdk/operation:define-operation put-email-identity-dkim-attributes
                                       :shape-name
                                       "PutEmailIdentityDkimAttributes" :input
                                       put-email-identity-dkim-attributes-request
                                       :output
                                       put-email-identity-dkim-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/identities/{EmailIdentity}/dkim"
                                       :code 200)

(smithy/sdk/operation:define-operation put-email-identity-feedback-attributes
                                       :shape-name
                                       "PutEmailIdentityFeedbackAttributes"
                                       :input
                                       put-email-identity-feedback-attributes-request
                                       :output
                                       put-email-identity-feedback-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/identities/{EmailIdentity}/feedback"
                                       :code 200)

(smithy/sdk/operation:define-operation put-email-identity-mail-from-attributes
                                       :shape-name
                                       "PutEmailIdentityMailFromAttributes"
                                       :input
                                       put-email-identity-mail-from-attributes-request
                                       :output
                                       put-email-identity-mail-from-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/email/identities/{EmailIdentity}/mail-from"
                                       :code 200)

(smithy/sdk/operation:define-operation send-email :shape-name "SendEmail"
                                       :input send-email-request :output
                                       send-email-response :errors
                                       (account-suspended-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected not-found-exception
                                        sending-paused-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/email/outbound-emails" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v1/email/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri "/v1/email/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-configuration-set-event-destination :shape-name
 "UpdateConfigurationSetEventDestination" :input
 update-configuration-set-event-destination-request :output
 update-configuration-set-event-destination-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "PUT" :uri
 "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
 :code 200)
