(uiop/package:define-package #:pira/pinpoint (:use)
                             (:export #:admchannel-request
                              #:admchannel-response #:admmessage
                              #:apnschannel-request #:apnschannel-response
                              #:apnsmessage #:apnspush-notification-template
                              #:apnssandbox-channel-request
                              #:apnssandbox-channel-response
                              #:apnsvoip-channel-request
                              #:apnsvoip-channel-response
                              #:apnsvoip-sandbox-channel-request
                              #:apnsvoip-sandbox-channel-response #:action
                              #:activities-response #:activity
                              #:activity-response #:address-configuration
                              #:alignment #:android-push-notification-template
                              #:application-date-range-kpi-response
                              #:application-response
                              #:application-settings-journey-limits
                              #:application-settings-resource
                              #:applications-response #:attribute-dimension
                              #:attribute-type #:attributes-resource
                              #:baidu-channel-request #:baidu-channel-response
                              #:baidu-message #:base-kpi-result #:button-action
                              #:campaign-custom-message
                              #:campaign-date-range-kpi-response
                              #:campaign-email-message #:campaign-event-filter
                              #:campaign-hook #:campaign-in-app-message
                              #:campaign-limits #:campaign-response
                              #:campaign-sms-message #:campaign-state
                              #:campaign-status #:campaigns-response
                              #:channel-response #:channel-type
                              #:channels-response #:closed-days
                              #:closed-days-rule #:condition
                              #:conditional-split-activity
                              #:contact-center-activity #:create-app
                              #:create-application-request #:create-campaign
                              #:create-email-template #:create-export-job
                              #:create-import-job #:create-in-app-template
                              #:create-journey #:create-push-template
                              #:create-recommender-configuration
                              #:create-recommender-configuration-shape
                              #:create-segment #:create-sms-template
                              #:create-template-message-body
                              #:create-voice-template
                              #:custom-delivery-configuration
                              #:custom-message-activity #:day-of-week
                              #:default-button-configuration #:default-message
                              #:default-push-notification-message
                              #:default-push-notification-template
                              #:delete-adm-channel #:delete-apns-channel
                              #:delete-apns-sandbox-channel
                              #:delete-apns-voip-channel
                              #:delete-apns-voip-sandbox-channel #:delete-app
                              #:delete-baidu-channel #:delete-campaign
                              #:delete-email-channel #:delete-email-template
                              #:delete-endpoint #:delete-event-stream
                              #:delete-gcm-channel #:delete-in-app-template
                              #:delete-journey #:delete-push-template
                              #:delete-recommender-configuration
                              #:delete-segment #:delete-sms-channel
                              #:delete-sms-template #:delete-user-endpoints
                              #:delete-voice-channel #:delete-voice-template
                              #:delivery-status #:dimension-type
                              #:direct-message-configuration #:duration
                              #:email-channel-request #:email-channel-response
                              #:email-message #:email-message-activity
                              #:email-template-request
                              #:email-template-response #:endpoint-batch-item
                              #:endpoint-batch-request #:endpoint-demographic
                              #:endpoint-item-response #:endpoint-location
                              #:endpoint-message-result #:endpoint-request
                              #:endpoint-response #:endpoint-send-configuration
                              #:endpoint-user #:endpoints-response #:event
                              #:event-condition #:event-dimensions
                              #:event-filter #:event-item-response
                              #:event-start-condition #:event-stream
                              #:events-batch #:events-request #:events-response
                              #:export-job-request #:export-job-resource
                              #:export-job-response #:export-jobs-response
                              #:filter-type #:format #:frequency
                              #:gcmchannel-request #:gcmchannel-response
                              #:gcmmessage #:gpscoordinates
                              #:gpspoint-dimension #:get-adm-channel
                              #:get-apns-channel #:get-apns-sandbox-channel
                              #:get-apns-voip-channel
                              #:get-apns-voip-sandbox-channel #:get-app
                              #:get-application-date-range-kpi
                              #:get-application-settings #:get-apps
                              #:get-baidu-channel #:get-campaign
                              #:get-campaign-activities
                              #:get-campaign-date-range-kpi
                              #:get-campaign-version #:get-campaign-versions
                              #:get-campaigns #:get-channels
                              #:get-email-channel #:get-email-template
                              #:get-endpoint #:get-event-stream
                              #:get-export-job #:get-export-jobs
                              #:get-gcm-channel #:get-import-job
                              #:get-import-jobs #:get-in-app-messages
                              #:get-in-app-template #:get-journey
                              #:get-journey-date-range-kpi
                              #:get-journey-execution-activity-metrics
                              #:get-journey-execution-metrics
                              #:get-journey-run-execution-activity-metrics
                              #:get-journey-run-execution-metrics
                              #:get-journey-runs #:get-push-template
                              #:get-recommender-configuration
                              #:get-recommender-configurations #:get-segment
                              #:get-segment-export-jobs
                              #:get-segment-import-jobs #:get-segment-version
                              #:get-segment-versions #:get-segments
                              #:get-sms-channel #:get-sms-template
                              #:get-user-endpoints #:get-voice-channel
                              #:get-voice-template #:holdout-activity
                              #:import-job-request #:import-job-resource
                              #:import-job-response #:import-jobs-response
                              #:in-app-campaign-schedule #:in-app-message
                              #:in-app-message-body-config
                              #:in-app-message-button #:in-app-message-campaign
                              #:in-app-message-content
                              #:in-app-message-header-config
                              #:in-app-messages-response
                              #:in-app-template-request
                              #:in-app-template-response #:include
                              #:item-response #:job-status
                              #:journey-channel-settings
                              #:journey-custom-message
                              #:journey-date-range-kpi-response
                              #:journey-email-message
                              #:journey-execution-activity-metrics-response
                              #:journey-execution-metrics-response
                              #:journey-limits #:journey-push-message
                              #:journey-response
                              #:journey-run-execution-activity-metrics-response
                              #:journey-run-execution-metrics-response
                              #:journey-run-response #:journey-run-status
                              #:journey-runs-response #:journey-smsmessage
                              #:journey-schedule #:journey-state-request
                              #:journey-timeframe-cap #:journeys-response
                              #:layout #:list-journeys
                              #:list-of-activity-response
                              #:list-of-application-response
                              #:list-of-campaign-response
                              #:list-of-closed-days-rules
                              #:list-of-endpoint-batch-item
                              #:list-of-endpoint-response
                              #:list-of-export-job-response
                              #:list-of-import-job-response
                              #:list-of-in-app-message-campaign
                              #:list-of-in-app-message-content
                              #:list-of-journey-response
                              #:list-of-journey-run-response
                              #:list-of-message-header
                              #:list-of-multi-conditional-branch
                              #:list-of-open-hours-rules
                              #:list-of-random-split-entry
                              #:list-of-recommender-configuration-response
                              #:list-of-result-row #:list-of-result-row-value
                              #:list-of-segment-dimensions
                              #:list-of-segment-group
                              #:list-of-segment-reference
                              #:list-of-segment-response
                              #:list-of-simple-condition
                              #:list-of-template-response
                              #:list-of-template-version-response
                              #:list-of-treatment-resource
                              #:list-of-write-treatment-resource
                              #:list-of-endpoint-types-element
                              #:list-of-timezone-estimation-methods-element
                              #:list-of-string
                              #:list-recommender-configurations-response
                              #:list-tags-for-resource #:list-template-versions
                              #:list-templates #:map-of-activity
                              #:map-of-address-configuration
                              #:map-of-attribute-dimension
                              #:map-of-channel-response
                              #:map-of-endpoint-message-result
                              #:map-of-endpoint-send-configuration
                              #:map-of-event #:map-of-event-item-response
                              #:map-of-events-batch #:map-of-item-response
                              #:map-of-list-of-open-hours-rules
                              #:map-of-list-of-string
                              #:map-of-map-of-endpoint-message-result
                              #:map-of-message-result #:map-of-metric-dimension
                              #:map-of-double #:map-of-integer #:map-of-string
                              #:message #:message-body #:message-configuration
                              #:message-header #:message-request
                              #:message-response #:message-result
                              #:message-type #:metric-dimension #:mode
                              #:multi-conditional-branch
                              #:multi-conditional-split-activity
                              #:number-validate-request
                              #:number-validate-response #:open-hours
                              #:open-hours-rule #:operator
                              #:override-button-configuration
                              #:phone-number-validate #:pinpoint
                              #:public-endpoint #:push-message-activity
                              #:push-notification-template-request
                              #:push-notification-template-response
                              #:put-event-stream #:put-events #:quiet-time
                              #:random-split-activity #:random-split-entry
                              #:raw-email #:recency-dimension #:recency-type
                              #:recommender-configuration-response
                              #:remove-attributes #:result-row
                              #:result-row-value #:smschannel-request
                              #:smschannel-response #:smsmessage
                              #:smsmessage-activity #:smstemplate-request
                              #:smstemplate-response #:schedule
                              #:segment-behaviors #:segment-condition
                              #:segment-demographics #:segment-dimensions
                              #:segment-group #:segment-group-list
                              #:segment-import-resource #:segment-location
                              #:segment-reference #:segment-response
                              #:segment-type #:segments-response
                              #:send-messages #:send-otpmessage
                              #:send-otpmessage-request-parameters
                              #:send-users-message-request
                              #:send-users-message-response
                              #:send-users-messages #:session #:set-dimension
                              #:simple-condition #:simple-email
                              #:simple-email-part #:source-type
                              #:start-condition #:state #:tag-resource
                              #:tags-model #:template
                              #:template-active-version-request
                              #:template-configuration
                              #:template-create-message-body
                              #:template-response #:template-type
                              #:template-version-response
                              #:template-versions-response #:templates-response
                              #:treatment-resource #:type #:untag-resource
                              #:update-adm-channel #:update-apns-channel
                              #:update-apns-sandbox-channel
                              #:update-apns-voip-channel
                              #:update-apns-voip-sandbox-channel
                              #:update-application-settings
                              #:update-attributes-request
                              #:update-baidu-channel #:update-campaign
                              #:update-email-channel #:update-email-template
                              #:update-endpoint #:update-endpoints-batch
                              #:update-gcm-channel #:update-in-app-template
                              #:update-journey #:update-journey-state
                              #:update-push-template
                              #:update-recommender-configuration
                              #:update-recommender-configuration-shape
                              #:update-segment #:update-sms-channel
                              #:update-sms-template
                              #:update-template-active-version
                              #:update-voice-channel #:update-voice-template
                              #:verification-response #:verify-otpmessage
                              #:verify-otpmessage-request-parameters
                              #:voice-channel-request #:voice-channel-response
                              #:voice-message #:voice-template-request
                              #:voice-template-response #:wait-activity
                              #:wait-time #:write-application-settings-request
                              #:write-campaign-request #:write-event-stream
                              #:write-journey-request #:write-segment-request
                              #:write-treatment-resource
                              #:endpoint-types-element
                              #:timezone-estimation-methods-element #:blob
                              #:boolean #:double #:integer #:string
                              #:timestamp-iso8601))
(common-lisp:in-package #:pira/pinpoint)

(smithy/sdk/service:define-service pinpoint :shape-name "Pinpoint" :version
                                   "2016-12-01" :title "Amazon Pinpoint"
                                   :operations
                                   '(create-app create-campaign
                                     create-email-template create-export-job
                                     create-import-job create-in-app-template
                                     create-journey create-push-template
                                     create-recommender-configuration
                                     create-segment create-sms-template
                                     create-voice-template delete-adm-channel
                                     delete-apns-channel
                                     delete-apns-sandbox-channel
                                     delete-apns-voip-channel
                                     delete-apns-voip-sandbox-channel
                                     delete-app delete-baidu-channel
                                     delete-campaign delete-email-channel
                                     delete-email-template delete-endpoint
                                     delete-event-stream delete-gcm-channel
                                     delete-in-app-template delete-journey
                                     delete-push-template
                                     delete-recommender-configuration
                                     delete-segment delete-sms-channel
                                     delete-sms-template delete-user-endpoints
                                     delete-voice-channel delete-voice-template
                                     get-adm-channel get-apns-channel
                                     get-apns-sandbox-channel
                                     get-apns-voip-channel
                                     get-apns-voip-sandbox-channel get-app
                                     get-application-date-range-kpi
                                     get-application-settings get-apps
                                     get-baidu-channel get-campaign
                                     get-campaign-activities
                                     get-campaign-date-range-kpi get-campaigns
                                     get-campaign-version get-campaign-versions
                                     get-channels get-email-channel
                                     get-email-template get-endpoint
                                     get-event-stream get-export-job
                                     get-export-jobs get-gcm-channel
                                     get-import-job get-import-jobs
                                     get-in-app-messages get-in-app-template
                                     get-journey get-journey-date-range-kpi
                                     get-journey-execution-activity-metrics
                                     get-journey-execution-metrics
                                     get-journey-run-execution-activity-metrics
                                     get-journey-run-execution-metrics
                                     get-journey-runs get-push-template
                                     get-recommender-configuration
                                     get-recommender-configurations get-segment
                                     get-segment-export-jobs
                                     get-segment-import-jobs get-segments
                                     get-segment-version get-segment-versions
                                     get-sms-channel get-sms-template
                                     get-user-endpoints get-voice-channel
                                     get-voice-template list-journeys
                                     list-tags-for-resource list-templates
                                     list-template-versions
                                     phone-number-validate put-events
                                     put-event-stream remove-attributes
                                     send-messages send-otpmessage
                                     send-users-messages tag-resource
                                     untag-resource update-adm-channel
                                     update-apns-channel
                                     update-apns-sandbox-channel
                                     update-apns-voip-channel
                                     update-apns-voip-sandbox-channel
                                     update-application-settings
                                     update-baidu-channel update-campaign
                                     update-email-channel update-email-template
                                     update-endpoint update-endpoints-batch
                                     update-gcm-channel update-in-app-template
                                     update-journey update-journey-state
                                     update-push-template
                                     update-recommender-configuration
                                     update-segment update-sms-channel
                                     update-sms-template
                                     update-template-active-version
                                     update-voice-channel update-voice-template
                                     verify-otpmessage)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Pinpoint")
                                      ("arnNamespace" . "mobiletargeting")
                                      ("cloudFormationName" . "Pinpoint")
                                      ("cloudTrailEventSource"
                                       . "pinpoint.amazonaws.com")
                                      ("endpointPrefix" . "pinpoint"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mobiletargeting"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure admchannel-request common-lisp:nil
                                    ((client-id :target-type string :required
                                      common-lisp:t :member-name "ClientId")
                                     (client-secret :target-type string
                                      :required common-lisp:t :member-name
                                      "ClientSecret")
                                     (enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "ADMChannelRequest"))

(smithy/sdk/shapes:define-structure admchannel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "ADMChannelResponse"))

(smithy/sdk/shapes:define-structure admmessage common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (consolidation-key :target-type string
                                      :member-name "ConsolidationKey")
                                     (data :target-type map-of-string
                                      :member-name "Data")
                                     (expires-after :target-type string
                                      :member-name "ExpiresAfter")
                                     (icon-reference :target-type string
                                      :member-name "IconReference")
                                     (image-icon-url :target-type string
                                      :member-name "ImageIconUrl")
                                     (image-url :target-type string
                                      :member-name "ImageUrl")
                                     (md5 :target-type string :member-name
                                      "MD5")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (silent-push :target-type boolean
                                      :member-name "SilentPush")
                                     (small-image-icon-url :target-type string
                                      :member-name "SmallImageIconUrl")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name "ADMMessage"))

(smithy/sdk/shapes:define-structure apnschannel-request common-lisp:nil
                                    ((bundle-id :target-type string
                                      :member-name "BundleId")
                                     (certificate :target-type string
                                      :member-name "Certificate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (private-key :target-type string
                                      :member-name "PrivateKey")
                                     (team-id :target-type string :member-name
                                      "TeamId")
                                     (token-key :target-type string
                                      :member-name "TokenKey")
                                     (token-key-id :target-type string
                                      :member-name "TokenKeyId"))
                                    (:shape-name "APNSChannelRequest"))

(smithy/sdk/shapes:define-structure apnschannel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (has-token-key :target-type boolean
                                      :member-name "HasTokenKey")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "APNSChannelResponse"))

(smithy/sdk/shapes:define-structure apnsmessage common-lisp:nil
                                    ((apnspush-type :target-type string
                                      :member-name "APNSPushType")
                                     (action :target-type action :member-name
                                      "Action")
                                     (badge :target-type integer :member-name
                                      "Badge")
                                     (body :target-type string :member-name
                                      "Body")
                                     (category :target-type string :member-name
                                      "Category")
                                     (collapse-id :target-type string
                                      :member-name "CollapseId")
                                     (data :target-type map-of-string
                                      :member-name "Data")
                                     (media-url :target-type string
                                      :member-name "MediaUrl")
                                     (preferred-authentication-method
                                      :target-type string :member-name
                                      "PreferredAuthenticationMethod")
                                     (priority :target-type string :member-name
                                      "Priority")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (silent-push :target-type boolean
                                      :member-name "SilentPush")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (thread-id :target-type string
                                      :member-name "ThreadId")
                                     (time-to-live :target-type integer
                                      :member-name "TimeToLive")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name "APNSMessage"))

(smithy/sdk/shapes:define-structure apnspush-notification-template
                                    common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (media-url :target-type string
                                      :member-name "MediaUrl")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name
                                     "APNSPushNotificationTemplate"))

(smithy/sdk/shapes:define-structure apnssandbox-channel-request common-lisp:nil
                                    ((bundle-id :target-type string
                                      :member-name "BundleId")
                                     (certificate :target-type string
                                      :member-name "Certificate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (private-key :target-type string
                                      :member-name "PrivateKey")
                                     (team-id :target-type string :member-name
                                      "TeamId")
                                     (token-key :target-type string
                                      :member-name "TokenKey")
                                     (token-key-id :target-type string
                                      :member-name "TokenKeyId"))
                                    (:shape-name "APNSSandboxChannelRequest"))

(smithy/sdk/shapes:define-structure apnssandbox-channel-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (has-token-key :target-type boolean
                                      :member-name "HasTokenKey")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "APNSSandboxChannelResponse"))

(smithy/sdk/shapes:define-structure apnsvoip-channel-request common-lisp:nil
                                    ((bundle-id :target-type string
                                      :member-name "BundleId")
                                     (certificate :target-type string
                                      :member-name "Certificate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (private-key :target-type string
                                      :member-name "PrivateKey")
                                     (team-id :target-type string :member-name
                                      "TeamId")
                                     (token-key :target-type string
                                      :member-name "TokenKey")
                                     (token-key-id :target-type string
                                      :member-name "TokenKeyId"))
                                    (:shape-name "APNSVoipChannelRequest"))

(smithy/sdk/shapes:define-structure apnsvoip-channel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (has-token-key :target-type boolean
                                      :member-name "HasTokenKey")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "APNSVoipChannelResponse"))

(smithy/sdk/shapes:define-structure apnsvoip-sandbox-channel-request
                                    common-lisp:nil
                                    ((bundle-id :target-type string
                                      :member-name "BundleId")
                                     (certificate :target-type string
                                      :member-name "Certificate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (private-key :target-type string
                                      :member-name "PrivateKey")
                                     (team-id :target-type string :member-name
                                      "TeamId")
                                     (token-key :target-type string
                                      :member-name "TokenKey")
                                     (token-key-id :target-type string
                                      :member-name "TokenKeyId"))
                                    (:shape-name
                                     "APNSVoipSandboxChannelRequest"))

(smithy/sdk/shapes:define-structure apnsvoip-sandbox-channel-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (has-token-key :target-type boolean
                                      :member-name "HasTokenKey")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name
                                     "APNSVoipSandboxChannelResponse"))

(smithy/sdk/shapes:define-enum action
    common-lisp:nil
  (:open-app "OPEN_APP")
  (:deep-link "DEEP_LINK")
  (:url "URL"))

(smithy/sdk/shapes:define-structure activities-response common-lisp:nil
                                    ((item :target-type
                                      list-of-activity-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ActivitiesResponse"))

(smithy/sdk/shapes:define-structure activity common-lisp:nil
                                    ((custom :target-type
                                      custom-message-activity :member-name
                                      "CUSTOM")
                                     (conditional-split :target-type
                                      conditional-split-activity :member-name
                                      "ConditionalSplit")
                                     (description :target-type string
                                      :member-name "Description")
                                     (email :target-type email-message-activity
                                      :member-name "EMAIL")
                                     (holdout :target-type holdout-activity
                                      :member-name "Holdout")
                                     (multi-condition :target-type
                                      multi-conditional-split-activity
                                      :member-name "MultiCondition")
                                     (push :target-type push-message-activity
                                      :member-name "PUSH")
                                     (random-split :target-type
                                      random-split-activity :member-name
                                      "RandomSplit")
                                     (sms :target-type smsmessage-activity
                                      :member-name "SMS")
                                     (wait :target-type wait-activity
                                      :member-name "Wait")
                                     (contact-center :target-type
                                      contact-center-activity :member-name
                                      "ContactCenter"))
                                    (:shape-name "Activity"))

(smithy/sdk/shapes:define-structure activity-response common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (campaign-id :target-type string :required
                                      common-lisp:t :member-name "CampaignId")
                                     (end :target-type string :member-name
                                      "End")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (result :target-type string :member-name
                                      "Result")
                                     (scheduled-start :target-type string
                                      :member-name "ScheduledStart")
                                     (start :target-type string :member-name
                                      "Start")
                                     (state :target-type string :member-name
                                      "State")
                                     (successful-endpoint-count :target-type
                                      integer :member-name
                                      "SuccessfulEndpointCount")
                                     (timezones-completed-count :target-type
                                      integer :member-name
                                      "TimezonesCompletedCount")
                                     (timezones-total-count :target-type
                                      integer :member-name
                                      "TimezonesTotalCount")
                                     (total-endpoint-count :target-type integer
                                      :member-name "TotalEndpointCount")
                                     (treatment-id :target-type string
                                      :member-name "TreatmentId")
                                     (execution-metrics :target-type
                                      map-of-string :member-name
                                      "ExecutionMetrics"))
                                    (:shape-name "ActivityResponse"))

(smithy/sdk/shapes:define-structure address-configuration common-lisp:nil
                                    ((body-override :target-type string
                                      :member-name "BodyOverride")
                                     (channel-type :target-type channel-type
                                      :member-name "ChannelType")
                                     (context :target-type map-of-string
                                      :member-name "Context")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (title-override :target-type string
                                      :member-name "TitleOverride"))
                                    (:shape-name "AddressConfiguration"))

(smithy/sdk/shapes:define-enum alignment
    common-lisp:nil
  (:left "LEFT")
  (:center "CENTER")
  (:right "RIGHT"))

(smithy/sdk/shapes:define-structure android-push-notification-template
                                    common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (image-icon-url :target-type string
                                      :member-name "ImageIconUrl")
                                     (image-url :target-type string
                                      :member-name "ImageUrl")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (small-image-icon-url :target-type string
                                      :member-name "SmallImageIconUrl")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name
                                     "AndroidPushNotificationTemplate"))

(smithy/sdk/shapes:define-structure application-date-range-kpi-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (end-time :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "EndTime")
                                     (kpi-name :target-type string :required
                                      common-lisp:t :member-name "KpiName")
                                     (kpi-result :target-type base-kpi-result
                                      :required common-lisp:t :member-name
                                      "KpiResult")
                                     (next-token :target-type string
                                      :member-name "NextToken")
                                     (start-time :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "StartTime"))
                                    (:shape-name
                                     "ApplicationDateRangeKpiResponse"))

(smithy/sdk/shapes:define-structure application-response common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (creation-date :target-type string
                                      :member-name "CreationDate"))
                                    (:shape-name "ApplicationResponse"))

(smithy/sdk/shapes:define-structure application-settings-journey-limits
                                    common-lisp:nil
                                    ((daily-cap :target-type integer
                                      :member-name "DailyCap")
                                     (timeframe-cap :target-type
                                      journey-timeframe-cap :member-name
                                      "TimeframeCap")
                                     (total-cap :target-type integer
                                      :member-name "TotalCap"))
                                    (:shape-name
                                     "ApplicationSettingsJourneyLimits"))

