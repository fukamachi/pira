(uiop/package:define-package #:pira/connectcampaignsv2 (:use)
                             (:export #:agentless-config
                              #:amazon-connect-campaign-service-v2
                              #:answer-machine-detection-config #:arn
                              #:attribute-name #:attribute-value #:attributes
                              #:bandwidth-allocation #:campaign #:campaign-arn
                              #:campaign-deletion-policy #:campaign-filters
                              #:campaign-id #:campaign-id-list #:campaign-name
                              #:campaign-state #:campaign-summary
                              #:campaign-summary-list #:capacity
                              #:channel-subtype #:channel-subtype-config
                              #:channel-subtype-list
                              #:channel-subtype-parameters #:client-token
                              #:communication-limit #:communication-limit-list
                              #:communication-limit-time-unit
                              #:communication-limits
                              #:communication-limits-config
                              #:communication-limits-config-type
                              #:communication-time-config
                              #:communication-time-config-type
                              #:contact-flow-id #:create-campaign
                              #:customer-profiles-integration-config
                              #:customer-profiles-integration-identifier
                              #:customer-profiles-integration-summary
                              #:daily-hours #:day-of-week #:delete-campaign
                              #:delete-campaign-channel-subtype-config
                              #:delete-campaign-communication-limits
                              #:delete-campaign-communication-time
                              #:delete-connect-instance-config
                              #:delete-connect-instance-integration
                              #:delete-instance-onboarding-job
                              #:describe-campaign #:destination-phone-number
                              #:dial-request-id #:email-address
                              #:email-channel-subtype-config
                              #:email-channel-subtype-parameters
                              #:email-display-name #:email-outbound-config
                              #:email-outbound-mode #:enabled
                              #:encryption-config #:encryption-key
                              #:encryption-type #:event-trigger #:event-type
                              #:failed-campaign-state-response
                              #:failed-campaign-state-response-list
                              #:failed-profile-outbound-request
                              #:failed-profile-outbound-request-list
                              #:failed-request #:failed-request-list
                              #:failure-code #:get-campaign-state
                              #:get-campaign-state-batch
                              #:get-campaign-state-batch-failure-code
                              #:get-connect-instance-config
                              #:get-instance-communication-limits
                              #:get-instance-onboarding-job-status
                              #:instance-communication-limits-config
                              #:instance-config #:instance-id
                              #:instance-id-filter
                              #:instance-id-filter-operator
                              #:instance-limits-handling
                              #:instance-onboarding-job-failure-code
                              #:instance-onboarding-job-status
                              #:instance-onboarding-job-status-code
                              #:integration-config #:integration-identifier
                              #:integration-summary #:integration-summary-list
                              #:iso8601date #:iso8601duration #:iso8601time
                              #:list-campaigns
                              #:list-connect-instance-integrations
                              #:list-tags-for-resource #:local-time-zone-config
                              #:local-time-zone-detection
                              #:local-time-zone-detection-type #:max-results
                              #:next-token #:object-type-name
                              #:object-type-names-map #:open-hours
                              #:outbound-request #:outbound-request-list
                              #:pause-campaign #:predictive-config #:profile-id
                              #:profile-outbound-request
                              #:profile-outbound-request-failure-code
                              #:profile-outbound-request-id
                              #:profile-outbound-request-list
                              #:progressive-config
                              #:put-connect-instance-integration
                              #:put-instance-communication-limits
                              #:put-outbound-request-batch
                              #:put-profile-outbound-request-batch
                              #:qconnect-integration-config
                              #:qconnect-integration-identifier
                              #:qconnect-integration-summary #:queue-id
                              #:restricted-period #:restricted-period-list
                              #:restricted-period-name #:restricted-periods
                              #:resume-campaign #:schedule
                              #:service-linked-role-arn
                              #:sms-channel-subtype-config
                              #:sms-channel-subtype-parameters
                              #:sms-outbound-config #:sms-outbound-mode
                              #:source #:source-phone-number #:start-campaign
                              #:start-instance-onboarding-job #:stop-campaign
                              #:successful-campaign-state-response
                              #:successful-campaign-state-response-list
                              #:successful-profile-outbound-request
                              #:successful-profile-outbound-request-list
                              #:successful-request #:successful-request-list
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:telephony-channel-subtype-config
                              #:telephony-channel-subtype-parameters
                              #:telephony-outbound-config
                              #:telephony-outbound-mode #:time-range
                              #:time-range-list #:time-stamp #:time-window
                              #:time-zone #:untag-resource
                              #:update-campaign-channel-subtype-config
                              #:update-campaign-communication-limits
                              #:update-campaign-communication-time
                              #:update-campaign-flow-association
                              #:update-campaign-name #:update-campaign-schedule
                              #:update-campaign-source #:xamazon-error-type))
(common-lisp:in-package #:pira/connectcampaignsv2)

(smithy/sdk/service:define-service amazon-connect-campaign-service-v2
                                   :shape-name "AmazonConnectCampaignServiceV2"
                                   :version "2024-04-23" :title
                                   "AmazonConnectCampaignServiceV2" :operations
                                   '(create-campaign delete-campaign
                                     delete-campaign-channel-subtype-config
                                     delete-campaign-communication-limits
                                     delete-campaign-communication-time
                                     delete-connect-instance-config
                                     delete-connect-instance-integration
                                     delete-instance-onboarding-job
                                     describe-campaign get-campaign-state
                                     get-campaign-state-batch
                                     get-connect-instance-config
                                     get-instance-communication-limits
                                     get-instance-onboarding-job-status
                                     list-campaigns
                                     list-connect-instance-integrations
                                     list-tags-for-resource pause-campaign
                                     put-connect-instance-integration
                                     put-instance-communication-limits
                                     put-outbound-request-batch
                                     put-profile-outbound-request-batch
                                     resume-campaign start-campaign
                                     start-instance-onboarding-job
                                     stop-campaign tag-resource untag-resource
                                     update-campaign-channel-subtype-config
                                     update-campaign-communication-limits
                                     update-campaign-communication-time
                                     update-campaign-flow-association
                                     update-campaign-name
                                     update-campaign-schedule
                                     update-campaign-source)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ConnectCampaignsV2")
                                      ("arnNamespace" . "connect-campaigns")
                                      ("cloudTrailEventSource"
                                       . "connect-campaigns.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "connect-campaigns"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure agentless-config common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AgentlessConfig"))

(smithy/sdk/shapes:define-structure answer-machine-detection-config
                                    common-lisp:nil
                                    ((enable-answer-machine-detection
                                      :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "enableAnswerMachineDetection")
                                     (await-answer-machine-prompt :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "awaitAnswerMachinePrompt"))
                                    (:shape-name
                                     "AnswerMachineDetectionConfig"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attributes :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type bandwidth-allocation
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure campaign common-lisp:nil
                                    ((id :target-type campaign-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type campaign-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (channel-subtype-config :target-type
                                      channel-subtype-config :required
                                      common-lisp:t :member-name
                                      "channelSubtypeConfig")
                                     (source :target-type source :member-name
                                      "source")
                                     (connect-campaign-flow-arn :target-type
                                      arn :member-name
                                      "connectCampaignFlowArn")
                                     (schedule :target-type schedule
                                      :member-name "schedule")
                                     (communication-time-config :target-type
                                      communication-time-config :member-name
                                      "communicationTimeConfig")
                                     (communication-limits-override
                                      :target-type communication-limits-config
                                      :member-name
                                      "communicationLimitsOverride")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Campaign"))

(smithy/sdk/shapes:define-type campaign-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type campaign-deletion-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure campaign-filters common-lisp:nil
                                    ((instance-id-filter :target-type
                                      instance-id-filter :member-name
                                      "instanceIdFilter"))
                                    (:shape-name "CampaignFilters"))

(smithy/sdk/shapes:define-type campaign-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list campaign-id-list :member campaign-id)

(smithy/sdk/shapes:define-type campaign-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type campaign-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure campaign-summary common-lisp:nil
                                    ((id :target-type campaign-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type campaign-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (channel-subtypes :target-type
                                      channel-subtype-list :required
                                      common-lisp:t :member-name
                                      "channelSubtypes")
                                     (schedule :target-type schedule
                                      :member-name "schedule")
                                     (connect-campaign-flow-arn :target-type
                                      arn :member-name
                                      "connectCampaignFlowArn"))
                                    (:shape-name "CampaignSummary"))

(smithy/sdk/shapes:define-list campaign-summary-list :member campaign-summary)

(smithy/sdk/shapes:define-type capacity smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type channel-subtype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-subtype-config common-lisp:nil
                                    ((telephony :target-type
                                      telephony-channel-subtype-config
                                      :member-name "telephony")
                                     (sms :target-type
                                      sms-channel-subtype-config :member-name
                                      "sms")
                                     (email :target-type
                                      email-channel-subtype-config :member-name
                                      "email"))
                                    (:shape-name "ChannelSubtypeConfig"))

(smithy/sdk/shapes:define-list channel-subtype-list :member channel-subtype)

(smithy/sdk/shapes:define-union channel-subtype-parameters common-lisp:nil
                                ((telephony :target-type
                                  telephony-channel-subtype-parameters
                                  :member-name "telephony")
                                 (sms :target-type
                                  sms-channel-subtype-parameters :member-name
                                  "sms")
                                 (email :target-type
                                  email-channel-subtype-parameters :member-name
                                  "email"))
                                (:shape-name "ChannelSubtypeParameters"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure communication-limit common-lisp:nil
                                    ((max-count-per-recipient :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "maxCountPerRecipient")
                                     (frequency :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "frequency")
                                     (unit :target-type
                                      communication-limit-time-unit :required
                                      common-lisp:t :member-name "unit"))
                                    (:shape-name "CommunicationLimit"))

(smithy/sdk/shapes:define-list communication-limit-list :member
                               communication-limit)

(smithy/sdk/shapes:define-type communication-limit-time-unit
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union communication-limits common-lisp:nil
                                ((communication-limits-list :target-type
                                  communication-limit-list :member-name
                                  "communicationLimitsList"))
                                (:shape-name "CommunicationLimits"))

(smithy/sdk/shapes:define-structure communication-limits-config common-lisp:nil
                                    ((all-channel-subtypes :target-type
                                      communication-limits :member-name
                                      "allChannelSubtypes")
                                     (instance-limits-handling :target-type
                                      instance-limits-handling :member-name
                                      "instanceLimitsHandling"))
                                    (:shape-name "CommunicationLimitsConfig"))

(smithy/sdk/shapes:define-type communication-limits-config-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure communication-time-config common-lisp:nil
                                    ((local-time-zone-config :target-type
                                      local-time-zone-config :required
                                      common-lisp:t :member-name
                                      "localTimeZoneConfig")
                                     (telephony :target-type time-window
                                      :member-name "telephony")
                                     (sms :target-type time-window :member-name
                                      "sms")
                                     (email :target-type time-window
                                      :member-name "email"))
                                    (:shape-name "CommunicationTimeConfig"))

(smithy/sdk/shapes:define-type communication-time-config-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type contact-flow-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-campaign-request common-lisp:nil
                                ((name :target-type campaign-name :required
                                  common-lisp:t :member-name "name")
                                 (connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId")
                                 (channel-subtype-config :target-type
                                  channel-subtype-config :required
                                  common-lisp:t :member-name
                                  "channelSubtypeConfig")
                                 (source :target-type source :member-name
                                  "source")
                                 (connect-campaign-flow-arn :target-type arn
                                  :member-name "connectCampaignFlowArn")
                                 (schedule :target-type schedule :member-name
                                  "schedule")
                                 (communication-time-config :target-type
                                  communication-time-config :member-name
                                  "communicationTimeConfig")
                                 (communication-limits-override :target-type
                                  communication-limits-config :member-name
                                  "communicationLimitsOverride")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateCampaignRequest"))

(smithy/sdk/shapes:define-output create-campaign-response common-lisp:nil
                                 ((id :target-type campaign-id :member-name
                                   "id")
                                  (arn :target-type campaign-arn :member-name
                                   "arn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateCampaignResponse"))

(smithy/sdk/shapes:define-structure customer-profiles-integration-config
                                    common-lisp:nil
                                    ((domain-arn :target-type arn :required
                                      common-lisp:t :member-name "domainArn")
                                     (object-type-names :target-type
                                      object-type-names-map :required
                                      common-lisp:t :member-name
                                      "objectTypeNames"))
                                    (:shape-name
                                     "CustomerProfilesIntegrationConfig"))

(smithy/sdk/shapes:define-structure customer-profiles-integration-identifier
                                    common-lisp:nil
                                    ((domain-arn :target-type arn :required
                                      common-lisp:t :member-name "domainArn"))
                                    (:shape-name
                                     "CustomerProfilesIntegrationIdentifier"))

(smithy/sdk/shapes:define-structure customer-profiles-integration-summary
                                    common-lisp:nil
                                    ((domain-arn :target-type arn :required
                                      common-lisp:t :member-name "domainArn")
                                     (object-type-names :target-type
                                      object-type-names-map :required
                                      common-lisp:t :member-name
                                      "objectTypeNames"))
                                    (:shape-name
                                     "CustomerProfilesIntegrationSummary"))

(smithy/sdk/shapes:define-map daily-hours :key day-of-week :value
                              time-range-list)

(smithy/sdk/shapes:define-type day-of-week smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-campaign-channel-subtype-config-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (channel-subtype :target-type channel-subtype
                                  :required common-lisp:t :member-name
                                  "channelSubtype" :http-query
                                  "channelSubtype"))
                                (:shape-name
                                 "DeleteCampaignChannelSubtypeConfigRequest"))

(smithy/sdk/shapes:define-input delete-campaign-communication-limits-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (config :target-type
                                  communication-limits-config-type :required
                                  common-lisp:t :member-name "config"
                                  :http-query "config"))
                                (:shape-name
                                 "DeleteCampaignCommunicationLimitsRequest"))

(smithy/sdk/shapes:define-input delete-campaign-communication-time-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (config :target-type
                                  communication-time-config-type :required
                                  common-lisp:t :member-name "config"
                                  :http-query "config"))
                                (:shape-name
                                 "DeleteCampaignCommunicationTimeRequest"))

(smithy/sdk/shapes:define-input delete-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCampaignRequest"))

(smithy/sdk/shapes:define-input delete-connect-instance-config-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (campaign-deletion-policy :target-type
                                  campaign-deletion-policy :member-name
                                  "campaignDeletionPolicy" :http-query
                                  "campaignDeletionPolicy"))
                                (:shape-name
                                 "DeleteConnectInstanceConfigRequest"))

(smithy/sdk/shapes:define-input delete-connect-instance-integration-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (integration-identifier :target-type
                                  integration-identifier :required
                                  common-lisp:t :member-name
                                  "integrationIdentifier"))
                                (:shape-name
                                 "DeleteConnectInstanceIntegrationRequest"))

(smithy/sdk/shapes:define-input delete-instance-onboarding-job-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteInstanceOnboardingJobRequest"))

(smithy/sdk/shapes:define-input describe-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeCampaignRequest"))

(smithy/sdk/shapes:define-output describe-campaign-response common-lisp:nil
                                 ((campaign :target-type campaign :member-name
                                   "campaign"))
                                 (:shape-name "DescribeCampaignResponse"))

(smithy/sdk/shapes:define-type destination-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dial-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-channel-subtype-config
                                    common-lisp:nil
                                    ((capacity :target-type capacity
                                      :member-name "capacity")
                                     (outbound-mode :target-type
                                      email-outbound-mode :required
                                      common-lisp:t :member-name
                                      "outboundMode")
                                     (default-outbound-config :target-type
                                      email-outbound-config :required
                                      common-lisp:t :member-name
                                      "defaultOutboundConfig"))
                                    (:shape-name "EmailChannelSubtypeConfig"))

(smithy/sdk/shapes:define-structure email-channel-subtype-parameters
                                    common-lisp:nil
                                    ((destination-email-address :target-type
                                      email-address :required common-lisp:t
                                      :member-name "destinationEmailAddress")
                                     (connect-source-email-address :target-type
                                      email-address :member-name
                                      "connectSourceEmailAddress")
                                     (template-arn :target-type arn
                                      :member-name "templateArn")
                                     (template-parameters :target-type
                                      attributes :required common-lisp:t
                                      :member-name "templateParameters"))
                                    (:shape-name
                                     "EmailChannelSubtypeParameters"))

(smithy/sdk/shapes:define-type email-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-outbound-config common-lisp:nil
                                    ((connect-source-email-address :target-type
                                      email-address :required common-lisp:t
                                      :member-name "connectSourceEmailAddress")
                                     (source-email-address-display-name
                                      :target-type email-display-name
                                      :member-name
                                      "sourceEmailAddressDisplayName")
                                     (wisdom-template-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "wisdomTemplateArn"))
                                    (:shape-name "EmailOutboundConfig"))

(smithy/sdk/shapes:define-union email-outbound-mode common-lisp:nil
                                ((agentless :target-type agentless-config
                                  :member-name "agentless"))
                                (:shape-name "EmailOutboundMode"))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-config common-lisp:nil
                                    ((enabled :target-type enabled :required
                                      common-lisp:t :member-name "enabled")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "encryptionType")
                                     (key-arn :target-type encryption-key
                                      :member-name "keyArn"))
                                    (:shape-name "EncryptionConfig"))

(smithy/sdk/shapes:define-type encryption-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encryption-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-trigger common-lisp:nil
                                    ((customer-profiles-domain-arn :target-type
                                      arn :member-name
                                      "customerProfilesDomainArn"))
                                    (:shape-name "EventTrigger"))

(smithy/sdk/shapes:define-type event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failed-campaign-state-response
                                    common-lisp:nil
                                    ((campaign-id :target-type campaign-id
                                      :member-name "campaignId")
                                     (failure-code :target-type
                                      get-campaign-state-batch-failure-code
                                      :member-name "failureCode"))
                                    (:shape-name "FailedCampaignStateResponse"))

(smithy/sdk/shapes:define-list failed-campaign-state-response-list :member
                               failed-campaign-state-response)

(smithy/sdk/shapes:define-structure failed-profile-outbound-request
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (id :target-type
                                      profile-outbound-request-id :member-name
                                      "id")
                                     (failure-code :target-type
                                      profile-outbound-request-failure-code
                                      :member-name "failureCode"))
                                    (:shape-name
                                     "FailedProfileOutboundRequest"))

(smithy/sdk/shapes:define-list failed-profile-outbound-request-list :member
                               failed-profile-outbound-request)

(smithy/sdk/shapes:define-structure failed-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (id :target-type dial-request-id
                                      :member-name "id")
                                     (failure-code :target-type failure-code
                                      :member-name "failureCode"))
                                    (:shape-name "FailedRequest"))

(smithy/sdk/shapes:define-list failed-request-list :member failed-request)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type get-campaign-state-batch-failure-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-campaign-state-batch-request
                                common-lisp:nil
                                ((campaign-ids :target-type campaign-id-list
                                  :required common-lisp:t :member-name
                                  "campaignIds"))
                                (:shape-name "GetCampaignStateBatchRequest"))

(smithy/sdk/shapes:define-output get-campaign-state-batch-response
                                 common-lisp:nil
                                 ((successful-requests :target-type
                                   successful-campaign-state-response-list
                                   :member-name "successfulRequests")
                                  (failed-requests :target-type
                                   failed-campaign-state-response-list
                                   :member-name "failedRequests"))
                                 (:shape-name "GetCampaignStateBatchResponse"))

(smithy/sdk/shapes:define-input get-campaign-state-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCampaignStateRequest"))

(smithy/sdk/shapes:define-output get-campaign-state-response common-lisp:nil
                                 ((state :target-type campaign-state
                                   :member-name "state"))
                                 (:shape-name "GetCampaignStateResponse"))

(smithy/sdk/shapes:define-input get-connect-instance-config-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetConnectInstanceConfigRequest"))

(smithy/sdk/shapes:define-output get-connect-instance-config-response
                                 common-lisp:nil
                                 ((connect-instance-config :target-type
                                   instance-config :member-name
                                   "connectInstanceConfig"))
                                 (:shape-name
                                  "GetConnectInstanceConfigResponse"))

(smithy/sdk/shapes:define-input get-instance-communication-limits-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetInstanceCommunicationLimitsRequest"))

(smithy/sdk/shapes:define-output get-instance-communication-limits-response
                                 common-lisp:nil
                                 ((communication-limits-config :target-type
                                   instance-communication-limits-config
                                   :member-name "communicationLimitsConfig"))
                                 (:shape-name
                                  "GetInstanceCommunicationLimitsResponse"))

(smithy/sdk/shapes:define-input get-instance-onboarding-job-status-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetInstanceOnboardingJobStatusRequest"))

(smithy/sdk/shapes:define-output get-instance-onboarding-job-status-response
                                 common-lisp:nil
                                 ((connect-instance-onboarding-job-status
                                   :target-type instance-onboarding-job-status
                                   :member-name
                                   "connectInstanceOnboardingJobStatus"))
                                 (:shape-name
                                  "GetInstanceOnboardingJobStatusResponse"))

(smithy/sdk/shapes:define-structure instance-communication-limits-config
                                    common-lisp:nil
                                    ((all-channel-subtypes :target-type
                                      communication-limits :member-name
                                      "allChannelSubtypes"))
                                    (:shape-name
                                     "InstanceCommunicationLimitsConfig"))

(smithy/sdk/shapes:define-structure instance-config common-lisp:nil
                                    ((connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (service-linked-role-arn :target-type
                                      service-linked-role-arn :required
                                      common-lisp:t :member-name
                                      "serviceLinkedRoleArn")
                                     (encryption-config :target-type
                                      encryption-config :required common-lisp:t
                                      :member-name "encryptionConfig"))
                                    (:shape-name "InstanceConfig"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-id-filter common-lisp:nil
                                    ((value :target-type instance-id :required
                                      common-lisp:t :member-name "value")
                                     (operator :target-type
                                      instance-id-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "InstanceIdFilter"))

(smithy/sdk/shapes:define-type instance-id-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-limits-handling
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-onboarding-job-failure-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-onboarding-job-status
                                    common-lisp:nil
                                    ((connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (status :target-type
                                      instance-onboarding-job-status-code
                                      :required common-lisp:t :member-name
                                      "status")
                                     (failure-code :target-type
                                      instance-onboarding-job-failure-code
                                      :member-name "failureCode"))
                                    (:shape-name "InstanceOnboardingJobStatus"))

(smithy/sdk/shapes:define-type instance-onboarding-job-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union integration-config common-lisp:nil
                                ((customer-profiles :target-type
                                  customer-profiles-integration-config
                                  :member-name "customerProfiles")
                                 (q-connect :target-type
                                  qconnect-integration-config :member-name
                                  "qConnect"))
                                (:shape-name "IntegrationConfig"))

(smithy/sdk/shapes:define-union integration-identifier common-lisp:nil
                                ((customer-profiles :target-type
                                  customer-profiles-integration-identifier
                                  :member-name "customerProfiles")
                                 (q-connect :target-type
                                  qconnect-integration-identifier :member-name
                                  "qConnect"))
                                (:shape-name "IntegrationIdentifier"))

(smithy/sdk/shapes:define-union integration-summary common-lisp:nil
                                ((customer-profiles :target-type
                                  customer-profiles-integration-summary
                                  :member-name "customerProfiles")
                                 (q-connect :target-type
                                  qconnect-integration-summary :member-name
                                  "qConnect"))
                                (:shape-name "IntegrationSummary"))

(smithy/sdk/shapes:define-list integration-summary-list :member
                               integration-summary)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-campaign-state-exception
                                common-lisp:nil
                                ((state :target-type campaign-state :required
                                  common-lisp:t :member-name "state")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InvalidCampaignStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InvalidStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type iso8601date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iso8601duration smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iso8601time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-campaigns-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (filters :target-type campaign-filters
                                  :member-name "filters"))
                                (:shape-name "ListCampaignsRequest"))

(smithy/sdk/shapes:define-output list-campaigns-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (campaign-summary-list :target-type
                                   campaign-summary-list :member-name
                                   "campaignSummaryList"))
                                 (:shape-name "ListCampaignsResponse"))

(smithy/sdk/shapes:define-input list-connect-instance-integrations-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListConnectInstanceIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-connect-instance-integrations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (integration-summary-list :target-type
                                   integration-summary-list :member-name
                                   "integrationSummaryList"))
                                 (:shape-name
                                  "ListConnectInstanceIntegrationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure local-time-zone-config common-lisp:nil
                                    ((default-time-zone :target-type time-zone
                                      :member-name "defaultTimeZone")
                                     (local-time-zone-detection :target-type
                                      local-time-zone-detection :member-name
                                      "localTimeZoneDetection"))
                                    (:shape-name "LocalTimeZoneConfig"))

(smithy/sdk/shapes:define-list local-time-zone-detection :member
                               local-time-zone-detection-type)

(smithy/sdk/shapes:define-type local-time-zone-detection-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map object-type-names-map :key event-type :value
                              object-type-name)

(smithy/sdk/shapes:define-union open-hours common-lisp:nil
                                ((daily-hours :target-type daily-hours
                                  :member-name "dailyHours"))
                                (:shape-name "OpenHours"))

(smithy/sdk/shapes:define-structure outbound-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :required common-lisp:t :member-name
                                      "clientToken")
                                     (expiration-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "expirationTime")
                                     (channel-subtype-parameters :target-type
                                      channel-subtype-parameters :required
                                      common-lisp:t :member-name
                                      "channelSubtypeParameters"))
                                    (:shape-name "OutboundRequest"))

(smithy/sdk/shapes:define-list outbound-request-list :member outbound-request)

(smithy/sdk/shapes:define-input pause-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "PauseCampaignRequest"))

(smithy/sdk/shapes:define-structure predictive-config common-lisp:nil
                                    ((bandwidth-allocation :target-type
                                      bandwidth-allocation :required
                                      common-lisp:t :member-name
                                      "bandwidthAllocation"))
                                    (:shape-name "PredictiveConfig"))

(smithy/sdk/shapes:define-type profile-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure profile-outbound-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :required common-lisp:t :member-name
                                      "clientToken")
                                     (profile-id :target-type profile-id
                                      :required common-lisp:t :member-name
                                      "profileId")
                                     (expiration-time :target-type time-stamp
                                      :member-name "expirationTime"))
                                    (:shape-name "ProfileOutboundRequest"))

(smithy/sdk/shapes:define-type profile-outbound-request-failure-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-outbound-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list profile-outbound-request-list :member
                               profile-outbound-request)

(smithy/sdk/shapes:define-structure progressive-config common-lisp:nil
                                    ((bandwidth-allocation :target-type
                                      bandwidth-allocation :required
                                      common-lisp:t :member-name
                                      "bandwidthAllocation"))
                                    (:shape-name "ProgressiveConfig"))

(smithy/sdk/shapes:define-input put-connect-instance-integration-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (integration-config :target-type
                                  integration-config :required common-lisp:t
                                  :member-name "integrationConfig"))
                                (:shape-name
                                 "PutConnectInstanceIntegrationRequest"))

(smithy/sdk/shapes:define-input put-instance-communication-limits-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (communication-limits-config :target-type
                                  instance-communication-limits-config
                                  :required common-lisp:t :member-name
                                  "communicationLimitsConfig"))
                                (:shape-name
                                 "PutInstanceCommunicationLimitsRequest"))

(smithy/sdk/shapes:define-input put-outbound-request-batch-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (outbound-requests :target-type
                                  outbound-request-list :required common-lisp:t
                                  :member-name "outboundRequests"))
                                (:shape-name "PutOutboundRequestBatchRequest"))

(smithy/sdk/shapes:define-output put-outbound-request-batch-response
                                 common-lisp:nil
                                 ((successful-requests :target-type
                                   successful-request-list :member-name
                                   "successfulRequests")
                                  (failed-requests :target-type
                                   failed-request-list :member-name
                                   "failedRequests"))
                                 (:shape-name
                                  "PutOutboundRequestBatchResponse"))

(smithy/sdk/shapes:define-input put-profile-outbound-request-batch-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (profile-outbound-requests :target-type
                                  profile-outbound-request-list :required
                                  common-lisp:t :member-name
                                  "profileOutboundRequests"))
                                (:shape-name
                                 "PutProfileOutboundRequestBatchRequest"))

(smithy/sdk/shapes:define-output put-profile-outbound-request-batch-response
                                 common-lisp:nil
                                 ((successful-requests :target-type
                                   successful-profile-outbound-request-list
                                   :member-name "successfulRequests")
                                  (failed-requests :target-type
                                   failed-profile-outbound-request-list
                                   :member-name "failedRequests"))
                                 (:shape-name
                                  "PutProfileOutboundRequestBatchResponse"))

(smithy/sdk/shapes:define-structure qconnect-integration-config common-lisp:nil
                                    ((knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn"))
                                    (:shape-name "QConnectIntegrationConfig"))

(smithy/sdk/shapes:define-structure qconnect-integration-identifier
                                    common-lisp:nil
                                    ((knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn"))
                                    (:shape-name
                                     "QConnectIntegrationIdentifier"))

(smithy/sdk/shapes:define-structure qconnect-integration-summary
                                    common-lisp:nil
                                    ((knowledge-base-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "knowledgeBaseArn"))
                                    (:shape-name "QConnectIntegrationSummary"))

(smithy/sdk/shapes:define-type queue-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure restricted-period common-lisp:nil
                                    ((name :target-type restricted-period-name
                                      :member-name "name")
                                     (start-date :target-type iso8601date
                                      :required common-lisp:t :member-name
                                      "startDate")
                                     (end-date :target-type iso8601date
                                      :required common-lisp:t :member-name
                                      "endDate"))
                                    (:shape-name "RestrictedPeriod"))

(smithy/sdk/shapes:define-list restricted-period-list :member restricted-period)

(smithy/sdk/shapes:define-type restricted-period-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union restricted-periods common-lisp:nil
                                ((restricted-period-list :target-type
                                  restricted-period-list :member-name
                                  "restrictedPeriodList"))
                                (:shape-name "RestrictedPeriods"))

(smithy/sdk/shapes:define-input resume-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "ResumeCampaignRequest"))

(smithy/sdk/shapes:define-structure schedule common-lisp:nil
                                    ((start-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "endTime")
                                     (refresh-frequency :target-type
                                      iso8601duration :member-name
                                      "refreshFrequency"))
                                    (:shape-name "Schedule"))

(smithy/sdk/shapes:define-type service-linked-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure sms-channel-subtype-config common-lisp:nil
                                    ((capacity :target-type capacity
                                      :member-name "capacity")
                                     (outbound-mode :target-type
                                      sms-outbound-mode :required common-lisp:t
                                      :member-name "outboundMode")
                                     (default-outbound-config :target-type
                                      sms-outbound-config :required
                                      common-lisp:t :member-name
                                      "defaultOutboundConfig"))
                                    (:shape-name "SmsChannelSubtypeConfig"))

(smithy/sdk/shapes:define-structure sms-channel-subtype-parameters
                                    common-lisp:nil
                                    ((destination-phone-number :target-type
                                      destination-phone-number :required
                                      common-lisp:t :member-name
                                      "destinationPhoneNumber")
                                     (connect-source-phone-number-arn
                                      :target-type arn :member-name
                                      "connectSourcePhoneNumberArn")
                                     (template-arn :target-type arn
                                      :member-name "templateArn")
                                     (template-parameters :target-type
                                      attributes :required common-lisp:t
                                      :member-name "templateParameters"))
                                    (:shape-name "SmsChannelSubtypeParameters"))

(smithy/sdk/shapes:define-structure sms-outbound-config common-lisp:nil
                                    ((connect-source-phone-number-arn
                                      :target-type arn :required common-lisp:t
                                      :member-name
                                      "connectSourcePhoneNumberArn")
                                     (wisdom-template-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "wisdomTemplateArn"))
                                    (:shape-name "SmsOutboundConfig"))

(smithy/sdk/shapes:define-union sms-outbound-mode common-lisp:nil
                                ((agentless :target-type agentless-config
                                  :member-name "agentless"))
                                (:shape-name "SmsOutboundMode"))

(smithy/sdk/shapes:define-union source common-lisp:nil
                                ((customer-profiles-segment-arn :target-type
                                  arn :member-name
                                  "customerProfilesSegmentArn")
                                 (event-trigger :target-type event-trigger
                                  :member-name "eventTrigger"))
                                (:shape-name "Source"))

(smithy/sdk/shapes:define-type source-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "StartCampaignRequest"))

(smithy/sdk/shapes:define-input start-instance-onboarding-job-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (encryption-config :target-type
                                  encryption-config :required common-lisp:t
                                  :member-name "encryptionConfig"))
                                (:shape-name
                                 "StartInstanceOnboardingJobRequest"))

(smithy/sdk/shapes:define-output start-instance-onboarding-job-response
                                 common-lisp:nil
                                 ((connect-instance-onboarding-job-status
                                   :target-type instance-onboarding-job-status
                                   :member-name
                                   "connectInstanceOnboardingJobStatus"))
                                 (:shape-name
                                  "StartInstanceOnboardingJobResponse"))

(smithy/sdk/shapes:define-input stop-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "StopCampaignRequest"))

(smithy/sdk/shapes:define-structure successful-campaign-state-response
                                    common-lisp:nil
                                    ((campaign-id :target-type campaign-id
                                      :member-name "campaignId")
                                     (state :target-type campaign-state
                                      :member-name "state"))
                                    (:shape-name
                                     "SuccessfulCampaignStateResponse"))

(smithy/sdk/shapes:define-list successful-campaign-state-response-list :member
                               successful-campaign-state-response)

(smithy/sdk/shapes:define-structure successful-profile-outbound-request
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (id :target-type
                                      profile-outbound-request-id :member-name
                                      "id"))
                                    (:shape-name
                                     "SuccessfulProfileOutboundRequest"))

(smithy/sdk/shapes:define-list successful-profile-outbound-request-list :member
                               successful-profile-outbound-request)

(smithy/sdk/shapes:define-structure successful-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (id :target-type dial-request-id
                                      :member-name "id"))
                                    (:shape-name "SuccessfulRequest"))

