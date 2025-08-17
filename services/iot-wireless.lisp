(uiop/package:define-package #:pira/iot-wireless (:use)
                             (:export #:abp-v1-0-x #:abp-v1-1 #:account-linked
                              #:accuracy #:ack-mode-retry-duration-secs
                              #:add-gw-metadata #:aggregation-period
                              #:amazon-id #:amazon-resource-name #:ap-id
                              #:app-eui #:app-key #:app-skey
                              #:app-server-private-key #:application-config
                              #:application-config-type
                              #:application-server-public-key #:applications
                              #:assist-position
                              #:associate-aws-account-with-partner-account
                              #:associate-multicast-group-with-fuota-task
                              #:associate-wireless-device-with-fuota-task
                              #:associate-wireless-device-with-multicast-group
                              #:associate-wireless-device-with-thing
                              #:associate-wireless-gateway-with-certificate
                              #:associate-wireless-gateway-with-thing
                              #:auto-create-tasks #:avg #:bcch #:bsic
                              #:base-lat #:base-lng #:base-station-id
                              #:battery-level #:beaconing #:beaconing-data-rate
                              #:beaconing-frequencies #:beaconing-frequency
                              #:cancel-multicast-group-session
                              #:capture-time-accuracy #:cdma-channel
                              #:cdma-list #:cdma-local-id #:cdma-nmr-list
                              #:cdma-nmr-obj #:cdma-obj #:cell-params
                              #:cell-towers #:certificate-list
                              #:certificate-pem #:certificate-value
                              #:channel-mask #:class-btimeout #:class-ctimeout
                              #:client-request-token #:connection-status
                              #:connection-status-event-configuration
                              #:connection-status-resource-type-event-configuration
                              #:coordinate #:crc #:create-destination
                              #:create-device-profile #:create-fuota-task
                              #:create-multicast-group
                              #:create-network-analyzer-configuration
                              #:create-service-profile #:create-wireless-device
                              #:create-wireless-gateway
                              #:create-wireless-gateway-task
                              #:create-wireless-gateway-task-definition
                              #:created-at #:creation-date #:creation-time
                              #:dak-certificate-id #:dak-certificate-metadata
                              #:dak-certificate-metadata-list
                              #:delete-destination #:delete-device-profile
                              #:delete-fuota-task #:delete-multicast-group
                              #:delete-network-analyzer-configuration
                              #:delete-queued-messages #:delete-service-profile
                              #:delete-wireless-device
                              #:delete-wireless-device-import-task
                              #:delete-wireless-gateway
                              #:delete-wireless-gateway-task
                              #:delete-wireless-gateway-task-definition
                              #:deregister-wireless-device #:description
                              #:destination-arn #:destination-list
                              #:destination-name #:destinations #:dev-addr
                              #:dev-eui #:dev-status-req-freq
                              #:device-certificate-list #:device-creation-file
                              #:device-creation-file-list #:device-name
                              #:device-profile #:device-profile-arn
                              #:device-profile-id #:device-profile-list
                              #:device-profile-name #:device-profile-type
                              #:device-registration-state-event-configuration
                              #:device-registration-state-resource-type-event-configuration
                              #:device-state #:device-type-id #:dimension
                              #:dimension-name #:dimension-value #:dimensions
                              #:disassociate-aws-account-from-partner-account
                              #:disassociate-multicast-group-from-fuota-task
                              #:disassociate-wireless-device-from-fuota-task
                              #:disassociate-wireless-device-from-multicast-group
                              #:disassociate-wireless-device-from-thing
                              #:disassociate-wireless-gateway-from-certificate
                              #:disassociate-wireless-gateway-from-thing
                              #:dl-allowed #:dl-bucket-size #:dl-class #:dl-dr
                              #:dl-freq #:dl-rate #:dl-rate-policy #:double
                              #:downlink-frequency #:downlink-mode
                              #:downlink-queue-message
                              #:downlink-queue-messages-list #:dr-max
                              #:dr-max-box #:dr-min #:dr-min-box #:earfcn
                              #:end-point #:eutran-cid #:event
                              #:event-configuration-item
                              #:event-configurations-list
                              #:event-notification-item-configurations
                              #:event-notification-partner-type
                              #:event-notification-resource-type
                              #:event-notification-topic-status #:expression
                              #:expression-type #:fcnt-start #:fnwk-sint-key
                              #:fport #:fports #:factory-preset-freqs-list
                              #:factory-support #:file-descriptor #:fingerprint
                              #:firmware-update-image #:firmware-update-role
                              #:fragment-interval-ms #:fragment-size-bytes
                              #:fuota-device-status #:fuota-task
                              #:fuota-task-arn #:fuota-task-event
                              #:fuota-task-event-log-option
                              #:fuota-task-event-log-option-list
                              #:fuota-task-id #:fuota-task-list
                              #:fuota-task-log-option
                              #:fuota-task-log-option-list #:fuota-task-name
                              #:fuota-task-status #:fuota-task-type #:gpst
                              #:gateway-eui #:gateway-list #:gateway-list-item
                              #:gateway-list-multicast #:gateway-max-eirp
                              #:gen-app-key #:geo-json-payload #:geran-cid
                              #:get-destination #:get-device-profile
                              #:get-event-configuration-by-resource-types
                              #:get-fuota-task
                              #:get-log-levels-by-resource-types
                              #:get-metric-configuration #:get-metrics
                              #:get-multicast-group
                              #:get-multicast-group-session
                              #:get-network-analyzer-configuration
                              #:get-partner-account #:get-position
                              #:get-position-configuration
                              #:get-position-estimate
                              #:get-resource-event-configuration
                              #:get-resource-log-level #:get-resource-position
                              #:get-service-endpoint #:get-service-profile
                              #:get-wireless-device
                              #:get-wireless-device-import-task
                              #:get-wireless-device-statistics
                              #:get-wireless-gateway
                              #:get-wireless-gateway-certificate
                              #:get-wireless-gateway-firmware-information
                              #:get-wireless-gateway-statistics
                              #:get-wireless-gateway-task
                              #:get-wireless-gateway-task-definition
                              #:global-identity #:gnss #:gnss-nav #:gsm-list
                              #:gsm-local-id #:gsm-nmr-list #:gsm-nmr-obj
                              #:gsm-obj #:gsm-timing-advance
                              #:horizontal-accuracy #:hr-allowed #:ipaddress
                              #:isodate-time-string #:id #:identifier
                              #:identifier-type #:import-task-arn
                              #:import-task-id #:import-task-status
                              #:imported-sidewalk-device
                              #:imported-wireless-device
                              #:imported-wireless-device-count
                              #:imported-wireless-device-list #:integer
                              #:iot-certificate-id #:ip #:join-eui
                              #:join-eui-filters #:join-eui-range
                              #:join-event-configuration
                              #:join-resource-type-event-configuration #:lac
                              #:last-update-time #:list-destinations
                              #:list-device-profiles
                              #:list-devices-for-wireless-device-import-task
                              #:list-event-configurations #:list-fuota-tasks
                              #:list-multicast-groups
                              #:list-multicast-groups-by-fuota-task
                              #:list-network-analyzer-configurations
                              #:list-partner-accounts
                              #:list-position-configurations
                              #:list-queued-messages #:list-service-profiles
                              #:list-tags-for-resource
                              #:list-wireless-device-import-tasks
                              #:list-wireless-devices
                              #:list-wireless-gateway-task-definitions
                              #:list-wireless-gateways
                              #:lo-ra-wanconnection-status-event-notification-configurations
                              #:lo-ra-wanconnection-status-resource-type-event-configuration
                              #:lo-ra-wandevice #:lo-ra-wandevice-metadata
                              #:lo-ra-wandevice-profile #:lo-ra-wanfuota-task
                              #:lo-ra-wanfuota-task-get-info #:lo-ra-wangateway
                              #:lo-ra-wangateway-current-version
                              #:lo-ra-wangateway-metadata
                              #:lo-ra-wangateway-metadata-list
                              #:lo-ra-wangateway-version
                              #:lo-ra-wanget-service-profile-info
                              #:lo-ra-wanjoin-event-notification-configurations
                              #:lo-ra-wanjoin-resource-type-event-configuration
                              #:lo-ra-wanlist-device #:lo-ra-wanmulticast
                              #:lo-ra-wanmulticast-get
                              #:lo-ra-wanmulticast-metadata
                              #:lo-ra-wanmulticast-session
                              #:lo-ra-wanpublic-gateway-metadata
                              #:lo-ra-wanpublic-gateway-metadata-list
                              #:lo-ra-wansend-data-to-device
                              #:lo-ra-wanservice-profile
                              #:lo-ra-wanstart-fuota-task
                              #:lo-ra-wanupdate-device
                              #:lo-ra-wanupdate-gateway-task-create
                              #:lo-ra-wanupdate-gateway-task-entry #:log-level
                              #:lte-list #:lte-local-id #:lte-nmr-list
                              #:lte-nmr-obj #:lte-obj #:lte-timing-advance
                              #:mcc #:mnc #:mac-address #:mac-version #:max
                              #:max-allowed-signature #:max-duty-cycle
                              #:max-eirp #:max-results #:mc-group-id #:message
                              #:message-delivery-status-event-configuration
                              #:message-delivery-status-resource-type-event-configuration
                              #:message-id #:message-type #:metric-name
                              #:metric-query-end-timestamp #:metric-query-error
                              #:metric-query-id #:metric-query-start-timestamp
                              #:metric-query-status #:metric-query-timestamp
                              #:metric-query-timestamps #:metric-query-value
                              #:metric-query-values #:metric-unit #:min
                              #:min-gw-diversity #:model
                              #:multicast-device-status #:multicast-frame-info
                              #:multicast-group #:multicast-group-arn
                              #:multicast-group-by-fuota-task
                              #:multicast-group-id #:multicast-group-list
                              #:multicast-group-list-by-fuota-task
                              #:multicast-group-message-id
                              #:multicast-group-name #:multicast-group-status
                              #:multicast-wireless-metadata #:nrcapable
                              #:nb-trans-max #:nb-trans-min #:net-id
                              #:net-id-filters
                              #:network-analyzer-configuration-arn
                              #:network-analyzer-configuration-list
                              #:network-analyzer-configuration-name
                              #:network-analyzer-configurations
                              #:network-analyzer-multicast-group-list
                              #:network-id #:next-token
                              #:number-of-devices-in-group
                              #:number-of-devices-requested #:nwk-geo-loc
                              #:nwk-key #:nwk-senc-key #:nwk-skey
                              #:onboard-status #:onboard-status-reason
                              #:otaa-v1-0-x #:otaa-v1-1 #:p90 #:pci #:psc
                              #:package-version #:participating-gateways
                              #:participating-gateways-multicast
                              #:partner-account-arn #:partner-account-id
                              #:partner-type #:path-loss #:payload-data
                              #:pilot-power #:ping-slot-dr #:ping-slot-freq
                              #:ping-slot-period #:pn-offset
                              #:position-configuration-fec
                              #:position-configuration-item
                              #:position-configuration-list
                              #:position-configuration-status
                              #:position-coordinate #:position-coordinate-value
                              #:position-resource-identifier
                              #:position-resource-type
                              #:position-solver-configurations
                              #:position-solver-details
                              #:position-solver-provider #:position-solver-type
                              #:position-solver-version #:positioning
                              #:positioning-config-status #:pr-allowed
                              #:preset-freq #:private-keys-list
                              #:provider-net-id #:proximity-event-configuration
                              #:proximity-resource-type-event-configuration
                              #:put-position-configuration
                              #:put-resource-log-level #:qualification-status
                              #:query-string #:rscp #:rsrp #:rsrq #:rss
                              #:ra-allowed #:redundancy-percent
                              #:reg-params-revision #:registration-zone
                              #:report-dev-status-battery
                              #:report-dev-status-margin
                              #:reset-all-resource-log-levels
                              #:reset-resource-log-level #:resource-id
                              #:resource-identifier #:resource-type #:result
                              #:rf-region #:role #:role-arn #:rx-data-rate2
                              #:rx-delay1 #:rx-dr-offset1 #:rx-freq2 #:rx-level
                              #:snwk-sint-key #:semtech-gnss-configuration
                              #:semtech-gnss-detail
                              #:send-data-to-multicast-group
                              #:send-data-to-wireless-device #:seq
                              #:service-profile #:service-profile-arn
                              #:service-profile-id #:service-profile-list
                              #:service-profile-name #:session-keys-abp-v1-0-x
                              #:session-keys-abp-v1-1
                              #:session-start-time-timestamp #:session-timeout
                              #:sidewalk-account-info
                              #:sidewalk-account-info-with-fingerprint
                              #:sidewalk-account-list
                              #:sidewalk-create-device-profile
                              #:sidewalk-create-wireless-device
                              #:sidewalk-device #:sidewalk-device-metadata
                              #:sidewalk-event-notification-configurations
                              #:sidewalk-get-device-profile
                              #:sidewalk-get-start-import-info #:sidewalk-id
                              #:sidewalk-list-device
                              #:sidewalk-manufacturing-sn
                              #:sidewalk-resource-type-event-configuration
                              #:sidewalk-send-data-to-device
                              #:sidewalk-single-start-import-info
                              #:sidewalk-start-import-info
                              #:sidewalk-update-account
                              #:sidewalk-update-import-info #:signing-alg
                              #:start-bulk-associate-wireless-device-with-multicast-group
                              #:start-bulk-disassociate-wireless-device-from-multicast-group
                              #:start-fuota-task
                              #:start-multicast-group-session
                              #:start-single-wireless-device-import-task
                              #:start-time #:start-wireless-device-import-task
                              #:station #:status-reason #:std #:sub-band
                              #:sub-bands #:sum #:summary-metric-configuration
                              #:summary-metric-configuration-status
                              #:summary-metric-queries #:summary-metric-query
                              #:summary-metric-query-result
                              #:summary-metric-query-results
                              #:supported-rf-region #:supports32bit-fcnt
                              #:supports-class-b #:supports-class-c
                              #:supports-join #:system-id #:tac #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target-per #:tdscdma-list
                              #:tdscdma-local-id #:tdscdma-nmr-list
                              #:tdscdma-nmr-obj #:tdscdma-obj
                              #:tdscdma-timing-advance #:test-wireless-device
                              #:thing-arn #:thing-name #:trace-content
                              #:transmission-interval
                              #:transmission-interval-multicast #:transmit-mode
                              #:tx-power-index-max #:tx-power-index-min
                              #:uarfcn #:uarfcndl #:ul-bucket-size #:ul-rate
                              #:ul-rate-policy #:untag-resource
                              #:update-abp-v1-0-x #:update-abp-v1-1
                              #:update-data-source #:update-destination
                              #:update-event-configuration-by-resource-types
                              #:update-fports #:update-fuota-task
                              #:update-log-levels-by-resource-types
                              #:update-metric-configuration
                              #:update-multicast-group
                              #:update-network-analyzer-configuration
                              #:update-partner-account #:update-position
                              #:update-resource-event-configuration
                              #:update-resource-position #:update-signature
                              #:update-wireless-device
                              #:update-wireless-device-import-task
                              #:update-wireless-gateway
                              #:update-wireless-gateway-task-create
                              #:update-wireless-gateway-task-entry
                              #:use2dsolver #:utran-cid #:vertical-accuracy
                              #:wcdma-list #:wcdma-local-id #:wcdma-nmr-list
                              #:wcdma-nmr-obj #:wcdma-obj #:wi-fi-access-point
                              #:wi-fi-access-points #:wireless-device-arn
                              #:wireless-device-event
                              #:wireless-device-event-log-option
                              #:wireless-device-event-log-option-list
                              #:wireless-device-frame-info #:wireless-device-id
                              #:wireless-device-id-type
                              #:wireless-device-import-task
                              #:wireless-device-import-task-list
                              #:wireless-device-list
                              #:wireless-device-log-option
                              #:wireless-device-log-option-list
                              #:wireless-device-name
                              #:wireless-device-sidewalk-status
                              #:wireless-device-statistics
                              #:wireless-device-statistics-list
                              #:wireless-device-type #:wireless-gateway-arn
                              #:wireless-gateway-event
                              #:wireless-gateway-event-log-option
                              #:wireless-gateway-event-log-option-list
                              #:wireless-gateway-id #:wireless-gateway-id-type
                              #:wireless-gateway-list
                              #:wireless-gateway-log-option
                              #:wireless-gateway-log-option-list
                              #:wireless-gateway-name
                              #:wireless-gateway-service-type
                              #:wireless-gateway-statistics
                              #:wireless-gateway-statistics-list
                              #:wireless-gateway-task-definition-arn
                              #:wireless-gateway-task-definition-id
                              #:wireless-gateway-task-definition-list
                              #:wireless-gateway-task-definition-type
                              #:wireless-gateway-task-name
                              #:wireless-gateway-task-status
                              #:wireless-gateway-type #:wireless-metadata
                              #:iotwireless))
(common-lisp:in-package #:pira/iot-wireless)

(smithy/sdk/service:define-service iotwireless :shape-name "iotwireless"
                                   :version "2020-11-22" :title
                                   "AWS IoT Wireless" :operations
                                   '(associate-aws-account-with-partner-account
                                     associate-multicast-group-with-fuota-task
                                     associate-wireless-device-with-fuota-task
                                     associate-wireless-device-with-multicast-group
                                     associate-wireless-device-with-thing
                                     associate-wireless-gateway-with-certificate
                                     associate-wireless-gateway-with-thing
                                     cancel-multicast-group-session
                                     create-destination create-device-profile
                                     create-fuota-task create-multicast-group
                                     create-network-analyzer-configuration
                                     create-service-profile
                                     create-wireless-device
                                     create-wireless-gateway
                                     create-wireless-gateway-task
                                     create-wireless-gateway-task-definition
                                     delete-destination delete-device-profile
                                     delete-fuota-task delete-multicast-group
                                     delete-network-analyzer-configuration
                                     delete-queued-messages
                                     delete-service-profile
                                     delete-wireless-device
                                     delete-wireless-device-import-task
                                     delete-wireless-gateway
                                     delete-wireless-gateway-task
                                     delete-wireless-gateway-task-definition
                                     deregister-wireless-device
                                     disassociate-aws-account-from-partner-account
                                     disassociate-multicast-group-from-fuota-task
                                     disassociate-wireless-device-from-fuota-task
                                     disassociate-wireless-device-from-multicast-group
                                     disassociate-wireless-device-from-thing
                                     disassociate-wireless-gateway-from-certificate
                                     disassociate-wireless-gateway-from-thing
                                     get-destination get-device-profile
                                     get-event-configuration-by-resource-types
                                     get-fuota-task
                                     get-log-levels-by-resource-types
                                     get-metric-configuration get-metrics
                                     get-multicast-group
                                     get-multicast-group-session
                                     get-network-analyzer-configuration
                                     get-partner-account get-position
                                     get-position-configuration
                                     get-position-estimate
                                     get-resource-event-configuration
                                     get-resource-log-level
                                     get-resource-position get-service-endpoint
                                     get-service-profile get-wireless-device
                                     get-wireless-device-import-task
                                     get-wireless-device-statistics
                                     get-wireless-gateway
                                     get-wireless-gateway-certificate
                                     get-wireless-gateway-firmware-information
                                     get-wireless-gateway-statistics
                                     get-wireless-gateway-task
                                     get-wireless-gateway-task-definition
                                     list-destinations list-device-profiles
                                     list-devices-for-wireless-device-import-task
                                     list-event-configurations list-fuota-tasks
                                     list-multicast-groups
                                     list-multicast-groups-by-fuota-task
                                     list-network-analyzer-configurations
                                     list-partner-accounts
                                     list-position-configurations
                                     list-queued-messages list-service-profiles
                                     list-tags-for-resource
                                     list-wireless-device-import-tasks
                                     list-wireless-devices
                                     list-wireless-gateways
                                     list-wireless-gateway-task-definitions
                                     put-position-configuration
                                     put-resource-log-level
                                     reset-all-resource-log-levels
                                     reset-resource-log-level
                                     send-data-to-multicast-group
                                     send-data-to-wireless-device
                                     start-bulk-associate-wireless-device-with-multicast-group
                                     start-bulk-disassociate-wireless-device-from-multicast-group
                                     start-fuota-task
                                     start-multicast-group-session
                                     start-single-wireless-device-import-task
                                     start-wireless-device-import-task
                                     tag-resource test-wireless-device
                                     untag-resource update-destination
                                     update-event-configuration-by-resource-types
                                     update-fuota-task
                                     update-log-levels-by-resource-types
                                     update-metric-configuration
                                     update-multicast-group
                                     update-network-analyzer-configuration
                                     update-partner-account update-position
                                     update-resource-event-configuration
                                     update-resource-position
                                     update-wireless-device
                                     update-wireless-device-import-task
                                     update-wireless-gateway)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoT Wireless")
                                      ("arnNamespace" . "iotwireless")
                                      ("cloudFormationName" . "IoTWireless")
                                      ("cloudTrailEventSource"
                                       . "iotwireless.amazonaws.com")
                                      ("docId" . "iotwireless-2020-11-22")
                                      ("endpointPrefix" . "api.iotwireless"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotwireless"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure abp-v1-0-x common-lisp:nil
                                    ((dev-addr :target-type dev-addr
                                      :member-name "DevAddr")
                                     (session-keys :target-type
                                      session-keys-abp-v1-0-x :member-name
                                      "SessionKeys")
                                     (fcnt-start :target-type fcnt-start
                                      :member-name "FCntStart"))
                                    (:shape-name "AbpV1_0_x"))

(smithy/sdk/shapes:define-structure abp-v1-1 common-lisp:nil
                                    ((dev-addr :target-type dev-addr
                                      :member-name "DevAddr")
                                     (session-keys :target-type
                                      session-keys-abp-v1-1 :member-name
                                      "SessionKeys")
                                     (fcnt-start :target-type fcnt-start
                                      :member-name "FCntStart"))
                                    (:shape-name "AbpV1_1"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-linked smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure accuracy common-lisp:nil
                                    ((horizontal-accuracy :target-type
                                      horizontal-accuracy :member-name
                                      "HorizontalAccuracy")
                                     (vertical-accuracy :target-type
                                      vertical-accuracy :member-name
                                      "VerticalAccuracy"))
                                    (:shape-name "Accuracy"))

(smithy/sdk/shapes:define-type ack-mode-retry-duration-secs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type add-gw-metadata smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum aggregation-period
    common-lisp:nil
  (:one-hour "OneHour")
  (:one-day "OneDay")
  (:one-week "OneWeek"))

(smithy/sdk/shapes:define-type amazon-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ap-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-eui smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-skey smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type app-server-private-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-config common-lisp:nil
                                    ((fport :target-type fport :member-name
                                      "FPort")
                                     (type :target-type application-config-type
                                      :member-name "Type")
                                     (destination-name :target-type
                                      destination-name :member-name
                                      "DestinationName"))
                                    (:shape-name "ApplicationConfig"))

(smithy/sdk/shapes:define-enum application-config-type
    common-lisp:nil
  (:semtech-geo-location "SemtechGeolocation"))

(smithy/sdk/shapes:define-type application-server-public-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list applications :member application-config)

(smithy/sdk/shapes:define-list assist-position :member coordinate)

(smithy/sdk/shapes:define-input
 associate-aws-account-with-partner-account-request common-lisp:nil
 ((sidewalk :target-type sidewalk-account-info :required common-lisp:t
   :member-name "Sidewalk")
  (client-request-token :target-type client-request-token :member-name
   "ClientRequestToken")
  (tags :target-type tag-list :member-name "Tags"))
 (:shape-name "AssociateAwsAccountWithPartnerAccountRequest"))

(smithy/sdk/shapes:define-output
 associate-aws-account-with-partner-account-response common-lisp:nil
 ((sidewalk :target-type sidewalk-account-info :member-name "Sidewalk")
  (arn :target-type partner-account-arn :member-name "Arn"))
 (:shape-name "AssociateAwsAccountWithPartnerAccountResponse"))

(smithy/sdk/shapes:define-input
 associate-multicast-group-with-fuota-task-request common-lisp:nil
 ((id :target-type fuota-task-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (multicast-group-id :target-type multicast-group-id :required common-lisp:t
   :member-name "MulticastGroupId"))
 (:shape-name "AssociateMulticastGroupWithFuotaTaskRequest"))

(smithy/sdk/shapes:define-output
 associate-multicast-group-with-fuota-task-response common-lisp:nil
 common-lisp:nil (:shape-name "AssociateMulticastGroupWithFuotaTaskResponse"))

(smithy/sdk/shapes:define-input
 associate-wireless-device-with-fuota-task-request common-lisp:nil
 ((id :target-type fuota-task-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (wireless-device-id :target-type wireless-device-id :required common-lisp:t
   :member-name "WirelessDeviceId"))
 (:shape-name "AssociateWirelessDeviceWithFuotaTaskRequest"))

(smithy/sdk/shapes:define-output
 associate-wireless-device-with-fuota-task-response common-lisp:nil
 common-lisp:nil (:shape-name "AssociateWirelessDeviceWithFuotaTaskResponse"))

(smithy/sdk/shapes:define-input
 associate-wireless-device-with-multicast-group-request common-lisp:nil
 ((id :target-type multicast-group-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (wireless-device-id :target-type wireless-device-id :required common-lisp:t
   :member-name "WirelessDeviceId"))
 (:shape-name "AssociateWirelessDeviceWithMulticastGroupRequest"))

(smithy/sdk/shapes:define-output
 associate-wireless-device-with-multicast-group-response common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateWirelessDeviceWithMulticastGroupResponse"))

(smithy/sdk/shapes:define-input associate-wireless-device-with-thing-request
                                common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (thing-arn :target-type thing-arn :required
                                  common-lisp:t :member-name "ThingArn"))
                                (:shape-name
                                 "AssociateWirelessDeviceWithThingRequest"))

(smithy/sdk/shapes:define-output associate-wireless-device-with-thing-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateWirelessDeviceWithThingResponse"))

(smithy/sdk/shapes:define-input
 associate-wireless-gateway-with-certificate-request common-lisp:nil
 ((id :target-type wireless-gateway-id :required common-lisp:t :member-name
   "Id" :http-label common-lisp:t)
  (iot-certificate-id :target-type iot-certificate-id :required common-lisp:t
   :member-name "IotCertificateId"))
 (:shape-name "AssociateWirelessGatewayWithCertificateRequest"))

(smithy/sdk/shapes:define-output
 associate-wireless-gateway-with-certificate-response common-lisp:nil
 ((iot-certificate-id :target-type iot-certificate-id :member-name
   "IotCertificateId"))
 (:shape-name "AssociateWirelessGatewayWithCertificateResponse"))

(smithy/sdk/shapes:define-input associate-wireless-gateway-with-thing-request
                                common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (thing-arn :target-type thing-arn :required
                                  common-lisp:t :member-name "ThingArn"))
                                (:shape-name
                                 "AssociateWirelessGatewayWithThingRequest"))

(smithy/sdk/shapes:define-output associate-wireless-gateway-with-thing-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateWirelessGatewayWithThingResponse"))

(smithy/sdk/shapes:define-type auto-create-tasks
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type avg smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type bcch smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type bsic smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type base-lat smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type base-lng smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type base-station-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum battery-level
    common-lisp:nil
  (:normal "normal")
  (:low "low")
  (:critical "critical"))

(smithy/sdk/shapes:define-structure beaconing common-lisp:nil
                                    ((data-rate :target-type
                                      beaconing-data-rate :member-name
                                      "DataRate")
                                     (frequencies :target-type
                                      beaconing-frequencies :member-name
                                      "Frequencies"))
                                    (:shape-name "Beaconing"))

(smithy/sdk/shapes:define-type beaconing-data-rate
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list beaconing-frequencies :member
                               beaconing-frequency)

(smithy/sdk/shapes:define-type beaconing-frequency
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input cancel-multicast-group-session-request
                                common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "CancelMulticastGroupSessionRequest"))

(smithy/sdk/shapes:define-output cancel-multicast-group-session-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CancelMulticastGroupSessionResponse"))

(smithy/sdk/shapes:define-type capture-time-accuracy
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type cdma-channel smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list cdma-list :member cdma-obj)

(smithy/sdk/shapes:define-structure cdma-local-id common-lisp:nil
                                    ((pn-offset :target-type pn-offset
                                      :required common-lisp:t :member-name
                                      "PnOffset")
                                     (cdma-channel :target-type cdma-channel
                                      :required common-lisp:t :member-name
                                      "CdmaChannel"))
                                    (:shape-name "CdmaLocalId"))

(smithy/sdk/shapes:define-list cdma-nmr-list :member cdma-nmr-obj)

(smithy/sdk/shapes:define-structure cdma-nmr-obj common-lisp:nil
                                    ((pn-offset :target-type pn-offset
                                      :required common-lisp:t :member-name
                                      "PnOffset")
                                     (cdma-channel :target-type cdma-channel
                                      :required common-lisp:t :member-name
                                      "CdmaChannel")
                                     (pilot-power :target-type pilot-power
                                      :member-name "PilotPower")
                                     (base-station-id :target-type
                                      base-station-id :member-name
                                      "BaseStationId"))
                                    (:shape-name "CdmaNmrObj"))

(smithy/sdk/shapes:define-structure cdma-obj common-lisp:nil
                                    ((system-id :target-type system-id
                                      :required common-lisp:t :member-name
                                      "SystemId")
                                     (network-id :target-type network-id
                                      :required common-lisp:t :member-name
                                      "NetworkId")
                                     (base-station-id :target-type
                                      base-station-id :required common-lisp:t
                                      :member-name "BaseStationId")
                                     (registration-zone :target-type
                                      registration-zone :member-name
                                      "RegistrationZone")
                                     (cdma-local-id :target-type cdma-local-id
                                      :member-name "CdmaLocalId")
                                     (pilot-power :target-type pilot-power
                                      :member-name "PilotPower")
                                     (base-lat :target-type base-lat
                                      :member-name "BaseLat")
                                     (base-lng :target-type base-lng
                                      :member-name "BaseLng")
                                     (cdma-nmr :target-type cdma-nmr-list
                                      :member-name "CdmaNmr"))
                                    (:shape-name "CdmaObj"))

(smithy/sdk/shapes:define-type cell-params smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure cell-towers common-lisp:nil
                                    ((gsm :target-type gsm-list :member-name
                                      "Gsm")
                                     (wcdma :target-type wcdma-list
                                      :member-name "Wcdma")
                                     (tdscdma :target-type tdscdma-list
                                      :member-name "Tdscdma")
                                     (lte :target-type lte-list :member-name
                                      "Lte")
                                     (cdma :target-type cdma-list :member-name
                                      "Cdma"))
                                    (:shape-name "CellTowers"))

(smithy/sdk/shapes:define-structure certificate-list common-lisp:nil
                                    ((signing-alg :target-type signing-alg
                                      :required common-lisp:t :member-name
                                      "SigningAlg")
                                     (value :target-type certificate-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "CertificateList"))

(smithy/sdk/shapes:define-type certificate-pem smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-mask smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type class-btimeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type class-ctimeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:connected "Connected")
  (:disconnected "Disconnected"))

(smithy/sdk/shapes:define-structure connection-status-event-configuration
                                    common-lisp:nil
                                    ((lo-ra-wan :target-type
                                      lo-ra-wanconnection-status-event-notification-configurations
                                      :member-name "LoRaWAN")
                                     (wireless-gateway-id-event-topic
                                      :target-type
                                      event-notification-topic-status
                                      :member-name
                                      "WirelessGatewayIdEventTopic"))
                                    (:shape-name
                                     "ConnectionStatusEventConfiguration"))

(smithy/sdk/shapes:define-structure
 connection-status-resource-type-event-configuration common-lisp:nil
 ((lo-ra-wan :target-type
   lo-ra-wanconnection-status-resource-type-event-configuration :member-name
   "LoRaWAN"))
 (:shape-name "ConnectionStatusResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-type coordinate smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type crc smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input create-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name")
                                 (expression-type :target-type expression-type
                                  :required common-lisp:t :member-name
                                  "ExpressionType")
                                 (expression :target-type expression :required
                                  common-lisp:t :member-name "Expression")
                                 (description :target-type description
                                  :member-name "Description")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateDestinationRequest"))

(smithy/sdk/shapes:define-output create-destination-response common-lisp:nil
                                 ((arn :target-type destination-arn
                                   :member-name "Arn")
                                  (name :target-type destination-name
                                   :member-name "Name"))
                                 (:shape-name "CreateDestinationResponse"))

(smithy/sdk/shapes:define-input create-device-profile-request common-lisp:nil
                                ((name :target-type device-profile-name
                                  :member-name "Name")
                                 (lo-ra-wan :target-type
                                  lo-ra-wandevice-profile :member-name
                                  "LoRaWAN")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (sidewalk :target-type
                                  sidewalk-create-device-profile :member-name
                                  "Sidewalk"))
                                (:shape-name "CreateDeviceProfileRequest"))

(smithy/sdk/shapes:define-output create-device-profile-response common-lisp:nil
                                 ((arn :target-type device-profile-arn
                                   :member-name "Arn")
                                  (id :target-type device-profile-id
                                   :member-name "Id"))
                                 (:shape-name "CreateDeviceProfileResponse"))

(smithy/sdk/shapes:define-input create-fuota-task-request common-lisp:nil
                                ((name :target-type fuota-task-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (lo-ra-wan :target-type lo-ra-wanfuota-task
                                  :member-name "LoRaWAN")
                                 (firmware-update-image :target-type
                                  firmware-update-image :required common-lisp:t
                                  :member-name "FirmwareUpdateImage")
                                 (firmware-update-role :target-type
                                  firmware-update-role :required common-lisp:t
                                  :member-name "FirmwareUpdateRole")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (redundancy-percent :target-type
                                  redundancy-percent :member-name
                                  "RedundancyPercent")
                                 (fragment-size-bytes :target-type
                                  fragment-size-bytes :member-name
                                  "FragmentSizeBytes")
                                 (fragment-interval-ms :target-type
                                  fragment-interval-ms :member-name
                                  "FragmentIntervalMS")
                                 (descriptor :target-type file-descriptor
                                  :member-name "Descriptor"))
                                (:shape-name "CreateFuotaTaskRequest"))

(smithy/sdk/shapes:define-output create-fuota-task-response common-lisp:nil
                                 ((arn :target-type fuota-task-arn :member-name
                                   "Arn")
                                  (id :target-type fuota-task-id :member-name
                                   "Id"))
                                 (:shape-name "CreateFuotaTaskResponse"))

(smithy/sdk/shapes:define-input create-multicast-group-request common-lisp:nil
                                ((name :target-type multicast-group-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (lo-ra-wan :target-type lo-ra-wanmulticast
                                  :required common-lisp:t :member-name
                                  "LoRaWAN")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateMulticastGroupRequest"))

(smithy/sdk/shapes:define-output create-multicast-group-response
                                 common-lisp:nil
                                 ((arn :target-type multicast-group-arn
                                   :member-name "Arn")
                                  (id :target-type multicast-group-id
                                   :member-name "Id"))
                                 (:shape-name "CreateMulticastGroupResponse"))

(smithy/sdk/shapes:define-input create-network-analyzer-configuration-request
                                common-lisp:nil
                                ((name :target-type
                                  network-analyzer-configuration-name :required
                                  common-lisp:t :member-name "Name")
                                 (trace-content :target-type trace-content
                                  :member-name "TraceContent")
                                 (wireless-devices :target-type
                                  wireless-device-list :member-name
                                  "WirelessDevices")
                                 (wireless-gateways :target-type
                                  wireless-gateway-list :member-name
                                  "WirelessGateways")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (multicast-groups :target-type
                                  network-analyzer-multicast-group-list
                                  :member-name "MulticastGroups"))
                                (:shape-name
                                 "CreateNetworkAnalyzerConfigurationRequest"))

(smithy/sdk/shapes:define-output create-network-analyzer-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   network-analyzer-configuration-arn
                                   :member-name "Arn")
                                  (name :target-type
                                   network-analyzer-configuration-name
                                   :member-name "Name"))
                                 (:shape-name
                                  "CreateNetworkAnalyzerConfigurationResponse"))

(smithy/sdk/shapes:define-input create-service-profile-request common-lisp:nil
                                ((name :target-type service-profile-name
                                  :member-name "Name")
                                 (lo-ra-wan :target-type
                                  lo-ra-wanservice-profile :member-name
                                  "LoRaWAN")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateServiceProfileRequest"))

(smithy/sdk/shapes:define-output create-service-profile-response
                                 common-lisp:nil
                                 ((arn :target-type service-profile-arn
                                   :member-name "Arn")
                                  (id :target-type service-profile-id
                                   :member-name "Id"))
                                 (:shape-name "CreateServiceProfileResponse"))

(smithy/sdk/shapes:define-input create-wireless-device-request common-lisp:nil
                                ((type :target-type wireless-device-type
                                  :required common-lisp:t :member-name "Type")
                                 (name :target-type wireless-device-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "DestinationName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (lo-ra-wan :target-type lo-ra-wandevice
                                  :member-name "LoRaWAN")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (positioning :target-type
                                  positioning-config-status :member-name
                                  "Positioning")
                                 (sidewalk :target-type
                                  sidewalk-create-wireless-device :member-name
                                  "Sidewalk"))
                                (:shape-name "CreateWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output create-wireless-device-response
                                 common-lisp:nil
                                 ((arn :target-type wireless-device-arn
                                   :member-name "Arn")
                                  (id :target-type wireless-device-id
                                   :member-name "Id"))
                                 (:shape-name "CreateWirelessDeviceResponse"))

(smithy/sdk/shapes:define-input create-wireless-gateway-request common-lisp:nil
                                ((name :target-type wireless-gateway-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (lo-ra-wan :target-type lo-ra-wangateway
                                  :required common-lisp:t :member-name
                                  "LoRaWAN")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateWirelessGatewayRequest"))

(smithy/sdk/shapes:define-output create-wireless-gateway-response
                                 common-lisp:nil
                                 ((arn :target-type wireless-gateway-arn
                                   :member-name "Arn")
                                  (id :target-type wireless-device-id
                                   :member-name "Id"))
                                 (:shape-name "CreateWirelessGatewayResponse"))

(smithy/sdk/shapes:define-input create-wireless-gateway-task-definition-request
                                common-lisp:nil
                                ((auto-create-tasks :target-type
                                  auto-create-tasks :required common-lisp:t
                                  :member-name "AutoCreateTasks")
                                 (name :target-type wireless-gateway-task-name
                                  :member-name "Name")
                                 (update :target-type
                                  update-wireless-gateway-task-create
                                  :member-name "Update")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateWirelessGatewayTaskDefinitionRequest"))

(smithy/sdk/shapes:define-output
 create-wireless-gateway-task-definition-response common-lisp:nil
 ((id :target-type wireless-gateway-task-definition-id :member-name "Id")
  (arn :target-type wireless-gateway-task-definition-arn :member-name "Arn"))
 (:shape-name "CreateWirelessGatewayTaskDefinitionResponse"))

(smithy/sdk/shapes:define-input create-wireless-gateway-task-request
                                common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (wireless-gateway-task-definition-id
                                  :target-type
                                  wireless-gateway-task-definition-id :required
                                  common-lisp:t :member-name
                                  "WirelessGatewayTaskDefinitionId"))
                                (:shape-name
                                 "CreateWirelessGatewayTaskRequest"))

(smithy/sdk/shapes:define-output create-wireless-gateway-task-response
                                 common-lisp:nil
                                 ((wireless-gateway-task-definition-id
                                   :target-type
                                   wireless-gateway-task-definition-id
                                   :member-name
                                   "WirelessGatewayTaskDefinitionId")
                                  (status :target-type
                                   wireless-gateway-task-status :member-name
                                   "Status"))
                                 (:shape-name
                                  "CreateWirelessGatewayTaskResponse"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type dak-certificate-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dak-certificate-metadata common-lisp:nil
                                    ((certificate-id :target-type
                                      dak-certificate-id :required
                                      common-lisp:t :member-name
                                      "CertificateId")
                                     (max-allowed-signature :target-type
                                      max-allowed-signature :member-name
                                      "MaxAllowedSignature")
                                     (factory-support :target-type
                                      factory-support :member-name
                                      "FactorySupport")
                                     (ap-id :target-type ap-id :member-name
                                      "ApId")
                                     (device-type-id :target-type
                                      device-type-id :member-name
                                      "DeviceTypeId"))
                                    (:shape-name "DakCertificateMetadata"))

(smithy/sdk/shapes:define-list dak-certificate-metadata-list :member
                               dak-certificate-metadata)

(smithy/sdk/shapes:define-input delete-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDestinationRequest"))

(smithy/sdk/shapes:define-output delete-destination-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDestinationResponse"))

(smithy/sdk/shapes:define-input delete-device-profile-request common-lisp:nil
                                ((id :target-type device-profile-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDeviceProfileRequest"))

(smithy/sdk/shapes:define-output delete-device-profile-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDeviceProfileResponse"))

(smithy/sdk/shapes:define-input delete-fuota-task-request common-lisp:nil
                                ((id :target-type fuota-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteFuotaTaskRequest"))

(smithy/sdk/shapes:define-output delete-fuota-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFuotaTaskResponse"))

(smithy/sdk/shapes:define-input delete-multicast-group-request common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMulticastGroupRequest"))

(smithy/sdk/shapes:define-output delete-multicast-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteMulticastGroupResponse"))

(smithy/sdk/shapes:define-input delete-network-analyzer-configuration-request
                                common-lisp:nil
                                ((configuration-name :target-type
                                  network-analyzer-configuration-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteNetworkAnalyzerConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-network-analyzer-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteNetworkAnalyzerConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-queued-messages-request common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId"
                                  :http-query "messageId")
                                 (wireless-device-type :target-type
                                  wireless-device-type :member-name
                                  "WirelessDeviceType" :http-query
                                  "WirelessDeviceType"))
                                (:shape-name "DeleteQueuedMessagesRequest"))

(smithy/sdk/shapes:define-output delete-queued-messages-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteQueuedMessagesResponse"))

(smithy/sdk/shapes:define-input delete-service-profile-request common-lisp:nil
                                ((id :target-type service-profile-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteServiceProfileRequest"))

(smithy/sdk/shapes:define-output delete-service-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteServiceProfileResponse"))

(smithy/sdk/shapes:define-input delete-wireless-device-import-task-request
                                common-lisp:nil
                                ((id :target-type import-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteWirelessDeviceImportTaskRequest"))

(smithy/sdk/shapes:define-output delete-wireless-device-import-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteWirelessDeviceImportTaskResponse"))

(smithy/sdk/shapes:define-input delete-wireless-device-request common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output delete-wireless-device-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteWirelessDeviceResponse"))

(smithy/sdk/shapes:define-input delete-wireless-gateway-request common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteWirelessGatewayRequest"))

(smithy/sdk/shapes:define-output delete-wireless-gateway-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteWirelessGatewayResponse"))

(smithy/sdk/shapes:define-input delete-wireless-gateway-task-definition-request
                                common-lisp:nil
                                ((id :target-type
                                  wireless-gateway-task-definition-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteWirelessGatewayTaskDefinitionRequest"))

(smithy/sdk/shapes:define-output
 delete-wireless-gateway-task-definition-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteWirelessGatewayTaskDefinitionResponse"))

(smithy/sdk/shapes:define-input delete-wireless-gateway-task-request
                                common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteWirelessGatewayTaskRequest"))

(smithy/sdk/shapes:define-output delete-wireless-gateway-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteWirelessGatewayTaskResponse"))

(smithy/sdk/shapes:define-input deregister-wireless-device-request
                                common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (wireless-device-type :target-type
                                  wireless-device-type :member-name
                                  "WirelessDeviceType" :http-query
                                  "WirelessDeviceType"))
                                (:shape-name "DeregisterWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output deregister-wireless-device-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterWirelessDeviceResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list destination-list :member destinations)

(smithy/sdk/shapes:define-type destination-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destinations common-lisp:nil
                                    ((arn :target-type destination-arn
                                      :member-name "Arn")
                                     (name :target-type destination-name
                                      :member-name "Name")
                                     (expression-type :target-type
                                      expression-type :member-name
                                      "ExpressionType")
                                     (expression :target-type expression
                                      :member-name "Expression")
                                     (description :target-type description
                                      :member-name "Description")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "Destinations"))

(smithy/sdk/shapes:define-type dev-addr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dev-eui smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dev-status-req-freq
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list device-certificate-list :member certificate-list)

(smithy/sdk/shapes:define-type device-creation-file
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-creation-file-list :member
                               device-creation-file)

(smithy/sdk/shapes:define-type device-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device-profile common-lisp:nil
                                    ((arn :target-type device-profile-arn
                                      :member-name "Arn")
                                     (name :target-type device-profile-name
                                      :member-name "Name")
                                     (id :target-type device-profile-id
                                      :member-name "Id"))
                                    (:shape-name "DeviceProfile"))

(smithy/sdk/shapes:define-type device-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-profile-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-profile-list :member device-profile)

(smithy/sdk/shapes:define-type device-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum device-profile-type
    common-lisp:nil
  (:sidewalk "Sidewalk")
  (:lo-ra-wan "LoRaWAN"))

(smithy/sdk/shapes:define-structure
 device-registration-state-event-configuration common-lisp:nil
 ((sidewalk :target-type sidewalk-event-notification-configurations
   :member-name "Sidewalk")
  (wireless-device-id-event-topic :target-type event-notification-topic-status
   :member-name "WirelessDeviceIdEventTopic"))
 (:shape-name "DeviceRegistrationStateEventConfiguration"))

(smithy/sdk/shapes:define-structure
 device-registration-state-resource-type-event-configuration common-lisp:nil
 ((sidewalk :target-type sidewalk-resource-type-event-configuration
   :member-name "Sidewalk"))
 (:shape-name "DeviceRegistrationStateResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-enum device-state
    common-lisp:nil
  (:provisioned "Provisioned")
  (:registerednotseen "RegisteredNotSeen")
  (:registeredreachable "RegisteredReachable")
  (:registeredunreachable "RegisteredUnreachable"))

(smithy/sdk/shapes:define-type device-type-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type dimension-name
                                      :member-name "name")
                                     (value :target-type dimension-value
                                      :member-name "value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-enum dimension-name
    common-lisp:nil
  (:device-id "DeviceId")
  (:gateway-id "GatewayId"))

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-input
 disassociate-aws-account-from-partner-account-request common-lisp:nil
 ((partner-account-id :target-type partner-account-id :required common-lisp:t
   :member-name "PartnerAccountId" :http-label common-lisp:t)
  (partner-type :target-type partner-type :required common-lisp:t :member-name
   "PartnerType" :http-query "partnerType"))
 (:shape-name "DisassociateAwsAccountFromPartnerAccountRequest"))

(smithy/sdk/shapes:define-output
 disassociate-aws-account-from-partner-account-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateAwsAccountFromPartnerAccountResponse"))

(smithy/sdk/shapes:define-input
 disassociate-multicast-group-from-fuota-task-request common-lisp:nil
 ((id :target-type fuota-task-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (multicast-group-id :target-type multicast-group-id :required common-lisp:t
   :member-name "MulticastGroupId" :http-label common-lisp:t))
 (:shape-name "DisassociateMulticastGroupFromFuotaTaskRequest"))

(smithy/sdk/shapes:define-output
 disassociate-multicast-group-from-fuota-task-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateMulticastGroupFromFuotaTaskResponse"))

(smithy/sdk/shapes:define-input
 disassociate-wireless-device-from-fuota-task-request common-lisp:nil
 ((id :target-type fuota-task-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (wireless-device-id :target-type wireless-device-id :required common-lisp:t
   :member-name "WirelessDeviceId" :http-label common-lisp:t))
 (:shape-name "DisassociateWirelessDeviceFromFuotaTaskRequest"))

(smithy/sdk/shapes:define-output
 disassociate-wireless-device-from-fuota-task-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateWirelessDeviceFromFuotaTaskResponse"))

(smithy/sdk/shapes:define-input
 disassociate-wireless-device-from-multicast-group-request common-lisp:nil
 ((id :target-type multicast-group-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (wireless-device-id :target-type wireless-device-id :required common-lisp:t
   :member-name "WirelessDeviceId" :http-label common-lisp:t))
 (:shape-name "DisassociateWirelessDeviceFromMulticastGroupRequest"))

(smithy/sdk/shapes:define-output
 disassociate-wireless-device-from-multicast-group-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateWirelessDeviceFromMulticastGroupResponse"))

(smithy/sdk/shapes:define-input disassociate-wireless-device-from-thing-request
                                common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DisassociateWirelessDeviceFromThingRequest"))

(smithy/sdk/shapes:define-output
 disassociate-wireless-device-from-thing-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateWirelessDeviceFromThingResponse"))

(smithy/sdk/shapes:define-input
 disassociate-wireless-gateway-from-certificate-request common-lisp:nil
 ((id :target-type wireless-gateway-id :required common-lisp:t :member-name
   "Id" :http-label common-lisp:t))
 (:shape-name "DisassociateWirelessGatewayFromCertificateRequest"))

(smithy/sdk/shapes:define-output
 disassociate-wireless-gateway-from-certificate-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateWirelessGatewayFromCertificateResponse"))

(smithy/sdk/shapes:define-input
 disassociate-wireless-gateway-from-thing-request common-lisp:nil
 ((id :target-type wireless-gateway-id :required common-lisp:t :member-name
   "Id" :http-label common-lisp:t))
 (:shape-name "DisassociateWirelessGatewayFromThingRequest"))

(smithy/sdk/shapes:define-output
 disassociate-wireless-gateway-from-thing-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateWirelessGatewayFromThingResponse"))

(smithy/sdk/shapes:define-type dl-allowed smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type dl-bucket-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum dl-class
    common-lisp:nil
  (:class-b "ClassB")
  (:class-c "ClassC"))

(smithy/sdk/shapes:define-type dl-dr smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dl-freq smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dl-rate smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dl-rate-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type downlink-frequency
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum downlink-mode
    common-lisp:nil
  (:sequential "SEQUENTIAL")
  (:concurrent "CONCURRENT")
  (:using-uplink-gateway "USING_UPLINK_GATEWAY"))

(smithy/sdk/shapes:define-structure downlink-queue-message common-lisp:nil
                                    ((message-id :target-type message-id
                                      :member-name "MessageId")
                                     (transmit-mode :target-type transmit-mode
                                      :member-name "TransmitMode")
                                     (received-at :target-type
                                      isodate-time-string :member-name
                                      "ReceivedAt")
                                     (lo-ra-wan :target-type
                                      lo-ra-wansend-data-to-device :member-name
                                      "LoRaWAN"))
                                    (:shape-name "DownlinkQueueMessage"))

(smithy/sdk/shapes:define-list downlink-queue-messages-list :member
                               downlink-queue-message)

(smithy/sdk/shapes:define-type dr-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dr-max-box smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dr-min smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dr-min-box smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type earfcn smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type end-point smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type eutran-cid smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum event
    common-lisp:nil
  (:discovered "discovered")
  (:lost "lost")
  (:ack "ack")
  (:nack "nack")
  (:passthrough "passthrough"))

(smithy/sdk/shapes:define-structure event-configuration-item common-lisp:nil
                                    ((identifier :target-type identifier
                                      :member-name "Identifier")
                                     (identifier-type :target-type
                                      identifier-type :member-name
                                      "IdentifierType")
                                     (partner-type :target-type
                                      event-notification-partner-type
                                      :member-name "PartnerType")
                                     (events :target-type
                                      event-notification-item-configurations
                                      :member-name "Events"))
                                    (:shape-name "EventConfigurationItem"))

(smithy/sdk/shapes:define-list event-configurations-list :member
                               event-configuration-item)

(smithy/sdk/shapes:define-structure event-notification-item-configurations
                                    common-lisp:nil
                                    ((device-registration-state :target-type
                                      device-registration-state-event-configuration
                                      :member-name "DeviceRegistrationState")
                                     (proximity :target-type
                                      proximity-event-configuration
                                      :member-name "Proximity")
                                     (join :target-type
                                      join-event-configuration :member-name
                                      "Join")
                                     (connection-status :target-type
                                      connection-status-event-configuration
                                      :member-name "ConnectionStatus")
                                     (message-delivery-status :target-type
                                      message-delivery-status-event-configuration
                                      :member-name "MessageDeliveryStatus"))
                                    (:shape-name
                                     "EventNotificationItemConfigurations"))

(smithy/sdk/shapes:define-enum event-notification-partner-type
    common-lisp:nil
  (:sidewalk "Sidewalk"))

(smithy/sdk/shapes:define-enum event-notification-resource-type
    common-lisp:nil
  (:sidewalk-account "SidewalkAccount")
  (:wireless-device "WirelessDevice")
  (:wireless-gateway "WirelessGateway"))

(smithy/sdk/shapes:define-enum event-notification-topic-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type expression smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum expression-type
    common-lisp:nil
  (:rule-name "RuleName")
  (:mqtt-topic "MqttTopic"))

(smithy/sdk/shapes:define-type fcnt-start smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type fnwk-sint-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fport smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure fports common-lisp:nil
                                    ((fuota :target-type fport :member-name
                                      "Fuota")
                                     (multicast :target-type fport :member-name
                                      "Multicast")
                                     (clock-sync :target-type fport
                                      :member-name "ClockSync")
                                     (positioning :target-type positioning
                                      :member-name "Positioning")
                                     (applications :target-type applications
                                      :member-name "Applications"))
                                    (:shape-name "FPorts"))

(smithy/sdk/shapes:define-list factory-preset-freqs-list :member preset-freq)

(smithy/sdk/shapes:define-type factory-support smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type file-descriptor smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fingerprint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type firmware-update-image
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type firmware-update-role
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fragment-interval-ms
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type fragment-size-bytes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum fuota-device-status
    common-lisp:nil
  (:initial "Initial")
  (:package-not-supported "Package_Not_Supported")
  (:frag-algo-unsupported "FragAlgo_unsupported")
  (:not-enough-memory "Not_enough_memory")
  (:frag-index-unsupported "FragIndex_unsupported")
  (:wrong-descriptor "Wrong_descriptor")
  (:session-cnt-replay "SessionCnt_replay")
  (:missing-frag "MissingFrag")
  (:memory-error "MemoryError")
  (:micerror "MICError")
  (:successful "Successful")
  (:device-exist-in-conflict-fuota-task "Device_exist_in_conflict_fuota_task"))

(smithy/sdk/shapes:define-structure fuota-task common-lisp:nil
                                    ((id :target-type fuota-task-id
                                      :member-name "Id")
                                     (arn :target-type fuota-task-arn
                                      :member-name "Arn")
                                     (name :target-type fuota-task-name
                                      :member-name "Name"))
                                    (:shape-name "FuotaTask"))

(smithy/sdk/shapes:define-type fuota-task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum fuota-task-event
    common-lisp:nil
  (:fuota "Fuota"))

(smithy/sdk/shapes:define-structure fuota-task-event-log-option common-lisp:nil
                                    ((event :target-type fuota-task-event
                                      :required common-lisp:t :member-name
                                      "Event")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel"))
                                    (:shape-name "FuotaTaskEventLogOption"))

(smithy/sdk/shapes:define-list fuota-task-event-log-option-list :member
                               fuota-task-event-log-option)

(smithy/sdk/shapes:define-type fuota-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list fuota-task-list :member fuota-task)

(smithy/sdk/shapes:define-structure fuota-task-log-option common-lisp:nil
                                    ((type :target-type fuota-task-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel")
                                     (events :target-type
                                      fuota-task-event-log-option-list
                                      :member-name "Events"))
                                    (:shape-name "FuotaTaskLogOption"))

(smithy/sdk/shapes:define-list fuota-task-log-option-list :member
                               fuota-task-log-option)

(smithy/sdk/shapes:define-type fuota-task-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum fuota-task-status
    common-lisp:nil
  (:pending "Pending")
  (:fuota-session-waiting "FuotaSession_Waiting")
  (:in-fuota-session "In_FuotaSession")
  (:fuota-done "FuotaDone")
  (:delete-waiting "Delete_Waiting"))

(smithy/sdk/shapes:define-enum fuota-task-type
    common-lisp:nil
  (:lo-ra-wan "LoRaWAN"))

(smithy/sdk/shapes:define-type gpst smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type gateway-eui smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list gateway-list :member gateway-list-item)

(smithy/sdk/shapes:define-structure gateway-list-item common-lisp:nil
                                    ((gateway-id :target-type
                                      wireless-gateway-id :required
                                      common-lisp:t :member-name "GatewayId")
                                     (downlink-frequency :target-type
                                      downlink-frequency :required
                                      common-lisp:t :member-name
                                      "DownlinkFrequency"))
                                    (:shape-name "GatewayListItem"))

(smithy/sdk/shapes:define-list gateway-list-multicast :member
                               wireless-gateway-id)

(smithy/sdk/shapes:define-type gateway-max-eirp smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type gen-app-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type geo-json-payload smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type geran-cid smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDestinationRequest"))

(smithy/sdk/shapes:define-output get-destination-response common-lisp:nil
                                 ((arn :target-type destination-arn
                                   :member-name "Arn")
                                  (name :target-type destination-name
                                   :member-name "Name")
                                  (expression :target-type expression
                                   :member-name "Expression")
                                  (expression-type :target-type expression-type
                                   :member-name "ExpressionType")
                                  (description :target-type description
                                   :member-name "Description")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn"))
                                 (:shape-name "GetDestinationResponse"))

(smithy/sdk/shapes:define-input get-device-profile-request common-lisp:nil
                                ((id :target-type device-profile-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDeviceProfileRequest"))

(smithy/sdk/shapes:define-output get-device-profile-response common-lisp:nil
                                 ((arn :target-type device-profile-arn
                                   :member-name "Arn")
                                  (name :target-type device-profile-name
                                   :member-name "Name")
                                  (id :target-type device-profile-id
                                   :member-name "Id")
                                  (lo-ra-wan :target-type
                                   lo-ra-wandevice-profile :member-name
                                   "LoRaWAN")
                                  (sidewalk :target-type
                                   sidewalk-get-device-profile :member-name
                                   "Sidewalk"))
                                 (:shape-name "GetDeviceProfileResponse"))

(smithy/sdk/shapes:define-input
 get-event-configuration-by-resource-types-request common-lisp:nil
 common-lisp:nil (:shape-name "GetEventConfigurationByResourceTypesRequest"))

(smithy/sdk/shapes:define-output
 get-event-configuration-by-resource-types-response common-lisp:nil
 ((device-registration-state :target-type
   device-registration-state-resource-type-event-configuration :member-name
   "DeviceRegistrationState")
  (proximity :target-type proximity-resource-type-event-configuration
   :member-name "Proximity")
  (join :target-type join-resource-type-event-configuration :member-name
   "Join")
  (connection-status :target-type
   connection-status-resource-type-event-configuration :member-name
   "ConnectionStatus")
  (message-delivery-status :target-type
   message-delivery-status-resource-type-event-configuration :member-name
   "MessageDeliveryStatus"))
 (:shape-name "GetEventConfigurationByResourceTypesResponse"))

(smithy/sdk/shapes:define-input get-fuota-task-request common-lisp:nil
                                ((id :target-type fuota-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFuotaTaskRequest"))

(smithy/sdk/shapes:define-output get-fuota-task-response common-lisp:nil
                                 ((arn :target-type fuota-task-arn :member-name
                                   "Arn")
                                  (id :target-type fuota-task-id :member-name
                                   "Id")
                                  (status :target-type fuota-task-status
                                   :member-name "Status")
                                  (name :target-type fuota-task-name
                                   :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (lo-ra-wan :target-type
                                   lo-ra-wanfuota-task-get-info :member-name
                                   "LoRaWAN")
                                  (firmware-update-image :target-type
                                   firmware-update-image :member-name
                                   "FirmwareUpdateImage")
                                  (firmware-update-role :target-type
                                   firmware-update-role :member-name
                                   "FirmwareUpdateRole")
                                  (created-at :target-type created-at
                                   :member-name "CreatedAt")
                                  (redundancy-percent :target-type
                                   redundancy-percent :member-name
                                   "RedundancyPercent")
                                  (fragment-size-bytes :target-type
                                   fragment-size-bytes :member-name
                                   "FragmentSizeBytes")
                                  (fragment-interval-ms :target-type
                                   fragment-interval-ms :member-name
                                   "FragmentIntervalMS")
                                  (descriptor :target-type file-descriptor
                                   :member-name "Descriptor"))
                                 (:shape-name "GetFuotaTaskResponse"))

(smithy/sdk/shapes:define-input get-log-levels-by-resource-types-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetLogLevelsByResourceTypesRequest"))

(smithy/sdk/shapes:define-output get-log-levels-by-resource-types-response
                                 common-lisp:nil
                                 ((default-log-level :target-type log-level
                                   :member-name "DefaultLogLevel")
                                  (wireless-gateway-log-options :target-type
                                   wireless-gateway-log-option-list
                                   :member-name "WirelessGatewayLogOptions")
                                  (wireless-device-log-options :target-type
                                   wireless-device-log-option-list :member-name
                                   "WirelessDeviceLogOptions")
                                  (fuota-task-log-options :target-type
                                   fuota-task-log-option-list :member-name
                                   "FuotaTaskLogOptions"))
                                 (:shape-name
                                  "GetLogLevelsByResourceTypesResponse"))

(smithy/sdk/shapes:define-input get-metric-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetMetricConfigurationRequest"))

(smithy/sdk/shapes:define-output get-metric-configuration-response
                                 common-lisp:nil
                                 ((summary-metric :target-type
                                   summary-metric-configuration :member-name
                                   "SummaryMetric"))
                                 (:shape-name "GetMetricConfigurationResponse"))

(smithy/sdk/shapes:define-input get-metrics-request common-lisp:nil
                                ((summary-metric-queries :target-type
                                  summary-metric-queries :member-name
                                  "SummaryMetricQueries"))
                                (:shape-name "GetMetricsRequest"))

(smithy/sdk/shapes:define-output get-metrics-response common-lisp:nil
                                 ((summary-metric-query-results :target-type
                                   summary-metric-query-results :member-name
                                   "SummaryMetricQueryResults"))
                                 (:shape-name "GetMetricsResponse"))

(smithy/sdk/shapes:define-input get-multicast-group-request common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMulticastGroupRequest"))

(smithy/sdk/shapes:define-output get-multicast-group-response common-lisp:nil
                                 ((arn :target-type multicast-group-arn
                                   :member-name "Arn")
                                  (id :target-type multicast-group-id
                                   :member-name "Id")
                                  (name :target-type multicast-group-name
                                   :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (status :target-type multicast-group-status
                                   :member-name "Status")
                                  (lo-ra-wan :target-type
                                   lo-ra-wanmulticast-get :member-name
                                   "LoRaWAN")
                                  (created-at :target-type created-at
                                   :member-name "CreatedAt"))
                                 (:shape-name "GetMulticastGroupResponse"))

(smithy/sdk/shapes:define-input get-multicast-group-session-request
                                common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMulticastGroupSessionRequest"))

(smithy/sdk/shapes:define-output get-multicast-group-session-response
                                 common-lisp:nil
                                 ((lo-ra-wan :target-type
                                   lo-ra-wanmulticast-session :member-name
                                   "LoRaWAN"))
                                 (:shape-name
                                  "GetMulticastGroupSessionResponse"))

(smithy/sdk/shapes:define-input get-network-analyzer-configuration-request
                                common-lisp:nil
                                ((configuration-name :target-type
                                  network-analyzer-configuration-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetNetworkAnalyzerConfigurationRequest"))

(smithy/sdk/shapes:define-output get-network-analyzer-configuration-response
                                 common-lisp:nil
                                 ((trace-content :target-type trace-content
                                   :member-name "TraceContent")
                                  (wireless-devices :target-type
                                   wireless-device-list :member-name
                                   "WirelessDevices")
                                  (wireless-gateways :target-type
                                   wireless-gateway-list :member-name
                                   "WirelessGateways")
                                  (description :target-type description
                                   :member-name "Description")
                                  (arn :target-type
                                   network-analyzer-configuration-arn
                                   :member-name "Arn")
                                  (name :target-type
                                   network-analyzer-configuration-name
                                   :member-name "Name")
                                  (multicast-groups :target-type
                                   network-analyzer-multicast-group-list
                                   :member-name "MulticastGroups"))
                                 (:shape-name
                                  "GetNetworkAnalyzerConfigurationResponse"))

(smithy/sdk/shapes:define-input get-partner-account-request common-lisp:nil
                                ((partner-account-id :target-type
                                  partner-account-id :required common-lisp:t
                                  :member-name "PartnerAccountId" :http-label
                                  common-lisp:t)
                                 (partner-type :target-type partner-type
                                  :required common-lisp:t :member-name
                                  "PartnerType" :http-query "partnerType"))
                                (:shape-name "GetPartnerAccountRequest"))

(smithy/sdk/shapes:define-output get-partner-account-response common-lisp:nil
                                 ((sidewalk :target-type
                                   sidewalk-account-info-with-fingerprint
                                   :member-name "Sidewalk")
                                  (account-linked :target-type account-linked
                                   :member-name "AccountLinked"))
                                 (:shape-name "GetPartnerAccountResponse"))

(smithy/sdk/shapes:define-input get-position-configuration-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  position-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type
                                  position-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType"))
                                (:shape-name "GetPositionConfigurationRequest"))

(smithy/sdk/shapes:define-output get-position-configuration-response
                                 common-lisp:nil
                                 ((solvers :target-type position-solver-details
                                   :member-name "Solvers")
                                  (destination :target-type destination-name
                                   :member-name "Destination"))
                                 (:shape-name
                                  "GetPositionConfigurationResponse"))

(smithy/sdk/shapes:define-input get-position-estimate-request common-lisp:nil
                                ((wi-fi-access-points :target-type
                                  wi-fi-access-points :member-name
                                  "WiFiAccessPoints")
                                 (cell-towers :target-type cell-towers
                                  :member-name "CellTowers")
                                 (ip :target-type ip :member-name "Ip")
                                 (gnss :target-type gnss :member-name "Gnss")
                                 (timestamp :target-type creation-date
                                  :member-name "Timestamp"))
                                (:shape-name "GetPositionEstimateRequest"))

(smithy/sdk/shapes:define-output get-position-estimate-response common-lisp:nil
                                 ((geo-json-payload :target-type
                                   geo-json-payload :member-name
                                   "GeoJsonPayload" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetPositionEstimateResponse"))

(smithy/sdk/shapes:define-input get-position-request common-lisp:nil
                                ((resource-identifier :target-type
                                  position-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type
                                  position-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType"))
                                (:shape-name "GetPositionRequest"))

(smithy/sdk/shapes:define-output get-position-response common-lisp:nil
                                 ((position :target-type position-coordinate
                                   :member-name "Position")
                                  (accuracy :target-type accuracy :member-name
                                   "Accuracy")
                                  (solver-type :target-type
                                   position-solver-type :member-name
                                   "SolverType")
                                  (solver-provider :target-type
                                   position-solver-provider :member-name
                                   "SolverProvider")
                                  (solver-version :target-type
                                   position-solver-version :member-name
                                   "SolverVersion")
                                  (timestamp :target-type isodate-time-string
                                   :member-name "Timestamp"))
                                 (:shape-name "GetPositionResponse"))

(smithy/sdk/shapes:define-input get-resource-event-configuration-request
                                common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (identifier-type :target-type identifier-type
                                  :required common-lisp:t :member-name
                                  "IdentifierType" :http-query
                                  "identifierType")
                                 (partner-type :target-type
                                  event-notification-partner-type :member-name
                                  "PartnerType" :http-query "partnerType"))
                                (:shape-name
                                 "GetResourceEventConfigurationRequest"))

(smithy/sdk/shapes:define-output get-resource-event-configuration-response
                                 common-lisp:nil
                                 ((device-registration-state :target-type
                                   device-registration-state-event-configuration
                                   :member-name "DeviceRegistrationState")
                                  (proximity :target-type
                                   proximity-event-configuration :member-name
                                   "Proximity")
                                  (join :target-type join-event-configuration
                                   :member-name "Join")
                                  (connection-status :target-type
                                   connection-status-event-configuration
                                   :member-name "ConnectionStatus")
                                  (message-delivery-status :target-type
                                   message-delivery-status-event-configuration
                                   :member-name "MessageDeliveryStatus"))
                                 (:shape-name
                                  "GetResourceEventConfigurationResponse"))

(smithy/sdk/shapes:define-input get-resource-log-level-request common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType" :http-query "resourceType"))
                                (:shape-name "GetResourceLogLevelRequest"))

(smithy/sdk/shapes:define-output get-resource-log-level-response
                                 common-lisp:nil
                                 ((log-level :target-type log-level
                                   :member-name "LogLevel"))
                                 (:shape-name "GetResourceLogLevelResponse"))

(smithy/sdk/shapes:define-input get-resource-position-request common-lisp:nil
                                ((resource-identifier :target-type
                                  position-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type
                                  position-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType"))
                                (:shape-name "GetResourcePositionRequest"))

(smithy/sdk/shapes:define-output get-resource-position-response common-lisp:nil
                                 ((geo-json-payload :target-type
                                   geo-json-payload :member-name
                                   "GeoJsonPayload" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetResourcePositionResponse"))

(smithy/sdk/shapes:define-input get-service-endpoint-request common-lisp:nil
                                ((service-type :target-type
                                  wireless-gateway-service-type :member-name
                                  "ServiceType" :http-query "serviceType"))
                                (:shape-name "GetServiceEndpointRequest"))

(smithy/sdk/shapes:define-output get-service-endpoint-response common-lisp:nil
                                 ((service-type :target-type
                                   wireless-gateway-service-type :member-name
                                   "ServiceType")
                                  (service-endpoint :target-type end-point
                                   :member-name "ServiceEndpoint")
                                  (server-trust :target-type certificate-pem
                                   :member-name "ServerTrust"))
                                 (:shape-name "GetServiceEndpointResponse"))

(smithy/sdk/shapes:define-input get-service-profile-request common-lisp:nil
                                ((id :target-type service-profile-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetServiceProfileRequest"))

(smithy/sdk/shapes:define-output get-service-profile-response common-lisp:nil
                                 ((arn :target-type service-profile-arn
                                   :member-name "Arn")
                                  (name :target-type service-profile-name
                                   :member-name "Name")
                                  (id :target-type service-profile-id
                                   :member-name "Id")
                                  (lo-ra-wan :target-type
                                   lo-ra-wanget-service-profile-info
                                   :member-name "LoRaWAN"))
                                 (:shape-name "GetServiceProfileResponse"))

(smithy/sdk/shapes:define-input get-wireless-device-import-task-request
                                common-lisp:nil
                                ((id :target-type import-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetWirelessDeviceImportTaskRequest"))

(smithy/sdk/shapes:define-output get-wireless-device-import-task-response
                                 common-lisp:nil
                                 ((id :target-type import-task-id :member-name
                                   "Id")
                                  (arn :target-type import-task-arn
                                   :member-name "Arn")
                                  (destination-name :target-type
                                   destination-name :member-name
                                   "DestinationName")
                                  (sidewalk :target-type
                                   sidewalk-get-start-import-info :member-name
                                   "Sidewalk")
                                  (creation-time :target-type creation-time
                                   :member-name "CreationTime")
                                  (status :target-type import-task-status
                                   :member-name "Status")
                                  (status-reason :target-type status-reason
                                   :member-name "StatusReason")
                                  (initialized-imported-device-count
                                   :target-type imported-wireless-device-count
                                   :member-name
                                   "InitializedImportedDeviceCount")
                                  (pending-imported-device-count :target-type
                                   imported-wireless-device-count :member-name
                                   "PendingImportedDeviceCount")
                                  (onboarded-imported-device-count :target-type
                                   imported-wireless-device-count :member-name
                                   "OnboardedImportedDeviceCount")
                                  (failed-imported-device-count :target-type
                                   imported-wireless-device-count :member-name
                                   "FailedImportedDeviceCount"))
                                 (:shape-name
                                  "GetWirelessDeviceImportTaskResponse"))

(smithy/sdk/shapes:define-input get-wireless-device-request common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (identifier-type :target-type
                                  wireless-device-id-type :required
                                  common-lisp:t :member-name "IdentifierType"
                                  :http-query "identifierType"))
                                (:shape-name "GetWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output get-wireless-device-response common-lisp:nil
                                 ((type :target-type wireless-device-type
                                   :member-name "Type")
                                  (name :target-type wireless-device-name
                                   :member-name "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (destination-name :target-type
                                   destination-name :member-name
                                   "DestinationName")
                                  (id :target-type wireless-device-id
                                   :member-name "Id")
                                  (arn :target-type wireless-device-arn
                                   :member-name "Arn")
                                  (thing-name :target-type thing-name
                                   :member-name "ThingName")
                                  (thing-arn :target-type thing-arn
                                   :member-name "ThingArn")
                                  (lo-ra-wan :target-type lo-ra-wandevice
                                   :member-name "LoRaWAN")
                                  (sidewalk :target-type sidewalk-device
                                   :member-name "Sidewalk")
                                  (positioning :target-type
                                   positioning-config-status :member-name
                                   "Positioning"))
                                 (:shape-name "GetWirelessDeviceResponse"))

(smithy/sdk/shapes:define-input get-wireless-device-statistics-request
                                common-lisp:nil
                                ((wireless-device-id :target-type
                                  wireless-device-id :required common-lisp:t
                                  :member-name "WirelessDeviceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetWirelessDeviceStatisticsRequest"))

(smithy/sdk/shapes:define-output get-wireless-device-statistics-response
                                 common-lisp:nil
                                 ((wireless-device-id :target-type
                                   wireless-device-id :member-name
                                   "WirelessDeviceId")
                                  (last-uplink-received-at :target-type
                                   isodate-time-string :member-name
                                   "LastUplinkReceivedAt")
                                  (lo-ra-wan :target-type
                                   lo-ra-wandevice-metadata :member-name
                                   "LoRaWAN")
                                  (sidewalk :target-type
                                   sidewalk-device-metadata :member-name
                                   "Sidewalk"))
                                 (:shape-name
                                  "GetWirelessDeviceStatisticsResponse"))

(smithy/sdk/shapes:define-input get-wireless-gateway-certificate-request
                                common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetWirelessGatewayCertificateRequest"))

(smithy/sdk/shapes:define-output get-wireless-gateway-certificate-response
                                 common-lisp:nil
                                 ((iot-certificate-id :target-type
                                   iot-certificate-id :member-name
                                   "IotCertificateId")
                                  (lo-ra-wannetwork-server-certificate-id
                                   :target-type iot-certificate-id :member-name
                                   "LoRaWANNetworkServerCertificateId"))
                                 (:shape-name
                                  "GetWirelessGatewayCertificateResponse"))

(smithy/sdk/shapes:define-input
 get-wireless-gateway-firmware-information-request common-lisp:nil
 ((id :target-type wireless-gateway-id :required common-lisp:t :member-name
   "Id" :http-label common-lisp:t))
 (:shape-name "GetWirelessGatewayFirmwareInformationRequest"))

(smithy/sdk/shapes:define-output
 get-wireless-gateway-firmware-information-response common-lisp:nil
 ((lo-ra-wan :target-type lo-ra-wangateway-current-version :member-name
   "LoRaWAN"))
 (:shape-name "GetWirelessGatewayFirmwareInformationResponse"))

(smithy/sdk/shapes:define-input get-wireless-gateway-request common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (identifier-type :target-type
                                  wireless-gateway-id-type :required
                                  common-lisp:t :member-name "IdentifierType"
                                  :http-query "identifierType"))
                                (:shape-name "GetWirelessGatewayRequest"))

(smithy/sdk/shapes:define-output get-wireless-gateway-response common-lisp:nil
                                 ((name :target-type wireless-gateway-name
                                   :member-name "Name")
                                  (id :target-type wireless-gateway-id
                                   :member-name "Id")
                                  (description :target-type description
                                   :member-name "Description")
                                  (lo-ra-wan :target-type lo-ra-wangateway
                                   :member-name "LoRaWAN")
                                  (arn :target-type wireless-gateway-arn
                                   :member-name "Arn")
                                  (thing-name :target-type thing-name
                                   :member-name "ThingName")
                                  (thing-arn :target-type thing-arn
                                   :member-name "ThingArn"))
                                 (:shape-name "GetWirelessGatewayResponse"))

(smithy/sdk/shapes:define-input get-wireless-gateway-statistics-request
                                common-lisp:nil
                                ((wireless-gateway-id :target-type
                                  wireless-gateway-id :required common-lisp:t
                                  :member-name "WirelessGatewayId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetWirelessGatewayStatisticsRequest"))

(smithy/sdk/shapes:define-output get-wireless-gateway-statistics-response
                                 common-lisp:nil
                                 ((wireless-gateway-id :target-type
                                   wireless-gateway-id :member-name
                                   "WirelessGatewayId")
                                  (last-uplink-received-at :target-type
                                   isodate-time-string :member-name
                                   "LastUplinkReceivedAt")
                                  (connection-status :target-type
                                   connection-status :member-name
                                   "ConnectionStatus"))
                                 (:shape-name
                                  "GetWirelessGatewayStatisticsResponse"))

(smithy/sdk/shapes:define-input get-wireless-gateway-task-definition-request
                                common-lisp:nil
                                ((id :target-type
                                  wireless-gateway-task-definition-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetWirelessGatewayTaskDefinitionRequest"))

(smithy/sdk/shapes:define-output get-wireless-gateway-task-definition-response
                                 common-lisp:nil
                                 ((auto-create-tasks :target-type
                                   auto-create-tasks :member-name
                                   "AutoCreateTasks")
                                  (name :target-type wireless-gateway-task-name
                                   :member-name "Name")
                                  (update :target-type
                                   update-wireless-gateway-task-create
                                   :member-name "Update")
                                  (arn :target-type
                                   wireless-gateway-task-definition-arn
                                   :member-name "Arn"))
                                 (:shape-name
                                  "GetWirelessGatewayTaskDefinitionResponse"))

(smithy/sdk/shapes:define-input get-wireless-gateway-task-request
                                common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetWirelessGatewayTaskRequest"))

(smithy/sdk/shapes:define-output get-wireless-gateway-task-response
                                 common-lisp:nil
                                 ((wireless-gateway-id :target-type
                                   wireless-gateway-id :member-name
                                   "WirelessGatewayId")
                                  (wireless-gateway-task-definition-id
                                   :target-type
                                   wireless-gateway-task-definition-id
                                   :member-name
                                   "WirelessGatewayTaskDefinitionId")
                                  (last-uplink-received-at :target-type
                                   isodate-time-string :member-name
                                   "LastUplinkReceivedAt")
                                  (task-created-at :target-type
                                   isodate-time-string :member-name
                                   "TaskCreatedAt")
                                  (status :target-type
                                   wireless-gateway-task-status :member-name
                                   "Status"))
                                 (:shape-name "GetWirelessGatewayTaskResponse"))

(smithy/sdk/shapes:define-structure global-identity common-lisp:nil
                                    ((lac :target-type lac :required
                                      common-lisp:t :member-name "Lac")
                                     (geran-cid :target-type geran-cid
                                      :required common-lisp:t :member-name
                                      "GeranCid"))
                                    (:shape-name "GlobalIdentity"))

(smithy/sdk/shapes:define-structure gnss common-lisp:nil
                                    ((payload :target-type gnss-nav :required
                                      common-lisp:t :member-name "Payload")
                                     (capture-time :target-type gpst
                                      :member-name "CaptureTime")
                                     (capture-time-accuracy :target-type
                                      capture-time-accuracy :member-name
                                      "CaptureTimeAccuracy")
                                     (assist-position :target-type
                                      assist-position :member-name
                                      "AssistPosition")
                                     (assist-altitude :target-type coordinate
                                      :member-name "AssistAltitude")
                                     (use2dsolver :target-type use2dsolver
                                      :member-name "Use2DSolver"))
                                    (:shape-name "Gnss"))

(smithy/sdk/shapes:define-type gnss-nav smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list gsm-list :member gsm-obj)

(smithy/sdk/shapes:define-structure gsm-local-id common-lisp:nil
                                    ((bsic :target-type bsic :required
                                      common-lisp:t :member-name "Bsic")
                                     (bcch :target-type bcch :required
                                      common-lisp:t :member-name "Bcch"))
                                    (:shape-name "GsmLocalId"))

(smithy/sdk/shapes:define-list gsm-nmr-list :member gsm-nmr-obj)

(smithy/sdk/shapes:define-structure gsm-nmr-obj common-lisp:nil
                                    ((bsic :target-type bsic :required
                                      common-lisp:t :member-name "Bsic")
                                     (bcch :target-type bcch :required
                                      common-lisp:t :member-name "Bcch")
                                     (rx-level :target-type rx-level
                                      :member-name "RxLevel")
                                     (global-identity :target-type
                                      global-identity :member-name
                                      "GlobalIdentity"))
                                    (:shape-name "GsmNmrObj"))

(smithy/sdk/shapes:define-structure gsm-obj common-lisp:nil
                                    ((mcc :target-type mcc :required
                                      common-lisp:t :member-name "Mcc")
                                     (mnc :target-type mnc :required
                                      common-lisp:t :member-name "Mnc")
                                     (lac :target-type lac :required
                                      common-lisp:t :member-name "Lac")
                                     (geran-cid :target-type geran-cid
                                      :required common-lisp:t :member-name
                                      "GeranCid")
                                     (gsm-local-id :target-type gsm-local-id
                                      :member-name "GsmLocalId")
                                     (gsm-timing-advance :target-type
                                      gsm-timing-advance :member-name
                                      "GsmTimingAdvance")
                                     (rx-level :target-type rx-level
                                      :member-name "RxLevel")
                                     (gsm-nmr :target-type gsm-nmr-list
                                      :member-name "GsmNmr"))
                                    (:shape-name "GsmObj"))

(smithy/sdk/shapes:define-type gsm-timing-advance
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type horizontal-accuracy
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type hr-allowed smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type isodate-time-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum identifier-type
    common-lisp:nil
  (:partner-account-id "PartnerAccountId")
  (:dev-eui "DevEui")
  (:gateway-eui "GatewayEui")
  (:wireless-device-id "WirelessDeviceId")
  (:wireless-gateway-id "WirelessGatewayId"))

(smithy/sdk/shapes:define-type import-task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type import-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum import-task-status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:initialized "INITIALIZED")
  (:pending "PENDING")
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure imported-sidewalk-device common-lisp:nil
                                    ((sidewalk-manufacturing-sn :target-type
                                      sidewalk-manufacturing-sn :member-name
                                      "SidewalkManufacturingSn")
                                     (onboarding-status :target-type
                                      onboard-status :member-name
                                      "OnboardingStatus")
                                     (onboarding-status-reason :target-type
                                      onboard-status-reason :member-name
                                      "OnboardingStatusReason")
                                     (last-update-time :target-type
                                      last-update-time :member-name
                                      "LastUpdateTime"))
                                    (:shape-name "ImportedSidewalkDevice"))

(smithy/sdk/shapes:define-structure imported-wireless-device common-lisp:nil
                                    ((sidewalk :target-type
                                      imported-sidewalk-device :member-name
                                      "Sidewalk"))
                                    (:shape-name "ImportedWirelessDevice"))

(smithy/sdk/shapes:define-type imported-wireless-device-count
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list imported-wireless-device-list :member
                               imported-wireless-device)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type iot-certificate-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ip common-lisp:nil
                                    ((ip-address :target-type ipaddress
                                      :required common-lisp:t :member-name
                                      "IpAddress"))
                                    (:shape-name "Ip"))

(smithy/sdk/shapes:define-type join-eui smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list join-eui-filters :member join-eui-range)

(smithy/sdk/shapes:define-list join-eui-range :member join-eui)

(smithy/sdk/shapes:define-structure join-event-configuration common-lisp:nil
                                    ((lo-ra-wan :target-type
                                      lo-ra-wanjoin-event-notification-configurations
                                      :member-name "LoRaWAN")
                                     (wireless-device-id-event-topic
                                      :target-type
                                      event-notification-topic-status
                                      :member-name
                                      "WirelessDeviceIdEventTopic"))
                                    (:shape-name "JoinEventConfiguration"))

(smithy/sdk/shapes:define-structure join-resource-type-event-configuration
                                    common-lisp:nil
                                    ((lo-ra-wan :target-type
                                      lo-ra-wanjoin-resource-type-event-configuration
                                      :member-name "LoRaWAN"))
                                    (:shape-name
                                     "JoinResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-type lac smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type last-update-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-destinations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDestinationsRequest"))

(smithy/sdk/shapes:define-output list-destinations-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (destination-list :target-type
                                   destination-list :member-name
                                   "DestinationList"))
                                 (:shape-name "ListDestinationsResponse"))

(smithy/sdk/shapes:define-input list-device-profiles-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (device-profile-type :target-type
                                  device-profile-type :member-name
                                  "DeviceProfileType" :http-query
                                  "deviceProfileType"))
                                (:shape-name "ListDeviceProfilesRequest"))

(smithy/sdk/shapes:define-output list-device-profiles-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (device-profile-list :target-type
                                   device-profile-list :member-name
                                   "DeviceProfileList"))
                                 (:shape-name "ListDeviceProfilesResponse"))

(smithy/sdk/shapes:define-input
 list-devices-for-wireless-device-import-task-request common-lisp:nil
 ((id :target-type import-task-id :required common-lisp:t :member-name "Id"
   :http-query "id")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "nextToken")
  (status :target-type onboard-status :member-name "Status" :http-query
   "status"))
 (:shape-name "ListDevicesForWirelessDeviceImportTaskRequest"))

(smithy/sdk/shapes:define-output
 list-devices-for-wireless-device-import-task-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (destination-name :target-type destination-name :member-name
   "DestinationName")
  (imported-wireless-device-list :target-type imported-wireless-device-list
   :member-name "ImportedWirelessDeviceList"))
 (:shape-name "ListDevicesForWirelessDeviceImportTaskResponse"))

(smithy/sdk/shapes:define-input list-event-configurations-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  event-notification-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListEventConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-event-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (event-configurations-list :target-type
                                   event-configurations-list :member-name
                                   "EventConfigurationsList"))
                                 (:shape-name
                                  "ListEventConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-fuota-tasks-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFuotaTasksRequest"))

(smithy/sdk/shapes:define-output list-fuota-tasks-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (fuota-task-list :target-type fuota-task-list
                                   :member-name "FuotaTaskList"))
                                 (:shape-name "ListFuotaTasksResponse"))

(smithy/sdk/shapes:define-input list-multicast-groups-by-fuota-task-request
                                common-lisp:nil
                                ((id :target-type fuota-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListMulticastGroupsByFuotaTaskRequest"))

(smithy/sdk/shapes:define-output list-multicast-groups-by-fuota-task-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (multicast-group-list :target-type
                                   multicast-group-list-by-fuota-task
                                   :member-name "MulticastGroupList"))
                                 (:shape-name
                                  "ListMulticastGroupsByFuotaTaskResponse"))

(smithy/sdk/shapes:define-input list-multicast-groups-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListMulticastGroupsRequest"))

(smithy/sdk/shapes:define-output list-multicast-groups-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (multicast-group-list :target-type
                                   multicast-group-list :member-name
                                   "MulticastGroupList"))
                                 (:shape-name "ListMulticastGroupsResponse"))

(smithy/sdk/shapes:define-input list-network-analyzer-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListNetworkAnalyzerConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-network-analyzer-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (network-analyzer-configuration-list
                                   :target-type
                                   network-analyzer-configuration-list
                                   :member-name
                                   "NetworkAnalyzerConfigurationList"))
                                 (:shape-name
                                  "ListNetworkAnalyzerConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-partner-accounts-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPartnerAccountsRequest"))

(smithy/sdk/shapes:define-output list-partner-accounts-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (sidewalk :target-type sidewalk-account-list
                                   :member-name "Sidewalk"))
                                 (:shape-name "ListPartnerAccountsResponse"))

(smithy/sdk/shapes:define-input list-position-configurations-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  position-resource-type :member-name
                                  "ResourceType" :http-query "resourceType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListPositionConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-position-configurations-response
                                 common-lisp:nil
                                 ((position-configuration-list :target-type
                                   position-configuration-list :member-name
                                   "PositionConfigurationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPositionConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-queued-messages-request common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (wireless-device-type :target-type
                                  wireless-device-type :member-name
                                  "WirelessDeviceType" :http-query
                                  "WirelessDeviceType"))
                                (:shape-name "ListQueuedMessagesRequest"))

(smithy/sdk/shapes:define-output list-queued-messages-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (downlink-queue-messages-list :target-type
                                   downlink-queue-messages-list :member-name
                                   "DownlinkQueueMessagesList"))
                                 (:shape-name "ListQueuedMessagesResponse"))

(smithy/sdk/shapes:define-input list-service-profiles-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListServiceProfilesRequest"))

(smithy/sdk/shapes:define-output list-service-profiles-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (service-profile-list :target-type
                                   service-profile-list :member-name
                                   "ServiceProfileList"))
                                 (:shape-name "ListServiceProfilesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-wireless-device-import-tasks-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListWirelessDeviceImportTasksRequest"))

(smithy/sdk/shapes:define-output list-wireless-device-import-tasks-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (wireless-device-import-task-list
                                   :target-type
                                   wireless-device-import-task-list
                                   :member-name
                                   "WirelessDeviceImportTaskList"))
                                 (:shape-name
                                  "ListWirelessDeviceImportTasksResponse"))

(smithy/sdk/shapes:define-input list-wireless-devices-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (destination-name :target-type
                                  destination-name :member-name
                                  "DestinationName" :http-query
                                  "destinationName")
                                 (device-profile-id :target-type
                                  device-profile-id :member-name
                                  "DeviceProfileId" :http-query
                                  "deviceProfileId")
                                 (service-profile-id :target-type
                                  service-profile-id :member-name
                                  "ServiceProfileId" :http-query
                                  "serviceProfileId")
                                 (wireless-device-type :target-type
                                  wireless-device-type :member-name
                                  "WirelessDeviceType" :http-query
                                  "wirelessDeviceType")
                                 (fuota-task-id :target-type fuota-task-id
                                  :member-name "FuotaTaskId" :http-query
                                  "fuotaTaskId")
                                 (multicast-group-id :target-type
                                  multicast-group-id :member-name
                                  "MulticastGroupId" :http-query
                                  "multicastGroupId"))
                                (:shape-name "ListWirelessDevicesRequest"))

(smithy/sdk/shapes:define-output list-wireless-devices-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (wireless-device-list :target-type
                                   wireless-device-statistics-list :member-name
                                   "WirelessDeviceList"))
                                 (:shape-name "ListWirelessDevicesResponse"))

(smithy/sdk/shapes:define-input list-wireless-gateway-task-definitions-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (task-definition-type :target-type
                                  wireless-gateway-task-definition-type
                                  :member-name "TaskDefinitionType" :http-query
                                  "taskDefinitionType"))
                                (:shape-name
                                 "ListWirelessGatewayTaskDefinitionsRequest"))

(smithy/sdk/shapes:define-output
 list-wireless-gateway-task-definitions-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (task-definitions :target-type wireless-gateway-task-definition-list
   :member-name "TaskDefinitions"))
 (:shape-name "ListWirelessGatewayTaskDefinitionsResponse"))

(smithy/sdk/shapes:define-input list-wireless-gateways-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListWirelessGatewaysRequest"))

(smithy/sdk/shapes:define-output list-wireless-gateways-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (wireless-gateway-list :target-type
                                   wireless-gateway-statistics-list
                                   :member-name "WirelessGatewayList"))
                                 (:shape-name "ListWirelessGatewaysResponse"))

(smithy/sdk/shapes:define-structure
 lo-ra-wanconnection-status-event-notification-configurations common-lisp:nil
 ((gateway-eui-event-topic :target-type event-notification-topic-status
   :member-name "GatewayEuiEventTopic"))
 (:shape-name "LoRaWANConnectionStatusEventNotificationConfigurations"))

(smithy/sdk/shapes:define-structure
 lo-ra-wanconnection-status-resource-type-event-configuration common-lisp:nil
 ((wireless-gateway-event-topic :target-type event-notification-topic-status
   :member-name "WirelessGatewayEventTopic"))
 (:shape-name "LoRaWANConnectionStatusResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-structure lo-ra-wandevice common-lisp:nil
                                    ((dev-eui :target-type dev-eui :member-name
                                      "DevEui")
                                     (device-profile-id :target-type
                                      device-profile-id :member-name
                                      "DeviceProfileId")
                                     (service-profile-id :target-type
                                      service-profile-id :member-name
                                      "ServiceProfileId")
                                     (otaa-v1-1 :target-type otaa-v1-1
                                      :member-name "OtaaV1_1")
                                     (otaa-v1-0-x :target-type otaa-v1-0-x
                                      :member-name "OtaaV1_0_x")
                                     (abp-v1-1 :target-type abp-v1-1
                                      :member-name "AbpV1_1")
                                     (abp-v1-0-x :target-type abp-v1-0-x
                                      :member-name "AbpV1_0_x")
                                     (fports :target-type fports :member-name
                                      "FPorts"))
                                    (:shape-name "LoRaWANDevice"))

(smithy/sdk/shapes:define-structure lo-ra-wandevice-metadata common-lisp:nil
                                    ((dev-eui :target-type dev-eui :member-name
                                      "DevEui")
                                     (fport :target-type integer :member-name
                                      "FPort")
                                     (data-rate :target-type integer
                                      :member-name "DataRate")
                                     (frequency :target-type integer
                                      :member-name "Frequency")
                                     (timestamp :target-type
                                      isodate-time-string :member-name
                                      "Timestamp")
                                     (gateways :target-type
                                      lo-ra-wangateway-metadata-list
                                      :member-name "Gateways")
                                     (public-gateways :target-type
                                      lo-ra-wanpublic-gateway-metadata-list
                                      :member-name "PublicGateways"))
                                    (:shape-name "LoRaWANDeviceMetadata"))

(smithy/sdk/shapes:define-structure lo-ra-wandevice-profile common-lisp:nil
                                    ((supports-class-b :target-type
                                      supports-class-b :member-name
                                      "SupportsClassB")
                                     (class-btimeout :target-type
                                      class-btimeout :member-name
                                      "ClassBTimeout")
                                     (ping-slot-period :target-type
                                      ping-slot-period :member-name
                                      "PingSlotPeriod")
                                     (ping-slot-dr :target-type ping-slot-dr
                                      :member-name "PingSlotDr")
                                     (ping-slot-freq :target-type
                                      ping-slot-freq :member-name
                                      "PingSlotFreq")
                                     (supports-class-c :target-type
                                      supports-class-c :member-name
                                      "SupportsClassC")
                                     (class-ctimeout :target-type
                                      class-ctimeout :member-name
                                      "ClassCTimeout")
                                     (mac-version :target-type mac-version
                                      :member-name "MacVersion")
                                     (reg-params-revision :target-type
                                      reg-params-revision :member-name
                                      "RegParamsRevision")
                                     (rx-delay1 :target-type rx-delay1
                                      :member-name "RxDelay1")
                                     (rx-dr-offset1 :target-type rx-dr-offset1
                                      :member-name "RxDrOffset1")
                                     (rx-data-rate2 :target-type rx-data-rate2
                                      :member-name "RxDataRate2")
                                     (rx-freq2 :target-type rx-freq2
                                      :member-name "RxFreq2")
                                     (factory-preset-freqs-list :target-type
                                      factory-preset-freqs-list :member-name
                                      "FactoryPresetFreqsList")
                                     (max-eirp :target-type max-eirp
                                      :member-name "MaxEirp")
                                     (max-duty-cycle :target-type
                                      max-duty-cycle :member-name
                                      "MaxDutyCycle")
                                     (rf-region :target-type rf-region
                                      :member-name "RfRegion")
                                     (supports-join :target-type supports-join
                                      :member-name "SupportsJoin")
                                     (supports32bit-fcnt :target-type
                                      supports32bit-fcnt :member-name
                                      "Supports32BitFCnt"))
                                    (:shape-name "LoRaWANDeviceProfile"))

(smithy/sdk/shapes:define-structure lo-ra-wanfuota-task common-lisp:nil
                                    ((rf-region :target-type
                                      supported-rf-region :member-name
                                      "RfRegion"))
                                    (:shape-name "LoRaWANFuotaTask"))

(smithy/sdk/shapes:define-structure lo-ra-wanfuota-task-get-info
                                    common-lisp:nil
                                    ((rf-region :target-type rf-region
                                      :member-name "RfRegion")
                                     (start-time :target-type start-time
                                      :member-name "StartTime"))
                                    (:shape-name "LoRaWANFuotaTaskGetInfo"))

(smithy/sdk/shapes:define-structure lo-ra-wangateway common-lisp:nil
                                    ((gateway-eui :target-type gateway-eui
                                      :member-name "GatewayEui")
                                     (rf-region :target-type rf-region
                                      :member-name "RfRegion")
                                     (join-eui-filters :target-type
                                      join-eui-filters :member-name
                                      "JoinEuiFilters")
                                     (net-id-filters :target-type
                                      net-id-filters :member-name
                                      "NetIdFilters")
                                     (sub-bands :target-type sub-bands
                                      :member-name "SubBands")
                                     (beaconing :target-type beaconing
                                      :member-name "Beaconing")
                                     (max-eirp :target-type gateway-max-eirp
                                      :member-name "MaxEirp"))
                                    (:shape-name "LoRaWANGateway"))

(smithy/sdk/shapes:define-structure lo-ra-wangateway-current-version
                                    common-lisp:nil
                                    ((current-version :target-type
                                      lo-ra-wangateway-version :member-name
                                      "CurrentVersion"))
                                    (:shape-name
                                     "LoRaWANGatewayCurrentVersion"))

(smithy/sdk/shapes:define-structure lo-ra-wangateway-metadata common-lisp:nil
                                    ((gateway-eui :target-type gateway-eui
                                      :member-name "GatewayEui")
                                     (snr :target-type double :member-name
                                      "Snr")
                                     (rssi :target-type double :member-name
                                      "Rssi"))
                                    (:shape-name "LoRaWANGatewayMetadata"))

(smithy/sdk/shapes:define-list lo-ra-wangateway-metadata-list :member
                               lo-ra-wangateway-metadata)

(smithy/sdk/shapes:define-structure lo-ra-wangateway-version common-lisp:nil
                                    ((package-version :target-type
                                      package-version :member-name
                                      "PackageVersion")
                                     (model :target-type model :member-name
                                      "Model")
                                     (station :target-type station :member-name
                                      "Station"))
                                    (:shape-name "LoRaWANGatewayVersion"))

(smithy/sdk/shapes:define-structure lo-ra-wanget-service-profile-info
                                    common-lisp:nil
                                    ((ul-rate :target-type ul-rate :member-name
                                      "UlRate")
                                     (ul-bucket-size :target-type
                                      ul-bucket-size :member-name
                                      "UlBucketSize")
                                     (ul-rate-policy :target-type
                                      ul-rate-policy :member-name
                                      "UlRatePolicy")
                                     (dl-rate :target-type dl-rate :member-name
                                      "DlRate")
                                     (dl-bucket-size :target-type
                                      dl-bucket-size :member-name
                                      "DlBucketSize")
                                     (dl-rate-policy :target-type
                                      dl-rate-policy :member-name
                                      "DlRatePolicy")
                                     (add-gw-metadata :target-type
                                      add-gw-metadata :member-name
                                      "AddGwMetadata")
                                     (dev-status-req-freq :target-type
                                      dev-status-req-freq :member-name
                                      "DevStatusReqFreq")
                                     (report-dev-status-battery :target-type
                                      report-dev-status-battery :member-name
                                      "ReportDevStatusBattery")
                                     (report-dev-status-margin :target-type
                                      report-dev-status-margin :member-name
                                      "ReportDevStatusMargin")
                                     (dr-min :target-type dr-min :member-name
                                      "DrMin")
                                     (dr-max :target-type dr-max :member-name
                                      "DrMax")
                                     (channel-mask :target-type channel-mask
                                      :member-name "ChannelMask")
                                     (pr-allowed :target-type pr-allowed
                                      :member-name "PrAllowed")
                                     (hr-allowed :target-type hr-allowed
                                      :member-name "HrAllowed")
                                     (ra-allowed :target-type ra-allowed
                                      :member-name "RaAllowed")
                                     (nwk-geo-loc :target-type nwk-geo-loc
                                      :member-name "NwkGeoLoc")
                                     (target-per :target-type target-per
                                      :member-name "TargetPer")
                                     (min-gw-diversity :target-type
                                      min-gw-diversity :member-name
                                      "MinGwDiversity")
                                     (tx-power-index-min :target-type
                                      tx-power-index-min :member-name
                                      "TxPowerIndexMin")
                                     (tx-power-index-max :target-type
                                      tx-power-index-max :member-name
                                      "TxPowerIndexMax")
                                     (nb-trans-min :target-type nb-trans-min
                                      :member-name "NbTransMin")
                                     (nb-trans-max :target-type nb-trans-max
                                      :member-name "NbTransMax"))
                                    (:shape-name
                                     "LoRaWANGetServiceProfileInfo"))

(smithy/sdk/shapes:define-structure
 lo-ra-wanjoin-event-notification-configurations common-lisp:nil
 ((dev-eui-event-topic :target-type event-notification-topic-status
   :member-name "DevEuiEventTopic"))
 (:shape-name "LoRaWANJoinEventNotificationConfigurations"))

(smithy/sdk/shapes:define-structure
 lo-ra-wanjoin-resource-type-event-configuration common-lisp:nil
 ((wireless-device-event-topic :target-type event-notification-topic-status
   :member-name "WirelessDeviceEventTopic"))
 (:shape-name "LoRaWANJoinResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-structure lo-ra-wanlist-device common-lisp:nil
                                    ((dev-eui :target-type dev-eui :member-name
                                      "DevEui"))
                                    (:shape-name "LoRaWANListDevice"))

(smithy/sdk/shapes:define-structure lo-ra-wanmulticast common-lisp:nil
                                    ((rf-region :target-type
                                      supported-rf-region :member-name
                                      "RfRegion")
                                     (dl-class :target-type dl-class
                                      :member-name "DlClass")
                                     (participating-gateways :target-type
                                      participating-gateways-multicast
                                      :member-name "ParticipatingGateways"))
                                    (:shape-name "LoRaWANMulticast"))

(smithy/sdk/shapes:define-structure lo-ra-wanmulticast-get common-lisp:nil
                                    ((rf-region :target-type
                                      supported-rf-region :member-name
                                      "RfRegion")
                                     (dl-class :target-type dl-class
                                      :member-name "DlClass")
                                     (number-of-devices-requested :target-type
                                      number-of-devices-requested :member-name
                                      "NumberOfDevicesRequested")
                                     (number-of-devices-in-group :target-type
                                      number-of-devices-in-group :member-name
                                      "NumberOfDevicesInGroup")
                                     (participating-gateways :target-type
                                      participating-gateways-multicast
                                      :member-name "ParticipatingGateways"))
                                    (:shape-name "LoRaWANMulticastGet"))

(smithy/sdk/shapes:define-structure lo-ra-wanmulticast-metadata common-lisp:nil
                                    ((fport :target-type fport :member-name
                                      "FPort"))
                                    (:shape-name "LoRaWANMulticastMetadata"))

(smithy/sdk/shapes:define-structure lo-ra-wanmulticast-session common-lisp:nil
                                    ((dl-dr :target-type dl-dr :member-name
                                      "DlDr")
                                     (dl-freq :target-type dl-freq :member-name
                                      "DlFreq")
                                     (session-start-time :target-type
                                      session-start-time-timestamp :member-name
                                      "SessionStartTime")
                                     (session-timeout :target-type
                                      session-timeout :member-name
                                      "SessionTimeout")
                                     (ping-slot-period :target-type
                                      ping-slot-period :member-name
                                      "PingSlotPeriod"))
                                    (:shape-name "LoRaWANMulticastSession"))

(smithy/sdk/shapes:define-structure lo-ra-wanpublic-gateway-metadata
                                    common-lisp:nil
                                    ((provider-net-id :target-type
                                      provider-net-id :member-name
                                      "ProviderNetId")
                                     (id :target-type id :member-name "Id")
                                     (rssi :target-type double :member-name
                                      "Rssi")
                                     (snr :target-type double :member-name
                                      "Snr")
                                     (rf-region :target-type rf-region
                                      :member-name "RfRegion")
                                     (dl-allowed :target-type dl-allowed
                                      :member-name "DlAllowed"))
                                    (:shape-name
                                     "LoRaWANPublicGatewayMetadata"))

(smithy/sdk/shapes:define-list lo-ra-wanpublic-gateway-metadata-list :member
                               lo-ra-wanpublic-gateway-metadata)

(smithy/sdk/shapes:define-structure lo-ra-wansend-data-to-device
                                    common-lisp:nil
                                    ((fport :target-type fport :member-name
                                      "FPort")
                                     (participating-gateways :target-type
                                      participating-gateways :member-name
                                      "ParticipatingGateways"))
                                    (:shape-name "LoRaWANSendDataToDevice"))

(smithy/sdk/shapes:define-structure lo-ra-wanservice-profile common-lisp:nil
                                    ((add-gw-metadata :target-type
                                      add-gw-metadata :member-name
                                      "AddGwMetadata")
                                     (dr-min :target-type dr-min-box
                                      :member-name "DrMin")
                                     (dr-max :target-type dr-max-box
                                      :member-name "DrMax")
                                     (pr-allowed :target-type pr-allowed
                                      :member-name "PrAllowed")
                                     (ra-allowed :target-type ra-allowed
                                      :member-name "RaAllowed")
                                     (tx-power-index-min :target-type
                                      tx-power-index-min :member-name
                                      "TxPowerIndexMin")
                                     (tx-power-index-max :target-type
                                      tx-power-index-max :member-name
                                      "TxPowerIndexMax")
                                     (nb-trans-min :target-type nb-trans-min
                                      :member-name "NbTransMin")
                                     (nb-trans-max :target-type nb-trans-max
                                      :member-name "NbTransMax"))
                                    (:shape-name "LoRaWANServiceProfile"))

(smithy/sdk/shapes:define-structure lo-ra-wanstart-fuota-task common-lisp:nil
                                    ((start-time :target-type start-time
                                      :member-name "StartTime"))
                                    (:shape-name "LoRaWANStartFuotaTask"))

(smithy/sdk/shapes:define-structure lo-ra-wanupdate-device common-lisp:nil
                                    ((device-profile-id :target-type
                                      device-profile-id :member-name
                                      "DeviceProfileId")
                                     (service-profile-id :target-type
                                      service-profile-id :member-name
                                      "ServiceProfileId")
                                     (abp-v1-1 :target-type update-abp-v1-1
                                      :member-name "AbpV1_1")
                                     (abp-v1-0-x :target-type update-abp-v1-0-x
                                      :member-name "AbpV1_0_x")
                                     (fports :target-type update-fports
                                      :member-name "FPorts"))
                                    (:shape-name "LoRaWANUpdateDevice"))

(smithy/sdk/shapes:define-structure lo-ra-wanupdate-gateway-task-create
                                    common-lisp:nil
                                    ((update-signature :target-type
                                      update-signature :member-name
                                      "UpdateSignature")
                                     (sig-key-crc :target-type crc :member-name
                                      "SigKeyCrc")
                                     (current-version :target-type
                                      lo-ra-wangateway-version :member-name
                                      "CurrentVersion")
                                     (update-version :target-type
                                      lo-ra-wangateway-version :member-name
                                      "UpdateVersion"))
                                    (:shape-name
                                     "LoRaWANUpdateGatewayTaskCreate"))

(smithy/sdk/shapes:define-structure lo-ra-wanupdate-gateway-task-entry
                                    common-lisp:nil
                                    ((current-version :target-type
                                      lo-ra-wangateway-version :member-name
                                      "CurrentVersion")
                                     (update-version :target-type
                                      lo-ra-wangateway-version :member-name
                                      "UpdateVersion"))
                                    (:shape-name
                                     "LoRaWANUpdateGatewayTaskEntry"))

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:info "INFO")
  (:error "ERROR")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list lte-list :member lte-obj)

(smithy/sdk/shapes:define-structure lte-local-id common-lisp:nil
                                    ((pci :target-type pci :required
                                      common-lisp:t :member-name "Pci")
                                     (earfcn :target-type earfcn :required
                                      common-lisp:t :member-name "Earfcn"))
                                    (:shape-name "LteLocalId"))

(smithy/sdk/shapes:define-list lte-nmr-list :member lte-nmr-obj)

(smithy/sdk/shapes:define-structure lte-nmr-obj common-lisp:nil
                                    ((pci :target-type pci :required
                                      common-lisp:t :member-name "Pci")
                                     (earfcn :target-type earfcn :required
                                      common-lisp:t :member-name "Earfcn")
                                     (eutran-cid :target-type eutran-cid
                                      :member-name "EutranCid")
                                     (rsrp :target-type rsrp :member-name
                                      "Rsrp")
                                     (rsrq :target-type rsrq :member-name
                                      "Rsrq"))
                                    (:shape-name "LteNmrObj"))

(smithy/sdk/shapes:define-structure lte-obj common-lisp:nil
                                    ((mcc :target-type mcc :required
                                      common-lisp:t :member-name "Mcc")
                                     (mnc :target-type mnc :required
                                      common-lisp:t :member-name "Mnc")
                                     (eutran-cid :target-type eutran-cid
                                      :required common-lisp:t :member-name
                                      "EutranCid")
                                     (tac :target-type tac :member-name "Tac")
                                     (lte-local-id :target-type lte-local-id
                                      :member-name "LteLocalId")
                                     (lte-timing-advance :target-type
                                      lte-timing-advance :member-name
                                      "LteTimingAdvance")
                                     (rsrp :target-type rsrp :member-name
                                      "Rsrp")
                                     (rsrq :target-type rsrq :member-name
                                      "Rsrq")
                                     (nr-capable :target-type nrcapable
                                      :member-name "NrCapable")
                                     (lte-nmr :target-type lte-nmr-list
                                      :member-name "LteNmr"))
                                    (:shape-name "LteObj"))

(smithy/sdk/shapes:define-type lte-timing-advance
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mcc smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mnc smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mac-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mac-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type max-allowed-signature
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-duty-cycle smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-eirp smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mc-group-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-delivery-status-event-configuration
                                    common-lisp:nil
                                    ((sidewalk :target-type
                                      sidewalk-event-notification-configurations
                                      :member-name "Sidewalk")
                                     (wireless-device-id-event-topic
                                      :target-type
                                      event-notification-topic-status
                                      :member-name
                                      "WirelessDeviceIdEventTopic"))
                                    (:shape-name
                                     "MessageDeliveryStatusEventConfiguration"))

(smithy/sdk/shapes:define-structure
 message-delivery-status-resource-type-event-configuration common-lisp:nil
 ((sidewalk :target-type sidewalk-resource-type-event-configuration
   :member-name "Sidewalk"))
 (:shape-name "MessageDeliveryStatusResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum message-type
    common-lisp:nil
  (:custom-command-id-notify "CUSTOM_COMMAND_ID_NOTIFY")
  (:custom-command-id-get "CUSTOM_COMMAND_ID_GET")
  (:custom-command-id-set "CUSTOM_COMMAND_ID_SET")
  (:custom-command-id-resp "CUSTOM_COMMAND_ID_RESP"))

(smithy/sdk/shapes:define-enum metric-name
    common-lisp:nil
  (:device-rssi "DeviceRSSI")
  (:device-snr "DeviceSNR")
  (:device-roaming-rssi "DeviceRoamingRSSI")
  (:device-roaming-snr "DeviceRoamingSNR")
  (:device-uplink-count "DeviceUplinkCount")
  (:device-downlink-count "DeviceDownlinkCount")
  (:device-uplink-lost-count "DeviceUplinkLostCount")
  (:device-uplink-lost-rate "DeviceUplinkLostRate")
  (:device-join-request-count "DeviceJoinRequestCount")
  (:device-join-accept-count "DeviceJoinAcceptCount")
  (:device-roaming-uplink-count "DeviceRoamingUplinkCount")
  (:device-roaming-downlink-count "DeviceRoamingDownlinkCount")
  (:gateway-up-time "GatewayUpTime")
  (:gateway-down-time "GatewayDownTime")
  (:gateway-rssi "GatewayRSSI")
  (:gateway-snr "GatewaySNR")
  (:gateway-uplink-count "GatewayUplinkCount")
  (:gateway-downlink-count "GatewayDownlinkCount")
  (:gateway-join-request-count "GatewayJoinRequestCount")
  (:gateway-join-accept-count "GatewayJoinAcceptCount")
  (:aws-account-uplink-count "AwsAccountUplinkCount")
  (:aws-account-downlink-count "AwsAccountDownlinkCount")
  (:aws-account-uplink-lost-count "AwsAccountUplinkLostCount")
  (:aws-account-uplink-lost-rate "AwsAccountUplinkLostRate")
  (:aws-account-join-request-count "AwsAccountJoinRequestCount")
  (:aws-account-join-accept-count "AwsAccountJoinAcceptCount")
  (:aws-account-roaming-uplink-count "AwsAccountRoamingUplinkCount")
  (:aws-account-roaming-downlink-count "AwsAccountRoamingDownlinkCount")
  (:aws-account-device-count "AwsAccountDeviceCount")
  (:aws-account-gateway-count "AwsAccountGatewayCount")
  (:aws-account-active-device-count "AwsAccountActiveDeviceCount")
  (:aws-account-active-gateway-count "AwsAccountActiveGatewayCount"))

(smithy/sdk/shapes:define-type metric-query-end-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type metric-query-error
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-query-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type metric-query-start-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum metric-query-status
    common-lisp:nil
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type metric-query-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list metric-query-timestamps :member
                               metric-query-timestamp)

(smithy/sdk/shapes:define-structure metric-query-value common-lisp:nil
                                    ((min :target-type min :member-name "Min")
                                     (max :target-type max :member-name "Max")
                                     (sum :target-type sum :member-name "Sum")
                                     (avg :target-type avg :member-name "Avg")
                                     (std :target-type std :member-name "Std")
                                     (p90 :target-type p90 :member-name "P90"))
                                    (:shape-name "MetricQueryValue"))

(smithy/sdk/shapes:define-list metric-query-values :member metric-query-value)

(smithy/sdk/shapes:define-type metric-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type min smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type min-gw-diversity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type multicast-device-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum multicast-frame-info
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure multicast-group common-lisp:nil
                                    ((id :target-type multicast-group-id
                                      :member-name "Id")
                                     (arn :target-type multicast-group-arn
                                      :member-name "Arn")
                                     (name :target-type multicast-group-name
                                      :member-name "Name"))
                                    (:shape-name "MulticastGroup"))

(smithy/sdk/shapes:define-type multicast-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure multicast-group-by-fuota-task
                                    common-lisp:nil
                                    ((id :target-type multicast-group-id
                                      :member-name "Id"))
                                    (:shape-name "MulticastGroupByFuotaTask"))

(smithy/sdk/shapes:define-type multicast-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list multicast-group-list :member multicast-group)

(smithy/sdk/shapes:define-list multicast-group-list-by-fuota-task :member
                               multicast-group-by-fuota-task)

(smithy/sdk/shapes:define-type multicast-group-message-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type multicast-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type multicast-group-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure multicast-wireless-metadata common-lisp:nil
                                    ((lo-ra-wan :target-type
                                      lo-ra-wanmulticast-metadata :member-name
                                      "LoRaWAN"))
                                    (:shape-name "MulticastWirelessMetadata"))

(smithy/sdk/shapes:define-type nrcapable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type nb-trans-max smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nb-trans-min smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type net-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list net-id-filters :member net-id)

(smithy/sdk/shapes:define-type network-analyzer-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-analyzer-configuration-list :member
                               network-analyzer-configurations)

(smithy/sdk/shapes:define-type network-analyzer-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-analyzer-configurations
                                    common-lisp:nil
                                    ((arn :target-type
                                      network-analyzer-configuration-arn
                                      :member-name "Arn")
                                     (name :target-type
                                      network-analyzer-configuration-name
                                      :member-name "Name"))
                                    (:shape-name
                                     "NetworkAnalyzerConfigurations"))

(smithy/sdk/shapes:define-list network-analyzer-multicast-group-list :member
                               multicast-group-id)

(smithy/sdk/shapes:define-type network-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-of-devices-in-group
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-devices-requested
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nwk-geo-loc smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type nwk-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nwk-senc-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nwk-skey smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum onboard-status
    common-lisp:nil
  (:initialized "INITIALIZED")
  (:pending "PENDING")
  (:onboarded "ONBOARDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type onboard-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure otaa-v1-0-x common-lisp:nil
                                    ((app-key :target-type app-key :member-name
                                      "AppKey")
                                     (app-eui :target-type app-eui :member-name
                                      "AppEui")
                                     (join-eui :target-type join-eui
                                      :member-name "JoinEui")
                                     (gen-app-key :target-type gen-app-key
                                      :member-name "GenAppKey"))
                                    (:shape-name "OtaaV1_0_x"))

(smithy/sdk/shapes:define-structure otaa-v1-1 common-lisp:nil
                                    ((app-key :target-type app-key :member-name
                                      "AppKey")
                                     (nwk-key :target-type nwk-key :member-name
                                      "NwkKey")
                                     (join-eui :target-type join-eui
                                      :member-name "JoinEui"))
                                    (:shape-name "OtaaV1_1"))

(smithy/sdk/shapes:define-type p90 smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type pci smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type psc smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type package-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure participating-gateways common-lisp:nil
                                    ((downlink-mode :target-type downlink-mode
                                      :required common-lisp:t :member-name
                                      "DownlinkMode")
                                     (gateway-list :target-type gateway-list
                                      :required common-lisp:t :member-name
                                      "GatewayList")
                                     (transmission-interval :target-type
                                      transmission-interval :required
                                      common-lisp:t :member-name
                                      "TransmissionInterval"))
                                    (:shape-name "ParticipatingGateways"))

(smithy/sdk/shapes:define-structure participating-gateways-multicast
                                    common-lisp:nil
                                    ((gateway-list :target-type
                                      gateway-list-multicast :member-name
                                      "GatewayList")
                                     (transmission-interval :target-type
                                      transmission-interval-multicast
                                      :member-name "TransmissionInterval"))
                                    (:shape-name
                                     "ParticipatingGatewaysMulticast"))

(smithy/sdk/shapes:define-type partner-account-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partner-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum partner-type
    common-lisp:nil
  (:sidewalk "Sidewalk"))

(smithy/sdk/shapes:define-type path-loss smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type payload-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pilot-power smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ping-slot-dr smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ping-slot-freq smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ping-slot-period smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pn-offset smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum position-configuration-fec
    common-lisp:nil
  (:rose "ROSE")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure position-configuration-item common-lisp:nil
                                    ((resource-identifier :target-type
                                      position-resource-identifier :member-name
                                      "ResourceIdentifier")
                                     (resource-type :target-type
                                      position-resource-type :member-name
                                      "ResourceType")
                                     (solvers :target-type
                                      position-solver-details :member-name
                                      "Solvers")
                                     (destination :target-type destination-name
                                      :member-name "Destination"))
                                    (:shape-name "PositionConfigurationItem"))

(smithy/sdk/shapes:define-list position-configuration-list :member
                               position-configuration-item)

(smithy/sdk/shapes:define-enum position-configuration-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list position-coordinate :member
                               position-coordinate-value)

(smithy/sdk/shapes:define-type position-coordinate-value
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type position-resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum position-resource-type
    common-lisp:nil
  (:wireless-device "WirelessDevice")
  (:wireless-gateway "WirelessGateway"))

(smithy/sdk/shapes:define-structure position-solver-configurations
                                    common-lisp:nil
                                    ((semtech-gnss :target-type
                                      semtech-gnss-configuration :member-name
                                      "SemtechGnss"))
                                    (:shape-name
                                     "PositionSolverConfigurations"))

(smithy/sdk/shapes:define-structure position-solver-details common-lisp:nil
                                    ((semtech-gnss :target-type
                                      semtech-gnss-detail :member-name
                                      "SemtechGnss"))
                                    (:shape-name "PositionSolverDetails"))

(smithy/sdk/shapes:define-enum position-solver-provider
    common-lisp:nil
  (:semtech "Semtech"))

(smithy/sdk/shapes:define-enum position-solver-type
    common-lisp:nil
  (:gnss "GNSS"))

(smithy/sdk/shapes:define-type position-solver-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure positioning common-lisp:nil
                                    ((clock-sync :target-type fport
                                      :member-name "ClockSync")
                                     (stream :target-type fport :member-name
                                      "Stream")
                                     (gnss :target-type fport :member-name
                                      "Gnss"))
                                    (:shape-name "Positioning"))

(smithy/sdk/shapes:define-enum positioning-config-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type pr-allowed smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type preset-freq smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list private-keys-list :member certificate-list)

(smithy/sdk/shapes:define-type provider-net-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure proximity-event-configuration
                                    common-lisp:nil
                                    ((sidewalk :target-type
                                      sidewalk-event-notification-configurations
                                      :member-name "Sidewalk")
                                     (wireless-device-id-event-topic
                                      :target-type
                                      event-notification-topic-status
                                      :member-name
                                      "WirelessDeviceIdEventTopic"))
                                    (:shape-name "ProximityEventConfiguration"))

(smithy/sdk/shapes:define-structure proximity-resource-type-event-configuration
                                    common-lisp:nil
                                    ((sidewalk :target-type
                                      sidewalk-resource-type-event-configuration
                                      :member-name "Sidewalk"))
                                    (:shape-name
                                     "ProximityResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-input put-position-configuration-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  position-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type
                                  position-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType")
                                 (solvers :target-type
                                  position-solver-configurations :member-name
                                  "Solvers")
                                 (destination :target-type destination-name
                                  :member-name "Destination"))
                                (:shape-name "PutPositionConfigurationRequest"))

(smithy/sdk/shapes:define-output put-position-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutPositionConfigurationResponse"))

(smithy/sdk/shapes:define-input put-resource-log-level-request common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType" :http-query "resourceType")
                                 (log-level :target-type log-level :required
                                  common-lisp:t :member-name "LogLevel"))
                                (:shape-name "PutResourceLogLevelRequest"))

(smithy/sdk/shapes:define-output put-resource-log-level-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutResourceLogLevelResponse"))

(smithy/sdk/shapes:define-type qualification-status
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rscp smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rsrp smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rsrq smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type rss smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ra-allowed smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type redundancy-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type reg-params-revision
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registration-zone
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type report-dev-status-battery
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type report-dev-status-margin
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input reset-all-resource-log-levels-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ResetAllResourceLogLevelsRequest"))

(smithy/sdk/shapes:define-output reset-all-resource-log-levels-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ResetAllResourceLogLevelsResponse"))

(smithy/sdk/shapes:define-input reset-resource-log-level-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  resource-identifier :required common-lisp:t
                                  :member-name "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "ResourceType" :http-query "resourceType"))
                                (:shape-name "ResetResourceLogLevelRequest"))

(smithy/sdk/shapes:define-output reset-resource-log-level-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ResetResourceLogLevelResponse"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (resource-id :target-type resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rf-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rx-data-rate2 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rx-delay1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rx-dr-offset1 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rx-freq2 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rx-level smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type snwk-sint-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure semtech-gnss-configuration common-lisp:nil
                                    ((status :target-type
                                      position-configuration-status :required
                                      common-lisp:t :member-name "Status")
                                     (fec :target-type
                                      position-configuration-fec :required
                                      common-lisp:t :member-name "Fec"))
                                    (:shape-name "SemtechGnssConfiguration"))

(smithy/sdk/shapes:define-structure semtech-gnss-detail common-lisp:nil
                                    ((provider :target-type
                                      position-solver-provider :member-name
                                      "Provider")
                                     (type :target-type position-solver-type
                                      :member-name "Type")
                                     (status :target-type
                                      position-configuration-status
                                      :member-name "Status")
                                     (fec :target-type
                                      position-configuration-fec :member-name
                                      "Fec"))
                                    (:shape-name "SemtechGnssDetail"))

(smithy/sdk/shapes:define-input send-data-to-multicast-group-request
                                common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (payload-data :target-type payload-data
                                  :required common-lisp:t :member-name
                                  "PayloadData")
                                 (wireless-metadata :target-type
                                  multicast-wireless-metadata :required
                                  common-lisp:t :member-name
                                  "WirelessMetadata"))
                                (:shape-name "SendDataToMulticastGroupRequest"))

(smithy/sdk/shapes:define-output send-data-to-multicast-group-response
                                 common-lisp:nil
                                 ((message-id :target-type
                                   multicast-group-message-id :member-name
                                   "MessageId"))
                                 (:shape-name
                                  "SendDataToMulticastGroupResponse"))

(smithy/sdk/shapes:define-input send-data-to-wireless-device-request
                                common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (transmit-mode :target-type transmit-mode
                                  :required common-lisp:t :member-name
                                  "TransmitMode")
                                 (payload-data :target-type payload-data
                                  :required common-lisp:t :member-name
                                  "PayloadData")
                                 (wireless-metadata :target-type
                                  wireless-metadata :member-name
                                  "WirelessMetadata"))
                                (:shape-name "SendDataToWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output send-data-to-wireless-device-response
                                 common-lisp:nil
                                 ((message-id :target-type message-id
                                   :member-name "MessageId"))
                                 (:shape-name
                                  "SendDataToWirelessDeviceResponse"))

(smithy/sdk/shapes:define-type seq smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure service-profile common-lisp:nil
                                    ((arn :target-type service-profile-arn
                                      :member-name "Arn")
                                     (name :target-type service-profile-name
                                      :member-name "Name")
                                     (id :target-type service-profile-id
                                      :member-name "Id"))
                                    (:shape-name "ServiceProfile"))

(smithy/sdk/shapes:define-type service-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-profile-list :member service-profile)

(smithy/sdk/shapes:define-type service-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-keys-abp-v1-0-x common-lisp:nil
                                    ((nwk-skey :target-type nwk-skey
                                      :member-name "NwkSKey")
                                     (app-skey :target-type app-skey
                                      :member-name "AppSKey"))
                                    (:shape-name "SessionKeysAbpV1_0_x"))

(smithy/sdk/shapes:define-structure session-keys-abp-v1-1 common-lisp:nil
                                    ((fnwk-sint-key :target-type fnwk-sint-key
                                      :member-name "FNwkSIntKey")
                                     (snwk-sint-key :target-type snwk-sint-key
                                      :member-name "SNwkSIntKey")
                                     (nwk-senc-key :target-type nwk-senc-key
                                      :member-name "NwkSEncKey")
                                     (app-skey :target-type app-skey
                                      :member-name "AppSKey"))
                                    (:shape-name "SessionKeysAbpV1_1"))

(smithy/sdk/shapes:define-type session-start-time-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type session-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure sidewalk-account-info common-lisp:nil
                                    ((amazon-id :target-type amazon-id
                                      :member-name "AmazonId")
                                     (app-server-private-key :target-type
                                      app-server-private-key :member-name
                                      "AppServerPrivateKey"))
                                    (:shape-name "SidewalkAccountInfo"))

(smithy/sdk/shapes:define-structure sidewalk-account-info-with-fingerprint
                                    common-lisp:nil
                                    ((amazon-id :target-type amazon-id
                                      :member-name "AmazonId")
                                     (fingerprint :target-type fingerprint
                                      :member-name "Fingerprint")
                                     (arn :target-type partner-account-arn
                                      :member-name "Arn"))
                                    (:shape-name
                                     "SidewalkAccountInfoWithFingerprint"))

(smithy/sdk/shapes:define-list sidewalk-account-list :member
                               sidewalk-account-info-with-fingerprint)

(smithy/sdk/shapes:define-structure sidewalk-create-device-profile
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "SidewalkCreateDeviceProfile"))

(smithy/sdk/shapes:define-structure sidewalk-create-wireless-device
                                    common-lisp:nil
                                    ((device-profile-id :target-type
                                      device-profile-id :member-name
                                      "DeviceProfileId"))
                                    (:shape-name
                                     "SidewalkCreateWirelessDevice"))

(smithy/sdk/shapes:define-structure sidewalk-device common-lisp:nil
                                    ((amazon-id :target-type amazon-id
                                      :member-name "AmazonId")
                                     (sidewalk-id :target-type sidewalk-id
                                      :member-name "SidewalkId")
                                     (sidewalk-manufacturing-sn :target-type
                                      sidewalk-manufacturing-sn :member-name
                                      "SidewalkManufacturingSn")
                                     (device-certificates :target-type
                                      device-certificate-list :member-name
                                      "DeviceCertificates")
                                     (private-keys :target-type
                                      private-keys-list :member-name
                                      "PrivateKeys")
                                     (device-profile-id :target-type
                                      device-profile-id :member-name
                                      "DeviceProfileId")
                                     (certificate-id :target-type
                                      dak-certificate-id :member-name
                                      "CertificateId")
                                     (status :target-type
                                      wireless-device-sidewalk-status
                                      :member-name "Status"))
                                    (:shape-name "SidewalkDevice"))

(smithy/sdk/shapes:define-structure sidewalk-device-metadata common-lisp:nil
                                    ((rssi :target-type integer :member-name
                                      "Rssi")
                                     (battery-level :target-type battery-level
                                      :member-name "BatteryLevel")
                                     (event :target-type event :member-name
                                      "Event")
                                     (device-state :target-type device-state
                                      :member-name "DeviceState"))
                                    (:shape-name "SidewalkDeviceMetadata"))

(smithy/sdk/shapes:define-structure sidewalk-event-notification-configurations
                                    common-lisp:nil
                                    ((amazon-id-event-topic :target-type
                                      event-notification-topic-status
                                      :member-name "AmazonIdEventTopic"))
                                    (:shape-name
                                     "SidewalkEventNotificationConfigurations"))

(smithy/sdk/shapes:define-structure sidewalk-get-device-profile common-lisp:nil
                                    ((application-server-public-key
                                      :target-type
                                      application-server-public-key
                                      :member-name
                                      "ApplicationServerPublicKey")
                                     (qualification-status :target-type
                                      qualification-status :member-name
                                      "QualificationStatus")
                                     (dak-certificate-metadata :target-type
                                      dak-certificate-metadata-list
                                      :member-name "DakCertificateMetadata"))
                                    (:shape-name "SidewalkGetDeviceProfile"))

(smithy/sdk/shapes:define-structure sidewalk-get-start-import-info
                                    common-lisp:nil
                                    ((device-creation-file-list :target-type
                                      device-creation-file-list :member-name
                                      "DeviceCreationFileList")
                                     (role :target-type role :member-name
                                      "Role"))
                                    (:shape-name "SidewalkGetStartImportInfo"))

(smithy/sdk/shapes:define-type sidewalk-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sidewalk-list-device common-lisp:nil
                                    ((amazon-id :target-type amazon-id
                                      :member-name "AmazonId")
                                     (sidewalk-id :target-type sidewalk-id
                                      :member-name "SidewalkId")
                                     (sidewalk-manufacturing-sn :target-type
                                      sidewalk-manufacturing-sn :member-name
                                      "SidewalkManufacturingSn")
                                     (device-certificates :target-type
                                      device-certificate-list :member-name
                                      "DeviceCertificates")
                                     (device-profile-id :target-type
                                      device-profile-id :member-name
                                      "DeviceProfileId")
                                     (status :target-type
                                      wireless-device-sidewalk-status
                                      :member-name "Status"))
                                    (:shape-name "SidewalkListDevice"))

(smithy/sdk/shapes:define-type sidewalk-manufacturing-sn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sidewalk-resource-type-event-configuration
                                    common-lisp:nil
                                    ((wireless-device-event-topic :target-type
                                      event-notification-topic-status
                                      :member-name "WirelessDeviceEventTopic"))
                                    (:shape-name
                                     "SidewalkResourceTypeEventConfiguration"))

(smithy/sdk/shapes:define-structure sidewalk-send-data-to-device
                                    common-lisp:nil
                                    ((seq :target-type seq :member-name "Seq")
                                     (message-type :target-type message-type
                                      :member-name "MessageType")
                                     (ack-mode-retry-duration-secs :target-type
                                      ack-mode-retry-duration-secs :member-name
                                      "AckModeRetryDurationSecs"))
                                    (:shape-name "SidewalkSendDataToDevice"))

(smithy/sdk/shapes:define-structure sidewalk-single-start-import-info
                                    common-lisp:nil
                                    ((sidewalk-manufacturing-sn :target-type
                                      sidewalk-manufacturing-sn :member-name
                                      "SidewalkManufacturingSn"))
                                    (:shape-name
                                     "SidewalkSingleStartImportInfo"))

(smithy/sdk/shapes:define-structure sidewalk-start-import-info common-lisp:nil
                                    ((device-creation-file :target-type
                                      device-creation-file :member-name
                                      "DeviceCreationFile")
                                     (role :target-type role :member-name
                                      "Role"))
                                    (:shape-name "SidewalkStartImportInfo"))

(smithy/sdk/shapes:define-structure sidewalk-update-account common-lisp:nil
                                    ((app-server-private-key :target-type
                                      app-server-private-key :member-name
                                      "AppServerPrivateKey"))
                                    (:shape-name "SidewalkUpdateAccount"))

(smithy/sdk/shapes:define-structure sidewalk-update-import-info common-lisp:nil
                                    ((device-creation-file :target-type
                                      device-creation-file :member-name
                                      "DeviceCreationFile"))
                                    (:shape-name "SidewalkUpdateImportInfo"))

(smithy/sdk/shapes:define-enum signing-alg
    common-lisp:nil
  (:ed25519 "Ed25519")
  (:p256r1 "P256r1"))

(smithy/sdk/shapes:define-input
 start-bulk-associate-wireless-device-with-multicast-group-request
 common-lisp:nil
 ((id :target-type multicast-group-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (query-string :target-type query-string :member-name "QueryString")
  (tags :target-type tag-list :member-name "Tags"))
 (:shape-name "StartBulkAssociateWirelessDeviceWithMulticastGroupRequest"))

(smithy/sdk/shapes:define-output
 start-bulk-associate-wireless-device-with-multicast-group-response
 common-lisp:nil common-lisp:nil
 (:shape-name "StartBulkAssociateWirelessDeviceWithMulticastGroupResponse"))

(smithy/sdk/shapes:define-input
 start-bulk-disassociate-wireless-device-from-multicast-group-request
 common-lisp:nil
 ((id :target-type multicast-group-id :required common-lisp:t :member-name "Id"
   :http-label common-lisp:t)
  (query-string :target-type query-string :member-name "QueryString")
  (tags :target-type tag-list :member-name "Tags"))
 (:shape-name "StartBulkDisassociateWirelessDeviceFromMulticastGroupRequest"))

(smithy/sdk/shapes:define-output
 start-bulk-disassociate-wireless-device-from-multicast-group-response
 common-lisp:nil common-lisp:nil
 (:shape-name "StartBulkDisassociateWirelessDeviceFromMulticastGroupResponse"))

(smithy/sdk/shapes:define-input start-fuota-task-request common-lisp:nil
                                ((id :target-type fuota-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (lo-ra-wan :target-type
                                  lo-ra-wanstart-fuota-task :member-name
                                  "LoRaWAN"))
                                (:shape-name "StartFuotaTaskRequest"))

(smithy/sdk/shapes:define-output start-fuota-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartFuotaTaskResponse"))

(smithy/sdk/shapes:define-input start-multicast-group-session-request
                                common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (lo-ra-wan :target-type
                                  lo-ra-wanmulticast-session :required
                                  common-lisp:t :member-name "LoRaWAN"))
                                (:shape-name
                                 "StartMulticastGroupSessionRequest"))

(smithy/sdk/shapes:define-output start-multicast-group-session-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartMulticastGroupSessionResponse"))

(smithy/sdk/shapes:define-input
 start-single-wireless-device-import-task-request common-lisp:nil
 ((destination-name :target-type destination-name :required common-lisp:t
   :member-name "DestinationName")
  (client-request-token :target-type client-request-token :member-name
   "ClientRequestToken")
  (device-name :target-type device-name :member-name "DeviceName")
  (tags :target-type tag-list :member-name "Tags")
  (sidewalk :target-type sidewalk-single-start-import-info :required
   common-lisp:t :member-name "Sidewalk"))
 (:shape-name "StartSingleWirelessDeviceImportTaskRequest"))

(smithy/sdk/shapes:define-output
 start-single-wireless-device-import-task-response common-lisp:nil
 ((id :target-type import-task-id :member-name "Id")
  (arn :target-type import-task-arn :member-name "Arn"))
 (:shape-name "StartSingleWirelessDeviceImportTaskResponse"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input start-wireless-device-import-task-request
                                common-lisp:nil
                                ((destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "DestinationName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (sidewalk :target-type
                                  sidewalk-start-import-info :required
                                  common-lisp:t :member-name "Sidewalk"))
                                (:shape-name
                                 "StartWirelessDeviceImportTaskRequest"))

(smithy/sdk/shapes:define-output start-wireless-device-import-task-response
                                 common-lisp:nil
                                 ((id :target-type import-task-id :member-name
                                   "Id")
                                  (arn :target-type import-task-arn
                                   :member-name "Arn"))
                                 (:shape-name
                                  "StartWirelessDeviceImportTaskResponse"))

(smithy/sdk/shapes:define-type station smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type std smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type sub-band smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list sub-bands :member sub-band)

(smithy/sdk/shapes:define-type sum smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure summary-metric-configuration
                                    common-lisp:nil
                                    ((status :target-type
                                      summary-metric-configuration-status
                                      :member-name "Status"))
                                    (:shape-name "SummaryMetricConfiguration"))

(smithy/sdk/shapes:define-enum summary-metric-configuration-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-list summary-metric-queries :member
                               summary-metric-query)

(smithy/sdk/shapes:define-structure summary-metric-query common-lisp:nil
                                    ((query-id :target-type metric-query-id
                                      :member-name "QueryId")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (aggregation-period :target-type
                                      aggregation-period :member-name
                                      "AggregationPeriod")
                                     (start-timestamp :target-type
                                      metric-query-start-timestamp :member-name
                                      "StartTimestamp")
                                     (end-timestamp :target-type
                                      metric-query-end-timestamp :member-name
                                      "EndTimestamp"))
                                    (:shape-name "SummaryMetricQuery"))

(smithy/sdk/shapes:define-structure summary-metric-query-result common-lisp:nil
                                    ((query-id :target-type metric-query-id
                                      :member-name "QueryId")
                                     (query-status :target-type
                                      metric-query-status :member-name
                                      "QueryStatus")
                                     (error :target-type metric-query-error
                                      :member-name "Error")
                                     (metric-name :target-type metric-name
                                      :member-name "MetricName")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (aggregation-period :target-type
                                      aggregation-period :member-name
                                      "AggregationPeriod")
                                     (start-timestamp :target-type
                                      metric-query-start-timestamp :member-name
                                      "StartTimestamp")
                                     (end-timestamp :target-type
                                      metric-query-end-timestamp :member-name
                                      "EndTimestamp")
                                     (timestamps :target-type
                                      metric-query-timestamps :member-name
                                      "Timestamps")
                                     (values :target-type metric-query-values
                                      :member-name "Values")
                                     (unit :target-type metric-unit
                                      :member-name "Unit"))
                                    (:shape-name "SummaryMetricQueryResult"))

(smithy/sdk/shapes:define-list summary-metric-query-results :member
                               summary-metric-query-result)

(smithy/sdk/shapes:define-enum supported-rf-region
    common-lisp:nil
  (:eu868 "EU868")
  (:us915 "US915")
  (:au915 "AU915")
  (:as923-1 "AS923-1")
  (:as923-2 "AS923-2")
  (:as923-3 "AS923-3")
  (:as923-4 "AS923-4")
  (:eu433 "EU433")
  (:cn470 "CN470")
  (:cn779 "CN779")
  (:ru864 "RU864")
  (:kr920 "KR920")
  (:in865 "IN865"))

(smithy/sdk/shapes:define-type supports32bit-fcnt
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type supports-class-b smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type supports-class-c smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type supports-join smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type system-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type tac smithy/sdk/smithy-types:integer)

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
                                  :member-name "ResourceArn" :http-query
                                  "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-per smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list tdscdma-list :member tdscdma-obj)

(smithy/sdk/shapes:define-structure tdscdma-local-id common-lisp:nil
                                    ((uarfcn :target-type uarfcn :required
                                      common-lisp:t :member-name "Uarfcn")
                                     (cell-params :target-type cell-params
                                      :required common-lisp:t :member-name
                                      "CellParams"))
                                    (:shape-name "TdscdmaLocalId"))

(smithy/sdk/shapes:define-list tdscdma-nmr-list :member tdscdma-nmr-obj)

(smithy/sdk/shapes:define-structure tdscdma-nmr-obj common-lisp:nil
                                    ((uarfcn :target-type uarfcn :required
                                      common-lisp:t :member-name "Uarfcn")
                                     (cell-params :target-type cell-params
                                      :required common-lisp:t :member-name
                                      "CellParams")
                                     (utran-cid :target-type utran-cid
                                      :member-name "UtranCid")
                                     (rscp :target-type rscp :member-name
                                      "Rscp")
                                     (path-loss :target-type path-loss
                                      :member-name "PathLoss"))
                                    (:shape-name "TdscdmaNmrObj"))

(smithy/sdk/shapes:define-structure tdscdma-obj common-lisp:nil
                                    ((mcc :target-type mcc :required
                                      common-lisp:t :member-name "Mcc")
                                     (mnc :target-type mnc :required
                                      common-lisp:t :member-name "Mnc")
                                     (lac :target-type lac :member-name "Lac")
                                     (utran-cid :target-type utran-cid
                                      :required common-lisp:t :member-name
                                      "UtranCid")
                                     (tdscdma-local-id :target-type
                                      tdscdma-local-id :member-name
                                      "TdscdmaLocalId")
                                     (tdscdma-timing-advance :target-type
                                      tdscdma-timing-advance :member-name
                                      "TdscdmaTimingAdvance")
                                     (rscp :target-type rscp :member-name
                                      "Rscp")
                                     (path-loss :target-type path-loss
                                      :member-name "PathLoss")
                                     (tdscdma-nmr :target-type tdscdma-nmr-list
                                      :member-name "TdscdmaNmr"))
                                    (:shape-name "TdscdmaObj"))

(smithy/sdk/shapes:define-type tdscdma-timing-advance
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input test-wireless-device-request common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "TestWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output test-wireless-device-response common-lisp:nil
                                 ((result :target-type result :member-name
                                   "Result"))
                                 (:shape-name "TestWirelessDeviceResponse"))

(smithy/sdk/shapes:define-type thing-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message")
                                 (resource-name :target-type
                                  amazon-resource-name :member-name
                                  "ResourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure trace-content common-lisp:nil
                                    ((wireless-device-frame-info :target-type
                                      wireless-device-frame-info :member-name
                                      "WirelessDeviceFrameInfo")
                                     (log-level :target-type log-level
                                      :member-name "LogLevel")
                                     (multicast-frame-info :target-type
                                      multicast-frame-info :member-name
                                      "MulticastFrameInfo"))
                                    (:shape-name "TraceContent"))

(smithy/sdk/shapes:define-type transmission-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type transmission-interval-multicast
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type transmit-mode smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type tx-power-index-max
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type tx-power-index-min
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uarfcn smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uarfcndl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ul-bucket-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ul-rate smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ul-rate-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-abp-v1-0-x common-lisp:nil
                                    ((fcnt-start :target-type fcnt-start
                                      :member-name "FCntStart"))
                                    (:shape-name "UpdateAbpV1_0_x"))

(smithy/sdk/shapes:define-structure update-abp-v1-1 common-lisp:nil
                                    ((fcnt-start :target-type fcnt-start
                                      :member-name "FCntStart"))
                                    (:shape-name "UpdateAbpV1_1"))

(smithy/sdk/shapes:define-type update-data-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (expression-type :target-type expression-type
                                  :member-name "ExpressionType")
                                 (expression :target-type expression
                                  :member-name "Expression")
                                 (description :target-type description
                                  :member-name "Description")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleArn"))
                                (:shape-name "UpdateDestinationRequest"))

(smithy/sdk/shapes:define-output update-destination-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDestinationResponse"))

(smithy/sdk/shapes:define-input
 update-event-configuration-by-resource-types-request common-lisp:nil
 ((device-registration-state :target-type
   device-registration-state-resource-type-event-configuration :member-name
   "DeviceRegistrationState")
  (proximity :target-type proximity-resource-type-event-configuration
   :member-name "Proximity")
  (join :target-type join-resource-type-event-configuration :member-name
   "Join")
  (connection-status :target-type
   connection-status-resource-type-event-configuration :member-name
   "ConnectionStatus")
  (message-delivery-status :target-type
   message-delivery-status-resource-type-event-configuration :member-name
   "MessageDeliveryStatus"))
 (:shape-name "UpdateEventConfigurationByResourceTypesRequest"))

(smithy/sdk/shapes:define-output
 update-event-configuration-by-resource-types-response common-lisp:nil
 common-lisp:nil
 (:shape-name "UpdateEventConfigurationByResourceTypesResponse"))

(smithy/sdk/shapes:define-structure update-fports common-lisp:nil
                                    ((positioning :target-type positioning
                                      :member-name "Positioning")
                                     (applications :target-type applications
                                      :member-name "Applications"))
                                    (:shape-name "UpdateFPorts"))

(smithy/sdk/shapes:define-input update-fuota-task-request common-lisp:nil
                                ((id :target-type fuota-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (name :target-type fuota-task-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (lo-ra-wan :target-type lo-ra-wanfuota-task
                                  :member-name "LoRaWAN")
                                 (firmware-update-image :target-type
                                  firmware-update-image :member-name
                                  "FirmwareUpdateImage")
                                 (firmware-update-role :target-type
                                  firmware-update-role :member-name
                                  "FirmwareUpdateRole")
                                 (redundancy-percent :target-type
                                  redundancy-percent :member-name
                                  "RedundancyPercent")
                                 (fragment-size-bytes :target-type
                                  fragment-size-bytes :member-name
                                  "FragmentSizeBytes")
                                 (fragment-interval-ms :target-type
                                  fragment-interval-ms :member-name
                                  "FragmentIntervalMS")
                                 (descriptor :target-type file-descriptor
                                  :member-name "Descriptor"))
                                (:shape-name "UpdateFuotaTaskRequest"))

(smithy/sdk/shapes:define-output update-fuota-task-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateFuotaTaskResponse"))

(smithy/sdk/shapes:define-input update-log-levels-by-resource-types-request
                                common-lisp:nil
                                ((default-log-level :target-type log-level
                                  :member-name "DefaultLogLevel")
                                 (fuota-task-log-options :target-type
                                  fuota-task-log-option-list :member-name
                                  "FuotaTaskLogOptions")
                                 (wireless-device-log-options :target-type
                                  wireless-device-log-option-list :member-name
                                  "WirelessDeviceLogOptions")
                                 (wireless-gateway-log-options :target-type
                                  wireless-gateway-log-option-list :member-name
                                  "WirelessGatewayLogOptions"))
                                (:shape-name
                                 "UpdateLogLevelsByResourceTypesRequest"))

(smithy/sdk/shapes:define-output update-log-levels-by-resource-types-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateLogLevelsByResourceTypesResponse"))

(smithy/sdk/shapes:define-input update-metric-configuration-request
                                common-lisp:nil
                                ((summary-metric :target-type
                                  summary-metric-configuration :member-name
                                  "SummaryMetric"))
                                (:shape-name
                                 "UpdateMetricConfigurationRequest"))

(smithy/sdk/shapes:define-output update-metric-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateMetricConfigurationResponse"))

(smithy/sdk/shapes:define-input update-multicast-group-request common-lisp:nil
                                ((id :target-type multicast-group-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (name :target-type multicast-group-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (lo-ra-wan :target-type lo-ra-wanmulticast
                                  :member-name "LoRaWAN"))
                                (:shape-name "UpdateMulticastGroupRequest"))

(smithy/sdk/shapes:define-output update-multicast-group-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateMulticastGroupResponse"))

(smithy/sdk/shapes:define-input update-network-analyzer-configuration-request
                                common-lisp:nil
                                ((configuration-name :target-type
                                  network-analyzer-configuration-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationName" :http-label
                                  common-lisp:t)
                                 (trace-content :target-type trace-content
                                  :member-name "TraceContent")
                                 (wireless-devices-to-add :target-type
                                  wireless-device-list :member-name
                                  "WirelessDevicesToAdd")
                                 (wireless-devices-to-remove :target-type
                                  wireless-device-list :member-name
                                  "WirelessDevicesToRemove")
                                 (wireless-gateways-to-add :target-type
                                  wireless-gateway-list :member-name
                                  "WirelessGatewaysToAdd")
                                 (wireless-gateways-to-remove :target-type
                                  wireless-gateway-list :member-name
                                  "WirelessGatewaysToRemove")
                                 (description :target-type description
                                  :member-name "Description")
                                 (multicast-groups-to-add :target-type
                                  network-analyzer-multicast-group-list
                                  :member-name "MulticastGroupsToAdd")
                                 (multicast-groups-to-remove :target-type
                                  network-analyzer-multicast-group-list
                                  :member-name "MulticastGroupsToRemove"))
                                (:shape-name
                                 "UpdateNetworkAnalyzerConfigurationRequest"))

(smithy/sdk/shapes:define-output update-network-analyzer-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateNetworkAnalyzerConfigurationResponse"))

(smithy/sdk/shapes:define-input update-partner-account-request common-lisp:nil
                                ((sidewalk :target-type sidewalk-update-account
                                  :required common-lisp:t :member-name
                                  "Sidewalk")
                                 (partner-account-id :target-type
                                  partner-account-id :required common-lisp:t
                                  :member-name "PartnerAccountId" :http-label
                                  common-lisp:t)
                                 (partner-type :target-type partner-type
                                  :required common-lisp:t :member-name
                                  "PartnerType" :http-query "partnerType"))
                                (:shape-name "UpdatePartnerAccountRequest"))

(smithy/sdk/shapes:define-output update-partner-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdatePartnerAccountResponse"))

(smithy/sdk/shapes:define-input update-position-request common-lisp:nil
                                ((resource-identifier :target-type
                                  position-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type
                                  position-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType")
                                 (position :target-type position-coordinate
                                  :required common-lisp:t :member-name
                                  "Position"))
                                (:shape-name "UpdatePositionRequest"))

(smithy/sdk/shapes:define-output update-position-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdatePositionResponse"))

(smithy/sdk/shapes:define-input update-resource-event-configuration-request
                                common-lisp:nil
                                ((identifier :target-type identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (identifier-type :target-type identifier-type
                                  :required common-lisp:t :member-name
                                  "IdentifierType" :http-query
                                  "identifierType")
                                 (partner-type :target-type
                                  event-notification-partner-type :member-name
                                  "PartnerType" :http-query "partnerType")
                                 (device-registration-state :target-type
                                  device-registration-state-event-configuration
                                  :member-name "DeviceRegistrationState")
                                 (proximity :target-type
                                  proximity-event-configuration :member-name
                                  "Proximity")
                                 (join :target-type join-event-configuration
                                  :member-name "Join")
                                 (connection-status :target-type
                                  connection-status-event-configuration
                                  :member-name "ConnectionStatus")
                                 (message-delivery-status :target-type
                                  message-delivery-status-event-configuration
                                  :member-name "MessageDeliveryStatus"))
                                (:shape-name
                                 "UpdateResourceEventConfigurationRequest"))

(smithy/sdk/shapes:define-output update-resource-event-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateResourceEventConfigurationResponse"))

(smithy/sdk/shapes:define-input update-resource-position-request
                                common-lisp:nil
                                ((resource-identifier :target-type
                                  position-resource-identifier :required
                                  common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type
                                  position-resource-type :required
                                  common-lisp:t :member-name "ResourceType"
                                  :http-query "resourceType")
                                 (geo-json-payload :target-type
                                  geo-json-payload :member-name
                                  "GeoJsonPayload" :http-payload
                                  common-lisp:t))
                                (:shape-name "UpdateResourcePositionRequest"))

(smithy/sdk/shapes:define-output update-resource-position-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateResourcePositionResponse"))

(smithy/sdk/shapes:define-type update-signature smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-wireless-device-import-task-request
                                common-lisp:nil
                                ((id :target-type import-task-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (sidewalk :target-type
                                  sidewalk-update-import-info :required
                                  common-lisp:t :member-name "Sidewalk"))
                                (:shape-name
                                 "UpdateWirelessDeviceImportTaskRequest"))

(smithy/sdk/shapes:define-output update-wireless-device-import-task-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateWirelessDeviceImportTaskResponse"))

(smithy/sdk/shapes:define-input update-wireless-device-request common-lisp:nil
                                ((id :target-type wireless-device-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (destination-name :target-type
                                  destination-name :member-name
                                  "DestinationName")
                                 (name :target-type wireless-device-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (lo-ra-wan :target-type lo-ra-wanupdate-device
                                  :member-name "LoRaWAN")
                                 (positioning :target-type
                                  positioning-config-status :member-name
                                  "Positioning"))
                                (:shape-name "UpdateWirelessDeviceRequest"))

(smithy/sdk/shapes:define-output update-wireless-device-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateWirelessDeviceResponse"))

(smithy/sdk/shapes:define-input update-wireless-gateway-request common-lisp:nil
                                ((id :target-type wireless-gateway-id :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (name :target-type wireless-gateway-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (join-eui-filters :target-type
                                  join-eui-filters :member-name
                                  "JoinEuiFilters")
                                 (net-id-filters :target-type net-id-filters
                                  :member-name "NetIdFilters")
                                 (max-eirp :target-type gateway-max-eirp
                                  :member-name "MaxEirp"))
                                (:shape-name "UpdateWirelessGatewayRequest"))

(smithy/sdk/shapes:define-output update-wireless-gateway-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateWirelessGatewayResponse"))

(smithy/sdk/shapes:define-structure update-wireless-gateway-task-create
                                    common-lisp:nil
                                    ((update-data-source :target-type
                                      update-data-source :member-name
                                      "UpdateDataSource")
                                     (update-data-role :target-type
                                      update-data-source :member-name
                                      "UpdateDataRole")
                                     (lo-ra-wan :target-type
                                      lo-ra-wanupdate-gateway-task-create
                                      :member-name "LoRaWAN"))
                                    (:shape-name
                                     "UpdateWirelessGatewayTaskCreate"))

(smithy/sdk/shapes:define-structure update-wireless-gateway-task-entry
                                    common-lisp:nil
                                    ((id :target-type
                                      wireless-gateway-task-definition-id
                                      :member-name "Id")
                                     (lo-ra-wan :target-type
                                      lo-ra-wanupdate-gateway-task-entry
                                      :member-name "LoRaWAN")
                                     (arn :target-type
                                      wireless-gateway-task-definition-arn
                                      :member-name "Arn"))
                                    (:shape-name
                                     "UpdateWirelessGatewayTaskEntry"))

(smithy/sdk/shapes:define-type use2dsolver smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type utran-cid smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vertical-accuracy smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-list wcdma-list :member wcdma-obj)

(smithy/sdk/shapes:define-structure wcdma-local-id common-lisp:nil
                                    ((uarfcndl :target-type uarfcndl :required
                                      common-lisp:t :member-name "Uarfcndl")
                                     (psc :target-type psc :required
                                      common-lisp:t :member-name "Psc"))
                                    (:shape-name "WcdmaLocalId"))

(smithy/sdk/shapes:define-list wcdma-nmr-list :member wcdma-nmr-obj)

(smithy/sdk/shapes:define-structure wcdma-nmr-obj common-lisp:nil
                                    ((uarfcndl :target-type uarfcndl :required
                                      common-lisp:t :member-name "Uarfcndl")
                                     (psc :target-type psc :required
                                      common-lisp:t :member-name "Psc")
                                     (utran-cid :target-type utran-cid
                                      :required common-lisp:t :member-name
                                      "UtranCid")
                                     (rscp :target-type rscp :member-name
                                      "Rscp")
                                     (path-loss :target-type path-loss
                                      :member-name "PathLoss"))
                                    (:shape-name "WcdmaNmrObj"))

(smithy/sdk/shapes:define-structure wcdma-obj common-lisp:nil
                                    ((mcc :target-type mcc :required
                                      common-lisp:t :member-name "Mcc")
                                     (mnc :target-type mnc :required
                                      common-lisp:t :member-name "Mnc")
                                     (lac :target-type lac :member-name "Lac")
                                     (utran-cid :target-type utran-cid
                                      :required common-lisp:t :member-name
                                      "UtranCid")
                                     (wcdma-local-id :target-type
                                      wcdma-local-id :member-name
                                      "WcdmaLocalId")
                                     (rscp :target-type rscp :member-name
                                      "Rscp")
                                     (path-loss :target-type path-loss
                                      :member-name "PathLoss")
                                     (wcdma-nmr :target-type wcdma-nmr-list
                                      :member-name "WcdmaNmr"))
                                    (:shape-name "WcdmaObj"))

(smithy/sdk/shapes:define-structure wi-fi-access-point common-lisp:nil
                                    ((mac-address :target-type mac-address
                                      :required common-lisp:t :member-name
                                      "MacAddress")
                                     (rss :target-type rss :required
                                      common-lisp:t :member-name "Rss"))
                                    (:shape-name "WiFiAccessPoint"))

(smithy/sdk/shapes:define-list wi-fi-access-points :member wi-fi-access-point)

(smithy/sdk/shapes:define-type wireless-device-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-device-event
    common-lisp:nil
  (:join "Join")
  (:rejoin "Rejoin")
  (:uplink-data "Uplink_Data")
  (:downlink-data "Downlink_Data")
  (:registration "Registration"))

(smithy/sdk/shapes:define-structure wireless-device-event-log-option
                                    common-lisp:nil
                                    ((event :target-type wireless-device-event
                                      :required common-lisp:t :member-name
                                      "Event")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel"))
                                    (:shape-name
                                     "WirelessDeviceEventLogOption"))

(smithy/sdk/shapes:define-list wireless-device-event-log-option-list :member
                               wireless-device-event-log-option)

(smithy/sdk/shapes:define-enum wireless-device-frame-info
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type wireless-device-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-device-id-type
    common-lisp:nil
  (:wireless-device-id "WirelessDeviceId")
  (:dev-eui "DevEui")
  (:thing-name "ThingName")
  (:sidewalk-manufacturing-sn "SidewalkManufacturingSn"))

(smithy/sdk/shapes:define-structure wireless-device-import-task common-lisp:nil
                                    ((id :target-type import-task-id
                                      :member-name "Id")
                                     (arn :target-type import-task-arn
                                      :member-name "Arn")
                                     (destination-name :target-type
                                      destination-name :member-name
                                      "DestinationName")
                                     (sidewalk :target-type
                                      sidewalk-get-start-import-info
                                      :member-name "Sidewalk")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (status :target-type import-task-status
                                      :member-name "Status")
                                     (status-reason :target-type status-reason
                                      :member-name "StatusReason")
                                     (initialized-imported-device-count
                                      :target-type
                                      imported-wireless-device-count
                                      :member-name
                                      "InitializedImportedDeviceCount")
                                     (pending-imported-device-count
                                      :target-type
                                      imported-wireless-device-count
                                      :member-name
                                      "PendingImportedDeviceCount")
                                     (onboarded-imported-device-count
                                      :target-type
                                      imported-wireless-device-count
                                      :member-name
                                      "OnboardedImportedDeviceCount")
                                     (failed-imported-device-count :target-type
                                      imported-wireless-device-count
                                      :member-name
                                      "FailedImportedDeviceCount"))
                                    (:shape-name "WirelessDeviceImportTask"))

(smithy/sdk/shapes:define-list wireless-device-import-task-list :member
                               wireless-device-import-task)

(smithy/sdk/shapes:define-list wireless-device-list :member wireless-device-id)

(smithy/sdk/shapes:define-structure wireless-device-log-option common-lisp:nil
                                    ((type :target-type wireless-device-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel")
                                     (events :target-type
                                      wireless-device-event-log-option-list
                                      :member-name "Events"))
                                    (:shape-name "WirelessDeviceLogOption"))

(smithy/sdk/shapes:define-list wireless-device-log-option-list :member
                               wireless-device-log-option)

(smithy/sdk/shapes:define-type wireless-device-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-device-sidewalk-status
    common-lisp:nil
  (:provisioned "PROVISIONED")
  (:registered "REGISTERED")
  (:activated "ACTIVATED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure wireless-device-statistics common-lisp:nil
                                    ((arn :target-type wireless-device-arn
                                      :member-name "Arn")
                                     (id :target-type wireless-device-id
                                      :member-name "Id")
                                     (type :target-type wireless-device-type
                                      :member-name "Type")
                                     (name :target-type wireless-device-name
                                      :member-name "Name")
                                     (destination-name :target-type
                                      destination-name :member-name
                                      "DestinationName")
                                     (last-uplink-received-at :target-type
                                      isodate-time-string :member-name
                                      "LastUplinkReceivedAt")
                                     (lo-ra-wan :target-type
                                      lo-ra-wanlist-device :member-name
                                      "LoRaWAN")
                                     (sidewalk :target-type
                                      sidewalk-list-device :member-name
                                      "Sidewalk")
                                     (fuota-device-status :target-type
                                      fuota-device-status :member-name
                                      "FuotaDeviceStatus")
                                     (multicast-device-status :target-type
                                      multicast-device-status :member-name
                                      "MulticastDeviceStatus")
                                     (mc-group-id :target-type mc-group-id
                                      :member-name "McGroupId"))
                                    (:shape-name "WirelessDeviceStatistics"))

(smithy/sdk/shapes:define-list wireless-device-statistics-list :member
                               wireless-device-statistics)

(smithy/sdk/shapes:define-enum wireless-device-type
    common-lisp:nil
  (:sidewalk "Sidewalk")
  (:lo-ra-wan "LoRaWAN"))

(smithy/sdk/shapes:define-type wireless-gateway-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-gateway-event
    common-lisp:nil
  (:cups-request "CUPS_Request")
  (:certificate "Certificate"))

(smithy/sdk/shapes:define-structure wireless-gateway-event-log-option
                                    common-lisp:nil
                                    ((event :target-type wireless-gateway-event
                                      :required common-lisp:t :member-name
                                      "Event")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel"))
                                    (:shape-name
                                     "WirelessGatewayEventLogOption"))

(smithy/sdk/shapes:define-list wireless-gateway-event-log-option-list :member
                               wireless-gateway-event-log-option)

(smithy/sdk/shapes:define-type wireless-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-gateway-id-type
    common-lisp:nil
  (:gateway-eui "GatewayEui")
  (:wireless-gateway-id "WirelessGatewayId")
  (:thing-name "ThingName"))

(smithy/sdk/shapes:define-list wireless-gateway-list :member
                               wireless-gateway-id)

(smithy/sdk/shapes:define-structure wireless-gateway-log-option common-lisp:nil
                                    ((type :target-type wireless-gateway-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (log-level :target-type log-level
                                      :required common-lisp:t :member-name
                                      "LogLevel")
                                     (events :target-type
                                      wireless-gateway-event-log-option-list
                                      :member-name "Events"))
                                    (:shape-name "WirelessGatewayLogOption"))

(smithy/sdk/shapes:define-list wireless-gateway-log-option-list :member
                               wireless-gateway-log-option)

(smithy/sdk/shapes:define-type wireless-gateway-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-gateway-service-type
    common-lisp:nil
  (:cups "CUPS")
  (:lns "LNS"))

(smithy/sdk/shapes:define-structure wireless-gateway-statistics common-lisp:nil
                                    ((arn :target-type wireless-gateway-arn
                                      :member-name "Arn")
                                     (id :target-type wireless-gateway-id
                                      :member-name "Id")
                                     (name :target-type wireless-gateway-name
                                      :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (lo-ra-wan :target-type lo-ra-wangateway
                                      :member-name "LoRaWAN")
                                     (last-uplink-received-at :target-type
                                      isodate-time-string :member-name
                                      "LastUplinkReceivedAt"))
                                    (:shape-name "WirelessGatewayStatistics"))

(smithy/sdk/shapes:define-list wireless-gateway-statistics-list :member
                               wireless-gateway-statistics)

(smithy/sdk/shapes:define-type wireless-gateway-task-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type wireless-gateway-task-definition-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list wireless-gateway-task-definition-list :member
                               update-wireless-gateway-task-entry)

(smithy/sdk/shapes:define-enum wireless-gateway-task-definition-type
    common-lisp:nil
  (:update "UPDATE"))

(smithy/sdk/shapes:define-type wireless-gateway-task-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum wireless-gateway-task-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:first-retry "FIRST_RETRY")
  (:second-retry "SECOND_RETRY")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum wireless-gateway-type
    common-lisp:nil
  (:lo-ra-wan "LoRaWAN"))

(smithy/sdk/shapes:define-structure wireless-metadata common-lisp:nil
                                    ((lo-ra-wan :target-type
                                      lo-ra-wansend-data-to-device :member-name
                                      "LoRaWAN")
                                     (sidewalk :target-type
                                      sidewalk-send-data-to-device :member-name
                                      "Sidewalk"))
                                    (:shape-name "WirelessMetadata"))

(smithy/sdk/operation:define-operation
 associate-aws-account-with-partner-account :shape-name
 "AssociateAwsAccountWithPartnerAccount" :input
 associate-aws-account-with-partner-account-request :output
 associate-aws-account-with-partner-account-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/partner-accounts" :code 200)

(smithy/sdk/operation:define-operation
 associate-multicast-group-with-fuota-task :shape-name
 "AssociateMulticastGroupWithFuotaTask" :input
 associate-multicast-group-with-fuota-task-request :output
 associate-multicast-group-with-fuota-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri "/fuota-tasks/{Id}/multicast-group" :code 204)

(smithy/sdk/operation:define-operation
 associate-wireless-device-with-fuota-task :shape-name
 "AssociateWirelessDeviceWithFuotaTask" :input
 associate-wireless-device-with-fuota-task-request :output
 associate-wireless-device-with-fuota-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri "/fuota-tasks/{Id}/wireless-device" :code 204)

(smithy/sdk/operation:define-operation
 associate-wireless-device-with-multicast-group :shape-name
 "AssociateWirelessDeviceWithMulticastGroup" :input
 associate-wireless-device-with-multicast-group-request :output
 associate-wireless-device-with-multicast-group-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri "/multicast-groups/{Id}/wireless-device" :code 204)

(smithy/sdk/operation:define-operation associate-wireless-device-with-thing
                                       :shape-name
                                       "AssociateWirelessDeviceWithThing"
                                       :input
                                       associate-wireless-device-with-thing-request
                                       :output
                                       associate-wireless-device-with-thing-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/wireless-devices/{Id}/thing" :code 204)

(smithy/sdk/operation:define-operation
 associate-wireless-gateway-with-certificate :shape-name
 "AssociateWirelessGatewayWithCertificate" :input
 associate-wireless-gateway-with-certificate-request :output
 associate-wireless-gateway-with-certificate-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri "/wireless-gateways/{Id}/certificate" :code 200)

(smithy/sdk/operation:define-operation associate-wireless-gateway-with-thing
                                       :shape-name
                                       "AssociateWirelessGatewayWithThing"
                                       :input
                                       associate-wireless-gateway-with-thing-request
                                       :output
                                       associate-wireless-gateway-with-thing-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/wireless-gateways/{Id}/thing" :code
                                       204)

(smithy/sdk/operation:define-operation cancel-multicast-group-session
                                       :shape-name
                                       "CancelMulticastGroupSession" :input
                                       cancel-multicast-group-session-request
                                       :output
                                       cancel-multicast-group-session-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/multicast-groups/{Id}/session" :code
                                       204)

(smithy/sdk/operation:define-operation create-destination :shape-name
                                       "CreateDestination" :input
                                       create-destination-request :output
                                       create-destination-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/destinations"
                                       :code 201)

(smithy/sdk/operation:define-operation create-device-profile :shape-name
                                       "CreateDeviceProfile" :input
                                       create-device-profile-request :output
                                       create-device-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/device-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-fuota-task :shape-name
                                       "CreateFuotaTask" :input
                                       create-fuota-task-request :output
                                       create-fuota-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/fuota-tasks" :code
                                       201)

(smithy/sdk/operation:define-operation create-multicast-group :shape-name
                                       "CreateMulticastGroup" :input
                                       create-multicast-group-request :output
                                       create-multicast-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/multicast-groups"
                                       :code 201)

(smithy/sdk/operation:define-operation create-network-analyzer-configuration
                                       :shape-name
                                       "CreateNetworkAnalyzerConfiguration"
                                       :input
                                       create-network-analyzer-configuration-request
                                       :output
                                       create-network-analyzer-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/network-analyzer-configurations" :code
                                       201)

(smithy/sdk/operation:define-operation create-service-profile :shape-name
                                       "CreateServiceProfile" :input
                                       create-service-profile-request :output
                                       create-service-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/service-profiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-wireless-device :shape-name
                                       "CreateWirelessDevice" :input
                                       create-wireless-device-request :output
                                       create-wireless-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/wireless-devices"
                                       :code 201)

(smithy/sdk/operation:define-operation create-wireless-gateway :shape-name
                                       "CreateWirelessGateway" :input
                                       create-wireless-gateway-request :output
                                       create-wireless-gateway-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/wireless-gateways"
                                       :code 201)

(smithy/sdk/operation:define-operation create-wireless-gateway-task :shape-name
                                       "CreateWirelessGatewayTask" :input
                                       create-wireless-gateway-task-request
                                       :output
                                       create-wireless-gateway-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/wireless-gateways/{Id}/tasks" :code
                                       201)

(smithy/sdk/operation:define-operation create-wireless-gateway-task-definition
                                       :shape-name
                                       "CreateWirelessGatewayTaskDefinition"
                                       :input
                                       create-wireless-gateway-task-definition-request
                                       :output
                                       create-wireless-gateway-task-definition-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/wireless-gateway-task-definitions"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-destination :shape-name
                                       "DeleteDestination" :input
                                       delete-destination-request :output
                                       delete-destination-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/destinations/{Name}" :code 204)

(smithy/sdk/operation:define-operation delete-device-profile :shape-name
                                       "DeleteDeviceProfile" :input
                                       delete-device-profile-request :output
                                       delete-device-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/device-profiles/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-fuota-task :shape-name
                                       "DeleteFuotaTask" :input
                                       delete-fuota-task-request :output
                                       delete-fuota-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/fuota-tasks/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-multicast-group :shape-name
                                       "DeleteMulticastGroup" :input
                                       delete-multicast-group-request :output
                                       delete-multicast-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/multicast-groups/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-network-analyzer-configuration
                                       :shape-name
                                       "DeleteNetworkAnalyzerConfiguration"
                                       :input
                                       delete-network-analyzer-configuration-request
                                       :output
                                       delete-network-analyzer-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/network-analyzer-configurations/{ConfigurationName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-queued-messages :shape-name
                                       "DeleteQueuedMessages" :input
                                       delete-queued-messages-request :output
                                       delete-queued-messages-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-devices/{Id}/data" :code 204)

(smithy/sdk/operation:define-operation delete-service-profile :shape-name
                                       "DeleteServiceProfile" :input
                                       delete-service-profile-request :output
                                       delete-service-profile-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/service-profiles/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-wireless-device :shape-name
                                       "DeleteWirelessDevice" :input
                                       delete-wireless-device-request :output
                                       delete-wireless-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-devices/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-wireless-device-import-task
                                       :shape-name
                                       "DeleteWirelessDeviceImportTask" :input
                                       delete-wireless-device-import-task-request
                                       :output
                                       delete-wireless-device-import-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless_device_import_task/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-wireless-gateway :shape-name
                                       "DeleteWirelessGateway" :input
                                       delete-wireless-gateway-request :output
                                       delete-wireless-gateway-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-gateways/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-wireless-gateway-task :shape-name
                                       "DeleteWirelessGatewayTask" :input
                                       delete-wireless-gateway-task-request
                                       :output
                                       delete-wireless-gateway-task-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-gateways/{Id}/tasks" :code
                                       204)

(smithy/sdk/operation:define-operation delete-wireless-gateway-task-definition
                                       :shape-name
                                       "DeleteWirelessGatewayTaskDefinition"
                                       :input
                                       delete-wireless-gateway-task-definition-request
                                       :output
                                       delete-wireless-gateway-task-definition-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-gateway-task-definitions/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation deregister-wireless-device :shape-name
                                       "DeregisterWirelessDevice" :input
                                       deregister-wireless-device-request
                                       :output
                                       deregister-wireless-device-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/wireless-devices/{Identifier}/deregister"
                                       :code 200)

(smithy/sdk/operation:define-operation
 disassociate-aws-account-from-partner-account :shape-name
 "DisassociateAwsAccountFromPartnerAccount" :input
 disassociate-aws-account-from-partner-account-request :output
 disassociate-aws-account-from-partner-account-response :errors
 (internal-server-exception resource-not-found-exception throttling-exception
  validation-exception)
 :method "DELETE" :uri "/partner-accounts/{PartnerAccountId}" :code 204)

(smithy/sdk/operation:define-operation
 disassociate-multicast-group-from-fuota-task :shape-name
 "DisassociateMulticastGroupFromFuotaTask" :input
 disassociate-multicast-group-from-fuota-task-request :output
 disassociate-multicast-group-from-fuota-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "DELETE" :uri "/fuota-tasks/{Id}/multicast-groups/{MulticastGroupId}"
 :code 204)

(smithy/sdk/operation:define-operation
 disassociate-wireless-device-from-fuota-task :shape-name
 "DisassociateWirelessDeviceFromFuotaTask" :input
 disassociate-wireless-device-from-fuota-task-request :output
 disassociate-wireless-device-from-fuota-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri "/fuota-tasks/{Id}/wireless-devices/{WirelessDeviceId}"
 :code 204)

(smithy/sdk/operation:define-operation
 disassociate-wireless-device-from-multicast-group :shape-name
 "DisassociateWirelessDeviceFromMulticastGroup" :input
 disassociate-wireless-device-from-multicast-group-request :output
 disassociate-wireless-device-from-multicast-group-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/multicast-groups/{Id}/wireless-devices/{WirelessDeviceId}" :code 204)

(smithy/sdk/operation:define-operation disassociate-wireless-device-from-thing
                                       :shape-name
                                       "DisassociateWirelessDeviceFromThing"
                                       :input
                                       disassociate-wireless-device-from-thing-request
                                       :output
                                       disassociate-wireless-device-from-thing-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-devices/{Id}/thing" :code 204)

(smithy/sdk/operation:define-operation
 disassociate-wireless-gateway-from-certificate :shape-name
 "DisassociateWirelessGatewayFromCertificate" :input
 disassociate-wireless-gateway-from-certificate-request :output
 disassociate-wireless-gateway-from-certificate-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri "/wireless-gateways/{Id}/certificate" :code 204)

(smithy/sdk/operation:define-operation disassociate-wireless-gateway-from-thing
                                       :shape-name
                                       "DisassociateWirelessGatewayFromThing"
                                       :input
                                       disassociate-wireless-gateway-from-thing-request
                                       :output
                                       disassociate-wireless-gateway-from-thing-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/wireless-gateways/{Id}/thing" :code
                                       204)

(smithy/sdk/operation:define-operation get-destination :shape-name
                                       "GetDestination" :input
                                       get-destination-request :output
                                       get-destination-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/destinations/{Name}" :code 200)

(smithy/sdk/operation:define-operation get-device-profile :shape-name
                                       "GetDeviceProfile" :input
                                       get-device-profile-request :output
                                       get-device-profile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/device-profiles/{Id}" :code 200)

(smithy/sdk/operation:define-operation
 get-event-configuration-by-resource-types :shape-name
 "GetEventConfigurationByResourceTypes" :input
 get-event-configuration-by-resource-types-request :output
 get-event-configuration-by-resource-types-response :errors
 (access-denied-exception internal-server-exception throttling-exception)
 :method "GET" :uri "/event-configurations-resource-types" :code 200)

(smithy/sdk/operation:define-operation get-fuota-task :shape-name
                                       "GetFuotaTask" :input
                                       get-fuota-task-request :output
                                       get-fuota-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/fuota-tasks/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-log-levels-by-resource-types
                                       :shape-name
                                       "GetLogLevelsByResourceTypes" :input
                                       get-log-levels-by-resource-types-request
                                       :output
                                       get-log-levels-by-resource-types-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/log-levels" :code
                                       200)

(smithy/sdk/operation:define-operation get-metric-configuration :shape-name
                                       "GetMetricConfiguration" :input
                                       get-metric-configuration-request :output
                                       get-metric-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/metric-configuration" :code 200)

(smithy/sdk/operation:define-operation get-metrics :shape-name "GetMetrics"
                                       :input get-metrics-request :output
                                       get-metrics-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/metrics" :code 200)

(smithy/sdk/operation:define-operation get-multicast-group :shape-name
                                       "GetMulticastGroup" :input
                                       get-multicast-group-request :output
                                       get-multicast-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/multicast-groups/{Id}" :code 200)

(smithy/sdk/operation:define-operation get-multicast-group-session :shape-name
                                       "GetMulticastGroupSession" :input
                                       get-multicast-group-session-request
                                       :output
                                       get-multicast-group-session-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/multicast-groups/{Id}/session" :code
                                       200)

(smithy/sdk/operation:define-operation get-network-analyzer-configuration
                                       :shape-name
                                       "GetNetworkAnalyzerConfiguration" :input
                                       get-network-analyzer-configuration-request
                                       :output
                                       get-network-analyzer-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/network-analyzer-configurations/{ConfigurationName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-partner-account :shape-name
                                       "GetPartnerAccount" :input
                                       get-partner-account-request :output
                                       get-partner-account-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/partner-accounts/{PartnerAccountId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-position :shape-name "GetPosition"
                                       :input get-position-request :output
                                       get-position-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/positions/{ResourceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-position-configuration :shape-name
                                       "GetPositionConfiguration" :input
                                       get-position-configuration-request
                                       :output
                                       get-position-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/position-configurations/{ResourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-position-estimate :shape-name
                                       "GetPositionEstimate" :input
                                       get-position-estimate-request :output
                                       get-position-estimate-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/position-estimate"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-event-configuration
                                       :shape-name
                                       "GetResourceEventConfiguration" :input
                                       get-resource-event-configuration-request
                                       :output
                                       get-resource-event-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/event-configurations/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-log-level :shape-name
                                       "GetResourceLogLevel" :input
                                       get-resource-log-level-request :output
                                       get-resource-log-level-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/log-levels/{ResourceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-resource-position :shape-name
                                       "GetResourcePosition" :input
                                       get-resource-position-request :output
                                       get-resource-position-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resource-positions/{ResourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-endpoint :shape-name
                                       "GetServiceEndpoint" :input
                                       get-service-endpoint-request :output
                                       get-service-endpoint-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/service-endpoint"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-profile :shape-name
                                       "GetServiceProfile" :input
                                       get-service-profile-request :output
                                       get-service-profile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/service-profiles/{Id}" :code 200)

(smithy/sdk/operation:define-operation get-wireless-device :shape-name
                                       "GetWirelessDevice" :input
                                       get-wireless-device-request :output
                                       get-wireless-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-devices/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-wireless-device-import-task
                                       :shape-name
                                       "GetWirelessDeviceImportTask" :input
                                       get-wireless-device-import-task-request
                                       :output
                                       get-wireless-device-import-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless_device_import_task/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-wireless-device-statistics
                                       :shape-name
                                       "GetWirelessDeviceStatistics" :input
                                       get-wireless-device-statistics-request
                                       :output
                                       get-wireless-device-statistics-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-devices/{WirelessDeviceId}/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-wireless-gateway :shape-name
                                       "GetWirelessGateway" :input
                                       get-wireless-gateway-request :output
                                       get-wireless-gateway-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-gateways/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-wireless-gateway-certificate
                                       :shape-name
                                       "GetWirelessGatewayCertificate" :input
                                       get-wireless-gateway-certificate-request
                                       :output
                                       get-wireless-gateway-certificate-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-gateways/{Id}/certificate"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-wireless-gateway-firmware-information :shape-name
 "GetWirelessGatewayFirmwareInformation" :input
 get-wireless-gateway-firmware-information-request :output
 get-wireless-gateway-firmware-information-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/wireless-gateways/{Id}/firmware-information" :code 200)

(smithy/sdk/operation:define-operation get-wireless-gateway-statistics
                                       :shape-name
                                       "GetWirelessGatewayStatistics" :input
                                       get-wireless-gateway-statistics-request
                                       :output
                                       get-wireless-gateway-statistics-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-gateways/{WirelessGatewayId}/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-wireless-gateway-task :shape-name
                                       "GetWirelessGatewayTask" :input
                                       get-wireless-gateway-task-request
                                       :output
                                       get-wireless-gateway-task-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-gateways/{Id}/tasks" :code
                                       200)

(smithy/sdk/operation:define-operation get-wireless-gateway-task-definition
                                       :shape-name
                                       "GetWirelessGatewayTaskDefinition"
                                       :input
                                       get-wireless-gateway-task-definition-request
                                       :output
                                       get-wireless-gateway-task-definition-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-gateway-task-definitions/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-destinations :shape-name
                                       "ListDestinations" :input
                                       list-destinations-request :output
                                       list-destinations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/destinations" :code
                                       200)

(smithy/sdk/operation:define-operation list-device-profiles :shape-name
                                       "ListDeviceProfiles" :input
                                       list-device-profiles-request :output
                                       list-device-profiles-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/device-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-devices-for-wireless-device-import-task :shape-name
 "ListDevicesForWirelessDeviceImportTask" :input
 list-devices-for-wireless-device-import-task-request :output
 list-devices-for-wireless-device-import-task-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/wireless_device_import_task" :code 200)

(smithy/sdk/operation:define-operation list-event-configurations :shape-name
                                       "ListEventConfigurations" :input
                                       list-event-configurations-request
                                       :output
                                       list-event-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/event-configurations" :code 200)

(smithy/sdk/operation:define-operation list-fuota-tasks :shape-name
                                       "ListFuotaTasks" :input
                                       list-fuota-tasks-request :output
                                       list-fuota-tasks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/fuota-tasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-multicast-groups :shape-name
                                       "ListMulticastGroups" :input
                                       list-multicast-groups-request :output
                                       list-multicast-groups-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/multicast-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-multicast-groups-by-fuota-task
                                       :shape-name
                                       "ListMulticastGroupsByFuotaTask" :input
                                       list-multicast-groups-by-fuota-task-request
                                       :output
                                       list-multicast-groups-by-fuota-task-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/fuota-tasks/{Id}/multicast-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-network-analyzer-configurations
                                       :shape-name
                                       "ListNetworkAnalyzerConfigurations"
                                       :input
                                       list-network-analyzer-configurations-request
                                       :output
                                       list-network-analyzer-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/network-analyzer-configurations" :code
                                       200)

(smithy/sdk/operation:define-operation list-partner-accounts :shape-name
                                       "ListPartnerAccounts" :input
                                       list-partner-accounts-request :output
                                       list-partner-accounts-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/partner-accounts"
                                       :code 200)

(smithy/sdk/operation:define-operation list-position-configurations :shape-name
                                       "ListPositionConfigurations" :input
                                       list-position-configurations-request
                                       :output
                                       list-position-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/position-configurations" :code 200)

(smithy/sdk/operation:define-operation list-queued-messages :shape-name
                                       "ListQueuedMessages" :input
                                       list-queued-messages-request :output
                                       list-queued-messages-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-devices/{Id}/data" :code 200)

(smithy/sdk/operation:define-operation list-service-profiles :shape-name
                                       "ListServiceProfiles" :input
                                       list-service-profiles-request :output
                                       list-service-profiles-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/service-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation list-wireless-device-import-tasks
                                       :shape-name
                                       "ListWirelessDeviceImportTasks" :input
                                       list-wireless-device-import-tasks-request
                                       :output
                                       list-wireless-device-import-tasks-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless_device_import_tasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-wireless-devices :shape-name
                                       "ListWirelessDevices" :input
                                       list-wireless-devices-request :output
                                       list-wireless-devices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/wireless-devices"
                                       :code 200)

(smithy/sdk/operation:define-operation list-wireless-gateway-task-definitions
                                       :shape-name
                                       "ListWirelessGatewayTaskDefinitions"
                                       :input
                                       list-wireless-gateway-task-definitions-request
                                       :output
                                       list-wireless-gateway-task-definitions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/wireless-gateway-task-definitions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-wireless-gateways :shape-name
                                       "ListWirelessGateways" :input
                                       list-wireless-gateways-request :output
                                       list-wireless-gateways-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/wireless-gateways"
                                       :code 200)

(smithy/sdk/operation:define-operation put-position-configuration :shape-name
                                       "PutPositionConfiguration" :input
                                       put-position-configuration-request
                                       :output
                                       put-position-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/position-configurations/{ResourceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-resource-log-level :shape-name
                                       "PutResourceLogLevel" :input
                                       put-resource-log-level-request :output
                                       put-resource-log-level-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/log-levels/{ResourceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation reset-all-resource-log-levels
                                       :shape-name "ResetAllResourceLogLevels"
                                       :input
                                       reset-all-resource-log-levels-request
                                       :output
                                       reset-all-resource-log-levels-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/log-levels"
                                       :code 204)

(smithy/sdk/operation:define-operation reset-resource-log-level :shape-name
                                       "ResetResourceLogLevel" :input
                                       reset-resource-log-level-request :output
                                       reset-resource-log-level-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/log-levels/{ResourceIdentifier}" :code
                                       204)

(smithy/sdk/operation:define-operation send-data-to-multicast-group :shape-name
                                       "SendDataToMulticastGroup" :input
                                       send-data-to-multicast-group-request
                                       :output
                                       send-data-to-multicast-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/multicast-groups/{Id}/data" :code 201)

(smithy/sdk/operation:define-operation send-data-to-wireless-device :shape-name
                                       "SendDataToWirelessDevice" :input
                                       send-data-to-wireless-device-request
                                       :output
                                       send-data-to-wireless-device-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/wireless-devices/{Id}/data" :code 202)

(smithy/sdk/operation:define-operation
 start-bulk-associate-wireless-device-with-multicast-group :shape-name
 "StartBulkAssociateWirelessDeviceWithMulticastGroup" :input
 start-bulk-associate-wireless-device-with-multicast-group-request :output
 start-bulk-associate-wireless-device-with-multicast-group-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PATCH" :uri "/multicast-groups/{Id}/bulk" :code 204)

(smithy/sdk/operation:define-operation
 start-bulk-disassociate-wireless-device-from-multicast-group :shape-name
 "StartBulkDisassociateWirelessDeviceFromMulticastGroup" :input
 start-bulk-disassociate-wireless-device-from-multicast-group-request :output
 start-bulk-disassociate-wireless-device-from-multicast-group-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/multicast-groups/{Id}/bulk" :code 204)

(smithy/sdk/operation:define-operation start-fuota-task :shape-name
                                       "StartFuotaTask" :input
                                       start-fuota-task-request :output
                                       start-fuota-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/fuota-tasks/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation start-multicast-group-session
                                       :shape-name "StartMulticastGroupSession"
                                       :input
                                       start-multicast-group-session-request
                                       :output
                                       start-multicast-group-session-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/multicast-groups/{Id}/session" :code
                                       204)

(smithy/sdk/operation:define-operation start-single-wireless-device-import-task
                                       :shape-name
                                       "StartSingleWirelessDeviceImportTask"
                                       :input
                                       start-single-wireless-device-import-task-request
                                       :output
                                       start-single-wireless-device-import-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/wireless_single_device_import_task"
                                       :code 201)

(smithy/sdk/operation:define-operation start-wireless-device-import-task
                                       :shape-name
                                       "StartWirelessDeviceImportTask" :input
                                       start-wireless-device-import-task-request
                                       :output
                                       start-wireless-device-import-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/wireless_device_import_task" :code 201)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri "/tags" :code 204)

(smithy/sdk/operation:define-operation test-wireless-device :shape-name
                                       "TestWirelessDevice" :input
                                       test-wireless-device-request :output
                                       test-wireless-device-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/wireless-devices/{Id}/test" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/tags" :code 204)

(smithy/sdk/operation:define-operation update-destination :shape-name
                                       "UpdateDestination" :input
                                       update-destination-request :output
                                       update-destination-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/destinations/{Name}" :code 204)

(smithy/sdk/operation:define-operation
 update-event-configuration-by-resource-types :shape-name
 "UpdateEventConfigurationByResourceTypes" :input
 update-event-configuration-by-resource-types-request :output
 update-event-configuration-by-resource-types-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "PATCH" :uri "/event-configurations-resource-types" :code 204)

(smithy/sdk/operation:define-operation update-fuota-task :shape-name
                                       "UpdateFuotaTask" :input
                                       update-fuota-task-request :output
                                       update-fuota-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/fuota-tasks/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-log-levels-by-resource-types
                                       :shape-name
                                       "UpdateLogLevelsByResourceTypes" :input
                                       update-log-levels-by-resource-types-request
                                       :output
                                       update-log-levels-by-resource-types-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/log-levels" :code
                                       200)

(smithy/sdk/operation:define-operation update-metric-configuration :shape-name
                                       "UpdateMetricConfiguration" :input
                                       update-metric-configuration-request
                                       :output
                                       update-metric-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/metric-configuration" :code 204)

(smithy/sdk/operation:define-operation update-multicast-group :shape-name
                                       "UpdateMulticastGroup" :input
                                       update-multicast-group-request :output
                                       update-multicast-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/multicast-groups/{Id}" :code 204)

(smithy/sdk/operation:define-operation update-network-analyzer-configuration
                                       :shape-name
                                       "UpdateNetworkAnalyzerConfiguration"
                                       :input
                                       update-network-analyzer-configuration-request
                                       :output
                                       update-network-analyzer-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/network-analyzer-configurations/{ConfigurationName}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-partner-account :shape-name
                                       "UpdatePartnerAccount" :input
                                       update-partner-account-request :output
                                       update-partner-account-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/partner-accounts/{PartnerAccountId}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-position :shape-name
                                       "UpdatePosition" :input
                                       update-position-request :output
                                       update-position-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/positions/{ResourceIdentifier}" :code
                                       204)

(smithy/sdk/operation:define-operation update-resource-event-configuration
                                       :shape-name
                                       "UpdateResourceEventConfiguration"
                                       :input
                                       update-resource-event-configuration-request
                                       :output
                                       update-resource-event-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/event-configurations/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-resource-position :shape-name
                                       "UpdateResourcePosition" :input
                                       update-resource-position-request :output
                                       update-resource-position-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/resource-positions/{ResourceIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-wireless-device :shape-name
                                       "UpdateWirelessDevice" :input
                                       update-wireless-device-request :output
                                       update-wireless-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/wireless-devices/{Id}" :code 204)

(smithy/sdk/operation:define-operation update-wireless-device-import-task
                                       :shape-name
                                       "UpdateWirelessDeviceImportTask" :input
                                       update-wireless-device-import-task-request
                                       :output
                                       update-wireless-device-import-task-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/wireless_device_import_task/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-wireless-gateway :shape-name
                                       "UpdateWirelessGateway" :input
                                       update-wireless-gateway-request :output
                                       update-wireless-gateway-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/wireless-gateways/{Id}" :code 204)