(smithy/sdk/shapes:define-structure application-settings-resource
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (campaign-hook :target-type campaign-hook
                                      :member-name "CampaignHook")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (limits :target-type campaign-limits
                                      :member-name "Limits")
                                     (quiet-time :target-type quiet-time
                                      :member-name "QuietTime")
                                     (journey-limits :target-type
                                      application-settings-journey-limits
                                      :member-name "JourneyLimits"))
                                    (:shape-name "ApplicationSettingsResource"))

(smithy/sdk/shapes:define-structure applications-response common-lisp:nil
                                    ((item :target-type
                                      list-of-application-response :member-name
                                      "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ApplicationsResponse"))

(smithy/sdk/shapes:define-structure attribute-dimension common-lisp:nil
                                    ((attribute-type :target-type
                                      attribute-type :member-name
                                      "AttributeType")
                                     (values :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "AttributeDimension"))

(smithy/sdk/shapes:define-enum attribute-type
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE")
  (:contains "CONTAINS")
  (:before "BEFORE")
  (:after "AFTER")
  (:on "ON")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-structure attributes-resource common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (attribute-type :target-type string
                                      :required common-lisp:t :member-name
                                      "AttributeType")
                                     (attributes :target-type list-of-string
                                      :member-name "Attributes"))
                                    (:shape-name "AttributesResource"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure baidu-channel-request common-lisp:nil
                                    ((api-key :target-type string :required
                                      common-lisp:t :member-name "ApiKey")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (secret-key :target-type string :required
                                      common-lisp:t :member-name "SecretKey"))
                                    (:shape-name "BaiduChannelRequest"))

(smithy/sdk/shapes:define-structure baidu-channel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (credential :target-type string :required
                                      common-lisp:t :member-name "Credential")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "BaiduChannelResponse"))

(smithy/sdk/shapes:define-structure baidu-message common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (data :target-type map-of-string
                                      :member-name "Data")
                                     (icon-reference :target-type string
                                      :member-name "IconReference")
                                     (image-icon-url :target-type string
                                      :member-name "ImageIconUrl")
                                     (image-url :target-type string
                                      :member-name "ImageUrl")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (silent-push :target-type boolean
                                      :member-name "SilentPush")
                                     (small-image-icon-url :target-type string
                                      :member-name "SmallImageIconUrl")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (time-to-live :target-type integer
                                      :member-name "TimeToLive")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name "BaiduMessage"))

(smithy/sdk/shapes:define-structure base-kpi-result common-lisp:nil
                                    ((rows :target-type list-of-result-row
                                      :required common-lisp:t :member-name
                                      "Rows"))
                                    (:shape-name "BaseKpiResult"))

(smithy/sdk/shapes:define-enum button-action
    common-lisp:nil
  (:link "LINK")
  (:deep-link "DEEP_LINK")
  (:close "CLOSE"))

(smithy/sdk/shapes:define-structure campaign-custom-message common-lisp:nil
                                    ((data :target-type string :member-name
                                      "Data"))
                                    (:shape-name "CampaignCustomMessage"))

(smithy/sdk/shapes:define-structure campaign-date-range-kpi-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (campaign-id :target-type string :required
                                      common-lisp:t :member-name "CampaignId")
                                     (end-time :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "EndTime")
                                     (kpi-name :target-type string :required
                                      common-lisp:t :member-name "KpiName")
                                     (kpi-result :target-type base-kpi-result
                                      :required common-lisp:t :member-name
                                      "KpiResult")
                                     (next-token :target-type string
                                      :member-name "NextToken")
                                     (start-time :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "StartTime"))
                                    (:shape-name
                                     "CampaignDateRangeKpiResponse"))

(smithy/sdk/shapes:define-structure campaign-email-message common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (from-address :target-type string
                                      :member-name "FromAddress")
                                     (headers :target-type
                                      list-of-message-header :member-name
                                      "Headers")
                                     (html-body :target-type string
                                      :member-name "HtmlBody")
                                     (title :target-type string :member-name
                                      "Title"))
                                    (:shape-name "CampaignEmailMessage"))

(smithy/sdk/shapes:define-structure campaign-event-filter common-lisp:nil
                                    ((dimensions :target-type event-dimensions
                                      :required common-lisp:t :member-name
                                      "Dimensions")
                                     (filter-type :target-type filter-type
                                      :required common-lisp:t :member-name
                                      "FilterType"))
                                    (:shape-name "CampaignEventFilter"))

(smithy/sdk/shapes:define-structure campaign-hook common-lisp:nil
                                    ((lambda-function-name :target-type string
                                      :member-name "LambdaFunctionName")
                                     (mode :target-type mode :member-name
                                      "Mode")
                                     (web-url :target-type string :member-name
                                      "WebUrl"))
                                    (:shape-name "CampaignHook"))

(smithy/sdk/shapes:define-structure campaign-in-app-message common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (content :target-type
                                      list-of-in-app-message-content
                                      :member-name "Content")
                                     (custom-config :target-type map-of-string
                                      :member-name "CustomConfig")
                                     (layout :target-type layout :member-name
                                      "Layout"))
                                    (:shape-name "CampaignInAppMessage"))

(smithy/sdk/shapes:define-structure campaign-limits common-lisp:nil
                                    ((daily :target-type integer :member-name
                                      "Daily")
                                     (maximum-duration :target-type integer
                                      :member-name "MaximumDuration")
                                     (messages-per-second :target-type integer
                                      :member-name "MessagesPerSecond")
                                     (total :target-type integer :member-name
                                      "Total")
                                     (session :target-type integer :member-name
                                      "Session"))
                                    (:shape-name "CampaignLimits"))

(smithy/sdk/shapes:define-structure campaign-response common-lisp:nil
                                    ((additional-treatments :target-type
                                      list-of-treatment-resource :member-name
                                      "AdditionalTreatments")
                                     (application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (custom-delivery-configuration
                                      :target-type
                                      custom-delivery-configuration
                                      :member-name
                                      "CustomDeliveryConfiguration")
                                     (default-state :target-type campaign-state
                                      :member-name "DefaultState")
                                     (description :target-type string
                                      :member-name "Description")
                                     (holdout-percent :target-type integer
                                      :member-name "HoldoutPercent")
                                     (hook :target-type campaign-hook
                                      :member-name "Hook")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (is-paused :target-type boolean
                                      :member-name "IsPaused")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (limits :target-type campaign-limits
                                      :member-name "Limits")
                                     (message-configuration :target-type
                                      message-configuration :member-name
                                      "MessageConfiguration")
                                     (name :target-type string :member-name
                                      "Name")
                                     (schedule :target-type schedule
                                      :member-name "Schedule")
                                     (segment-id :target-type string :required
                                      common-lisp:t :member-name "SegmentId")
                                     (segment-version :target-type integer
                                      :required common-lisp:t :member-name
                                      "SegmentVersion")
                                     (state :target-type campaign-state
                                      :member-name "State")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration")
                                     (treatment-description :target-type string
                                      :member-name "TreatmentDescription")
                                     (treatment-name :target-type string
                                      :member-name "TreatmentName")
                                     (version :target-type integer :member-name
                                      "Version")
                                     (priority :target-type integer
                                      :member-name "Priority"))
                                    (:shape-name "CampaignResponse"))

(smithy/sdk/shapes:define-structure campaign-sms-message common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (message-type :target-type message-type
                                      :member-name "MessageType")
                                     (origination-number :target-type string
                                      :member-name "OriginationNumber")
                                     (sender-id :target-type string
                                      :member-name "SenderId")
                                     (entity-id :target-type string
                                      :member-name "EntityId")
                                     (template-id :target-type string
                                      :member-name "TemplateId"))
                                    (:shape-name "CampaignSmsMessage"))

(smithy/sdk/shapes:define-structure campaign-state common-lisp:nil
                                    ((campaign-status :target-type
                                      campaign-status :member-name
                                      "CampaignStatus"))
                                    (:shape-name "CampaignState"))

(smithy/sdk/shapes:define-enum campaign-status
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:executing "EXECUTING")
  (:pending-next-run "PENDING_NEXT_RUN")
  (:completed "COMPLETED")
  (:paused "PAUSED")
  (:deleted "DELETED")
  (:invalid "INVALID"))

(smithy/sdk/shapes:define-structure campaigns-response common-lisp:nil
                                    ((item :target-type
                                      list-of-campaign-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "CampaignsResponse"))

(smithy/sdk/shapes:define-structure channel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "ChannelResponse"))

(smithy/sdk/shapes:define-enum channel-type
    common-lisp:nil
  (:push "PUSH")
  (:gcm "GCM")
  (:apns "APNS")
  (:apns-sandbox "APNS_SANDBOX")
  (:apns-voip "APNS_VOIP")
  (:apns-voip-sandbox "APNS_VOIP_SANDBOX")
  (:adm "ADM")
  (:sms "SMS")
  (:voice "VOICE")
  (:email "EMAIL")
  (:baidu "BAIDU")
  (:custom "CUSTOM")
  (:in-app "IN_APP"))

(smithy/sdk/shapes:define-structure channels-response common-lisp:nil
                                    ((channels :target-type
                                      map-of-channel-response :required
                                      common-lisp:t :member-name "Channels"))
                                    (:shape-name "ChannelsResponse"))

(smithy/sdk/shapes:define-structure closed-days common-lisp:nil
                                    ((email :target-type
                                      list-of-closed-days-rules :member-name
                                      "EMAIL")
                                     (sms :target-type
                                      list-of-closed-days-rules :member-name
                                      "SMS")
                                     (push :target-type
                                      list-of-closed-days-rules :member-name
                                      "PUSH")
                                     (voice :target-type
                                      list-of-closed-days-rules :member-name
                                      "VOICE")
                                     (custom :target-type
                                      list-of-closed-days-rules :member-name
                                      "CUSTOM"))
                                    (:shape-name "ClosedDays"))