(smithy/sdk/shapes:define-list successful-request-list :member
                               successful-request)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure telephony-channel-subtype-config
                                    common-lisp:nil
                                    ((capacity :target-type capacity
                                      :member-name "capacity")
                                     (connect-queue-id :target-type queue-id
                                      :member-name "connectQueueId")
                                     (outbound-mode :target-type
                                      telephony-outbound-mode :required
                                      common-lisp:t :member-name
                                      "outboundMode")
                                     (default-outbound-config :target-type
                                      telephony-outbound-config :required
                                      common-lisp:t :member-name
                                      "defaultOutboundConfig"))
                                    (:shape-name
                                     "TelephonyChannelSubtypeConfig"))

(smithy/sdk/shapes:define-structure telephony-channel-subtype-parameters
                                    common-lisp:nil
                                    ((destination-phone-number :target-type
                                      destination-phone-number :required
                                      common-lisp:t :member-name
                                      "destinationPhoneNumber")
                                     (attributes :target-type attributes
                                      :required common-lisp:t :member-name
                                      "attributes")
                                     (connect-source-phone-number :target-type
                                      source-phone-number :member-name
                                      "connectSourcePhoneNumber")
                                     (answer-machine-detection-config
                                      :target-type
                                      answer-machine-detection-config
                                      :member-name
                                      "answerMachineDetectionConfig"))
                                    (:shape-name
                                     "TelephonyChannelSubtypeParameters"))

(smithy/sdk/shapes:define-structure telephony-outbound-config common-lisp:nil
                                    ((connect-contact-flow-id :target-type
                                      contact-flow-id :required common-lisp:t
                                      :member-name "connectContactFlowId")
                                     (connect-source-phone-number :target-type
                                      source-phone-number :member-name
                                      "connectSourcePhoneNumber")
                                     (answer-machine-detection-config
                                      :target-type
                                      answer-machine-detection-config
                                      :member-name
                                      "answerMachineDetectionConfig"))
                                    (:shape-name "TelephonyOutboundConfig"))

(smithy/sdk/shapes:define-union telephony-outbound-mode common-lisp:nil
                                ((progressive :target-type progressive-config
                                  :member-name "progressive")
                                 (predictive :target-type predictive-config
                                  :member-name "predictive")
                                 (agentless :target-type agentless-config
                                  :member-name "agentless"))
                                (:shape-name "TelephonyOutboundMode"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((start-time :target-type iso8601time
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type iso8601time
                                      :required common-lisp:t :member-name
                                      "endTime"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-list time-range-list :member time-range)

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure time-window common-lisp:nil
                                    ((open-hours :target-type open-hours
                                      :required common-lisp:t :member-name
                                      "openHours")
                                     (restricted-periods :target-type
                                      restricted-periods :member-name
                                      "restrictedPeriods"))
                                    (:shape-name "TimeWindow"))

(smithy/sdk/shapes:define-type time-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-campaign-channel-subtype-config-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (channel-subtype-config :target-type
                                  channel-subtype-config :required
                                  common-lisp:t :member-name
                                  "channelSubtypeConfig"))
                                (:shape-name
                                 "UpdateCampaignChannelSubtypeConfigRequest"))

(smithy/sdk/shapes:define-input update-campaign-communication-limits-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (communication-limits-override :target-type
                                  communication-limits-config :required
                                  common-lisp:t :member-name
                                  "communicationLimitsOverride"))
                                (:shape-name
                                 "UpdateCampaignCommunicationLimitsRequest"))