(smithy/sdk/shapes:define-structure closed-days-rule common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (start-date-time :target-type string
                                      :member-name "StartDateTime")
                                     (end-date-time :target-type string
                                      :member-name "EndDateTime"))
                                    (:shape-name "ClosedDaysRule"))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((conditions :target-type
                                      list-of-simple-condition :member-name
                                      "Conditions")
                                     (operator :target-type operator
                                      :member-name "Operator"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-structure conditional-split-activity common-lisp:nil
                                    ((condition :target-type condition
                                      :member-name "Condition")
                                     (evaluation-wait-time :target-type
                                      wait-time :member-name
                                      "EvaluationWaitTime")
                                     (false-activity :target-type string
                                      :member-name "FalseActivity")
                                     (true-activity :target-type string
                                      :member-name "TrueActivity"))
                                    (:shape-name "ConditionalSplitActivity"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure contact-center-activity common-lisp:nil
                                    ((next-activity :target-type string
                                      :member-name "NextActivity"))
                                    (:shape-name "ContactCenterActivity"))

(smithy/sdk/shapes:define-input create-app-request common-lisp:nil
                                ((create-application-request :target-type
                                  create-application-request :required
                                  common-lisp:t :member-name
                                  "CreateApplicationRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "CreateAppRequest"))

(smithy/sdk/shapes:define-output create-app-response common-lisp:nil
                                 ((application-response :target-type
                                   application-response :required common-lisp:t
                                   :member-name "ApplicationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "CreateAppResponse"))

(smithy/sdk/shapes:define-structure create-application-request common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags"))
                                    (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-input create-campaign-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (write-campaign-request :target-type
                                  write-campaign-request :required
                                  common-lisp:t :member-name
                                  "WriteCampaignRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "CreateCampaignRequest"))

(smithy/sdk/shapes:define-output create-campaign-response common-lisp:nil
                                 ((campaign-response :target-type
                                   campaign-response :required common-lisp:t
                                   :member-name "CampaignResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "CreateCampaignResponse"))

(smithy/sdk/shapes:define-input create-email-template-request common-lisp:nil
                                ((email-template-request :target-type
                                  email-template-request :required
                                  common-lisp:t :member-name
                                  "EmailTemplateRequest" :http-payload
                                  common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t))
                                (:shape-name "CreateEmailTemplateRequest"))

(smithy/sdk/shapes:define-output create-email-template-response common-lisp:nil
                                 ((create-template-message-body :target-type
                                   create-template-message-body :required
                                   common-lisp:t :member-name
                                   "CreateTemplateMessageBody" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateEmailTemplateResponse"))

(smithy/sdk/shapes:define-input create-export-job-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (export-job-request :target-type
                                  export-job-request :required common-lisp:t
                                  :member-name "ExportJobRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "CreateExportJobRequest"))

(smithy/sdk/shapes:define-output create-export-job-response common-lisp:nil
                                 ((export-job-response :target-type
                                   export-job-response :required common-lisp:t
                                   :member-name "ExportJobResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "CreateExportJobResponse"))

(smithy/sdk/shapes:define-input create-import-job-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (import-job-request :target-type
                                  import-job-request :required common-lisp:t
                                  :member-name "ImportJobRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "CreateImportJobRequest"))

(smithy/sdk/shapes:define-output create-import-job-response common-lisp:nil
                                 ((import-job-response :target-type
                                   import-job-response :required common-lisp:t
                                   :member-name "ImportJobResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "CreateImportJobResponse"))

(smithy/sdk/shapes:define-input create-in-app-template-request common-lisp:nil
                                ((in-app-template-request :target-type
                                  in-app-template-request :required
                                  common-lisp:t :member-name
                                  "InAppTemplateRequest" :http-payload
                                  common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t))
                                (:shape-name "CreateInAppTemplateRequest"))

(smithy/sdk/shapes:define-output create-in-app-template-response
                                 common-lisp:nil
                                 ((template-create-message-body :target-type
                                   template-create-message-body :required
                                   common-lisp:t :member-name
                                   "TemplateCreateMessageBody" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateInAppTemplateResponse"))

(smithy/sdk/shapes:define-input create-journey-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (write-journey-request :target-type
                                  write-journey-request :required common-lisp:t
                                  :member-name "WriteJourneyRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "CreateJourneyRequest"))

(smithy/sdk/shapes:define-output create-journey-response common-lisp:nil
                                 ((journey-response :target-type
                                   journey-response :required common-lisp:t
                                   :member-name "JourneyResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateJourneyResponse"))

(smithy/sdk/shapes:define-input create-push-template-request common-lisp:nil
                                ((push-notification-template-request
                                  :target-type
                                  push-notification-template-request :required
                                  common-lisp:t :member-name
                                  "PushNotificationTemplateRequest"
                                  :http-payload common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t))
                                (:shape-name "CreatePushTemplateRequest"))

(smithy/sdk/shapes:define-output create-push-template-response common-lisp:nil
                                 ((create-template-message-body :target-type
                                   create-template-message-body :required
                                   common-lisp:t :member-name
                                   "CreateTemplateMessageBody" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreatePushTemplateResponse"))

(smithy/sdk/shapes:define-input create-recommender-configuration-request
                                common-lisp:nil
                                ((create-recommender-configuration :target-type
                                  create-recommender-configuration-shape
                                  :required common-lisp:t :member-name
                                  "CreateRecommenderConfiguration"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "CreateRecommenderConfigurationRequest"))

(smithy/sdk/shapes:define-output create-recommender-configuration-response
                                 common-lisp:nil
                                 ((recommender-configuration-response
                                   :target-type
                                   recommender-configuration-response :required
                                   common-lisp:t :member-name
                                   "RecommenderConfigurationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "CreateRecommenderConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-recommender-configuration-shape
                                    common-lisp:nil
                                    ((attributes :target-type map-of-string
                                      :member-name "Attributes")
                                     (description :target-type string
                                      :member-name "Description")
                                     (name :target-type string :member-name
                                      "Name")
                                     (recommendation-provider-id-type
                                      :target-type string :member-name
                                      "RecommendationProviderIdType")
                                     (recommendation-provider-role-arn
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "RecommendationProviderRoleArn")
                                     (recommendation-provider-uri :target-type
                                      string :required common-lisp:t
                                      :member-name "RecommendationProviderUri")
                                     (recommendation-transformer-uri
                                      :target-type string :member-name
                                      "RecommendationTransformerUri")
                                     (recommendations-display-name :target-type
                                      string :member-name
                                      "RecommendationsDisplayName")
                                     (recommendations-per-message :target-type
                                      integer :member-name
                                      "RecommendationsPerMessage"))
                                    (:shape-name
                                     "CreateRecommenderConfigurationShape"))

(smithy/sdk/shapes:define-input create-segment-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (write-segment-request :target-type
                                  write-segment-request :required common-lisp:t
                                  :member-name "WriteSegmentRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "CreateSegmentRequest"))

(smithy/sdk/shapes:define-output create-segment-response common-lisp:nil
                                 ((segment-response :target-type
                                   segment-response :required common-lisp:t
                                   :member-name "SegmentResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateSegmentResponse"))

(smithy/sdk/shapes:define-input create-sms-template-request common-lisp:nil
                                ((smstemplate-request :target-type
                                  smstemplate-request :required common-lisp:t
                                  :member-name "SMSTemplateRequest"
                                  :http-payload common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t))
                                (:shape-name "CreateSmsTemplateRequest"))

(smithy/sdk/shapes:define-output create-sms-template-response common-lisp:nil
                                 ((create-template-message-body :target-type
                                   create-template-message-body :required
                                   common-lisp:t :member-name
                                   "CreateTemplateMessageBody" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateSmsTemplateResponse"))

(smithy/sdk/shapes:define-structure create-template-message-body
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (message :target-type string :member-name
                                      "Message")
                                     (request-id :target-type string
                                      :member-name "RequestID"))
                                    (:shape-name "CreateTemplateMessageBody"))

(smithy/sdk/shapes:define-input create-voice-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (voice-template-request :target-type
                                  voice-template-request :required
                                  common-lisp:t :member-name
                                  "VoiceTemplateRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "CreateVoiceTemplateRequest"))

(smithy/sdk/shapes:define-output create-voice-template-response common-lisp:nil
                                 ((create-template-message-body :target-type
                                   create-template-message-body :required
                                   common-lisp:t :member-name
                                   "CreateTemplateMessageBody" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateVoiceTemplateResponse"))

(smithy/sdk/shapes:define-structure custom-delivery-configuration
                                    common-lisp:nil
                                    ((delivery-uri :target-type string
                                      :required common-lisp:t :member-name
                                      "DeliveryUri")
                                     (endpoint-types :target-type
                                      list-of-endpoint-types-element
                                      :member-name "EndpointTypes"))
                                    (:shape-name "CustomDeliveryConfiguration"))

(smithy/sdk/shapes:define-structure custom-message-activity common-lisp:nil
                                    ((delivery-uri :target-type string
                                      :member-name "DeliveryUri")
                                     (endpoint-types :target-type
                                      list-of-endpoint-types-element
                                      :member-name "EndpointTypes")
                                     (message-config :target-type
                                      journey-custom-message :member-name
                                      "MessageConfig")
                                     (next-activity :target-type string
                                      :member-name "NextActivity")
                                     (template-name :target-type string
                                      :member-name "TemplateName")
                                     (template-version :target-type string
                                      :member-name "TemplateVersion"))
                                    (:shape-name "CustomMessageActivity"))

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY")
  (:sunday "SUNDAY"))

(smithy/sdk/shapes:define-structure default-button-configuration
                                    common-lisp:nil
                                    ((background-color :target-type string
                                      :member-name "BackgroundColor")
                                     (border-radius :target-type integer
                                      :member-name "BorderRadius")
                                     (button-action :target-type button-action
                                      :required common-lisp:t :member-name
                                      "ButtonAction")
                                     (link :target-type string :member-name
                                      "Link")
                                     (text :target-type string :required
                                      common-lisp:t :member-name "Text")
                                     (text-color :target-type string
                                      :member-name "TextColor"))
                                    (:shape-name "DefaultButtonConfiguration"))

(smithy/sdk/shapes:define-structure default-message common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions"))
                                    (:shape-name "DefaultMessage"))

(smithy/sdk/shapes:define-structure default-push-notification-message
                                    common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (data :target-type map-of-string
                                      :member-name "Data")
                                     (silent-push :target-type boolean
                                      :member-name "SilentPush")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name
                                     "DefaultPushNotificationMessage"))

(smithy/sdk/shapes:define-structure default-push-notification-template
                                    common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name
                                     "DefaultPushNotificationTemplate"))

(smithy/sdk/shapes:define-input delete-adm-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAdmChannelRequest"))

(smithy/sdk/shapes:define-output delete-adm-channel-response common-lisp:nil
                                 ((admchannel-response :target-type
                                   admchannel-response :required common-lisp:t
                                   :member-name "ADMChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteAdmChannelResponse"))

(smithy/sdk/shapes:define-input delete-apns-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApnsChannelRequest"))

(smithy/sdk/shapes:define-output delete-apns-channel-response common-lisp:nil
                                 ((apnschannel-response :target-type
                                   apnschannel-response :required common-lisp:t
                                   :member-name "APNSChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteApnsChannelResponse"))

(smithy/sdk/shapes:define-input delete-apns-sandbox-channel-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApnsSandboxChannelRequest"))

(smithy/sdk/shapes:define-output delete-apns-sandbox-channel-response
                                 common-lisp:nil
                                 ((apnssandbox-channel-response :target-type
                                   apnssandbox-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSSandboxChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "DeleteApnsSandboxChannelResponse"))

(smithy/sdk/shapes:define-input delete-apns-voip-channel-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApnsVoipChannelRequest"))

(smithy/sdk/shapes:define-output delete-apns-voip-channel-response
                                 common-lisp:nil
                                 ((apnsvoip-channel-response :target-type
                                   apnsvoip-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSVoipChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "DeleteApnsVoipChannelResponse"))

(smithy/sdk/shapes:define-input delete-apns-voip-sandbox-channel-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteApnsVoipSandboxChannelRequest"))

(smithy/sdk/shapes:define-output delete-apns-voip-sandbox-channel-response
                                 common-lisp:nil
                                 ((apnsvoip-sandbox-channel-response
                                   :target-type
                                   apnsvoip-sandbox-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSVoipSandboxChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "DeleteApnsVoipSandboxChannelResponse"))

(smithy/sdk/shapes:define-input delete-app-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAppRequest"))

(smithy/sdk/shapes:define-output delete-app-response common-lisp:nil
                                 ((application-response :target-type
                                   application-response :required common-lisp:t
                                   :member-name "ApplicationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteAppResponse"))

(smithy/sdk/shapes:define-input delete-baidu-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBaiduChannelRequest"))

(smithy/sdk/shapes:define-output delete-baidu-channel-response common-lisp:nil
                                 ((baidu-channel-response :target-type
                                   baidu-channel-response :required
                                   common-lisp:t :member-name
                                   "BaiduChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "DeleteBaiduChannelResponse"))

(smithy/sdk/shapes:define-input delete-campaign-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteCampaignRequest"))

(smithy/sdk/shapes:define-output delete-campaign-response common-lisp:nil
                                 ((campaign-response :target-type
                                   campaign-response :required common-lisp:t
                                   :member-name "CampaignResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteCampaignResponse"))

(smithy/sdk/shapes:define-input delete-email-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEmailChannelRequest"))

(smithy/sdk/shapes:define-output delete-email-channel-response common-lisp:nil
                                 ((email-channel-response :target-type
                                   email-channel-response :required
                                   common-lisp:t :member-name
                                   "EmailChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "DeleteEmailChannelResponse"))

(smithy/sdk/shapes:define-input delete-email-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "DeleteEmailTemplateRequest"))

(smithy/sdk/shapes:define-output delete-email-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "DeleteEmailTemplateResponse"))

(smithy/sdk/shapes:define-input delete-endpoint-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (endpoint-id :target-type string :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEndpointRequest"))

(smithy/sdk/shapes:define-output delete-endpoint-response common-lisp:nil
                                 ((endpoint-response :target-type
                                   endpoint-response :required common-lisp:t
                                   :member-name "EndpointResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteEndpointResponse"))

(smithy/sdk/shapes:define-input delete-event-stream-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEventStreamRequest"))

(smithy/sdk/shapes:define-output delete-event-stream-response common-lisp:nil
                                 ((event-stream :target-type event-stream
                                   :required common-lisp:t :member-name
                                   "EventStream" :http-payload common-lisp:t))
                                 (:shape-name "DeleteEventStreamResponse"))

(smithy/sdk/shapes:define-input delete-gcm-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteGcmChannelRequest"))

(smithy/sdk/shapes:define-output delete-gcm-channel-response common-lisp:nil
                                 ((gcmchannel-response :target-type
                                   gcmchannel-response :required common-lisp:t
                                   :member-name "GCMChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteGcmChannelResponse"))

(smithy/sdk/shapes:define-input delete-in-app-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "DeleteInAppTemplateRequest"))

(smithy/sdk/shapes:define-output delete-in-app-template-response
                                 common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "DeleteInAppTemplateResponse"))

(smithy/sdk/shapes:define-input delete-journey-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteJourneyRequest"))

(smithy/sdk/shapes:define-output delete-journey-response common-lisp:nil
                                 ((journey-response :target-type
                                   journey-response :required common-lisp:t
                                   :member-name "JourneyResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "DeleteJourneyResponse"))

(smithy/sdk/shapes:define-input delete-push-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "DeletePushTemplateRequest"))

(smithy/sdk/shapes:define-output delete-push-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "DeletePushTemplateResponse"))

(smithy/sdk/shapes:define-input delete-recommender-configuration-request
                                common-lisp:nil
                                ((recommender-id :target-type string :required
                                  common-lisp:t :member-name "RecommenderId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteRecommenderConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-recommender-configuration-response
                                 common-lisp:nil
                                 ((recommender-configuration-response
                                   :target-type
                                   recommender-configuration-response :required
                                   common-lisp:t :member-name
                                   "RecommenderConfigurationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "DeleteRecommenderConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-segment-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSegmentRequest"))

(smithy/sdk/shapes:define-output delete-segment-response common-lisp:nil
                                 ((segment-response :target-type
                                   segment-response :required common-lisp:t
                                   :member-name "SegmentResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "DeleteSegmentResponse"))

(smithy/sdk/shapes:define-input delete-sms-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSmsChannelRequest"))

(smithy/sdk/shapes:define-output delete-sms-channel-response common-lisp:nil
                                 ((smschannel-response :target-type
                                   smschannel-response :required common-lisp:t
                                   :member-name "SMSChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteSmsChannelResponse"))

(smithy/sdk/shapes:define-input delete-sms-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "DeleteSmsTemplateRequest"))

(smithy/sdk/shapes:define-output delete-sms-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "DeleteSmsTemplateResponse"))

(smithy/sdk/shapes:define-input delete-user-endpoints-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUserEndpointsRequest"))

(smithy/sdk/shapes:define-output delete-user-endpoints-response common-lisp:nil
                                 ((endpoints-response :target-type
                                   endpoints-response :required common-lisp:t
                                   :member-name "EndpointsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteUserEndpointsResponse"))

(smithy/sdk/shapes:define-input delete-voice-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVoiceChannelRequest"))

(smithy/sdk/shapes:define-output delete-voice-channel-response common-lisp:nil
                                 ((voice-channel-response :target-type
                                   voice-channel-response :required
                                   common-lisp:t :member-name
                                   "VoiceChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "DeleteVoiceChannelResponse"))

(smithy/sdk/shapes:define-input delete-voice-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "DeleteVoiceTemplateRequest"))

(smithy/sdk/shapes:define-output delete-voice-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "DeleteVoiceTemplateResponse"))

(smithy/sdk/shapes:define-enum delivery-status
    common-lisp:nil
  (:successful "SUCCESSFUL")
  (:throttled "THROTTLED")
  (:temporary-failure "TEMPORARY_FAILURE")
  (:permanent-failure "PERMANENT_FAILURE")
  (:unknown-failure "UNKNOWN_FAILURE")
  (:opt-out "OPT_OUT")
  (:duplicate "DUPLICATE"))

(smithy/sdk/shapes:define-enum dimension-type
    common-lisp:nil
  (:inclusive "INCLUSIVE")
  (:exclusive "EXCLUSIVE"))

(smithy/sdk/shapes:define-structure direct-message-configuration
                                    common-lisp:nil
                                    ((admmessage :target-type admmessage
                                      :member-name "ADMMessage")
                                     (apnsmessage :target-type apnsmessage
                                      :member-name "APNSMessage")
                                     (baidu-message :target-type baidu-message
                                      :member-name "BaiduMessage")
                                     (default-message :target-type
                                      default-message :member-name
                                      "DefaultMessage")
                                     (default-push-notification-message
                                      :target-type
                                      default-push-notification-message
                                      :member-name
                                      "DefaultPushNotificationMessage")
                                     (email-message :target-type email-message
                                      :member-name "EmailMessage")
                                     (gcmmessage :target-type gcmmessage
                                      :member-name "GCMMessage")
                                     (smsmessage :target-type smsmessage
                                      :member-name "SMSMessage")
                                     (voice-message :target-type voice-message
                                      :member-name "VoiceMessage"))
                                    (:shape-name "DirectMessageConfiguration"))

(smithy/sdk/shapes:define-enum duration
    common-lisp:nil
  (:hr-24 "HR_24")
  (:day-7 "DAY_7")
  (:day-14 "DAY_14")
  (:day-30 "DAY_30"))

(smithy/sdk/shapes:define-structure email-channel-request common-lisp:nil
                                    ((configuration-set :target-type string
                                      :member-name "ConfigurationSet")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (from-address :target-type string
                                      :required common-lisp:t :member-name
                                      "FromAddress")
                                     (identity :target-type string :required
                                      common-lisp:t :member-name "Identity")
                                     (role-arn :target-type string :member-name
                                      "RoleArn")
                                     (orchestration-sending-role-arn
                                      :target-type string :member-name
                                      "OrchestrationSendingRoleArn"))
                                    (:shape-name "EmailChannelRequest"))

(smithy/sdk/shapes:define-structure email-channel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (configuration-set :target-type string
                                      :member-name "ConfigurationSet")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (from-address :target-type string
                                      :member-name "FromAddress")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (id :target-type string :member-name "Id")
                                     (identity :target-type string :member-name
                                      "Identity")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (messages-per-second :target-type integer
                                      :member-name "MessagesPerSecond")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (role-arn :target-type string :member-name
                                      "RoleArn")
                                     (orchestration-sending-role-arn
                                      :target-type string :member-name
                                      "OrchestrationSendingRoleArn")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "EmailChannelResponse"))

(smithy/sdk/shapes:define-structure email-message common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (feedback-forwarding-address :target-type
                                      string :member-name
                                      "FeedbackForwardingAddress")
                                     (from-address :target-type string
                                      :member-name "FromAddress")
                                     (raw-email :target-type raw-email
                                      :member-name "RawEmail")
                                     (reply-to-addresses :target-type
                                      list-of-string :member-name
                                      "ReplyToAddresses")
                                     (simple-email :target-type simple-email
                                      :member-name "SimpleEmail")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions"))
                                    (:shape-name "EmailMessage"))

(smithy/sdk/shapes:define-structure email-message-activity common-lisp:nil
                                    ((message-config :target-type
                                      journey-email-message :member-name
                                      "MessageConfig")
                                     (next-activity :target-type string
                                      :member-name "NextActivity")
                                     (template-name :target-type string
                                      :member-name "TemplateName")
                                     (template-version :target-type string
                                      :member-name "TemplateVersion"))
                                    (:shape-name "EmailMessageActivity"))

(smithy/sdk/shapes:define-structure email-template-request common-lisp:nil
                                    ((default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (html-part :target-type string
                                      :member-name "HtmlPart")
                                     (recommender-id :target-type string
                                      :member-name "RecommenderId")
                                     (subject :target-type string :member-name
                                      "Subject")
                                     (headers :target-type
                                      list-of-message-header :member-name
                                      "Headers")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (text-part :target-type string
                                      :member-name "TextPart"))
                                    (:shape-name "EmailTemplateRequest"))

(smithy/sdk/shapes:define-structure email-template-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (html-part :target-type string
                                      :member-name "HtmlPart")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (recommender-id :target-type string
                                      :member-name "RecommenderId")
                                     (subject :target-type string :member-name
                                      "Subject")
                                     (headers :target-type
                                      list-of-message-header :member-name
                                      "Headers")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (text-part :target-type string
                                      :member-name "TextPart")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "EmailTemplateResponse"))

(smithy/sdk/shapes:define-structure endpoint-batch-item common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (attributes :target-type
                                      map-of-list-of-string :member-name
                                      "Attributes")
                                     (channel-type :target-type channel-type
                                      :member-name "ChannelType")
                                     (demographic :target-type
                                      endpoint-demographic :member-name
                                      "Demographic")
                                     (effective-date :target-type string
                                      :member-name "EffectiveDate")
                                     (endpoint-status :target-type string
                                      :member-name "EndpointStatus")
                                     (id :target-type string :member-name "Id")
                                     (location :target-type endpoint-location
                                      :member-name "Location")
                                     (metrics :target-type map-of-double
                                      :member-name "Metrics")
                                     (opt-out :target-type string :member-name
                                      "OptOut")
                                     (request-id :target-type string
                                      :member-name "RequestId")
                                     (user :target-type endpoint-user
                                      :member-name "User"))
                                    (:shape-name "EndpointBatchItem"))

(smithy/sdk/shapes:define-structure endpoint-batch-request common-lisp:nil
                                    ((item :target-type
                                      list-of-endpoint-batch-item :required
                                      common-lisp:t :member-name "Item"))
                                    (:shape-name "EndpointBatchRequest"))

(smithy/sdk/shapes:define-structure endpoint-demographic common-lisp:nil
                                    ((app-version :target-type string
                                      :member-name "AppVersion")
                                     (locale :target-type string :member-name
                                      "Locale")
                                     (make :target-type string :member-name
                                      "Make")
                                     (model :target-type string :member-name
                                      "Model")
                                     (model-version :target-type string
                                      :member-name "ModelVersion")
                                     (platform :target-type string :member-name
                                      "Platform")
                                     (platform-version :target-type string
                                      :member-name "PlatformVersion")
                                     (timezone :target-type string :member-name
                                      "Timezone"))
                                    (:shape-name "EndpointDemographic"))

(smithy/sdk/shapes:define-structure endpoint-item-response common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message")
                                     (status-code :target-type integer
                                      :member-name "StatusCode"))
                                    (:shape-name "EndpointItemResponse"))

(smithy/sdk/shapes:define-structure endpoint-location common-lisp:nil
                                    ((city :target-type string :member-name
                                      "City")
                                     (country :target-type string :member-name
                                      "Country")
                                     (latitude :target-type double :member-name
                                      "Latitude")
                                     (longitude :target-type double
                                      :member-name "Longitude")
                                     (postal-code :target-type string
                                      :member-name "PostalCode")
                                     (region :target-type string :member-name
                                      "Region"))
                                    (:shape-name "EndpointLocation"))

(smithy/sdk/shapes:define-structure endpoint-message-result common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (delivery-status :target-type
                                      delivery-status :required common-lisp:t
                                      :member-name "DeliveryStatus")
                                     (message-id :target-type string
                                      :member-name "MessageId")
                                     (status-code :target-type integer
                                      :required common-lisp:t :member-name
                                      "StatusCode")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (updated-token :target-type string
                                      :member-name "UpdatedToken"))
                                    (:shape-name "EndpointMessageResult"))

(smithy/sdk/shapes:define-structure endpoint-request common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (attributes :target-type
                                      map-of-list-of-string :member-name
                                      "Attributes")
                                     (channel-type :target-type channel-type
                                      :member-name "ChannelType")
                                     (demographic :target-type
                                      endpoint-demographic :member-name
                                      "Demographic")
                                     (effective-date :target-type string
                                      :member-name "EffectiveDate")
                                     (endpoint-status :target-type string
                                      :member-name "EndpointStatus")
                                     (location :target-type endpoint-location
                                      :member-name "Location")
                                     (metrics :target-type map-of-double
                                      :member-name "Metrics")
                                     (opt-out :target-type string :member-name
                                      "OptOut")
                                     (request-id :target-type string
                                      :member-name "RequestId")
                                     (user :target-type endpoint-user
                                      :member-name "User"))
                                    (:shape-name "EndpointRequest"))

(smithy/sdk/shapes:define-structure endpoint-response common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (application-id :target-type string
                                      :member-name "ApplicationId")
                                     (attributes :target-type
                                      map-of-list-of-string :member-name
                                      "Attributes")
                                     (channel-type :target-type channel-type
                                      :member-name "ChannelType")
                                     (cohort-id :target-type string
                                      :member-name "CohortId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (demographic :target-type
                                      endpoint-demographic :member-name
                                      "Demographic")
                                     (effective-date :target-type string
                                      :member-name "EffectiveDate")
                                     (endpoint-status :target-type string
                                      :member-name "EndpointStatus")
                                     (id :target-type string :member-name "Id")
                                     (location :target-type endpoint-location
                                      :member-name "Location")
                                     (metrics :target-type map-of-double
                                      :member-name "Metrics")
                                     (opt-out :target-type string :member-name
                                      "OptOut")
                                     (request-id :target-type string
                                      :member-name "RequestId")
                                     (user :target-type endpoint-user
                                      :member-name "User"))
                                    (:shape-name "EndpointResponse"))

(smithy/sdk/shapes:define-structure endpoint-send-configuration common-lisp:nil
                                    ((body-override :target-type string
                                      :member-name "BodyOverride")
                                     (context :target-type map-of-string
                                      :member-name "Context")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (title-override :target-type string
                                      :member-name "TitleOverride"))
                                    (:shape-name "EndpointSendConfiguration"))

(smithy/sdk/shapes:define-structure endpoint-user common-lisp:nil
                                    ((user-attributes :target-type
                                      map-of-list-of-string :member-name
                                      "UserAttributes")
                                     (user-id :target-type string :member-name
                                      "UserId"))
                                    (:shape-name "EndpointUser"))

(smithy/sdk/shapes:define-structure endpoints-response common-lisp:nil
                                    ((item :target-type
                                      list-of-endpoint-response :required
                                      common-lisp:t :member-name "Item"))
                                    (:shape-name "EndpointsResponse"))

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((app-package-name :target-type string
                                      :member-name "AppPackageName")
                                     (app-title :target-type string
                                      :member-name "AppTitle")
                                     (app-version-code :target-type string
                                      :member-name "AppVersionCode")
                                     (attributes :target-type map-of-string
                                      :member-name "Attributes")
                                     (client-sdk-version :target-type string
                                      :member-name "ClientSdkVersion")
                                     (event-type :target-type string :required
                                      common-lisp:t :member-name "EventType")
                                     (metrics :target-type map-of-double
                                      :member-name "Metrics")
                                     (sdk-name :target-type string :member-name
                                      "SdkName")
                                     (session :target-type session :member-name
                                      "Session")
                                     (timestamp :target-type string :required
                                      common-lisp:t :member-name "Timestamp"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-structure event-condition common-lisp:nil
                                    ((dimensions :target-type event-dimensions
                                      :member-name "Dimensions")
                                     (message-activity :target-type string
                                      :member-name "MessageActivity"))
                                    (:shape-name "EventCondition"))

(smithy/sdk/shapes:define-structure event-dimensions common-lisp:nil
                                    ((attributes :target-type
                                      map-of-attribute-dimension :member-name
                                      "Attributes")
                                     (event-type :target-type set-dimension
                                      :member-name "EventType")
                                     (metrics :target-type
                                      map-of-metric-dimension :member-name
                                      "Metrics"))
                                    (:shape-name "EventDimensions"))

(smithy/sdk/shapes:define-structure event-filter common-lisp:nil
                                    ((dimensions :target-type event-dimensions
                                      :required common-lisp:t :member-name
                                      "Dimensions")
                                     (filter-type :target-type filter-type
                                      :required common-lisp:t :member-name
                                      "FilterType"))
                                    (:shape-name "EventFilter"))

(smithy/sdk/shapes:define-structure event-item-response common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message")
                                     (status-code :target-type integer
                                      :member-name "StatusCode"))
                                    (:shape-name "EventItemResponse"))

(smithy/sdk/shapes:define-structure event-start-condition common-lisp:nil
                                    ((event-filter :target-type event-filter
                                      :member-name "EventFilter")
                                     (segment-id :target-type string
                                      :member-name "SegmentId"))
                                    (:shape-name "EventStartCondition"))

(smithy/sdk/shapes:define-structure event-stream common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (destination-stream-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "DestinationStreamArn")
                                     (external-id :target-type string
                                      :member-name "ExternalId")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (last-updated-by :target-type string
                                      :member-name "LastUpdatedBy")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn"))
                                    (:shape-name "EventStream"))

(smithy/sdk/shapes:define-structure events-batch common-lisp:nil
                                    ((endpoint :target-type public-endpoint
                                      :required common-lisp:t :member-name
                                      "Endpoint")
                                     (events :target-type map-of-event
                                      :required common-lisp:t :member-name
                                      "Events"))
                                    (:shape-name "EventsBatch"))

(smithy/sdk/shapes:define-structure events-request common-lisp:nil
                                    ((batch-item :target-type
                                      map-of-events-batch :required
                                      common-lisp:t :member-name "BatchItem"))
                                    (:shape-name "EventsRequest"))

(smithy/sdk/shapes:define-structure events-response common-lisp:nil
                                    ((results :target-type map-of-item-response
                                      :member-name "Results"))
                                    (:shape-name "EventsResponse"))

(smithy/sdk/shapes:define-structure export-job-request common-lisp:nil
                                    ((role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (s3url-prefix :target-type string
                                      :required common-lisp:t :member-name
                                      "S3UrlPrefix")
                                     (segment-id :target-type string
                                      :member-name "SegmentId")
                                     (segment-version :target-type integer
                                      :member-name "SegmentVersion"))
                                    (:shape-name "ExportJobRequest"))

(smithy/sdk/shapes:define-structure export-job-resource common-lisp:nil
                                    ((role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (s3url-prefix :target-type string
                                      :required common-lisp:t :member-name
                                      "S3UrlPrefix")
                                     (segment-id :target-type string
                                      :member-name "SegmentId")
                                     (segment-version :target-type integer
                                      :member-name "SegmentVersion"))
                                    (:shape-name "ExportJobResource"))

(smithy/sdk/shapes:define-structure export-job-response common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (completed-pieces :target-type integer
                                      :member-name "CompletedPieces")
                                     (completion-date :target-type string
                                      :member-name "CompletionDate")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (definition :target-type
                                      export-job-resource :required
                                      common-lisp:t :member-name "Definition")
                                     (failed-pieces :target-type integer
                                      :member-name "FailedPieces")
                                     (failures :target-type list-of-string
                                      :member-name "Failures")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "JobStatus")
                                     (total-failures :target-type integer
                                      :member-name "TotalFailures")
                                     (total-pieces :target-type integer
                                      :member-name "TotalPieces")
                                     (total-processed :target-type integer
                                      :member-name "TotalProcessed")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ExportJobResponse"))

(smithy/sdk/shapes:define-structure export-jobs-response common-lisp:nil
                                    ((item :target-type
                                      list-of-export-job-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ExportJobsResponse"))

(smithy/sdk/shapes:define-enum filter-type
    common-lisp:nil
  (:system "SYSTEM")
  (:endpoint "ENDPOINT"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON"))

(smithy/sdk/shapes:define-enum frequency
    common-lisp:nil
  (:once "ONCE")
  (:hourly "HOURLY")
  (:daily "DAILY")
  (:weekly "WEEKLY")
  (:monthly "MONTHLY")
  (:event "EVENT")
  (:in-app-event "IN_APP_EVENT"))

(smithy/sdk/shapes:define-structure gcmchannel-request common-lisp:nil
                                    ((api-key :target-type string :member-name
                                      "ApiKey")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (service-json :target-type string
                                      :member-name "ServiceJson"))
                                    (:shape-name "GCMChannelRequest"))

(smithy/sdk/shapes:define-structure gcmchannel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (credential :target-type string
                                      :member-name "Credential")
                                     (default-authentication-method
                                      :target-type string :member-name
                                      "DefaultAuthenticationMethod")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (has-fcm-service-credentials :target-type
                                      boolean :member-name
                                      "HasFcmServiceCredentials")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "GCMChannelResponse"))

(smithy/sdk/shapes:define-structure gcmmessage common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (collapse-key :target-type string
                                      :member-name "CollapseKey")
                                     (data :target-type map-of-string
                                      :member-name "Data")
                                     (icon-reference :target-type string
                                      :member-name "IconReference")
                                     (image-icon-url :target-type string
                                      :member-name "ImageIconUrl")
                                     (image-url :target-type string
                                      :member-name "ImageUrl")
                                     (preferred-authentication-method
                                      :target-type string :member-name
                                      "PreferredAuthenticationMethod")
                                     (priority :target-type string :member-name
                                      "Priority")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (restricted-package-name :target-type
                                      string :member-name
                                      "RestrictedPackageName")
                                     (silent-push :target-type boolean
                                      :member-name "SilentPush")
                                     (small-image-icon-url :target-type string
                                      :member-name "SmallImageIconUrl")
                                     (sound :target-type string :member-name
                                      "Sound")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (time-to-live :target-type integer
                                      :member-name "TimeToLive")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name "GCMMessage"))

(smithy/sdk/shapes:define-structure gpscoordinates common-lisp:nil
                                    ((latitude :target-type double :required
                                      common-lisp:t :member-name "Latitude")
                                     (longitude :target-type double :required
                                      common-lisp:t :member-name "Longitude"))
                                    (:shape-name "GPSCoordinates"))

(smithy/sdk/shapes:define-structure gpspoint-dimension common-lisp:nil
                                    ((coordinates :target-type gpscoordinates
                                      :required common-lisp:t :member-name
                                      "Coordinates")
                                     (range-in-kilometers :target-type double
                                      :member-name "RangeInKilometers"))
                                    (:shape-name "GPSPointDimension"))

(smithy/sdk/shapes:define-input get-adm-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAdmChannelRequest"))

(smithy/sdk/shapes:define-output get-adm-channel-response common-lisp:nil
                                 ((admchannel-response :target-type
                                   admchannel-response :required common-lisp:t
                                   :member-name "ADMChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetAdmChannelResponse"))

(smithy/sdk/shapes:define-input get-apns-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApnsChannelRequest"))

(smithy/sdk/shapes:define-output get-apns-channel-response common-lisp:nil
                                 ((apnschannel-response :target-type
                                   apnschannel-response :required common-lisp:t
                                   :member-name "APNSChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetApnsChannelResponse"))

(smithy/sdk/shapes:define-input get-apns-sandbox-channel-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApnsSandboxChannelRequest"))

(smithy/sdk/shapes:define-output get-apns-sandbox-channel-response
                                 common-lisp:nil
                                 ((apnssandbox-channel-response :target-type
                                   apnssandbox-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSSandboxChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetApnsSandboxChannelResponse"))

(smithy/sdk/shapes:define-input get-apns-voip-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApnsVoipChannelRequest"))

(smithy/sdk/shapes:define-output get-apns-voip-channel-response common-lisp:nil
                                 ((apnsvoip-channel-response :target-type
                                   apnsvoip-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSVoipChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetApnsVoipChannelResponse"))

(smithy/sdk/shapes:define-input get-apns-voip-sandbox-channel-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetApnsVoipSandboxChannelRequest"))

(smithy/sdk/shapes:define-output get-apns-voip-sandbox-channel-response
                                 common-lisp:nil
                                 ((apnsvoip-sandbox-channel-response
                                   :target-type
                                   apnsvoip-sandbox-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSVoipSandboxChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetApnsVoipSandboxChannelResponse"))

(smithy/sdk/shapes:define-input get-app-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAppRequest"))

(smithy/sdk/shapes:define-output get-app-response common-lisp:nil
                                 ((application-response :target-type
                                   application-response :required common-lisp:t
                                   :member-name "ApplicationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetAppResponse"))

(smithy/sdk/shapes:define-input get-application-date-range-kpi-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (end-time :target-type timestamp-iso8601
                                  :member-name "EndTime" :http-query
                                  "end-time")
                                 (kpi-name :target-type string :required
                                  common-lisp:t :member-name "KpiName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (start-time :target-type timestamp-iso8601
                                  :member-name "StartTime" :http-query
                                  "start-time"))
                                (:shape-name
                                 "GetApplicationDateRangeKpiRequest"))

(smithy/sdk/shapes:define-output get-application-date-range-kpi-response
                                 common-lisp:nil
                                 ((application-date-range-kpi-response
                                   :target-type
                                   application-date-range-kpi-response
                                   :required common-lisp:t :member-name
                                   "ApplicationDateRangeKpiResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetApplicationDateRangeKpiResponse"))

(smithy/sdk/shapes:define-input get-application-settings-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApplicationSettingsRequest"))

(smithy/sdk/shapes:define-output get-application-settings-response
                                 common-lisp:nil
                                 ((application-settings-resource :target-type
                                   application-settings-resource :required
                                   common-lisp:t :member-name
                                   "ApplicationSettingsResource" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetApplicationSettingsResponse"))

(smithy/sdk/shapes:define-input get-apps-request common-lisp:nil
                                ((page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetAppsRequest"))

(smithy/sdk/shapes:define-output get-apps-response common-lisp:nil
                                 ((applications-response :target-type
                                   applications-response :required
                                   common-lisp:t :member-name
                                   "ApplicationsResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetAppsResponse"))

(smithy/sdk/shapes:define-input get-baidu-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBaiduChannelRequest"))

(smithy/sdk/shapes:define-output get-baidu-channel-response common-lisp:nil
                                 ((baidu-channel-response :target-type
                                   baidu-channel-response :required
                                   common-lisp:t :member-name
                                   "BaiduChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetBaiduChannelResponse"))

(smithy/sdk/shapes:define-input get-campaign-activities-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetCampaignActivitiesRequest"))

(smithy/sdk/shapes:define-output get-campaign-activities-response
                                 common-lisp:nil
                                 ((activities-response :target-type
                                   activities-response :required common-lisp:t
                                   :member-name "ActivitiesResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetCampaignActivitiesResponse"))

(smithy/sdk/shapes:define-input get-campaign-date-range-kpi-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t)
                                 (end-time :target-type timestamp-iso8601
                                  :member-name "EndTime" :http-query
                                  "end-time")
                                 (kpi-name :target-type string :required
                                  common-lisp:t :member-name "KpiName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (start-time :target-type timestamp-iso8601
                                  :member-name "StartTime" :http-query
                                  "start-time"))
                                (:shape-name "GetCampaignDateRangeKpiRequest"))

(smithy/sdk/shapes:define-output get-campaign-date-range-kpi-response
                                 common-lisp:nil
                                 ((campaign-date-range-kpi-response
                                   :target-type
                                   campaign-date-range-kpi-response :required
                                   common-lisp:t :member-name
                                   "CampaignDateRangeKpiResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetCampaignDateRangeKpiResponse"))

(smithy/sdk/shapes:define-input get-campaign-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetCampaignRequest"))

(smithy/sdk/shapes:define-output get-campaign-response common-lisp:nil
                                 ((campaign-response :target-type
                                   campaign-response :required common-lisp:t
                                   :member-name "CampaignResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetCampaignResponse"))

(smithy/sdk/shapes:define-input get-campaign-version-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t)
                                 (version :target-type string :required
                                  common-lisp:t :member-name "Version"
                                  :http-label common-lisp:t))
                                (:shape-name "GetCampaignVersionRequest"))

(smithy/sdk/shapes:define-output get-campaign-version-response common-lisp:nil
                                 ((campaign-response :target-type
                                   campaign-response :required common-lisp:t
                                   :member-name "CampaignResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetCampaignVersionResponse"))

(smithy/sdk/shapes:define-input get-campaign-versions-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetCampaignVersionsRequest"))

(smithy/sdk/shapes:define-output get-campaign-versions-response common-lisp:nil
                                 ((campaigns-response :target-type
                                   campaigns-response :required common-lisp:t
                                   :member-name "CampaignsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetCampaignVersionsResponse"))

(smithy/sdk/shapes:define-input get-campaigns-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetCampaignsRequest"))

(smithy/sdk/shapes:define-output get-campaigns-response common-lisp:nil
                                 ((campaigns-response :target-type
                                   campaigns-response :required common-lisp:t
                                   :member-name "CampaignsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetCampaignsResponse"))

(smithy/sdk/shapes:define-input get-channels-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetChannelsRequest"))

(smithy/sdk/shapes:define-output get-channels-response common-lisp:nil
                                 ((channels-response :target-type
                                   channels-response :required common-lisp:t
                                   :member-name "ChannelsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetChannelsResponse"))

(smithy/sdk/shapes:define-input get-email-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEmailChannelRequest"))

(smithy/sdk/shapes:define-output get-email-channel-response common-lisp:nil
                                 ((email-channel-response :target-type
                                   email-channel-response :required
                                   common-lisp:t :member-name
                                   "EmailChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetEmailChannelResponse"))

(smithy/sdk/shapes:define-input get-email-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "GetEmailTemplateRequest"))

(smithy/sdk/shapes:define-output get-email-template-response common-lisp:nil
                                 ((email-template-response :target-type
                                   email-template-response :required
                                   common-lisp:t :member-name
                                   "EmailTemplateResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetEmailTemplateResponse"))

(smithy/sdk/shapes:define-input get-endpoint-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (endpoint-id :target-type string :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEndpointRequest"))

(smithy/sdk/shapes:define-output get-endpoint-response common-lisp:nil
                                 ((endpoint-response :target-type
                                   endpoint-response :required common-lisp:t
                                   :member-name "EndpointResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetEndpointResponse"))

(smithy/sdk/shapes:define-input get-event-stream-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEventStreamRequest"))

(smithy/sdk/shapes:define-output get-event-stream-response common-lisp:nil
                                 ((event-stream :target-type event-stream
                                   :required common-lisp:t :member-name
                                   "EventStream" :http-payload common-lisp:t))
                                 (:shape-name "GetEventStreamResponse"))

(smithy/sdk/shapes:define-input get-export-job-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type string :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetExportJobRequest"))

(smithy/sdk/shapes:define-output get-export-job-response common-lisp:nil
                                 ((export-job-response :target-type
                                   export-job-response :required common-lisp:t
                                   :member-name "ExportJobResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetExportJobResponse"))

(smithy/sdk/shapes:define-input get-export-jobs-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetExportJobsRequest"))

(smithy/sdk/shapes:define-output get-export-jobs-response common-lisp:nil
                                 ((export-jobs-response :target-type
                                   export-jobs-response :required common-lisp:t
                                   :member-name "ExportJobsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetExportJobsResponse"))

(smithy/sdk/shapes:define-input get-gcm-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGcmChannelRequest"))

(smithy/sdk/shapes:define-output get-gcm-channel-response common-lisp:nil
                                 ((gcmchannel-response :target-type
                                   gcmchannel-response :required common-lisp:t
                                   :member-name "GCMChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetGcmChannelResponse"))

(smithy/sdk/shapes:define-input get-import-job-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (job-id :target-type string :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetImportJobRequest"))

(smithy/sdk/shapes:define-output get-import-job-response common-lisp:nil
                                 ((import-job-response :target-type
                                   import-job-response :required common-lisp:t
                                   :member-name "ImportJobResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetImportJobResponse"))

(smithy/sdk/shapes:define-input get-import-jobs-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetImportJobsRequest"))

(smithy/sdk/shapes:define-output get-import-jobs-response common-lisp:nil
                                 ((import-jobs-response :target-type
                                   import-jobs-response :required common-lisp:t
                                   :member-name "ImportJobsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetImportJobsResponse"))

(smithy/sdk/shapes:define-input get-in-app-messages-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (endpoint-id :target-type string :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetInAppMessagesRequest"))

(smithy/sdk/shapes:define-output get-in-app-messages-response common-lisp:nil
                                 ((in-app-messages-response :target-type
                                   in-app-messages-response :required
                                   common-lisp:t :member-name
                                   "InAppMessagesResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetInAppMessagesResponse"))

(smithy/sdk/shapes:define-input get-in-app-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "GetInAppTemplateRequest"))

(smithy/sdk/shapes:define-output get-in-app-template-response common-lisp:nil
                                 ((in-app-template-response :target-type
                                   in-app-template-response :required
                                   common-lisp:t :member-name
                                   "InAppTemplateResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetInAppTemplateResponse"))

(smithy/sdk/shapes:define-input get-journey-date-range-kpi-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (end-time :target-type timestamp-iso8601
                                  :member-name "EndTime" :http-query
                                  "end-time")
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (kpi-name :target-type string :required
                                  common-lisp:t :member-name "KpiName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (start-time :target-type timestamp-iso8601
                                  :member-name "StartTime" :http-query
                                  "start-time"))
                                (:shape-name "GetJourneyDateRangeKpiRequest"))

(smithy/sdk/shapes:define-output get-journey-date-range-kpi-response
                                 common-lisp:nil
                                 ((journey-date-range-kpi-response :target-type
                                   journey-date-range-kpi-response :required
                                   common-lisp:t :member-name
                                   "JourneyDateRangeKpiResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetJourneyDateRangeKpiResponse"))

(smithy/sdk/shapes:define-input get-journey-execution-activity-metrics-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-activity-id :target-type string
                                  :required common-lisp:t :member-name
                                  "JourneyActivityId" :http-label
                                  common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size"))
                                (:shape-name
                                 "GetJourneyExecutionActivityMetricsRequest"))

(smithy/sdk/shapes:define-output
 get-journey-execution-activity-metrics-response common-lisp:nil
 ((journey-execution-activity-metrics-response :target-type
   journey-execution-activity-metrics-response :required common-lisp:t
   :member-name "JourneyExecutionActivityMetricsResponse" :http-payload
   common-lisp:t))
 (:shape-name "GetJourneyExecutionActivityMetricsResponse"))

(smithy/sdk/shapes:define-input get-journey-execution-metrics-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size"))
                                (:shape-name
                                 "GetJourneyExecutionMetricsRequest"))

(smithy/sdk/shapes:define-output get-journey-execution-metrics-response
                                 common-lisp:nil
                                 ((journey-execution-metrics-response
                                   :target-type
                                   journey-execution-metrics-response :required
                                   common-lisp:t :member-name
                                   "JourneyExecutionMetricsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetJourneyExecutionMetricsResponse"))

(smithy/sdk/shapes:define-input get-journey-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetJourneyRequest"))

(smithy/sdk/shapes:define-output get-journey-response common-lisp:nil
                                 ((journey-response :target-type
                                   journey-response :required common-lisp:t
                                   :member-name "JourneyResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetJourneyResponse"))

(smithy/sdk/shapes:define-input
 get-journey-run-execution-activity-metrics-request common-lisp:nil
 ((application-id :target-type string :required common-lisp:t :member-name
   "ApplicationId" :http-label common-lisp:t)
  (journey-activity-id :target-type string :required common-lisp:t :member-name
   "JourneyActivityId" :http-label common-lisp:t)
  (journey-id :target-type string :required common-lisp:t :member-name
   "JourneyId" :http-label common-lisp:t)
  (next-token :target-type string :member-name "NextToken" :http-query
   "next-token")
  (page-size :target-type string :member-name "PageSize" :http-query
   "page-size")
  (run-id :target-type string :required common-lisp:t :member-name "RunId"
   :http-label common-lisp:t))
 (:shape-name "GetJourneyRunExecutionActivityMetricsRequest"))

(smithy/sdk/shapes:define-output
 get-journey-run-execution-activity-metrics-response common-lisp:nil
 ((journey-run-execution-activity-metrics-response :target-type
   journey-run-execution-activity-metrics-response :required common-lisp:t
   :member-name "JourneyRunExecutionActivityMetricsResponse" :http-payload
   common-lisp:t))
 (:shape-name "GetJourneyRunExecutionActivityMetricsResponse"))

(smithy/sdk/shapes:define-input get-journey-run-execution-metrics-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (run-id :target-type string :required
                                  common-lisp:t :member-name "RunId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetJourneyRunExecutionMetricsRequest"))

(smithy/sdk/shapes:define-output get-journey-run-execution-metrics-response
                                 common-lisp:nil
                                 ((journey-run-execution-metrics-response
                                   :target-type
                                   journey-run-execution-metrics-response
                                   :required common-lisp:t :member-name
                                   "JourneyRunExecutionMetricsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetJourneyRunExecutionMetricsResponse"))

(smithy/sdk/shapes:define-input get-journey-runs-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetJourneyRunsRequest"))

(smithy/sdk/shapes:define-output get-journey-runs-response common-lisp:nil
                                 ((journey-runs-response :target-type
                                   journey-runs-response :required
                                   common-lisp:t :member-name
                                   "JourneyRunsResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetJourneyRunsResponse"))

(smithy/sdk/shapes:define-input get-push-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "GetPushTemplateRequest"))

(smithy/sdk/shapes:define-output get-push-template-response common-lisp:nil
                                 ((push-notification-template-response
                                   :target-type
                                   push-notification-template-response
                                   :required common-lisp:t :member-name
                                   "PushNotificationTemplateResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetPushTemplateResponse"))

(smithy/sdk/shapes:define-input get-recommender-configuration-request
                                common-lisp:nil
                                ((recommender-id :target-type string :required
                                  common-lisp:t :member-name "RecommenderId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetRecommenderConfigurationRequest"))

(smithy/sdk/shapes:define-output get-recommender-configuration-response
                                 common-lisp:nil
                                 ((recommender-configuration-response
                                   :target-type
                                   recommender-configuration-response :required
                                   common-lisp:t :member-name
                                   "RecommenderConfigurationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetRecommenderConfigurationResponse"))

(smithy/sdk/shapes:define-input get-recommender-configurations-request
                                common-lisp:nil
                                ((page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name
                                 "GetRecommenderConfigurationsRequest"))

(smithy/sdk/shapes:define-output get-recommender-configurations-response
                                 common-lisp:nil
                                 ((list-recommender-configurations-response
                                   :target-type
                                   list-recommender-configurations-response
                                   :required common-lisp:t :member-name
                                   "ListRecommenderConfigurationsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "GetRecommenderConfigurationsResponse"))

(smithy/sdk/shapes:define-input get-segment-export-jobs-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t)
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetSegmentExportJobsRequest"))

(smithy/sdk/shapes:define-output get-segment-export-jobs-response
                                 common-lisp:nil
                                 ((export-jobs-response :target-type
                                   export-jobs-response :required common-lisp:t
                                   :member-name "ExportJobsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetSegmentExportJobsResponse"))

(smithy/sdk/shapes:define-input get-segment-import-jobs-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t)
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetSegmentImportJobsRequest"))

(smithy/sdk/shapes:define-output get-segment-import-jobs-response
                                 common-lisp:nil
                                 ((import-jobs-response :target-type
                                   import-jobs-response :required common-lisp:t
                                   :member-name "ImportJobsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetSegmentImportJobsResponse"))

(smithy/sdk/shapes:define-input get-segment-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSegmentRequest"))

(smithy/sdk/shapes:define-output get-segment-response common-lisp:nil
                                 ((segment-response :target-type
                                   segment-response :required common-lisp:t
                                   :member-name "SegmentResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetSegmentResponse"))

(smithy/sdk/shapes:define-input get-segment-version-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t)
                                 (version :target-type string :required
                                  common-lisp:t :member-name "Version"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSegmentVersionRequest"))

(smithy/sdk/shapes:define-output get-segment-version-response common-lisp:nil
                                 ((segment-response :target-type
                                   segment-response :required common-lisp:t
                                   :member-name "SegmentResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetSegmentVersionResponse"))

(smithy/sdk/shapes:define-input get-segment-versions-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t)
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetSegmentVersionsRequest"))

(smithy/sdk/shapes:define-output get-segment-versions-response common-lisp:nil
                                 ((segments-response :target-type
                                   segments-response :required common-lisp:t
                                   :member-name "SegmentsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetSegmentVersionsResponse"))

(smithy/sdk/shapes:define-input get-segments-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "GetSegmentsRequest"))

(smithy/sdk/shapes:define-output get-segments-response common-lisp:nil
                                 ((segments-response :target-type
                                   segments-response :required common-lisp:t
                                   :member-name "SegmentsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetSegmentsResponse"))

(smithy/sdk/shapes:define-input get-sms-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSmsChannelRequest"))

(smithy/sdk/shapes:define-output get-sms-channel-response common-lisp:nil
                                 ((smschannel-response :target-type
                                   smschannel-response :required common-lisp:t
                                   :member-name "SMSChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetSmsChannelResponse"))

(smithy/sdk/shapes:define-input get-sms-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "GetSmsTemplateRequest"))

(smithy/sdk/shapes:define-output get-sms-template-response common-lisp:nil
                                 ((smstemplate-response :target-type
                                   smstemplate-response :required common-lisp:t
                                   :member-name "SMSTemplateResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetSmsTemplateResponse"))

(smithy/sdk/shapes:define-input get-user-endpoints-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (user-id :target-type string :required
                                  common-lisp:t :member-name "UserId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUserEndpointsRequest"))

(smithy/sdk/shapes:define-output get-user-endpoints-response common-lisp:nil
                                 ((endpoints-response :target-type
                                   endpoints-response :required common-lisp:t
                                   :member-name "EndpointsResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "GetUserEndpointsResponse"))

(smithy/sdk/shapes:define-input get-voice-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVoiceChannelRequest"))

(smithy/sdk/shapes:define-output get-voice-channel-response common-lisp:nil
                                 ((voice-channel-response :target-type
                                   voice-channel-response :required
                                   common-lisp:t :member-name
                                   "VoiceChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetVoiceChannelResponse"))

(smithy/sdk/shapes:define-input get-voice-template-request common-lisp:nil
                                ((template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "GetVoiceTemplateRequest"))

(smithy/sdk/shapes:define-output get-voice-template-response common-lisp:nil
                                 ((voice-template-response :target-type
                                   voice-template-response :required
                                   common-lisp:t :member-name
                                   "VoiceTemplateResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetVoiceTemplateResponse"))

(smithy/sdk/shapes:define-structure holdout-activity common-lisp:nil
                                    ((next-activity :target-type string
                                      :member-name "NextActivity")
                                     (percentage :target-type integer :required
                                      common-lisp:t :member-name "Percentage"))
                                    (:shape-name "HoldoutActivity"))

(smithy/sdk/shapes:define-structure import-job-request common-lisp:nil
                                    ((define-segment :target-type boolean
                                      :member-name "DefineSegment")
                                     (external-id :target-type string
                                      :member-name "ExternalId")
                                     (format :target-type format :required
                                      common-lisp:t :member-name "Format")
                                     (register-endpoints :target-type boolean
                                      :member-name "RegisterEndpoints")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (s3url :target-type string :required
                                      common-lisp:t :member-name "S3Url")
                                     (segment-id :target-type string
                                      :member-name "SegmentId")
                                     (segment-name :target-type string
                                      :member-name "SegmentName"))
                                    (:shape-name "ImportJobRequest"))

(smithy/sdk/shapes:define-structure import-job-resource common-lisp:nil
                                    ((define-segment :target-type boolean
                                      :member-name "DefineSegment")
                                     (external-id :target-type string
                                      :member-name "ExternalId")
                                     (format :target-type format :required
                                      common-lisp:t :member-name "Format")
                                     (register-endpoints :target-type boolean
                                      :member-name "RegisterEndpoints")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (s3url :target-type string :required
                                      common-lisp:t :member-name "S3Url")
                                     (segment-id :target-type string
                                      :member-name "SegmentId")
                                     (segment-name :target-type string
                                      :member-name "SegmentName"))
                                    (:shape-name "ImportJobResource"))

(smithy/sdk/shapes:define-structure import-job-response common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (completed-pieces :target-type integer
                                      :member-name "CompletedPieces")
                                     (completion-date :target-type string
                                      :member-name "CompletionDate")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (definition :target-type
                                      import-job-resource :required
                                      common-lisp:t :member-name "Definition")
                                     (failed-pieces :target-type integer
                                      :member-name "FailedPieces")
                                     (failures :target-type list-of-string
                                      :member-name "Failures")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "JobStatus")
                                     (total-failures :target-type integer
                                      :member-name "TotalFailures")
                                     (total-pieces :target-type integer
                                      :member-name "TotalPieces")
                                     (total-processed :target-type integer
                                      :member-name "TotalProcessed")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ImportJobResponse"))

(smithy/sdk/shapes:define-structure import-jobs-response common-lisp:nil
                                    ((item :target-type
                                      list-of-import-job-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "ImportJobsResponse"))

(smithy/sdk/shapes:define-structure in-app-campaign-schedule common-lisp:nil
                                    ((end-date :target-type string :member-name
                                      "EndDate")
                                     (event-filter :target-type
                                      campaign-event-filter :member-name
                                      "EventFilter")
                                     (quiet-time :target-type quiet-time
                                      :member-name "QuietTime"))
                                    (:shape-name "InAppCampaignSchedule"))

(smithy/sdk/shapes:define-structure in-app-message common-lisp:nil
                                    ((content :target-type
                                      list-of-in-app-message-content
                                      :member-name "Content")
                                     (custom-config :target-type map-of-string
                                      :member-name "CustomConfig")
                                     (layout :target-type layout :member-name
                                      "Layout"))
                                    (:shape-name "InAppMessage"))

(smithy/sdk/shapes:define-structure in-app-message-body-config common-lisp:nil
                                    ((alignment :target-type alignment
                                      :required common-lisp:t :member-name
                                      "Alignment")
                                     (body :target-type string :required
                                      common-lisp:t :member-name "Body")
                                     (text-color :target-type string :required
                                      common-lisp:t :member-name "TextColor"))
                                    (:shape-name "InAppMessageBodyConfig"))

(smithy/sdk/shapes:define-structure in-app-message-button common-lisp:nil
                                    ((android :target-type
                                      override-button-configuration
                                      :member-name "Android")
                                     (default-config :target-type
                                      default-button-configuration :member-name
                                      "DefaultConfig")
                                     (ios :target-type
                                      override-button-configuration
                                      :member-name "IOS")
                                     (web :target-type
                                      override-button-configuration
                                      :member-name "Web"))
                                    (:shape-name "InAppMessageButton"))

(smithy/sdk/shapes:define-structure in-app-message-campaign common-lisp:nil
                                    ((campaign-id :target-type string
                                      :member-name "CampaignId")
                                     (daily-cap :target-type integer
                                      :member-name "DailyCap")
                                     (in-app-message :target-type
                                      in-app-message :member-name
                                      "InAppMessage")
                                     (priority :target-type integer
                                      :member-name "Priority")
                                     (schedule :target-type
                                      in-app-campaign-schedule :member-name
                                      "Schedule")
                                     (session-cap :target-type integer
                                      :member-name "SessionCap")
                                     (total-cap :target-type integer
                                      :member-name "TotalCap")
                                     (treatment-id :target-type string
                                      :member-name "TreatmentId"))
                                    (:shape-name "InAppMessageCampaign"))

(smithy/sdk/shapes:define-structure in-app-message-content common-lisp:nil
                                    ((background-color :target-type string
                                      :member-name "BackgroundColor")
                                     (body-config :target-type
                                      in-app-message-body-config :member-name
                                      "BodyConfig")
                                     (header-config :target-type
                                      in-app-message-header-config :member-name
                                      "HeaderConfig")
                                     (image-url :target-type string
                                      :member-name "ImageUrl")
                                     (primary-btn :target-type
                                      in-app-message-button :member-name
                                      "PrimaryBtn")
                                     (secondary-btn :target-type
                                      in-app-message-button :member-name
                                      "SecondaryBtn"))
                                    (:shape-name "InAppMessageContent"))

(smithy/sdk/shapes:define-structure in-app-message-header-config
                                    common-lisp:nil
                                    ((alignment :target-type alignment
                                      :required common-lisp:t :member-name
                                      "Alignment")
                                     (header :target-type string :required
                                      common-lisp:t :member-name "Header")
                                     (text-color :target-type string :required
                                      common-lisp:t :member-name "TextColor"))
                                    (:shape-name "InAppMessageHeaderConfig"))

(smithy/sdk/shapes:define-structure in-app-messages-response common-lisp:nil
                                    ((in-app-message-campaigns :target-type
                                      list-of-in-app-message-campaign
                                      :member-name "InAppMessageCampaigns"))
                                    (:shape-name "InAppMessagesResponse"))

(smithy/sdk/shapes:define-structure in-app-template-request common-lisp:nil
                                    ((content :target-type
                                      list-of-in-app-message-content
                                      :member-name "Content")
                                     (custom-config :target-type map-of-string
                                      :member-name "CustomConfig")
                                     (layout :target-type layout :member-name
                                      "Layout")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription"))
                                    (:shape-name "InAppTemplateRequest"))

(smithy/sdk/shapes:define-structure in-app-template-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (content :target-type
                                      list-of-in-app-message-content
                                      :member-name "Content")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (custom-config :target-type map-of-string
                                      :member-name "CustomConfig")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (layout :target-type layout :member-name
                                      "Layout")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "InAppTemplateResponse"))

(smithy/sdk/shapes:define-enum include
    common-lisp:nil
  (:all "ALL")
  (:any "ANY")
  (:none "NONE"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure item-response common-lisp:nil
                                    ((endpoint-item-response :target-type
                                      endpoint-item-response :member-name
                                      "EndpointItemResponse")
                                     (events-item-response :target-type
                                      map-of-event-item-response :member-name
                                      "EventsItemResponse"))
                                    (:shape-name "ItemResponse"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:created "CREATED")
  (:preparing-for-initialization "PREPARING_FOR_INITIALIZATION")
  (:initializing "INITIALIZING")
  (:processing "PROCESSING")
  (:pending-job "PENDING_JOB")
  (:completing "COMPLETING")
  (:completed "COMPLETED")
  (:failing "FAILING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure journey-channel-settings common-lisp:nil
                                    ((connect-campaign-arn :target-type string
                                      :member-name "ConnectCampaignArn")
                                     (connect-campaign-execution-role-arn
                                      :target-type string :member-name
                                      "ConnectCampaignExecutionRoleArn"))
                                    (:shape-name "JourneyChannelSettings"))

(smithy/sdk/shapes:define-structure journey-custom-message common-lisp:nil
                                    ((data :target-type string :member-name
                                      "Data"))
                                    (:shape-name "JourneyCustomMessage"))

(smithy/sdk/shapes:define-structure journey-date-range-kpi-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (end-time :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "EndTime")
                                     (journey-id :target-type string :required
                                      common-lisp:t :member-name "JourneyId")
                                     (kpi-name :target-type string :required
                                      common-lisp:t :member-name "KpiName")
                                     (kpi-result :target-type base-kpi-result
                                      :required common-lisp:t :member-name
                                      "KpiResult")
                                     (next-token :target-type string
                                      :member-name "NextToken")
                                     (start-time :target-type timestamp-iso8601
                                      :required common-lisp:t :member-name
                                      "StartTime"))
                                    (:shape-name "JourneyDateRangeKpiResponse"))

(smithy/sdk/shapes:define-structure journey-email-message common-lisp:nil
                                    ((from-address :target-type string
                                      :member-name "FromAddress"))
                                    (:shape-name "JourneyEmailMessage"))

(smithy/sdk/shapes:define-structure journey-execution-activity-metrics-response
                                    common-lisp:nil
                                    ((activity-type :target-type string
                                      :required common-lisp:t :member-name
                                      "ActivityType")
                                     (application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (journey-activity-id :target-type string
                                      :required common-lisp:t :member-name
                                      "JourneyActivityId")
                                     (journey-id :target-type string :required
                                      common-lisp:t :member-name "JourneyId")
                                     (last-evaluated-time :target-type string
                                      :required common-lisp:t :member-name
                                      "LastEvaluatedTime")
                                     (metrics :target-type map-of-string
                                      :required common-lisp:t :member-name
                                      "Metrics"))
                                    (:shape-name
                                     "JourneyExecutionActivityMetricsResponse"))

(smithy/sdk/shapes:define-structure journey-execution-metrics-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (journey-id :target-type string :required
                                      common-lisp:t :member-name "JourneyId")
                                     (last-evaluated-time :target-type string
                                      :required common-lisp:t :member-name
                                      "LastEvaluatedTime")
                                     (metrics :target-type map-of-string
                                      :required common-lisp:t :member-name
                                      "Metrics"))
                                    (:shape-name
                                     "JourneyExecutionMetricsResponse"))

(smithy/sdk/shapes:define-structure journey-limits common-lisp:nil
                                    ((daily-cap :target-type integer
                                      :member-name "DailyCap")
                                     (endpoint-reentry-cap :target-type integer
                                      :member-name "EndpointReentryCap")
                                     (messages-per-second :target-type integer
                                      :member-name "MessagesPerSecond")
                                     (endpoint-reentry-interval :target-type
                                      string :member-name
                                      "EndpointReentryInterval")
                                     (timeframe-cap :target-type
                                      journey-timeframe-cap :member-name
                                      "TimeframeCap")
                                     (total-cap :target-type integer
                                      :member-name "TotalCap"))
                                    (:shape-name "JourneyLimits"))

(smithy/sdk/shapes:define-structure journey-push-message common-lisp:nil
                                    ((time-to-live :target-type string
                                      :member-name "TimeToLive"))
                                    (:shape-name "JourneyPushMessage"))

(smithy/sdk/shapes:define-structure journey-response common-lisp:nil
                                    ((activities :target-type map-of-activity
                                      :member-name "Activities")
                                     (application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (limits :target-type journey-limits
                                      :member-name "Limits")
                                     (local-time :target-type boolean
                                      :member-name "LocalTime")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (quiet-time :target-type quiet-time
                                      :member-name "QuietTime")
                                     (refresh-frequency :target-type string
                                      :member-name "RefreshFrequency")
                                     (schedule :target-type journey-schedule
                                      :member-name "Schedule")
                                     (start-activity :target-type string
                                      :member-name "StartActivity")
                                     (start-condition :target-type
                                      start-condition :member-name
                                      "StartCondition")
                                     (state :target-type state :member-name
                                      "State")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (wait-for-quiet-time :target-type boolean
                                      :member-name "WaitForQuietTime")
                                     (refresh-on-segment-update :target-type
                                      boolean :member-name
                                      "RefreshOnSegmentUpdate")
                                     (journey-channel-settings :target-type
                                      journey-channel-settings :member-name
                                      "JourneyChannelSettings")
                                     (sending-schedule :target-type boolean
                                      :member-name "SendingSchedule")
                                     (open-hours :target-type open-hours
                                      :member-name "OpenHours")
                                     (closed-days :target-type closed-days
                                      :member-name "ClosedDays")
                                     (timezone-estimation-methods :target-type
                                      list-of-timezone-estimation-methods-element
                                      :member-name
                                      "TimezoneEstimationMethods"))
                                    (:shape-name "JourneyResponse"))

(smithy/sdk/shapes:define-structure
 journey-run-execution-activity-metrics-response common-lisp:nil
 ((activity-type :target-type string :required common-lisp:t :member-name
   "ActivityType")
  (application-id :target-type string :required common-lisp:t :member-name
   "ApplicationId")
  (journey-activity-id :target-type string :required common-lisp:t :member-name
   "JourneyActivityId")
  (journey-id :target-type string :required common-lisp:t :member-name
   "JourneyId")
  (last-evaluated-time :target-type string :required common-lisp:t :member-name
   "LastEvaluatedTime")
  (metrics :target-type map-of-string :required common-lisp:t :member-name
   "Metrics")
  (run-id :target-type string :required common-lisp:t :member-name "RunId"))
 (:shape-name "JourneyRunExecutionActivityMetricsResponse"))

(smithy/sdk/shapes:define-structure journey-run-execution-metrics-response
                                    common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (journey-id :target-type string :required
                                      common-lisp:t :member-name "JourneyId")
                                     (last-evaluated-time :target-type string
                                      :required common-lisp:t :member-name
                                      "LastEvaluatedTime")
                                     (metrics :target-type map-of-string
                                      :required common-lisp:t :member-name
                                      "Metrics")
                                     (run-id :target-type string :required
                                      common-lisp:t :member-name "RunId"))
                                    (:shape-name
                                     "JourneyRunExecutionMetricsResponse"))

(smithy/sdk/shapes:define-structure journey-run-response common-lisp:nil
                                    ((creation-time :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (last-update-time :target-type string
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime")
                                     (run-id :target-type string :required
                                      common-lisp:t :member-name "RunId")
                                     (status :target-type journey-run-status
                                      :required common-lisp:t :member-name
                                      "Status"))
                                    (:shape-name "JourneyRunResponse"))

(smithy/sdk/shapes:define-enum journey-run-status
    common-lisp:nil
  (:scheduled "SCHEDULED")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-structure journey-runs-response common-lisp:nil
                                    ((item :target-type
                                      list-of-journey-run-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "JourneyRunsResponse"))

(smithy/sdk/shapes:define-structure journey-smsmessage common-lisp:nil
                                    ((message-type :target-type message-type
                                      :member-name "MessageType")
                                     (origination-number :target-type string
                                      :member-name "OriginationNumber")
                                     (sender-id :target-type string
                                      :member-name "SenderId")
                                     (entity-id :target-type string
                                      :member-name "EntityId")
                                     (template-id :target-type string
                                      :member-name "TemplateId"))
                                    (:shape-name "JourneySMSMessage"))

(smithy/sdk/shapes:define-structure journey-schedule common-lisp:nil
                                    ((end-time :target-type timestamp-iso8601
                                      :member-name "EndTime")
                                     (start-time :target-type timestamp-iso8601
                                      :member-name "StartTime")
                                     (timezone :target-type string :member-name
                                      "Timezone"))
                                    (:shape-name "JourneySchedule"))

(smithy/sdk/shapes:define-structure journey-state-request common-lisp:nil
                                    ((state :target-type state :member-name
                                      "State"))
                                    (:shape-name "JourneyStateRequest"))

(smithy/sdk/shapes:define-structure journey-timeframe-cap common-lisp:nil
                                    ((cap :target-type integer :member-name
                                      "Cap")
                                     (days :target-type integer :member-name
                                      "Days"))
                                    (:shape-name "JourneyTimeframeCap"))

(smithy/sdk/shapes:define-structure journeys-response common-lisp:nil
                                    ((item :target-type
                                      list-of-journey-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "JourneysResponse"))

(smithy/sdk/shapes:define-enum layout
    common-lisp:nil
  (:bottom-banner "BOTTOM_BANNER")
  (:top-banner "TOP_BANNER")
  (:overlays "OVERLAYS")
  (:mobile-feed "MOBILE_FEED")
  (:middle-banner "MIDDLE_BANNER")
  (:carousel "CAROUSEL"))

(smithy/sdk/shapes:define-input list-journeys-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (token :target-type string :member-name
                                  "Token" :http-query "token"))
                                (:shape-name "ListJourneysRequest"))

(smithy/sdk/shapes:define-output list-journeys-response common-lisp:nil
                                 ((journeys-response :target-type
                                   journeys-response :required common-lisp:t
                                   :member-name "JourneysResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "ListJourneysResponse"))

(smithy/sdk/shapes:define-list list-of-activity-response :member
                               activity-response)

(smithy/sdk/shapes:define-list list-of-application-response :member
                               application-response)

(smithy/sdk/shapes:define-list list-of-campaign-response :member
                               campaign-response)

(smithy/sdk/shapes:define-list list-of-closed-days-rules :member
                               closed-days-rule)

(smithy/sdk/shapes:define-list list-of-endpoint-batch-item :member
                               endpoint-batch-item)

(smithy/sdk/shapes:define-list list-of-endpoint-response :member
                               endpoint-response)

(smithy/sdk/shapes:define-list list-of-export-job-response :member
                               export-job-response)

(smithy/sdk/shapes:define-list list-of-import-job-response :member
                               import-job-response)

(smithy/sdk/shapes:define-list list-of-in-app-message-campaign :member
                               in-app-message-campaign)

(smithy/sdk/shapes:define-list list-of-in-app-message-content :member
                               in-app-message-content)

(smithy/sdk/shapes:define-list list-of-journey-response :member
                               journey-response)

(smithy/sdk/shapes:define-list list-of-journey-run-response :member
                               journey-run-response)

(smithy/sdk/shapes:define-list list-of-message-header :member message-header)

(smithy/sdk/shapes:define-list list-of-multi-conditional-branch :member
                               multi-conditional-branch)

(smithy/sdk/shapes:define-list list-of-open-hours-rules :member open-hours-rule)

(smithy/sdk/shapes:define-list list-of-random-split-entry :member
                               random-split-entry)

(smithy/sdk/shapes:define-list list-of-recommender-configuration-response
                               :member recommender-configuration-response)

(smithy/sdk/shapes:define-list list-of-result-row :member result-row)

(smithy/sdk/shapes:define-list list-of-result-row-value :member
                               result-row-value)

(smithy/sdk/shapes:define-list list-of-segment-dimensions :member
                               segment-dimensions)

(smithy/sdk/shapes:define-list list-of-segment-group :member segment-group)

(smithy/sdk/shapes:define-list list-of-segment-reference :member
                               segment-reference)

(smithy/sdk/shapes:define-list list-of-segment-response :member
                               segment-response)

(smithy/sdk/shapes:define-list list-of-simple-condition :member
                               simple-condition)

(smithy/sdk/shapes:define-list list-of-template-response :member
                               template-response)

(smithy/sdk/shapes:define-list list-of-template-version-response :member
                               template-version-response)

(smithy/sdk/shapes:define-list list-of-treatment-resource :member
                               treatment-resource)

(smithy/sdk/shapes:define-list list-of-write-treatment-resource :member
                               write-treatment-resource)

(smithy/sdk/shapes:define-list list-of-endpoint-types-element :member
                               endpoint-types-element)

(smithy/sdk/shapes:define-list list-of-timezone-estimation-methods-element
                               :member timezone-estimation-methods-element)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-structure list-recommender-configurations-response
                                    common-lisp:nil
                                    ((item :target-type
                                      list-of-recommender-configuration-response
                                      :required common-lisp:t :member-name
                                      "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListRecommenderConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags-model :target-type tags-model :required
                                   common-lisp:t :member-name "TagsModel"
                                   :http-payload common-lisp:t))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-template-versions-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (template-type :target-type string :required
                                  common-lisp:t :member-name "TemplateType"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTemplateVersionsRequest"))

(smithy/sdk/shapes:define-output list-template-versions-response
                                 common-lisp:nil
                                 ((template-versions-response :target-type
                                   template-versions-response :required
                                   common-lisp:t :member-name
                                   "TemplateVersionsResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListTemplateVersionsResponse"))

(smithy/sdk/shapes:define-input list-templates-request common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken" :http-query "next-token")
                                 (page-size :target-type string :member-name
                                  "PageSize" :http-query "page-size")
                                 (prefix :target-type string :member-name
                                  "Prefix" :http-query "prefix")
                                 (template-type :target-type string
                                  :member-name "TemplateType" :http-query
                                  "template-type"))
                                (:shape-name "ListTemplatesRequest"))

(smithy/sdk/shapes:define-output list-templates-response common-lisp:nil
                                 ((templates-response :target-type
                                   templates-response :required common-lisp:t
                                   :member-name "TemplatesResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "ListTemplatesResponse"))

(smithy/sdk/shapes:define-map map-of-activity :key string :value activity)

(smithy/sdk/shapes:define-map map-of-address-configuration :key string :value
                              address-configuration)

(smithy/sdk/shapes:define-map map-of-attribute-dimension :key string :value
                              attribute-dimension)

(smithy/sdk/shapes:define-map map-of-channel-response :key string :value
                              channel-response)

(smithy/sdk/shapes:define-map map-of-endpoint-message-result :key string :value
                              endpoint-message-result)

(smithy/sdk/shapes:define-map map-of-endpoint-send-configuration :key string
                              :value endpoint-send-configuration)

(smithy/sdk/shapes:define-map map-of-event :key string :value event)

(smithy/sdk/shapes:define-map map-of-event-item-response :key string :value
                              event-item-response)

(smithy/sdk/shapes:define-map map-of-events-batch :key string :value
                              events-batch)

(smithy/sdk/shapes:define-map map-of-item-response :key string :value
                              item-response)

(smithy/sdk/shapes:define-map map-of-list-of-open-hours-rules :key day-of-week
                              :value list-of-open-hours-rules)

(smithy/sdk/shapes:define-map map-of-list-of-string :key string :value
                              list-of-string)

(smithy/sdk/shapes:define-map map-of-map-of-endpoint-message-result :key string
                              :value map-of-endpoint-message-result)

(smithy/sdk/shapes:define-map map-of-message-result :key string :value
                              message-result)

(smithy/sdk/shapes:define-map map-of-metric-dimension :key string :value
                              metric-dimension)

(smithy/sdk/shapes:define-map map-of-double :key string :value double)

(smithy/sdk/shapes:define-map map-of-integer :key string :value integer)

(smithy/sdk/shapes:define-map map-of-string :key string :value string)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((action :target-type action :member-name
                                      "Action")
                                     (body :target-type string :member-name
                                      "Body")
                                     (image-icon-url :target-type string
                                      :member-name "ImageIconUrl")
                                     (image-small-icon-url :target-type string
                                      :member-name "ImageSmallIconUrl")
                                     (image-url :target-type string
                                      :member-name "ImageUrl")
                                     (json-body :target-type string
                                      :member-name "JsonBody")
                                     (media-url :target-type string
                                      :member-name "MediaUrl")
                                     (raw-content :target-type string
                                      :member-name "RawContent")
                                     (silent-push :target-type boolean
                                      :member-name "SilentPush")
                                     (time-to-live :target-type integer
                                      :member-name "TimeToLive")
                                     (title :target-type string :member-name
                                      "Title")
                                     (url :target-type string :member-name
                                      "Url"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-structure message-body common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message")
                                     (request-id :target-type string
                                      :member-name "RequestID"))
                                    (:shape-name "MessageBody"))

(smithy/sdk/shapes:define-structure message-configuration common-lisp:nil
                                    ((admmessage :target-type message
                                      :member-name "ADMMessage")
                                     (apnsmessage :target-type message
                                      :member-name "APNSMessage")
                                     (baidu-message :target-type message
                                      :member-name "BaiduMessage")
                                     (custom-message :target-type
                                      campaign-custom-message :member-name
                                      "CustomMessage")
                                     (default-message :target-type message
                                      :member-name "DefaultMessage")
                                     (email-message :target-type
                                      campaign-email-message :member-name
                                      "EmailMessage")
                                     (gcmmessage :target-type message
                                      :member-name "GCMMessage")
                                     (smsmessage :target-type
                                      campaign-sms-message :member-name
                                      "SMSMessage")
                                     (in-app-message :target-type
                                      campaign-in-app-message :member-name
                                      "InAppMessage"))
                                    (:shape-name "MessageConfiguration"))

(smithy/sdk/shapes:define-structure message-header common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "MessageHeader"))

(smithy/sdk/shapes:define-structure message-request common-lisp:nil
                                    ((addresses :target-type
                                      map-of-address-configuration :member-name
                                      "Addresses")
                                     (context :target-type map-of-string
                                      :member-name "Context")
                                     (endpoints :target-type
                                      map-of-endpoint-send-configuration
                                      :member-name "Endpoints")
                                     (message-configuration :target-type
                                      direct-message-configuration :required
                                      common-lisp:t :member-name
                                      "MessageConfiguration")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration")
                                     (trace-id :target-type string :member-name
                                      "TraceId"))
                                    (:shape-name "MessageRequest"))

(smithy/sdk/shapes:define-structure message-response common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (endpoint-result :target-type
                                      map-of-endpoint-message-result
                                      :member-name "EndpointResult")
                                     (request-id :target-type string
                                      :member-name "RequestId")
                                     (result :target-type map-of-message-result
                                      :member-name "Result"))
                                    (:shape-name "MessageResponse"))

(smithy/sdk/shapes:define-structure message-result common-lisp:nil
                                    ((delivery-status :target-type
                                      delivery-status :required common-lisp:t
                                      :member-name "DeliveryStatus")
                                     (message-id :target-type string
                                      :member-name "MessageId")
                                     (status-code :target-type integer
                                      :required common-lisp:t :member-name
                                      "StatusCode")
                                     (status-message :target-type string
                                      :member-name "StatusMessage")
                                     (updated-token :target-type string
                                      :member-name "UpdatedToken"))
                                    (:shape-name "MessageResult"))

(smithy/sdk/shapes:define-enum message-type
    common-lisp:nil
  (:transactional "TRANSACTIONAL")
  (:promotional "PROMOTIONAL"))

(smithy/sdk/shapes:define-error method-not-allowed-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "MethodNotAllowedException")
                                (:error-code 405))

(smithy/sdk/shapes:define-structure metric-dimension common-lisp:nil
                                    ((comparison-operator :target-type string
                                      :required common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (value :target-type double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "MetricDimension"))

(smithy/sdk/shapes:define-enum mode
    common-lisp:nil
  (:delivery "DELIVERY")
  (:filter "FILTER"))

(smithy/sdk/shapes:define-structure multi-conditional-branch common-lisp:nil
                                    ((condition :target-type simple-condition
                                      :member-name "Condition")
                                     (next-activity :target-type string
                                      :member-name "NextActivity"))
                                    (:shape-name "MultiConditionalBranch"))

(smithy/sdk/shapes:define-structure multi-conditional-split-activity
                                    common-lisp:nil
                                    ((branches :target-type
                                      list-of-multi-conditional-branch
                                      :member-name "Branches")
                                     (default-activity :target-type string
                                      :member-name "DefaultActivity")
                                     (evaluation-wait-time :target-type
                                      wait-time :member-name
                                      "EvaluationWaitTime"))
                                    (:shape-name
                                     "MultiConditionalSplitActivity"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure number-validate-request common-lisp:nil
                                    ((iso-country-code :target-type string
                                      :member-name "IsoCountryCode")
                                     (phone-number :target-type string
                                      :member-name "PhoneNumber"))
                                    (:shape-name "NumberValidateRequest"))

(smithy/sdk/shapes:define-structure number-validate-response common-lisp:nil
                                    ((carrier :target-type string :member-name
                                      "Carrier")
                                     (city :target-type string :member-name
                                      "City")
                                     (cleansed-phone-number-e164 :target-type
                                      string :member-name
                                      "CleansedPhoneNumberE164")
                                     (cleansed-phone-number-national
                                      :target-type string :member-name
                                      "CleansedPhoneNumberNational")
                                     (country :target-type string :member-name
                                      "Country")
                                     (country-code-iso2 :target-type string
                                      :member-name "CountryCodeIso2")
                                     (country-code-numeric :target-type string
                                      :member-name "CountryCodeNumeric")
                                     (county :target-type string :member-name
                                      "County")
                                     (original-country-code-iso2 :target-type
                                      string :member-name
                                      "OriginalCountryCodeIso2")
                                     (original-phone-number :target-type string
                                      :member-name "OriginalPhoneNumber")
                                     (phone-type :target-type string
                                      :member-name "PhoneType")
                                     (phone-type-code :target-type integer
                                      :member-name "PhoneTypeCode")
                                     (timezone :target-type string :member-name
                                      "Timezone")
                                     (zip-code :target-type string :member-name
                                      "ZipCode"))
                                    (:shape-name "NumberValidateResponse"))

(smithy/sdk/shapes:define-structure open-hours common-lisp:nil
                                    ((email :target-type
                                      map-of-list-of-open-hours-rules
                                      :member-name "EMAIL")
                                     (sms :target-type
                                      map-of-list-of-open-hours-rules
                                      :member-name "SMS")
                                     (push :target-type
                                      map-of-list-of-open-hours-rules
                                      :member-name "PUSH")
                                     (voice :target-type
                                      map-of-list-of-open-hours-rules
                                      :member-name "VOICE")
                                     (custom :target-type
                                      map-of-list-of-open-hours-rules
                                      :member-name "CUSTOM"))
                                    (:shape-name "OpenHours"))

(smithy/sdk/shapes:define-structure open-hours-rule common-lisp:nil
                                    ((start-time :target-type string
                                      :member-name "StartTime")
                                     (end-time :target-type string :member-name
                                      "EndTime"))
                                    (:shape-name "OpenHoursRule"))

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:all "ALL")
  (:any "ANY"))

(smithy/sdk/shapes:define-structure override-button-configuration
                                    common-lisp:nil
                                    ((button-action :target-type button-action
                                      :required common-lisp:t :member-name
                                      "ButtonAction")
                                     (link :target-type string :member-name
                                      "Link"))
                                    (:shape-name "OverrideButtonConfiguration"))

(smithy/sdk/shapes:define-error payload-too-large-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "PayloadTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-input phone-number-validate-request common-lisp:nil
                                ((number-validate-request :target-type
                                  number-validate-request :required
                                  common-lisp:t :member-name
                                  "NumberValidateRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "PhoneNumberValidateRequest"))

(smithy/sdk/shapes:define-output phone-number-validate-response common-lisp:nil
                                 ((number-validate-response :target-type
                                   number-validate-response :required
                                   common-lisp:t :member-name
                                   "NumberValidateResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "PhoneNumberValidateResponse"))

(smithy/sdk/shapes:define-structure public-endpoint common-lisp:nil
                                    ((address :target-type string :member-name
                                      "Address")
                                     (attributes :target-type
                                      map-of-list-of-string :member-name
                                      "Attributes")
                                     (channel-type :target-type channel-type
                                      :member-name "ChannelType")
                                     (demographic :target-type
                                      endpoint-demographic :member-name
                                      "Demographic")
                                     (effective-date :target-type string
                                      :member-name "EffectiveDate")
                                     (endpoint-status :target-type string
                                      :member-name "EndpointStatus")
                                     (location :target-type endpoint-location
                                      :member-name "Location")
                                     (metrics :target-type map-of-double
                                      :member-name "Metrics")
                                     (opt-out :target-type string :member-name
                                      "OptOut")
                                     (request-id :target-type string
                                      :member-name "RequestId")
                                     (user :target-type endpoint-user
                                      :member-name "User"))
                                    (:shape-name "PublicEndpoint"))

(smithy/sdk/shapes:define-structure push-message-activity common-lisp:nil
                                    ((message-config :target-type
                                      journey-push-message :member-name
                                      "MessageConfig")
                                     (next-activity :target-type string
                                      :member-name "NextActivity")
                                     (template-name :target-type string
                                      :member-name "TemplateName")
                                     (template-version :target-type string
                                      :member-name "TemplateVersion"))
                                    (:shape-name "PushMessageActivity"))

(smithy/sdk/shapes:define-structure push-notification-template-request
                                    common-lisp:nil
                                    ((adm :target-type
                                      android-push-notification-template
                                      :member-name "ADM")
                                     (apns :target-type
                                      apnspush-notification-template
                                      :member-name "APNS")
                                     (baidu :target-type
                                      android-push-notification-template
                                      :member-name "Baidu")
                                     (default :target-type
                                      default-push-notification-template
                                      :member-name "Default")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (gcm :target-type
                                      android-push-notification-template
                                      :member-name "GCM")
                                     (recommender-id :target-type string
                                      :member-name "RecommenderId")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription"))
                                    (:shape-name
                                     "PushNotificationTemplateRequest"))

(smithy/sdk/shapes:define-structure push-notification-template-response
                                    common-lisp:nil
                                    ((adm :target-type
                                      android-push-notification-template
                                      :member-name "ADM")
                                     (apns :target-type
                                      apnspush-notification-template
                                      :member-name "APNS")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (baidu :target-type
                                      android-push-notification-template
                                      :member-name "Baidu")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (default :target-type
                                      default-push-notification-template
                                      :member-name "Default")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (gcm :target-type
                                      android-push-notification-template
                                      :member-name "GCM")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (recommender-id :target-type string
                                      :member-name "RecommenderId")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name
                                     "PushNotificationTemplateResponse"))

(smithy/sdk/shapes:define-input put-event-stream-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (write-event-stream :target-type
                                  write-event-stream :required common-lisp:t
                                  :member-name "WriteEventStream" :http-payload
                                  common-lisp:t))
                                (:shape-name "PutEventStreamRequest"))

(smithy/sdk/shapes:define-output put-event-stream-response common-lisp:nil
                                 ((event-stream :target-type event-stream
                                   :required common-lisp:t :member-name
                                   "EventStream" :http-payload common-lisp:t))
                                 (:shape-name "PutEventStreamResponse"))

(smithy/sdk/shapes:define-input put-events-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (events-request :target-type events-request
                                  :required common-lisp:t :member-name
                                  "EventsRequest" :http-payload common-lisp:t))
                                (:shape-name "PutEventsRequest"))

(smithy/sdk/shapes:define-output put-events-response common-lisp:nil
                                 ((events-response :target-type events-response
                                   :required common-lisp:t :member-name
                                   "EventsResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "PutEventsResponse"))

(smithy/sdk/shapes:define-structure quiet-time common-lisp:nil
                                    ((end :target-type string :member-name
                                      "End")
                                     (start :target-type string :member-name
                                      "Start"))
                                    (:shape-name "QuietTime"))

(smithy/sdk/shapes:define-structure random-split-activity common-lisp:nil
                                    ((branches :target-type
                                      list-of-random-split-entry :member-name
                                      "Branches"))
                                    (:shape-name "RandomSplitActivity"))

(smithy/sdk/shapes:define-structure random-split-entry common-lisp:nil
                                    ((next-activity :target-type string
                                      :member-name "NextActivity")
                                     (percentage :target-type integer
                                      :member-name "Percentage"))
                                    (:shape-name "RandomSplitEntry"))

(smithy/sdk/shapes:define-structure raw-email common-lisp:nil
                                    ((data :target-type blob :member-name
                                      "Data"))
                                    (:shape-name "RawEmail"))

(smithy/sdk/shapes:define-structure recency-dimension common-lisp:nil
                                    ((duration :target-type duration :required
                                      common-lisp:t :member-name "Duration")
                                     (recency-type :target-type recency-type
                                      :required common-lisp:t :member-name
                                      "RecencyType"))
                                    (:shape-name "RecencyDimension"))

(smithy/sdk/shapes:define-enum recency-type
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure recommender-configuration-response
                                    common-lisp:nil
                                    ((attributes :target-type map-of-string
                                      :member-name "Attributes")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (description :target-type string
                                      :member-name "Description")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (name :target-type string :member-name
                                      "Name")
                                     (recommendation-provider-id-type
                                      :target-type string :member-name
                                      "RecommendationProviderIdType")
                                     (recommendation-provider-role-arn
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "RecommendationProviderRoleArn")
                                     (recommendation-provider-uri :target-type
                                      string :required common-lisp:t
                                      :member-name "RecommendationProviderUri")
                                     (recommendation-transformer-uri
                                      :target-type string :member-name
                                      "RecommendationTransformerUri")
                                     (recommendations-display-name :target-type
                                      string :member-name
                                      "RecommendationsDisplayName")
                                     (recommendations-per-message :target-type
                                      integer :member-name
                                      "RecommendationsPerMessage"))
                                    (:shape-name
                                     "RecommenderConfigurationResponse"))

(smithy/sdk/shapes:define-input remove-attributes-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (attribute-type :target-type string :required
                                  common-lisp:t :member-name "AttributeType"
                                  :http-label common-lisp:t)
                                 (update-attributes-request :target-type
                                  update-attributes-request :required
                                  common-lisp:t :member-name
                                  "UpdateAttributesRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "RemoveAttributesRequest"))

(smithy/sdk/shapes:define-output remove-attributes-response common-lisp:nil
                                 ((attributes-resource :target-type
                                   attributes-resource :required common-lisp:t
                                   :member-name "AttributesResource"
                                   :http-payload common-lisp:t))
                                 (:shape-name "RemoveAttributesResponse"))

(smithy/sdk/shapes:define-structure result-row common-lisp:nil
                                    ((grouped-bys :target-type
                                      list-of-result-row-value :required
                                      common-lisp:t :member-name "GroupedBys")
                                     (values :target-type
                                      list-of-result-row-value :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "ResultRow"))

(smithy/sdk/shapes:define-structure result-row-value common-lisp:nil
                                    ((key :target-type string :required
                                      common-lisp:t :member-name "Key")
                                     (type :target-type string :required
                                      common-lisp:t :member-name "Type")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "ResultRowValue"))

(smithy/sdk/shapes:define-structure smschannel-request common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (sender-id :target-type string
                                      :member-name "SenderId")
                                     (short-code :target-type string
                                      :member-name "ShortCode"))
                                    (:shape-name "SMSChannelRequest"))

(smithy/sdk/shapes:define-structure smschannel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (promotional-messages-per-second
                                      :target-type integer :member-name
                                      "PromotionalMessagesPerSecond")
                                     (sender-id :target-type string
                                      :member-name "SenderId")
                                     (short-code :target-type string
                                      :member-name "ShortCode")
                                     (transactional-messages-per-second
                                      :target-type integer :member-name
                                      "TransactionalMessagesPerSecond")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "SMSChannelResponse"))

(smithy/sdk/shapes:define-structure smsmessage common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (keyword :target-type string :member-name
                                      "Keyword")
                                     (media-url :target-type string
                                      :member-name "MediaUrl")
                                     (message-type :target-type message-type
                                      :member-name "MessageType")
                                     (origination-number :target-type string
                                      :member-name "OriginationNumber")
                                     (sender-id :target-type string
                                      :member-name "SenderId")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (entity-id :target-type string
                                      :member-name "EntityId")
                                     (template-id :target-type string
                                      :member-name "TemplateId"))
                                    (:shape-name "SMSMessage"))

(smithy/sdk/shapes:define-structure smsmessage-activity common-lisp:nil
                                    ((message-config :target-type
                                      journey-smsmessage :member-name
                                      "MessageConfig")
                                     (next-activity :target-type string
                                      :member-name "NextActivity")
                                     (template-name :target-type string
                                      :member-name "TemplateName")
                                     (template-version :target-type string
                                      :member-name "TemplateVersion"))
                                    (:shape-name "SMSMessageActivity"))

(smithy/sdk/shapes:define-structure smstemplate-request common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (recommender-id :target-type string
                                      :member-name "RecommenderId")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription"))
                                    (:shape-name "SMSTemplateRequest"))

(smithy/sdk/shapes:define-structure smstemplate-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (body :target-type string :member-name
                                      "Body")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (recommender-id :target-type string
                                      :member-name "RecommenderId")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "SMSTemplateResponse"))

(smithy/sdk/shapes:define-structure schedule common-lisp:nil
                                    ((end-time :target-type string :member-name
                                      "EndTime")
                                     (event-filter :target-type
                                      campaign-event-filter :member-name
                                      "EventFilter")
                                     (frequency :target-type frequency
                                      :member-name "Frequency")
                                     (is-local-time :target-type boolean
                                      :member-name "IsLocalTime")
                                     (quiet-time :target-type quiet-time
                                      :member-name "QuietTime")
                                     (start-time :target-type string :required
                                      common-lisp:t :member-name "StartTime")
                                     (timezone :target-type string :member-name
                                      "Timezone"))
                                    (:shape-name "Schedule"))

(smithy/sdk/shapes:define-structure segment-behaviors common-lisp:nil
                                    ((recency :target-type recency-dimension
                                      :member-name "Recency"))
                                    (:shape-name "SegmentBehaviors"))

(smithy/sdk/shapes:define-structure segment-condition common-lisp:nil
                                    ((segment-id :target-type string :required
                                      common-lisp:t :member-name "SegmentId"))
                                    (:shape-name "SegmentCondition"))

(smithy/sdk/shapes:define-structure segment-demographics common-lisp:nil
                                    ((app-version :target-type set-dimension
                                      :member-name "AppVersion")
                                     (channel :target-type set-dimension
                                      :member-name "Channel")
                                     (device-type :target-type set-dimension
                                      :member-name "DeviceType")
                                     (make :target-type set-dimension
                                      :member-name "Make")
                                     (model :target-type set-dimension
                                      :member-name "Model")
                                     (platform :target-type set-dimension
                                      :member-name "Platform"))
                                    (:shape-name "SegmentDemographics"))

(smithy/sdk/shapes:define-structure segment-dimensions common-lisp:nil
                                    ((attributes :target-type
                                      map-of-attribute-dimension :member-name
                                      "Attributes")
                                     (behavior :target-type segment-behaviors
                                      :member-name "Behavior")
                                     (demographic :target-type
                                      segment-demographics :member-name
                                      "Demographic")
                                     (location :target-type segment-location
                                      :member-name "Location")
                                     (metrics :target-type
                                      map-of-metric-dimension :member-name
                                      "Metrics")
                                     (user-attributes :target-type
                                      map-of-attribute-dimension :member-name
                                      "UserAttributes"))
                                    (:shape-name "SegmentDimensions"))

(smithy/sdk/shapes:define-structure segment-group common-lisp:nil
                                    ((dimensions :target-type
                                      list-of-segment-dimensions :member-name
                                      "Dimensions")
                                     (source-segments :target-type
                                      list-of-segment-reference :member-name
                                      "SourceSegments")
                                     (source-type :target-type source-type
                                      :member-name "SourceType")
                                     (type :target-type type :member-name
                                      "Type"))
                                    (:shape-name "SegmentGroup"))

(smithy/sdk/shapes:define-structure segment-group-list common-lisp:nil
                                    ((groups :target-type list-of-segment-group
                                      :member-name "Groups")
                                     (include :target-type include :member-name
                                      "Include"))
                                    (:shape-name "SegmentGroupList"))

(smithy/sdk/shapes:define-structure segment-import-resource common-lisp:nil
                                    ((channel-counts :target-type
                                      map-of-integer :member-name
                                      "ChannelCounts")
                                     (external-id :target-type string :required
                                      common-lisp:t :member-name "ExternalId")
                                     (format :target-type format :required
                                      common-lisp:t :member-name "Format")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn")
                                     (s3url :target-type string :required
                                      common-lisp:t :member-name "S3Url")
                                     (size :target-type integer :required
                                      common-lisp:t :member-name "Size"))
                                    (:shape-name "SegmentImportResource"))

(smithy/sdk/shapes:define-structure segment-location common-lisp:nil
                                    ((country :target-type set-dimension
                                      :member-name "Country")
                                     (gpspoint :target-type gpspoint-dimension
                                      :member-name "GPSPoint"))
                                    (:shape-name "SegmentLocation"))

(smithy/sdk/shapes:define-structure segment-reference common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "SegmentReference"))

(smithy/sdk/shapes:define-structure segment-response common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (dimensions :target-type
                                      segment-dimensions :member-name
                                      "Dimensions")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (import-definition :target-type
                                      segment-import-resource :member-name
                                      "ImportDefinition")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (name :target-type string :member-name
                                      "Name")
                                     (segment-groups :target-type
                                      segment-group-list :member-name
                                      "SegmentGroups")
                                     (segment-type :target-type segment-type
                                      :required common-lisp:t :member-name
                                      "SegmentType")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "SegmentResponse"))

(smithy/sdk/shapes:define-enum segment-type
    common-lisp:nil
  (:dimensional "DIMENSIONAL")
  (:import "IMPORT"))

(smithy/sdk/shapes:define-structure segments-response common-lisp:nil
                                    ((item :target-type
                                      list-of-segment-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "SegmentsResponse"))

(smithy/sdk/shapes:define-input send-messages-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (message-request :target-type message-request
                                  :required common-lisp:t :member-name
                                  "MessageRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "SendMessagesRequest"))

(smithy/sdk/shapes:define-output send-messages-response common-lisp:nil
                                 ((message-response :target-type
                                   message-response :required common-lisp:t
                                   :member-name "MessageResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "SendMessagesResponse"))

(smithy/sdk/shapes:define-input send-otpmessage-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (send-otpmessage-request-parameters
                                  :target-type
                                  send-otpmessage-request-parameters :required
                                  common-lisp:t :member-name
                                  "SendOTPMessageRequestParameters"
                                  :http-payload common-lisp:t))
                                (:shape-name "SendOTPMessageRequest"))

(smithy/sdk/shapes:define-structure send-otpmessage-request-parameters
                                    common-lisp:nil
                                    ((allowed-attempts :target-type integer
                                      :member-name "AllowedAttempts")
                                     (brand-name :target-type string :required
                                      common-lisp:t :member-name "BrandName")
                                     (channel :target-type string :required
                                      common-lisp:t :member-name "Channel")
                                     (code-length :target-type integer
                                      :member-name "CodeLength")
                                     (destination-identity :target-type string
                                      :required common-lisp:t :member-name
                                      "DestinationIdentity")
                                     (entity-id :target-type string
                                      :member-name "EntityId")
                                     (language :target-type string :member-name
                                      "Language")
                                     (origination-identity :target-type string
                                      :required common-lisp:t :member-name
                                      "OriginationIdentity")
                                     (reference-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ReferenceId")
                                     (template-id :target-type string
                                      :member-name "TemplateId")
                                     (validity-period :target-type integer
                                      :member-name "ValidityPeriod"))
                                    (:shape-name
                                     "SendOTPMessageRequestParameters"))

(smithy/sdk/shapes:define-output send-otpmessage-response common-lisp:nil
                                 ((message-response :target-type
                                   message-response :required common-lisp:t
                                   :member-name "MessageResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "SendOTPMessageResponse"))

(smithy/sdk/shapes:define-structure send-users-message-request common-lisp:nil
                                    ((context :target-type map-of-string
                                      :member-name "Context")
                                     (message-configuration :target-type
                                      direct-message-configuration :required
                                      common-lisp:t :member-name
                                      "MessageConfiguration")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration")
                                     (trace-id :target-type string :member-name
                                      "TraceId")
                                     (users :target-type
                                      map-of-endpoint-send-configuration
                                      :required common-lisp:t :member-name
                                      "Users"))
                                    (:shape-name "SendUsersMessageRequest"))

(smithy/sdk/shapes:define-structure send-users-message-response common-lisp:nil
                                    ((application-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ApplicationId")
                                     (request-id :target-type string
                                      :member-name "RequestId")
                                     (result :target-type
                                      map-of-map-of-endpoint-message-result
                                      :member-name "Result"))
                                    (:shape-name "SendUsersMessageResponse"))

(smithy/sdk/shapes:define-input send-users-messages-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (send-users-message-request :target-type
                                  send-users-message-request :required
                                  common-lisp:t :member-name
                                  "SendUsersMessageRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "SendUsersMessagesRequest"))

(smithy/sdk/shapes:define-output send-users-messages-response common-lisp:nil
                                 ((send-users-message-response :target-type
                                   send-users-message-response :required
                                   common-lisp:t :member-name
                                   "SendUsersMessageResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "SendUsersMessagesResponse"))

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((duration :target-type integer
                                      :member-name "Duration")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (start-timestamp :target-type string
                                      :required common-lisp:t :member-name
                                      "StartTimestamp")
                                     (stop-timestamp :target-type string
                                      :member-name "StopTimestamp"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-structure set-dimension common-lisp:nil
                                    ((dimension-type :target-type
                                      dimension-type :member-name
                                      "DimensionType")
                                     (values :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "SetDimension"))

(smithy/sdk/shapes:define-structure simple-condition common-lisp:nil
                                    ((event-condition :target-type
                                      event-condition :member-name
                                      "EventCondition")
                                     (segment-condition :target-type
                                      segment-condition :member-name
                                      "SegmentCondition")
                                     (segment-dimensions :target-type
                                      segment-dimensions :member-name
                                      "SegmentDimensions" :json-name
                                      "segmentDimensions"))
                                    (:shape-name "SimpleCondition"))

(smithy/sdk/shapes:define-structure simple-email common-lisp:nil
                                    ((html-part :target-type simple-email-part
                                      :member-name "HtmlPart")
                                     (subject :target-type simple-email-part
                                      :member-name "Subject")
                                     (text-part :target-type simple-email-part
                                      :member-name "TextPart")
                                     (headers :target-type
                                      list-of-message-header :member-name
                                      "Headers"))
                                    (:shape-name "SimpleEmail"))

(smithy/sdk/shapes:define-structure simple-email-part common-lisp:nil
                                    ((charset :target-type string :member-name
                                      "Charset")
                                     (data :target-type string :member-name
                                      "Data"))
                                    (:shape-name "SimpleEmailPart"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:all "ALL")
  (:any "ANY")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure start-condition common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description")
                                     (event-start-condition :target-type
                                      event-start-condition :member-name
                                      "EventStartCondition")
                                     (segment-start-condition :target-type
                                      segment-condition :member-name
                                      "SegmentStartCondition"))
                                    (:shape-name "StartCondition"))

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:draft "DRAFT")
  (:active "ACTIVE")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED")
  (:closed "CLOSED")
  (:paused "PAUSED"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags-model :target-type tags-model :required
                                  common-lisp:t :member-name "TagsModel"
                                  :http-payload common-lisp:t))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tags-model common-lisp:nil
                                    ((tags :target-type map-of-string :required
                                      common-lisp:t :member-name "tags"
                                      :json-name "tags"))
                                    (:shape-name "TagsModel"))

(smithy/sdk/shapes:define-structure template common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "Template"))

(smithy/sdk/shapes:define-structure template-active-version-request
                                    common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version"))
                                    (:shape-name
                                     "TemplateActiveVersionRequest"))

(smithy/sdk/shapes:define-structure template-configuration common-lisp:nil
                                    ((email-template :target-type template
                                      :member-name "EmailTemplate")
                                     (push-template :target-type template
                                      :member-name "PushTemplate")
                                     (smstemplate :target-type template
                                      :member-name "SMSTemplate")
                                     (voice-template :target-type template
                                      :member-name "VoiceTemplate")
                                     (in-app-template :target-type template
                                      :member-name "InAppTemplate"))
                                    (:shape-name "TemplateConfiguration"))

(smithy/sdk/shapes:define-structure template-create-message-body
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (message :target-type string :member-name
                                      "Message")
                                     (request-id :target-type string
                                      :member-name "RequestID"))
                                    (:shape-name "TemplateCreateMessageBody"))

(smithy/sdk/shapes:define-structure template-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "TemplateResponse"))

(smithy/sdk/shapes:define-enum template-type
    common-lisp:nil
  (:email "EMAIL")
  (:sms "SMS")
  (:voice "VOICE")
  (:push "PUSH")
  (:inapp "INAPP"))

(smithy/sdk/shapes:define-structure template-version-response common-lisp:nil
                                    ((creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "TemplateVersionResponse"))

(smithy/sdk/shapes:define-structure template-versions-response common-lisp:nil
                                    ((item :target-type
                                      list-of-template-version-response
                                      :required common-lisp:t :member-name
                                      "Item")
                                     (message :target-type string :member-name
                                      "Message")
                                     (next-token :target-type string
                                      :member-name "NextToken")
                                     (request-id :target-type string
                                      :member-name "RequestID"))
                                    (:shape-name "TemplateVersionsResponse"))

(smithy/sdk/shapes:define-structure templates-response common-lisp:nil
                                    ((item :target-type
                                      list-of-template-response :required
                                      common-lisp:t :member-name "Item")
                                     (next-token :target-type string
                                      :member-name "NextToken"))
                                    (:shape-name "TemplatesResponse"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (request-id :target-type string :member-name
                                  "RequestID"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure treatment-resource common-lisp:nil
                                    ((custom-delivery-configuration
                                      :target-type
                                      custom-delivery-configuration
                                      :member-name
                                      "CustomDeliveryConfiguration")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (message-configuration :target-type
                                      message-configuration :member-name
                                      "MessageConfiguration")
                                     (schedule :target-type schedule
                                      :member-name "Schedule")
                                     (size-percent :target-type integer
                                      :required common-lisp:t :member-name
                                      "SizePercent")
                                     (state :target-type campaign-state
                                      :member-name "State")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration")
                                     (treatment-description :target-type string
                                      :member-name "TreatmentDescription")
                                     (treatment-name :target-type string
                                      :member-name "TreatmentName"))
                                    (:shape-name "TreatmentResource"))

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:all "ALL")
  (:any "ANY")
  (:none "NONE"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-adm-channel-request common-lisp:nil
                                ((admchannel-request :target-type
                                  admchannel-request :required common-lisp:t
                                  :member-name "ADMChannelRequest"
                                  :http-payload common-lisp:t)
                                 (application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateAdmChannelRequest"))

(smithy/sdk/shapes:define-output update-adm-channel-response common-lisp:nil
                                 ((admchannel-response :target-type
                                   admchannel-response :required common-lisp:t
                                   :member-name "ADMChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "UpdateAdmChannelResponse"))

(smithy/sdk/shapes:define-input update-apns-channel-request common-lisp:nil
                                ((apnschannel-request :target-type
                                  apnschannel-request :required common-lisp:t
                                  :member-name "APNSChannelRequest"
                                  :http-payload common-lisp:t)
                                 (application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateApnsChannelRequest"))

(smithy/sdk/shapes:define-output update-apns-channel-response common-lisp:nil
                                 ((apnschannel-response :target-type
                                   apnschannel-response :required common-lisp:t
                                   :member-name "APNSChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "UpdateApnsChannelResponse"))

(smithy/sdk/shapes:define-input update-apns-sandbox-channel-request
                                common-lisp:nil
                                ((apnssandbox-channel-request :target-type
                                  apnssandbox-channel-request :required
                                  common-lisp:t :member-name
                                  "APNSSandboxChannelRequest" :http-payload
                                  common-lisp:t)
                                 (application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateApnsSandboxChannelRequest"))

(smithy/sdk/shapes:define-output update-apns-sandbox-channel-response
                                 common-lisp:nil
                                 ((apnssandbox-channel-response :target-type
                                   apnssandbox-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSSandboxChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "UpdateApnsSandboxChannelResponse"))

(smithy/sdk/shapes:define-input update-apns-voip-channel-request
                                common-lisp:nil
                                ((apnsvoip-channel-request :target-type
                                  apnsvoip-channel-request :required
                                  common-lisp:t :member-name
                                  "APNSVoipChannelRequest" :http-payload
                                  common-lisp:t)
                                 (application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateApnsVoipChannelRequest"))

(smithy/sdk/shapes:define-output update-apns-voip-channel-response
                                 common-lisp:nil
                                 ((apnsvoip-channel-response :target-type
                                   apnsvoip-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSVoipChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateApnsVoipChannelResponse"))

(smithy/sdk/shapes:define-input update-apns-voip-sandbox-channel-request
                                common-lisp:nil
                                ((apnsvoip-sandbox-channel-request :target-type
                                  apnsvoip-sandbox-channel-request :required
                                  common-lisp:t :member-name
                                  "APNSVoipSandboxChannelRequest" :http-payload
                                  common-lisp:t)
                                 (application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "UpdateApnsVoipSandboxChannelRequest"))

(smithy/sdk/shapes:define-output update-apns-voip-sandbox-channel-response
                                 common-lisp:nil
                                 ((apnsvoip-sandbox-channel-response
                                   :target-type
                                   apnsvoip-sandbox-channel-response :required
                                   common-lisp:t :member-name
                                   "APNSVoipSandboxChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "UpdateApnsVoipSandboxChannelResponse"))

(smithy/sdk/shapes:define-input update-application-settings-request
                                common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (write-application-settings-request
                                  :target-type
                                  write-application-settings-request :required
                                  common-lisp:t :member-name
                                  "WriteApplicationSettingsRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "UpdateApplicationSettingsRequest"))

(smithy/sdk/shapes:define-output update-application-settings-response
                                 common-lisp:nil
                                 ((application-settings-resource :target-type
                                   application-settings-resource :required
                                   common-lisp:t :member-name
                                   "ApplicationSettingsResource" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "UpdateApplicationSettingsResponse"))

(smithy/sdk/shapes:define-structure update-attributes-request common-lisp:nil
                                    ((blacklist :target-type list-of-string
                                      :member-name "Blacklist"))
                                    (:shape-name "UpdateAttributesRequest"))

(smithy/sdk/shapes:define-input update-baidu-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (baidu-channel-request :target-type
                                  baidu-channel-request :required common-lisp:t
                                  :member-name "BaiduChannelRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateBaiduChannelRequest"))

(smithy/sdk/shapes:define-output update-baidu-channel-response common-lisp:nil
                                 ((baidu-channel-response :target-type
                                   baidu-channel-response :required
                                   common-lisp:t :member-name
                                   "BaiduChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateBaiduChannelResponse"))

(smithy/sdk/shapes:define-input update-campaign-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (campaign-id :target-type string :required
                                  common-lisp:t :member-name "CampaignId"
                                  :http-label common-lisp:t)
                                 (write-campaign-request :target-type
                                  write-campaign-request :required
                                  common-lisp:t :member-name
                                  "WriteCampaignRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "UpdateCampaignRequest"))

(smithy/sdk/shapes:define-output update-campaign-response common-lisp:nil
                                 ((campaign-response :target-type
                                   campaign-response :required common-lisp:t
                                   :member-name "CampaignResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "UpdateCampaignResponse"))

(smithy/sdk/shapes:define-input update-email-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (email-channel-request :target-type
                                  email-channel-request :required common-lisp:t
                                  :member-name "EmailChannelRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateEmailChannelRequest"))

(smithy/sdk/shapes:define-output update-email-channel-response common-lisp:nil
                                 ((email-channel-response :target-type
                                   email-channel-response :required
                                   common-lisp:t :member-name
                                   "EmailChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateEmailChannelResponse"))

(smithy/sdk/shapes:define-input update-email-template-request common-lisp:nil
                                ((create-new-version :target-type boolean
                                  :member-name "CreateNewVersion" :http-query
                                  "create-new-version")
                                 (email-template-request :target-type
                                  email-template-request :required
                                  common-lisp:t :member-name
                                  "EmailTemplateRequest" :http-payload
                                  common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "UpdateEmailTemplateRequest"))

(smithy/sdk/shapes:define-output update-email-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdateEmailTemplateResponse"))

(smithy/sdk/shapes:define-input update-endpoint-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (endpoint-id :target-type string :required
                                  common-lisp:t :member-name "EndpointId"
                                  :http-label common-lisp:t)
                                 (endpoint-request :target-type
                                  endpoint-request :required common-lisp:t
                                  :member-name "EndpointRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "UpdateEndpointRequest"))

(smithy/sdk/shapes:define-output update-endpoint-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdateEndpointResponse"))

(smithy/sdk/shapes:define-input update-endpoints-batch-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (endpoint-batch-request :target-type
                                  endpoint-batch-request :required
                                  common-lisp:t :member-name
                                  "EndpointBatchRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "UpdateEndpointsBatchRequest"))

(smithy/sdk/shapes:define-output update-endpoints-batch-response
                                 common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdateEndpointsBatchResponse"))

(smithy/sdk/shapes:define-input update-gcm-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (gcmchannel-request :target-type
                                  gcmchannel-request :required common-lisp:t
                                  :member-name "GCMChannelRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateGcmChannelRequest"))

(smithy/sdk/shapes:define-output update-gcm-channel-response common-lisp:nil
                                 ((gcmchannel-response :target-type
                                   gcmchannel-response :required common-lisp:t
                                   :member-name "GCMChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "UpdateGcmChannelResponse"))

(smithy/sdk/shapes:define-input update-in-app-template-request common-lisp:nil
                                ((create-new-version :target-type boolean
                                  :member-name "CreateNewVersion" :http-query
                                  "create-new-version")
                                 (in-app-template-request :target-type
                                  in-app-template-request :required
                                  common-lisp:t :member-name
                                  "InAppTemplateRequest" :http-payload
                                  common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "UpdateInAppTemplateRequest"))

(smithy/sdk/shapes:define-output update-in-app-template-response
                                 common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdateInAppTemplateResponse"))

(smithy/sdk/shapes:define-input update-journey-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (write-journey-request :target-type
                                  write-journey-request :required common-lisp:t
                                  :member-name "WriteJourneyRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateJourneyRequest"))

(smithy/sdk/shapes:define-output update-journey-response common-lisp:nil
                                 ((journey-response :target-type
                                   journey-response :required common-lisp:t
                                   :member-name "JourneyResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateJourneyResponse"))

(smithy/sdk/shapes:define-input update-journey-state-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (journey-id :target-type string :required
                                  common-lisp:t :member-name "JourneyId"
                                  :http-label common-lisp:t)
                                 (journey-state-request :target-type
                                  journey-state-request :required common-lisp:t
                                  :member-name "JourneyStateRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateJourneyStateRequest"))

(smithy/sdk/shapes:define-output update-journey-state-response common-lisp:nil
                                 ((journey-response :target-type
                                   journey-response :required common-lisp:t
                                   :member-name "JourneyResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateJourneyStateResponse"))

(smithy/sdk/shapes:define-input update-push-template-request common-lisp:nil
                                ((create-new-version :target-type boolean
                                  :member-name "CreateNewVersion" :http-query
                                  "create-new-version")
                                 (push-notification-template-request
                                  :target-type
                                  push-notification-template-request :required
                                  common-lisp:t :member-name
                                  "PushNotificationTemplateRequest"
                                  :http-payload common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "UpdatePushTemplateRequest"))

(smithy/sdk/shapes:define-output update-push-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdatePushTemplateResponse"))

(smithy/sdk/shapes:define-input update-recommender-configuration-request
                                common-lisp:nil
                                ((recommender-id :target-type string :required
                                  common-lisp:t :member-name "RecommenderId"
                                  :http-label common-lisp:t)
                                 (update-recommender-configuration :target-type
                                  update-recommender-configuration-shape
                                  :required common-lisp:t :member-name
                                  "UpdateRecommenderConfiguration"
                                  :http-payload common-lisp:t))
                                (:shape-name
                                 "UpdateRecommenderConfigurationRequest"))

(smithy/sdk/shapes:define-output update-recommender-configuration-response
                                 common-lisp:nil
                                 ((recommender-configuration-response
                                   :target-type
                                   recommender-configuration-response :required
                                   common-lisp:t :member-name
                                   "RecommenderConfigurationResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "UpdateRecommenderConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-recommender-configuration-shape
                                    common-lisp:nil
                                    ((attributes :target-type map-of-string
                                      :member-name "Attributes")
                                     (description :target-type string
                                      :member-name "Description")
                                     (name :target-type string :member-name
                                      "Name")
                                     (recommendation-provider-id-type
                                      :target-type string :member-name
                                      "RecommendationProviderIdType")
                                     (recommendation-provider-role-arn
                                      :target-type string :required
                                      common-lisp:t :member-name
                                      "RecommendationProviderRoleArn")
                                     (recommendation-provider-uri :target-type
                                      string :required common-lisp:t
                                      :member-name "RecommendationProviderUri")
                                     (recommendation-transformer-uri
                                      :target-type string :member-name
                                      "RecommendationTransformerUri")
                                     (recommendations-display-name :target-type
                                      string :member-name
                                      "RecommendationsDisplayName")
                                     (recommendations-per-message :target-type
                                      integer :member-name
                                      "RecommendationsPerMessage"))
                                    (:shape-name
                                     "UpdateRecommenderConfigurationShape"))

(smithy/sdk/shapes:define-input update-segment-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (segment-id :target-type string :required
                                  common-lisp:t :member-name "SegmentId"
                                  :http-label common-lisp:t)
                                 (write-segment-request :target-type
                                  write-segment-request :required common-lisp:t
                                  :member-name "WriteSegmentRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateSegmentRequest"))

(smithy/sdk/shapes:define-output update-segment-response common-lisp:nil
                                 ((segment-response :target-type
                                   segment-response :required common-lisp:t
                                   :member-name "SegmentResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateSegmentResponse"))

(smithy/sdk/shapes:define-input update-sms-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (smschannel-request :target-type
                                  smschannel-request :required common-lisp:t
                                  :member-name "SMSChannelRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateSmsChannelRequest"))

(smithy/sdk/shapes:define-output update-sms-channel-response common-lisp:nil
                                 ((smschannel-response :target-type
                                   smschannel-response :required common-lisp:t
                                   :member-name "SMSChannelResponse"
                                   :http-payload common-lisp:t))
                                 (:shape-name "UpdateSmsChannelResponse"))

(smithy/sdk/shapes:define-input update-sms-template-request common-lisp:nil
                                ((create-new-version :target-type boolean
                                  :member-name "CreateNewVersion" :http-query
                                  "create-new-version")
                                 (smstemplate-request :target-type
                                  smstemplate-request :required common-lisp:t
                                  :member-name "SMSTemplateRequest"
                                  :http-payload common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version"))
                                (:shape-name "UpdateSmsTemplateRequest"))

(smithy/sdk/shapes:define-output update-sms-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdateSmsTemplateResponse"))

(smithy/sdk/shapes:define-input update-template-active-version-request
                                common-lisp:nil
                                ((template-active-version-request :target-type
                                  template-active-version-request :required
                                  common-lisp:t :member-name
                                  "TemplateActiveVersionRequest" :http-payload
                                  common-lisp:t)
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (template-type :target-type string :required
                                  common-lisp:t :member-name "TemplateType"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "UpdateTemplateActiveVersionRequest"))

(smithy/sdk/shapes:define-output update-template-active-version-response
                                 common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name
                                  "UpdateTemplateActiveVersionResponse"))

(smithy/sdk/shapes:define-input update-voice-channel-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (voice-channel-request :target-type
                                  voice-channel-request :required common-lisp:t
                                  :member-name "VoiceChannelRequest"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateVoiceChannelRequest"))

(smithy/sdk/shapes:define-output update-voice-channel-response common-lisp:nil
                                 ((voice-channel-response :target-type
                                   voice-channel-response :required
                                   common-lisp:t :member-name
                                   "VoiceChannelResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateVoiceChannelResponse"))

(smithy/sdk/shapes:define-input update-voice-template-request common-lisp:nil
                                ((create-new-version :target-type boolean
                                  :member-name "CreateNewVersion" :http-query
                                  "create-new-version")
                                 (template-name :target-type string :required
                                  common-lisp:t :member-name "TemplateName"
                                  :http-label common-lisp:t)
                                 (version :target-type string :member-name
                                  "Version" :http-query "version")
                                 (voice-template-request :target-type
                                  voice-template-request :required
                                  common-lisp:t :member-name
                                  "VoiceTemplateRequest" :http-payload
                                  common-lisp:t))
                                (:shape-name "UpdateVoiceTemplateRequest"))

(smithy/sdk/shapes:define-output update-voice-template-response common-lisp:nil
                                 ((message-body :target-type message-body
                                   :required common-lisp:t :member-name
                                   "MessageBody" :http-payload common-lisp:t))
                                 (:shape-name "UpdateVoiceTemplateResponse"))

(smithy/sdk/shapes:define-structure verification-response common-lisp:nil
                                    ((valid :target-type boolean :member-name
                                      "Valid"))
                                    (:shape-name "VerificationResponse"))

(smithy/sdk/shapes:define-input verify-otpmessage-request common-lisp:nil
                                ((application-id :target-type string :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (verify-otpmessage-request-parameters
                                  :target-type
                                  verify-otpmessage-request-parameters
                                  :required common-lisp:t :member-name
                                  "VerifyOTPMessageRequestParameters"
                                  :http-payload common-lisp:t))
                                (:shape-name "VerifyOTPMessageRequest"))

(smithy/sdk/shapes:define-structure verify-otpmessage-request-parameters
                                    common-lisp:nil
                                    ((destination-identity :target-type string
                                      :required common-lisp:t :member-name
                                      "DestinationIdentity")
                                     (otp :target-type string :required
                                      common-lisp:t :member-name "Otp")
                                     (reference-id :target-type string
                                      :required common-lisp:t :member-name
                                      "ReferenceId"))
                                    (:shape-name
                                     "VerifyOTPMessageRequestParameters"))

(smithy/sdk/shapes:define-output verify-otpmessage-response common-lisp:nil
                                 ((verification-response :target-type
                                   verification-response :required
                                   common-lisp:t :member-name
                                   "VerificationResponse" :http-payload
                                   common-lisp:t))
                                 (:shape-name "VerifyOTPMessageResponse"))

(smithy/sdk/shapes:define-structure voice-channel-request common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled"))
                                    (:shape-name "VoiceChannelRequest"))

(smithy/sdk/shapes:define-structure voice-channel-response common-lisp:nil
                                    ((application-id :target-type string
                                      :member-name "ApplicationId")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (has-credential :target-type boolean
                                      :member-name "HasCredential")
                                     (id :target-type string :member-name "Id")
                                     (is-archived :target-type boolean
                                      :member-name "IsArchived")
                                     (last-modified-by :target-type string
                                      :member-name "LastModifiedBy")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (platform :target-type string :required
                                      common-lisp:t :member-name "Platform")
                                     (version :target-type integer :member-name
                                      "Version"))
                                    (:shape-name "VoiceChannelResponse"))

(smithy/sdk/shapes:define-structure voice-message common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (language-code :target-type string
                                      :member-name "LanguageCode")
                                     (origination-number :target-type string
                                      :member-name "OriginationNumber")
                                     (substitutions :target-type
                                      map-of-list-of-string :member-name
                                      "Substitutions")
                                     (voice-id :target-type string :member-name
                                      "VoiceId"))
                                    (:shape-name "VoiceMessage"))

(smithy/sdk/shapes:define-structure voice-template-request common-lisp:nil
                                    ((body :target-type string :member-name
                                      "Body")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (language-code :target-type string
                                      :member-name "LanguageCode")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (voice-id :target-type string :member-name
                                      "VoiceId"))
                                    (:shape-name "VoiceTemplateRequest"))

(smithy/sdk/shapes:define-structure voice-template-response common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn")
                                     (body :target-type string :member-name
                                      "Body")
                                     (creation-date :target-type string
                                      :required common-lisp:t :member-name
                                      "CreationDate")
                                     (default-substitutions :target-type string
                                      :member-name "DefaultSubstitutions")
                                     (language-code :target-type string
                                      :member-name "LanguageCode")
                                     (last-modified-date :target-type string
                                      :required common-lisp:t :member-name
                                      "LastModifiedDate")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-description :target-type string
                                      :member-name "TemplateDescription")
                                     (template-name :target-type string
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (version :target-type string :member-name
                                      "Version")
                                     (voice-id :target-type string :member-name
                                      "VoiceId"))
                                    (:shape-name "VoiceTemplateResponse"))

(smithy/sdk/shapes:define-structure wait-activity common-lisp:nil
                                    ((next-activity :target-type string
                                      :member-name "NextActivity")
                                     (wait-time :target-type wait-time
                                      :member-name "WaitTime"))
                                    (:shape-name "WaitActivity"))

(smithy/sdk/shapes:define-structure wait-time common-lisp:nil
                                    ((wait-for :target-type string :member-name
                                      "WaitFor")
                                     (wait-until :target-type string
                                      :member-name "WaitUntil"))
                                    (:shape-name "WaitTime"))

(smithy/sdk/shapes:define-structure write-application-settings-request
                                    common-lisp:nil
                                    ((campaign-hook :target-type campaign-hook
                                      :member-name "CampaignHook")
                                     (cloud-watch-metrics-enabled :target-type
                                      boolean :member-name
                                      "CloudWatchMetricsEnabled")
                                     (event-tagging-enabled :target-type
                                      boolean :member-name
                                      "EventTaggingEnabled")
                                     (limits :target-type campaign-limits
                                      :member-name "Limits")
                                     (quiet-time :target-type quiet-time
                                      :member-name "QuietTime")
                                     (journey-limits :target-type
                                      application-settings-journey-limits
                                      :member-name "JourneyLimits"))
                                    (:shape-name
                                     "WriteApplicationSettingsRequest"))

(smithy/sdk/shapes:define-structure write-campaign-request common-lisp:nil
                                    ((additional-treatments :target-type
                                      list-of-write-treatment-resource
                                      :member-name "AdditionalTreatments")
                                     (custom-delivery-configuration
                                      :target-type
                                      custom-delivery-configuration
                                      :member-name
                                      "CustomDeliveryConfiguration")
                                     (description :target-type string
                                      :member-name "Description")
                                     (holdout-percent :target-type integer
                                      :member-name "HoldoutPercent")
                                     (hook :target-type campaign-hook
                                      :member-name "Hook")
                                     (is-paused :target-type boolean
                                      :member-name "IsPaused")
                                     (limits :target-type campaign-limits
                                      :member-name "Limits")
                                     (message-configuration :target-type
                                      message-configuration :member-name
                                      "MessageConfiguration")
                                     (name :target-type string :member-name
                                      "Name")
                                     (schedule :target-type schedule
                                      :member-name "Schedule")
                                     (segment-id :target-type string
                                      :member-name "SegmentId")
                                     (segment-version :target-type integer
                                      :member-name "SegmentVersion")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration")
                                     (treatment-description :target-type string
                                      :member-name "TreatmentDescription")
                                     (treatment-name :target-type string
                                      :member-name "TreatmentName")
                                     (priority :target-type integer
                                      :member-name "Priority"))
                                    (:shape-name "WriteCampaignRequest"))

(smithy/sdk/shapes:define-structure write-event-stream common-lisp:nil
                                    ((destination-stream-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "DestinationStreamArn")
                                     (role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleArn"))
                                    (:shape-name "WriteEventStream"))

(smithy/sdk/shapes:define-structure write-journey-request common-lisp:nil
                                    ((activities :target-type map-of-activity
                                      :member-name "Activities")
                                     (creation-date :target-type string
                                      :member-name "CreationDate")
                                     (last-modified-date :target-type string
                                      :member-name "LastModifiedDate")
                                     (limits :target-type journey-limits
                                      :member-name "Limits")
                                     (local-time :target-type boolean
                                      :member-name "LocalTime")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (quiet-time :target-type quiet-time
                                      :member-name "QuietTime")
                                     (refresh-frequency :target-type string
                                      :member-name "RefreshFrequency")
                                     (schedule :target-type journey-schedule
                                      :member-name "Schedule")
                                     (start-activity :target-type string
                                      :member-name "StartActivity")
                                     (start-condition :target-type
                                      start-condition :member-name
                                      "StartCondition")
                                     (state :target-type state :member-name
                                      "State")
                                     (wait-for-quiet-time :target-type boolean
                                      :member-name "WaitForQuietTime")
                                     (refresh-on-segment-update :target-type
                                      boolean :member-name
                                      "RefreshOnSegmentUpdate")
                                     (journey-channel-settings :target-type
                                      journey-channel-settings :member-name
                                      "JourneyChannelSettings")
                                     (sending-schedule :target-type boolean
                                      :member-name "SendingSchedule")
                                     (open-hours :target-type open-hours
                                      :member-name "OpenHours")
                                     (closed-days :target-type closed-days
                                      :member-name "ClosedDays")
                                     (timezone-estimation-methods :target-type
                                      list-of-timezone-estimation-methods-element
                                      :member-name
                                      "TimezoneEstimationMethods"))
                                    (:shape-name "WriteJourneyRequest"))

(smithy/sdk/shapes:define-structure write-segment-request common-lisp:nil
                                    ((dimensions :target-type
                                      segment-dimensions :member-name
                                      "Dimensions")
                                     (name :target-type string :member-name
                                      "Name")
                                     (segment-groups :target-type
                                      segment-group-list :member-name
                                      "SegmentGroups")
                                     (tags :target-type map-of-string
                                      :member-name "tags" :json-name "tags"))
                                    (:shape-name "WriteSegmentRequest"))

(smithy/sdk/shapes:define-structure write-treatment-resource common-lisp:nil
                                    ((custom-delivery-configuration
                                      :target-type
                                      custom-delivery-configuration
                                      :member-name
                                      "CustomDeliveryConfiguration")
                                     (message-configuration :target-type
                                      message-configuration :member-name
                                      "MessageConfiguration")
                                     (schedule :target-type schedule
                                      :member-name "Schedule")
                                     (size-percent :target-type integer
                                      :required common-lisp:t :member-name
                                      "SizePercent")
                                     (template-configuration :target-type
                                      template-configuration :member-name
                                      "TemplateConfiguration")
                                     (treatment-description :target-type string
                                      :member-name "TreatmentDescription")
                                     (treatment-name :target-type string
                                      :member-name "TreatmentName"))
                                    (:shape-name "WriteTreatmentResource"))

(smithy/sdk/shapes:define-enum endpoint-types-element
    common-lisp:nil
  (:push "PUSH")
  (:gcm "GCM")
  (:apns "APNS")
  (:apns-sandbox "APNS_SANDBOX")
  (:apns-voip "APNS_VOIP")
  (:apns-voip-sandbox "APNS_VOIP_SANDBOX")
  (:adm "ADM")
  (:sms "SMS")
  (:voice "VOICE")
  (:email "EMAIL")
  (:baidu "BAIDU")
  (:custom "CUSTOM")
  (:in-app "IN_APP"))

(smithy/sdk/shapes:define-enum timezone-estimation-methods-element
    common-lisp:nil
  (:phone-number "PHONE_NUMBER")
  (:postal-code "POSTAL_CODE"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation create-app :shape-name "CreateApp"
                                       :input create-app-request :output
                                       create-app-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v1/apps" :code 201)

(smithy/sdk/operation:define-operation create-campaign :shape-name
                                       "CreateCampaign" :input
                                       create-campaign-request :output
                                       create-campaign-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/campaigns"
                                       :code 201)

(smithy/sdk/operation:define-operation create-email-template :shape-name
                                       "CreateEmailTemplate" :input
                                       create-email-template-request :output
                                       create-email-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/templates/{TemplateName}/email"
                                       :code 201)

(smithy/sdk/operation:define-operation create-export-job :shape-name
                                       "CreateExportJob" :input
                                       create-export-job-request :output
                                       create-export-job-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/jobs/export"
                                       :code 202)

(smithy/sdk/operation:define-operation create-import-job :shape-name
                                       "CreateImportJob" :input
                                       create-import-job-request :output
                                       create-import-job-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/jobs/import"
                                       :code 201)

(smithy/sdk/operation:define-operation create-in-app-template :shape-name
                                       "CreateInAppTemplate" :input
                                       create-in-app-template-request :output
                                       create-in-app-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/templates/{TemplateName}/inapp"
                                       :code 201)

(smithy/sdk/operation:define-operation create-journey :shape-name
                                       "CreateJourney" :input
                                       create-journey-request :output
                                       create-journey-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/journeys"
                                       :code 201)

(smithy/sdk/operation:define-operation create-push-template :shape-name
                                       "CreatePushTemplate" :input
                                       create-push-template-request :output
                                       create-push-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/templates/{TemplateName}/push"
                                       :code 201)

(smithy/sdk/operation:define-operation create-recommender-configuration
                                       :shape-name
                                       "CreateRecommenderConfiguration" :input
                                       create-recommender-configuration-request
                                       :output
                                       create-recommender-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v1/recommenders"
                                       :code 201)

(smithy/sdk/operation:define-operation create-segment :shape-name
                                       "CreateSegment" :input
                                       create-segment-request :output
                                       create-segment-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/segments"
                                       :code 201)

(smithy/sdk/operation:define-operation create-sms-template :shape-name
                                       "CreateSmsTemplate" :input
                                       create-sms-template-request :output
                                       create-sms-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/templates/{TemplateName}/sms" :code
                                       201)

(smithy/sdk/operation:define-operation create-voice-template :shape-name
                                       "CreateVoiceTemplate" :input
                                       create-voice-template-request :output
                                       create-voice-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/templates/{TemplateName}/voice"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-adm-channel :shape-name
                                       "DeleteAdmChannel" :input
                                       delete-adm-channel-request :output
                                       delete-adm-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/adm"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-apns-channel :shape-name
                                       "DeleteApnsChannel" :input
                                       delete-apns-channel-request :output
                                       delete-apns-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-apns-sandbox-channel :shape-name
                                       "DeleteApnsSandboxChannel" :input
                                       delete-apns-sandbox-channel-request
                                       :output
                                       delete-apns-sandbox-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_sandbox"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-apns-voip-channel :shape-name
                                       "DeleteApnsVoipChannel" :input
                                       delete-apns-voip-channel-request :output
                                       delete-apns-voip-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_voip"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-apns-voip-sandbox-channel
                                       :shape-name
                                       "DeleteApnsVoipSandboxChannel" :input
                                       delete-apns-voip-sandbox-channel-request
                                       :output
                                       delete-apns-voip-sandbox-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-app :shape-name "DeleteApp"
                                       :input delete-app-request :output
                                       delete-app-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}" :code 200)

(smithy/sdk/operation:define-operation delete-baidu-channel :shape-name
                                       "DeleteBaiduChannel" :input
                                       delete-baidu-channel-request :output
                                       delete-baidu-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/baidu"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-campaign :shape-name
                                       "DeleteCampaign" :input
                                       delete-campaign-request :output
                                       delete-campaign-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-email-channel :shape-name
                                       "DeleteEmailChannel" :input
                                       delete-email-channel-request :output
                                       delete-email-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/email"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-email-template :shape-name
                                       "DeleteEmailTemplate" :input
                                       delete-email-template-request :output
                                       delete-email-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/templates/{TemplateName}/email"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-endpoint :shape-name
                                       "DeleteEndpoint" :input
                                       delete-endpoint-request :output
                                       delete-endpoint-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/endpoints/{EndpointId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-event-stream :shape-name
                                       "DeleteEventStream" :input
                                       delete-event-stream-request :output
                                       delete-event-stream-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/eventstream"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-gcm-channel :shape-name
                                       "DeleteGcmChannel" :input
                                       delete-gcm-channel-request :output
                                       delete-gcm-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/gcm"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-in-app-template :shape-name
                                       "DeleteInAppTemplate" :input
                                       delete-in-app-template-request :output
                                       delete-in-app-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/templates/{TemplateName}/inapp"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-journey :shape-name
                                       "DeleteJourney" :input
                                       delete-journey-request :output
                                       delete-journey-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-push-template :shape-name
                                       "DeletePushTemplate" :input
                                       delete-push-template-request :output
                                       delete-push-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/templates/{TemplateName}/push"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-recommender-configuration
                                       :shape-name
                                       "DeleteRecommenderConfiguration" :input
                                       delete-recommender-configuration-request
                                       :output
                                       delete-recommender-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/recommenders/{RecommenderId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-segment :shape-name
                                       "DeleteSegment" :input
                                       delete-segment-request :output
                                       delete-segment-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-sms-channel :shape-name
                                       "DeleteSmsChannel" :input
                                       delete-sms-channel-request :output
                                       delete-sms-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/sms"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-sms-template :shape-name
                                       "DeleteSmsTemplate" :input
                                       delete-sms-template-request :output
                                       delete-sms-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/templates/{TemplateName}/sms" :code
                                       202)

(smithy/sdk/operation:define-operation delete-user-endpoints :shape-name
                                       "DeleteUserEndpoints" :input
                                       delete-user-endpoints-request :output
                                       delete-user-endpoints-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/users/{UserId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-voice-channel :shape-name
                                       "DeleteVoiceChannel" :input
                                       delete-voice-channel-request :output
                                       delete-voice-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/apps/{ApplicationId}/channels/voice"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-voice-template :shape-name
                                       "DeleteVoiceTemplate" :input
                                       delete-voice-template-request :output
                                       delete-voice-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/templates/{TemplateName}/voice"
                                       :code 202)

(smithy/sdk/operation:define-operation get-adm-channel :shape-name
                                       "GetAdmChannel" :input
                                       get-adm-channel-request :output
                                       get-adm-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/adm"
                                       :code 200)

(smithy/sdk/operation:define-operation get-apns-channel :shape-name
                                       "GetApnsChannel" :input
                                       get-apns-channel-request :output
                                       get-apns-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns"
                                       :code 200)

(smithy/sdk/operation:define-operation get-apns-sandbox-channel :shape-name
                                       "GetApnsSandboxChannel" :input
                                       get-apns-sandbox-channel-request :output
                                       get-apns-sandbox-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_sandbox"
                                       :code 200)

(smithy/sdk/operation:define-operation get-apns-voip-channel :shape-name
                                       "GetApnsVoipChannel" :input
                                       get-apns-voip-channel-request :output
                                       get-apns-voip-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_voip"
                                       :code 200)

(smithy/sdk/operation:define-operation get-apns-voip-sandbox-channel
                                       :shape-name "GetApnsVoipSandboxChannel"
                                       :input
                                       get-apns-voip-sandbox-channel-request
                                       :output
                                       get-apns-voip-sandbox-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox"
                                       :code 200)

(smithy/sdk/operation:define-operation get-app :shape-name "GetApp" :input
                                       get-app-request :output get-app-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}" :code 200)

(smithy/sdk/operation:define-operation get-application-date-range-kpi
                                       :shape-name "GetApplicationDateRangeKpi"
                                       :input
                                       get-application-date-range-kpi-request
                                       :output
                                       get-application-date-range-kpi-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/kpis/daterange/{KpiName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-application-settings :shape-name
                                       "GetApplicationSettings" :input
                                       get-application-settings-request :output
                                       get-application-settings-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/settings"
                                       :code 200)

(smithy/sdk/operation:define-operation get-apps :shape-name "GetApps" :input
                                       get-apps-request :output
                                       get-apps-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/apps" :code 200)

(smithy/sdk/operation:define-operation get-baidu-channel :shape-name
                                       "GetBaiduChannel" :input
                                       get-baidu-channel-request :output
                                       get-baidu-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/baidu"
                                       :code 200)

(smithy/sdk/operation:define-operation get-campaign :shape-name "GetCampaign"
                                       :input get-campaign-request :output
                                       get-campaign-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-campaign-activities :shape-name
                                       "GetCampaignActivities" :input
                                       get-campaign-activities-request :output
                                       get-campaign-activities-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/activities"
                                       :code 200)

(smithy/sdk/operation:define-operation get-campaign-date-range-kpi :shape-name
                                       "GetCampaignDateRangeKpi" :input
                                       get-campaign-date-range-kpi-request
                                       :output
                                       get-campaign-date-range-kpi-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/kpis/daterange/{KpiName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-campaign-version :shape-name
                                       "GetCampaignVersion" :input
                                       get-campaign-version-request :output
                                       get-campaign-version-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions/{Version}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-campaign-versions :shape-name
                                       "GetCampaignVersions" :input
                                       get-campaign-versions-request :output
                                       get-campaign-versions-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-campaigns :shape-name "GetCampaigns"
                                       :input get-campaigns-request :output
                                       get-campaigns-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/campaigns"
                                       :code 200)

(smithy/sdk/operation:define-operation get-channels :shape-name "GetChannels"
                                       :input get-channels-request :output
                                       get-channels-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels"
                                       :code 200)

(smithy/sdk/operation:define-operation get-email-channel :shape-name
                                       "GetEmailChannel" :input
                                       get-email-channel-request :output
                                       get-email-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/email"
                                       :code 200)

(smithy/sdk/operation:define-operation get-email-template :shape-name
                                       "GetEmailTemplate" :input
                                       get-email-template-request :output
                                       get-email-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/templates/{TemplateName}/email"
                                       :code 200)

(smithy/sdk/operation:define-operation get-endpoint :shape-name "GetEndpoint"
                                       :input get-endpoint-request :output
                                       get-endpoint-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/endpoints/{EndpointId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event-stream :shape-name
                                       "GetEventStream" :input
                                       get-event-stream-request :output
                                       get-event-stream-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/eventstream"
                                       :code 200)

(smithy/sdk/operation:define-operation get-export-job :shape-name
                                       "GetExportJob" :input
                                       get-export-job-request :output
                                       get-export-job-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/jobs/export/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-export-jobs :shape-name
                                       "GetExportJobs" :input
                                       get-export-jobs-request :output
                                       get-export-jobs-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/jobs/export"
                                       :code 200)

(smithy/sdk/operation:define-operation get-gcm-channel :shape-name
                                       "GetGcmChannel" :input
                                       get-gcm-channel-request :output
                                       get-gcm-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/gcm"
                                       :code 200)

(smithy/sdk/operation:define-operation get-import-job :shape-name
                                       "GetImportJob" :input
                                       get-import-job-request :output
                                       get-import-job-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/jobs/import/{JobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-import-jobs :shape-name
                                       "GetImportJobs" :input
                                       get-import-jobs-request :output
                                       get-import-jobs-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/jobs/import"
                                       :code 200)

(smithy/sdk/operation:define-operation get-in-app-messages :shape-name
                                       "GetInAppMessages" :input
                                       get-in-app-messages-request :output
                                       get-in-app-messages-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/endpoints/{EndpointId}/inappmessages"
                                       :code 200)

(smithy/sdk/operation:define-operation get-in-app-template :shape-name
                                       "GetInAppTemplate" :input
                                       get-in-app-template-request :output
                                       get-in-app-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/templates/{TemplateName}/inapp"
                                       :code 200)

(smithy/sdk/operation:define-operation get-journey :shape-name "GetJourney"
                                       :input get-journey-request :output
                                       get-journey-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-journey-date-range-kpi :shape-name
                                       "GetJourneyDateRangeKpi" :input
                                       get-journey-date-range-kpi-request
                                       :output
                                       get-journey-date-range-kpi-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}/kpis/daterange/{KpiName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-journey-execution-activity-metrics
                                       :shape-name
                                       "GetJourneyExecutionActivityMetrics"
                                       :input
                                       get-journey-execution-activity-metrics-request
                                       :output
                                       get-journey-execution-activity-metrics-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}/activities/{JourneyActivityId}/execution-metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-journey-execution-metrics
                                       :shape-name "GetJourneyExecutionMetrics"
                                       :input
                                       get-journey-execution-metrics-request
                                       :output
                                       get-journey-execution-metrics-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}/execution-metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-journey-run-execution-activity-metrics :shape-name
 "GetJourneyRunExecutionActivityMetrics" :input
 get-journey-run-execution-activity-metrics-request :output
 get-journey-run-execution-activity-metrics-response :errors
 (bad-request-exception forbidden-exception internal-server-error-exception
  method-not-allowed-exception not-found-exception payload-too-large-exception
  too-many-requests-exception)
 :method "GET" :uri
 "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/activities/{JourneyActivityId}/execution-metrics"
 :code 200)

(smithy/sdk/operation:define-operation get-journey-run-execution-metrics
                                       :shape-name
                                       "GetJourneyRunExecutionMetrics" :input
                                       get-journey-run-execution-metrics-request
                                       :output
                                       get-journey-run-execution-metrics-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs/{RunId}/execution-metrics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-journey-runs :shape-name
                                       "GetJourneyRuns" :input
                                       get-journey-runs-request :output
                                       get-journey-runs-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}/runs"
                                       :code 200)

(smithy/sdk/operation:define-operation get-push-template :shape-name
                                       "GetPushTemplate" :input
                                       get-push-template-request :output
                                       get-push-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/templates/{TemplateName}/push"
                                       :code 200)

(smithy/sdk/operation:define-operation get-recommender-configuration
                                       :shape-name
                                       "GetRecommenderConfiguration" :input
                                       get-recommender-configuration-request
                                       :output
                                       get-recommender-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/recommenders/{RecommenderId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-recommender-configurations
                                       :shape-name
                                       "GetRecommenderConfigurations" :input
                                       get-recommender-configurations-request
                                       :output
                                       get-recommender-configurations-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/recommenders"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment :shape-name "GetSegment"
                                       :input get-segment-request :output
                                       get-segment-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-export-jobs :shape-name
                                       "GetSegmentExportJobs" :input
                                       get-segment-export-jobs-request :output
                                       get-segment-export-jobs-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/export"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-import-jobs :shape-name
                                       "GetSegmentImportJobs" :input
                                       get-segment-import-jobs-request :output
                                       get-segment-import-jobs-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}/jobs/import"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-version :shape-name
                                       "GetSegmentVersion" :input
                                       get-segment-version-request :output
                                       get-segment-version-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions/{Version}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segment-versions :shape-name
                                       "GetSegmentVersions" :input
                                       get-segment-versions-request :output
                                       get-segment-versions-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-segments :shape-name "GetSegments"
                                       :input get-segments-request :output
                                       get-segments-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/segments"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sms-channel :shape-name
                                       "GetSmsChannel" :input
                                       get-sms-channel-request :output
                                       get-sms-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/sms"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sms-template :shape-name
                                       "GetSmsTemplate" :input
                                       get-sms-template-request :output
                                       get-sms-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/templates/{TemplateName}/sms" :code
                                       200)

(smithy/sdk/operation:define-operation get-user-endpoints :shape-name
                                       "GetUserEndpoints" :input
                                       get-user-endpoints-request :output
                                       get-user-endpoints-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/users/{UserId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-channel :shape-name
                                       "GetVoiceChannel" :input
                                       get-voice-channel-request :output
                                       get-voice-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/channels/voice"
                                       :code 200)

(smithy/sdk/operation:define-operation get-voice-template :shape-name
                                       "GetVoiceTemplate" :input
                                       get-voice-template-request :output
                                       get-voice-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/templates/{TemplateName}/voice"
                                       :code 200)

(smithy/sdk/operation:define-operation list-journeys :shape-name "ListJourneys"
                                       :input list-journeys-request :output
                                       list-journeys-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/apps/{ApplicationId}/journeys"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/v1/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-template-versions :shape-name
                                       "ListTemplateVersions" :input
                                       list-template-versions-request :output
                                       list-template-versions-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/templates/{TemplateName}/{TemplateType}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-templates :shape-name
                                       "ListTemplates" :input
                                       list-templates-request :output
                                       list-templates-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/templates" :code
                                       200)

(smithy/sdk/operation:define-operation phone-number-validate :shape-name
                                       "PhoneNumberValidate" :input
                                       phone-number-validate-request :output
                                       phone-number-validate-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/phone/number/validate" :code 200)

(smithy/sdk/operation:define-operation put-event-stream :shape-name
                                       "PutEventStream" :input
                                       put-event-stream-request :output
                                       put-event-stream-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/eventstream"
                                       :code 200)

(smithy/sdk/operation:define-operation put-events :shape-name "PutEvents"
                                       :input put-events-request :output
                                       put-events-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/events" :code
                                       202)

(smithy/sdk/operation:define-operation remove-attributes :shape-name
                                       "RemoveAttributes" :input
                                       remove-attributes-request :output
                                       remove-attributes-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/attributes/{AttributeType}"
                                       :code 200)

(smithy/sdk/operation:define-operation send-messages :shape-name "SendMessages"
                                       :input send-messages-request :output
                                       send-messages-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/messages"
                                       :code 200)

(smithy/sdk/operation:define-operation send-otpmessage :shape-name
                                       "SendOTPMessage" :input
                                       send-otpmessage-request :output
                                       send-otpmessage-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/otp" :code 200)

(smithy/sdk/operation:define-operation send-users-messages :shape-name
                                       "SendUsersMessages" :input
                                       send-users-messages-request :output
                                       send-users-messages-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/users-messages"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "POST" :uri
                                       "/v1/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors common-lisp:nil
                                       :method "DELETE" :uri
                                       "/v1/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-adm-channel :shape-name
                                       "UpdateAdmChannel" :input
                                       update-adm-channel-request :output
                                       update-adm-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/adm"
                                       :code 200)

(smithy/sdk/operation:define-operation update-apns-channel :shape-name
                                       "UpdateApnsChannel" :input
                                       update-apns-channel-request :output
                                       update-apns-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns"
                                       :code 200)

(smithy/sdk/operation:define-operation update-apns-sandbox-channel :shape-name
                                       "UpdateApnsSandboxChannel" :input
                                       update-apns-sandbox-channel-request
                                       :output
                                       update-apns-sandbox-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_sandbox"
                                       :code 200)

(smithy/sdk/operation:define-operation update-apns-voip-channel :shape-name
                                       "UpdateApnsVoipChannel" :input
                                       update-apns-voip-channel-request :output
                                       update-apns-voip-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_voip"
                                       :code 200)

(smithy/sdk/operation:define-operation update-apns-voip-sandbox-channel
                                       :shape-name
                                       "UpdateApnsVoipSandboxChannel" :input
                                       update-apns-voip-sandbox-channel-request
                                       :output
                                       update-apns-voip-sandbox-channel-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/apns_voip_sandbox"
                                       :code 200)

(smithy/sdk/operation:define-operation update-application-settings :shape-name
                                       "UpdateApplicationSettings" :input
                                       update-application-settings-request
                                       :output
                                       update-application-settings-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/settings"
                                       :code 200)

(smithy/sdk/operation:define-operation update-baidu-channel :shape-name
                                       "UpdateBaiduChannel" :input
                                       update-baidu-channel-request :output
                                       update-baidu-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/baidu"
                                       :code 200)

(smithy/sdk/operation:define-operation update-campaign :shape-name
                                       "UpdateCampaign" :input
                                       update-campaign-request :output
                                       update-campaign-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/campaigns/{CampaignId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-email-channel :shape-name
                                       "UpdateEmailChannel" :input
                                       update-email-channel-request :output
                                       update-email-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/email"
                                       :code 200)

(smithy/sdk/operation:define-operation update-email-template :shape-name
                                       "UpdateEmailTemplate" :input
                                       update-email-template-request :output
                                       update-email-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/templates/{TemplateName}/email"
                                       :code 202)

(smithy/sdk/operation:define-operation update-endpoint :shape-name
                                       "UpdateEndpoint" :input
                                       update-endpoint-request :output
                                       update-endpoint-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/endpoints/{EndpointId}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-endpoints-batch :shape-name
                                       "UpdateEndpointsBatch" :input
                                       update-endpoints-batch-request :output
                                       update-endpoints-batch-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/endpoints"
                                       :code 202)

(smithy/sdk/operation:define-operation update-gcm-channel :shape-name
                                       "UpdateGcmChannel" :input
                                       update-gcm-channel-request :output
                                       update-gcm-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/gcm"
                                       :code 200)

(smithy/sdk/operation:define-operation update-in-app-template :shape-name
                                       "UpdateInAppTemplate" :input
                                       update-in-app-template-request :output
                                       update-in-app-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/templates/{TemplateName}/inapp"
                                       :code 202)

(smithy/sdk/operation:define-operation update-journey :shape-name
                                       "UpdateJourney" :input
                                       update-journey-request :output
                                       update-journey-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-journey-state :shape-name
                                       "UpdateJourneyState" :input
                                       update-journey-state-request :output
                                       update-journey-state-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/journeys/{JourneyId}/state"
                                       :code 200)

(smithy/sdk/operation:define-operation update-push-template :shape-name
                                       "UpdatePushTemplate" :input
                                       update-push-template-request :output
                                       update-push-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/templates/{TemplateName}/push"
                                       :code 202)

(smithy/sdk/operation:define-operation update-recommender-configuration
                                       :shape-name
                                       "UpdateRecommenderConfiguration" :input
                                       update-recommender-configuration-request
                                       :output
                                       update-recommender-configuration-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/recommenders/{RecommenderId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-segment :shape-name
                                       "UpdateSegment" :input
                                       update-segment-request :output
                                       update-segment-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/segments/{SegmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-sms-channel :shape-name
                                       "UpdateSmsChannel" :input
                                       update-sms-channel-request :output
                                       update-sms-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/sms"
                                       :code 200)

(smithy/sdk/operation:define-operation update-sms-template :shape-name
                                       "UpdateSmsTemplate" :input
                                       update-sms-template-request :output
                                       update-sms-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/templates/{TemplateName}/sms" :code
                                       202)

(smithy/sdk/operation:define-operation update-template-active-version
                                       :shape-name
                                       "UpdateTemplateActiveVersion" :input
                                       update-template-active-version-request
                                       :output
                                       update-template-active-version-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/templates/{TemplateName}/{TemplateType}/active-version"
                                       :code 200)

(smithy/sdk/operation:define-operation update-voice-channel :shape-name
                                       "UpdateVoiceChannel" :input
                                       update-voice-channel-request :output
                                       update-voice-channel-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/apps/{ApplicationId}/channels/voice"
                                       :code 200)

(smithy/sdk/operation:define-operation update-voice-template :shape-name
                                       "UpdateVoiceTemplate" :input
                                       update-voice-template-request :output
                                       update-voice-template-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/templates/{TemplateName}/voice"
                                       :code 202)

(smithy/sdk/operation:define-operation verify-otpmessage :shape-name
                                       "VerifyOTPMessage" :input
                                       verify-otpmessage-request :output
                                       verify-otpmessage-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        method-not-allowed-exception
                                        not-found-exception
                                        payload-too-large-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/apps/{ApplicationId}/verify-otp"
                                       :code 200)