(smithy/sdk/shapes:define-input update-campaign-communication-time-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (communication-time-config :target-type
                                  communication-time-config :required
                                  common-lisp:t :member-name
                                  "communicationTimeConfig"))
                                (:shape-name
                                 "UpdateCampaignCommunicationTimeRequest"))

(smithy/sdk/shapes:define-input update-campaign-flow-association-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (connect-campaign-flow-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "connectCampaignFlowArn"))
                                (:shape-name
                                 "UpdateCampaignFlowAssociationRequest"))

(smithy/sdk/shapes:define-input update-campaign-name-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type campaign-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "UpdateCampaignNameRequest"))

(smithy/sdk/shapes:define-input update-campaign-schedule-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (schedule :target-type schedule :required
                                  common-lisp:t :member-name "schedule"))
                                (:shape-name "UpdateCampaignScheduleRequest"))

(smithy/sdk/shapes:define-input update-campaign-source-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (source :target-type source :required
                                  common-lisp:t :member-name "source"))
                                (:shape-name "UpdateCampaignSourceRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type xamazon-error-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-campaign :shape-name
                                       "CreateCampaign" :input
                                       create-campaign-request :output
                                       create-campaign-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/v2/campaigns")

(smithy/sdk/operation:define-operation delete-campaign :shape-name
                                       "DeleteCampaign" :input
                                       delete-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/campaigns/{id}")

(smithy/sdk/operation:define-operation delete-campaign-channel-subtype-config
                                       :shape-name
                                       "DeleteCampaignChannelSubtypeConfig"
                                       :input
                                       delete-campaign-channel-subtype-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/campaigns/{id}/channel-subtype-config")

(smithy/sdk/operation:define-operation delete-campaign-communication-limits
                                       :shape-name
                                       "DeleteCampaignCommunicationLimits"
                                       :input
                                       delete-campaign-communication-limits-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/campaigns/{id}/communication-limits")

(smithy/sdk/operation:define-operation delete-campaign-communication-time
                                       :shape-name
                                       "DeleteCampaignCommunicationTime" :input
                                       delete-campaign-communication-time-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/campaigns/{id}/communication-time")

(smithy/sdk/operation:define-operation delete-connect-instance-config
                                       :shape-name
                                       "DeleteConnectInstanceConfig" :input
                                       delete-connect-instance-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/connect-instance/{connectInstanceId}/config")

(smithy/sdk/operation:define-operation delete-connect-instance-integration
                                       :shape-name
                                       "DeleteConnectInstanceIntegration"
                                       :input
                                       delete-connect-instance-integration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/connect-instance/{connectInstanceId}/integrations/delete")

(smithy/sdk/operation:define-operation delete-instance-onboarding-job
                                       :shape-name
                                       "DeleteInstanceOnboardingJob" :input
                                       delete-instance-onboarding-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v2/connect-instance/{connectInstanceId}/onboarding")

(smithy/sdk/operation:define-operation describe-campaign :shape-name
                                       "DescribeCampaign" :input
                                       describe-campaign-request :output
                                       describe-campaign-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/v2/campaigns/{id}")

(smithy/sdk/operation:define-operation get-campaign-state :shape-name
                                       "GetCampaignState" :input
                                       get-campaign-state-request :output
                                       get-campaign-state-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/campaigns/{id}/state")

(smithy/sdk/operation:define-operation get-campaign-state-batch :shape-name
                                       "GetCampaignStateBatch" :input
                                       get-campaign-state-batch-request :output
                                       get-campaign-state-batch-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns-state")

(smithy/sdk/operation:define-operation get-connect-instance-config :shape-name
                                       "GetConnectInstanceConfig" :input
                                       get-connect-instance-config-request
                                       :output
                                       get-connect-instance-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/connect-instance/{connectInstanceId}/config")

(smithy/sdk/operation:define-operation get-instance-communication-limits
                                       :shape-name
                                       "GetInstanceCommunicationLimits" :input
                                       get-instance-communication-limits-request
                                       :output
                                       get-instance-communication-limits-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/connect-instance/{connectInstanceId}/communication-limits")

(smithy/sdk/operation:define-operation get-instance-onboarding-job-status
                                       :shape-name
                                       "GetInstanceOnboardingJobStatus" :input
                                       get-instance-onboarding-job-status-request
                                       :output
                                       get-instance-onboarding-job-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/connect-instance/{connectInstanceId}/onboarding")

(smithy/sdk/operation:define-operation list-campaigns :shape-name
                                       "ListCampaigns" :input
                                       list-campaigns-request :output
                                       list-campaigns-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns-summary")

(smithy/sdk/operation:define-operation list-connect-instance-integrations
                                       :shape-name
                                       "ListConnectInstanceIntegrations" :input
                                       list-connect-instance-integrations-request
                                       :output
                                       list-connect-instance-integrations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v2/connect-instance/{connectInstanceId}/integrations")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v2/tags/{arn}")

(smithy/sdk/operation:define-operation pause-campaign :shape-name
                                       "PauseCampaign" :input
                                       pause-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/pause")

(smithy/sdk/operation:define-operation put-connect-instance-integration
                                       :shape-name
                                       "PutConnectInstanceIntegration" :input
                                       put-connect-instance-integration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/connect-instance/{connectInstanceId}/integrations")

(smithy/sdk/operation:define-operation put-instance-communication-limits
                                       :shape-name
                                       "PutInstanceCommunicationLimits" :input
                                       put-instance-communication-limits-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/connect-instance/{connectInstanceId}/communication-limits")

(smithy/sdk/operation:define-operation put-outbound-request-batch :shape-name
                                       "PutOutboundRequestBatch" :input
                                       put-outbound-request-batch-request
                                       :output
                                       put-outbound-request-batch-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/campaigns/{id}/outbound-requests")

(smithy/sdk/operation:define-operation put-profile-outbound-request-batch
                                       :shape-name
                                       "PutProfileOutboundRequestBatch" :input
                                       put-profile-outbound-request-batch-request
                                       :output
                                       put-profile-outbound-request-batch-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/campaigns/{id}/profile-outbound-requests")

(smithy/sdk/operation:define-operation resume-campaign :shape-name
                                       "ResumeCampaign" :input
                                       resume-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/resume")

(smithy/sdk/operation:define-operation start-campaign :shape-name
                                       "StartCampaign" :input
                                       start-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/start")

(smithy/sdk/operation:define-operation start-instance-onboarding-job
                                       :shape-name "StartInstanceOnboardingJob"
                                       :input
                                       start-instance-onboarding-job-request
                                       :output
                                       start-instance-onboarding-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v2/connect-instance/{connectInstanceId}/onboarding")

(smithy/sdk/operation:define-operation stop-campaign :shape-name "StopCampaign"
                                       :input stop-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/stop")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v2/tags/{arn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/v2/tags/{arn}")

(smithy/sdk/operation:define-operation update-campaign-channel-subtype-config
                                       :shape-name
                                       "UpdateCampaignChannelSubtypeConfig"
                                       :input
                                       update-campaign-channel-subtype-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/channel-subtype-config")

(smithy/sdk/operation:define-operation update-campaign-communication-limits
                                       :shape-name
                                       "UpdateCampaignCommunicationLimits"
                                       :input
                                       update-campaign-communication-limits-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/communication-limits")

(smithy/sdk/operation:define-operation update-campaign-communication-time
                                       :shape-name
                                       "UpdateCampaignCommunicationTime" :input
                                       update-campaign-communication-time-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/communication-time")

(smithy/sdk/operation:define-operation update-campaign-flow-association
                                       :shape-name
                                       "UpdateCampaignFlowAssociation" :input
                                       update-campaign-flow-association-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/flow")

(smithy/sdk/operation:define-operation update-campaign-name :shape-name
                                       "UpdateCampaignName" :input
                                       update-campaign-name-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/name")

(smithy/sdk/operation:define-operation update-campaign-schedule :shape-name
                                       "UpdateCampaignSchedule" :input
                                       update-campaign-schedule-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/schedule")

(smithy/sdk/operation:define-operation update-campaign-source :shape-name
                                       "UpdateCampaignSource" :input
                                       update-campaign-source-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v2/campaigns/{id}/source")
