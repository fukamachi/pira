(uiop/package:define-package #:pira/groundstation (:use)
                             (:export #:awsregion #:agent
                              #:agent-cpu-cores-list #:agent-details
                              #:agent-status #:aggregate-status #:angle-units
                              #:antenna-demod-decode-details
                              #:antenna-downlink-config
                              #:antenna-downlink-demod-decode-config
                              #:antenna-uplink-config #:any-arn #:audit-results
                              #:aws-ground-station-agent-endpoint
                              #:bandwidth-units #:bucket-arn #:cancel-contact
                              #:cancel-contact-request #:capability-arn
                              #:capability-arn-list #:capability-health
                              #:capability-health-reason
                              #:capability-health-reason-list
                              #:component-status-data #:component-status-list
                              #:component-type-string #:component-version
                              #:component-version-list #:config #:config-arn
                              #:config-capability-type #:config-details
                              #:config-id-response #:config-list
                              #:config-list-item #:config-type-data
                              #:connection-details #:contact #:contact-data
                              #:contact-id-response #:contact-list
                              #:contact-status #:create-config
                              #:create-config-request
                              #:create-dataflow-endpoint-group
                              #:create-dataflow-endpoint-group-request
                              #:create-ephemeris #:create-ephemeris-request
                              #:create-mission-profile
                              #:create-mission-profile-request #:criticality
                              #:customer-ephemeris-priority #:dataflow-detail
                              #:dataflow-edge #:dataflow-edge-list
                              #:dataflow-endpoint #:dataflow-endpoint-config
                              #:dataflow-endpoint-group
                              #:dataflow-endpoint-group-arn
                              #:dataflow-endpoint-group-duration-in-seconds
                              #:dataflow-endpoint-group-id-response
                              #:dataflow-endpoint-group-list
                              #:dataflow-endpoint-list-item #:dataflow-list
                              #:decode-config #:delete-config
                              #:delete-config-request
                              #:delete-dataflow-endpoint-group
                              #:delete-dataflow-endpoint-group-request
                              #:delete-ephemeris #:delete-ephemeris-request
                              #:delete-mission-profile
                              #:delete-mission-profile-request
                              #:demodulation-config #:dependency-exception
                              #:describe-contact #:describe-contact-request
                              #:describe-contact-response #:describe-ephemeris
                              #:describe-ephemeris-request
                              #:describe-ephemeris-response #:destination
                              #:discovery-data #:duration-in-seconds #:eirp
                              #:eirp-units #:elevation #:endpoint-details
                              #:endpoint-details-list #:endpoint-status
                              #:ephemerides-list #:ephemeris #:ephemeris-data
                              #:ephemeris-description #:ephemeris-id-response
                              #:ephemeris-invalid-reason #:ephemeris-item
                              #:ephemeris-meta-data #:ephemeris-priority
                              #:ephemeris-source #:ephemeris-status
                              #:ephemeris-status-list
                              #:ephemeris-type-description #:frequency
                              #:frequency-bandwidth #:frequency-units
                              #:get-agent-configuration
                              #:get-agent-configuration-request
                              #:get-agent-configuration-response #:get-config
                              #:get-config-request #:get-config-response
                              #:get-dataflow-endpoint-group
                              #:get-dataflow-endpoint-group-request
                              #:get-dataflow-endpoint-group-response
                              #:get-minute-usage #:get-minute-usage-request
                              #:get-minute-usage-response #:get-mission-profile
                              #:get-mission-profile-request
                              #:get-mission-profile-response #:get-satellite
                              #:get-satellite-request #:get-satellite-response
                              #:ground-station #:ground-station-data
                              #:ground-station-id-list #:ground-station-list
                              #:ground-station-name #:ground-station-resource
                              #:instance-id #:instance-type #:integer-range
                              #:invalid-parameter-exception #:ip-address-list
                              #:ip-v4address #:json-string #:key-alias-arn
                              #:key-alias-name #:key-arn #:kms-key
                              #:list-configs #:list-configs-request
                              #:list-configs-response #:list-contacts
                              #:list-contacts-request #:list-contacts-response
                              #:list-dataflow-endpoint-groups
                              #:list-dataflow-endpoint-groups-request
                              #:list-dataflow-endpoint-groups-response
                              #:list-ephemerides #:list-ephemerides-request
                              #:list-ephemerides-response
                              #:list-ground-stations
                              #:list-ground-stations-request
                              #:list-ground-stations-response
                              #:list-mission-profiles
                              #:list-mission-profiles-request
                              #:list-mission-profiles-response
                              #:list-satellites #:list-satellites-request
                              #:list-satellites-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:mission-profile #:mission-profile-arn
                              #:mission-profile-id-response
                              #:mission-profile-list
                              #:mission-profile-list-item #:month
                              #:oemephemeris #:pagination-max-results
                              #:pagination-token #:polarization
                              #:positive-duration-in-seconds
                              #:ranged-connection-details
                              #:ranged-socket-address #:register-agent
                              #:register-agent-request
                              #:register-agent-response #:reserve-contact
                              #:reserve-contact-request
                              #:resource-limit-exceeded-exception
                              #:resource-not-found-exception #:role-arn
                              #:s3bucket-name #:s3key-prefix #:s3object
                              #:s3object-key #:s3recording-config
                              #:s3recording-details #:s3version-id #:safe-name
                              #:satellite #:satellite-list
                              #:satellite-list-item #:security-details
                              #:security-group-id-list #:signature-map
                              #:socket-address #:source #:spectrum-config
                              #:status-list #:subnet-list #:tledata
                              #:tledata-list #:tleephemeris #:tag-keys
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tags-map #:time-range
                              #:tle-line-one #:tle-line-two #:tracking-config
                              #:unbounded-string #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-agent-status
                              #:update-agent-status-request
                              #:update-agent-status-response #:update-config
                              #:update-config-request #:update-ephemeris
                              #:update-ephemeris-request
                              #:update-mission-profile
                              #:update-mission-profile-request
                              #:uplink-echo-config #:uplink-spectrum-config
                              #:uuid #:version-string #:version-string-list
                              #:year #:norad-satellite-id #:satellite-arn
                              #:groundstation-error))
(common-lisp:in-package #:pira/groundstation)

(common-lisp:define-condition groundstation-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service ground-station :shape-name "GroundStation"
                                   :version "2019-05-23" :title
                                   "AWS Ground Station" :operations
                                   '(get-minute-usage list-tags-for-resource
                                     tag-resource untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "GroundStation")
                                      ("cloudFormationName"
                                       . "AWSGroundStation")
                                      ("arnNamespace" . "groundstation")
                                      ("cloudTrailEventSource"
                                       . "groundstation.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "groundstation"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type awsregion smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list agent-cpu-cores-list :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure agent-details common-lisp:nil
                                    ((agent-version :target-type version-string
                                      :required common-lisp:t :member-name
                                      "agentVersion")
                                     (instance-id :target-type instance-id
                                      :required common-lisp:t :member-name
                                      "instanceId")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (reserved-cpu-cores :target-type
                                      agent-cpu-cores-list :member-name
                                      "reservedCpuCores")
                                     (agent-cpu-cores :target-type
                                      agent-cpu-cores-list :member-name
                                      "agentCpuCores")
                                     (component-versions :target-type
                                      component-version-list :required
                                      common-lisp:t :member-name
                                      "componentVersions"))
                                    (:shape-name "AgentDetails"))

(smithy/sdk/shapes:define-enum agent-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED")
  (:active "ACTIVE")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-structure aggregate-status common-lisp:nil
                                    ((status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (signature-map :target-type signature-map
                                      :member-name "signatureMap"))
                                    (:shape-name "AggregateStatus"))

(smithy/sdk/shapes:define-enum angle-units
    common-lisp:nil
  (:degree-angle "DEGREE_ANGLE")
  (:radian "RADIAN"))

(smithy/sdk/shapes:define-structure antenna-demod-decode-details
                                    common-lisp:nil
                                    ((output-node :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "outputNode"))
                                    (:shape-name "AntennaDemodDecodeDetails"))

(smithy/sdk/shapes:define-structure antenna-downlink-config common-lisp:nil
                                    ((spectrum-config :target-type
                                      spectrum-config :required common-lisp:t
                                      :member-name "spectrumConfig"))
                                    (:shape-name "AntennaDownlinkConfig"))

(smithy/sdk/shapes:define-structure antenna-downlink-demod-decode-config
                                    common-lisp:nil
                                    ((spectrum-config :target-type
                                      spectrum-config :required common-lisp:t
                                      :member-name "spectrumConfig")
                                     (demodulation-config :target-type
                                      demodulation-config :required
                                      common-lisp:t :member-name
                                      "demodulationConfig")
                                     (decode-config :target-type decode-config
                                      :required common-lisp:t :member-name
                                      "decodeConfig"))
                                    (:shape-name
                                     "AntennaDownlinkDemodDecodeConfig"))

(smithy/sdk/shapes:define-structure antenna-uplink-config common-lisp:nil
                                    ((transmit-disabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "transmitDisabled")
                                     (spectrum-config :target-type
                                      uplink-spectrum-config :required
                                      common-lisp:t :member-name
                                      "spectrumConfig")
                                     (target-eirp :target-type eirp :required
                                      common-lisp:t :member-name "targetEirp"))
                                    (:shape-name "AntennaUplinkConfig"))

(smithy/sdk/shapes:define-type any-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum audit-results
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-structure aws-ground-station-agent-endpoint
                                    common-lisp:nil
                                    ((name :target-type safe-name :required
                                      common-lisp:t :member-name "name")
                                     (egress-address :target-type
                                      connection-details :required
                                      common-lisp:t :member-name
                                      "egressAddress")
                                     (ingress-address :target-type
                                      ranged-connection-details :required
                                      common-lisp:t :member-name
                                      "ingressAddress")
                                     (agent-status :target-type agent-status
                                      :member-name "agentStatus")
                                     (audit-results :target-type audit-results
                                      :member-name "auditResults"))
                                    (:shape-name
                                     "AwsGroundStationAgentEndpoint"))

(smithy/sdk/shapes:define-enum bandwidth-units
    common-lisp:nil
  (:ghz "GHz")
  (:mhz "MHz")
  (:khz "kHz"))

(smithy/sdk/shapes:define-type bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-contact-request common-lisp:nil
                                ((contact-id :target-type uuid :required
                                  common-lisp:t :member-name "contactId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelContactRequest"))

(smithy/sdk/shapes:define-type capability-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list capability-arn-list :member capability-arn)

(smithy/sdk/shapes:define-enum capability-health
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-enum capability-health-reason
    common-lisp:nil
  (:no-registered-agent "NO_REGISTERED_AGENT")
  (:invalid-ip-ownership "INVALID_IP_OWNERSHIP")
  (:not-authorized-to-create-slr "NOT_AUTHORIZED_TO_CREATE_SLR")
  (:unverified-ip-ownership "UNVERIFIED_IP_OWNERSHIP")
  (:initializing-dataplane "INITIALIZING_DATAPLANE")
  (:dataplane-failure "DATAPLANE_FAILURE")
  (:healthy "HEALTHY"))

(smithy/sdk/shapes:define-list capability-health-reason-list :member
                               capability-health-reason)

(smithy/sdk/shapes:define-structure component-status-data common-lisp:nil
                                    ((component-type :target-type
                                      component-type-string :required
                                      common-lisp:t :member-name
                                      "componentType")
                                     (capability-arn :target-type
                                      capability-arn :required common-lisp:t
                                      :member-name "capabilityArn")
                                     (status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (bytes-sent :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "bytesSent")
                                     (bytes-received :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "bytesReceived")
                                     (packets-dropped :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "packetsDropped")
                                     (dataflow-id :target-type uuid :required
                                      common-lisp:t :member-name "dataflowId"))
                                    (:shape-name "ComponentStatusData"))

(smithy/sdk/shapes:define-list component-status-list :member
                               component-status-data)

(smithy/sdk/shapes:define-type component-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-version common-lisp:nil
                                    ((component-type :target-type
                                      component-type-string :required
                                      common-lisp:t :member-name
                                      "componentType")
                                     (versions :target-type version-string-list
                                      :required common-lisp:t :member-name
                                      "versions"))
                                    (:shape-name "ComponentVersion"))

(smithy/sdk/shapes:define-list component-version-list :member component-version)

common-lisp:nil

(smithy/sdk/shapes:define-type config-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum config-capability-type
    common-lisp:nil
  (:antenna-downlink "antenna-downlink")
  (:antenna-downlink-demod-decode "antenna-downlink-demod-decode")
  (:tracking "tracking")
  (:dataflow-endpoint "dataflow-endpoint")
  (:antenna-uplink "antenna-uplink")
  (:uplink-echo "uplink-echo")
  (:s3-recording "s3-recording"))

(smithy/sdk/shapes:define-union config-details common-lisp:nil
                                ((endpoint-details :target-type
                                  endpoint-details :member-name
                                  "endpointDetails")
                                 (antenna-demod-decode-details :target-type
                                  antenna-demod-decode-details :member-name
                                  "antennaDemodDecodeDetails")
                                 (s3recording-details :target-type
                                  s3recording-details :member-name
                                  "s3RecordingDetails"))
                                (:shape-name "ConfigDetails"))

(smithy/sdk/shapes:define-structure config-id-response common-lisp:nil
                                    ((config-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "configId")
                                     (config-type :target-type
                                      config-capability-type :member-name
                                      "configType")
                                     (config-arn :target-type config-arn
                                      :member-name "configArn"))
                                    (:shape-name "ConfigIdResponse"))

(smithy/sdk/shapes:define-list config-list :member config-list-item)

(smithy/sdk/shapes:define-structure config-list-item common-lisp:nil
                                    ((config-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "configId")
                                     (config-type :target-type
                                      config-capability-type :member-name
                                      "configType")
                                     (config-arn :target-type config-arn
                                      :member-name "configArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "ConfigListItem"))

(smithy/sdk/shapes:define-union config-type-data common-lisp:nil
                                ((antenna-downlink-config :target-type
                                  antenna-downlink-config :member-name
                                  "antennaDownlinkConfig")
                                 (tracking-config :target-type tracking-config
                                  :member-name "trackingConfig")
                                 (dataflow-endpoint-config :target-type
                                  dataflow-endpoint-config :member-name
                                  "dataflowEndpointConfig")
                                 (antenna-downlink-demod-decode-config
                                  :target-type
                                  antenna-downlink-demod-decode-config
                                  :member-name
                                  "antennaDownlinkDemodDecodeConfig")
                                 (antenna-uplink-config :target-type
                                  antenna-uplink-config :member-name
                                  "antennaUplinkConfig")
                                 (uplink-echo-config :target-type
                                  uplink-echo-config :member-name
                                  "uplinkEchoConfig")
                                 (s3recording-config :target-type
                                  s3recording-config :member-name
                                  "s3RecordingConfig"))
                                (:shape-name "ConfigTypeData"))

(smithy/sdk/shapes:define-structure connection-details common-lisp:nil
                                    ((socket-address :target-type
                                      socket-address :required common-lisp:t
                                      :member-name "socketAddress")
                                     (mtu :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "mtu"))
                                    (:shape-name "ConnectionDetails"))

common-lisp:nil

(smithy/sdk/shapes:define-structure contact-data common-lisp:nil
                                    ((contact-id :target-type uuid :member-name
                                      "contactId")
                                     (mission-profile-arn :target-type
                                      mission-profile-arn :member-name
                                      "missionProfileArn")
                                     (satellite-arn :target-type satellite-arn
                                      :member-name "satelliteArn")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (pre-pass-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "prePassStartTime")
                                     (post-pass-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "postPassEndTime")
                                     (ground-station :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "groundStation")
                                     (contact-status :target-type
                                      contact-status :member-name
                                      "contactStatus")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (maximum-elevation :target-type elevation
                                      :member-name "maximumElevation")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (visibility-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "visibilityStartTime")
                                     (visibility-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "visibilityEndTime"))
                                    (:shape-name "ContactData"))

(smithy/sdk/shapes:define-structure contact-id-response common-lisp:nil
                                    ((contact-id :target-type uuid :member-name
                                      "contactId"))
                                    (:shape-name "ContactIdResponse"))

(smithy/sdk/shapes:define-list contact-list :member contact-data)

(smithy/sdk/shapes:define-enum contact-status
    common-lisp:nil
  (:scheduling "SCHEDULING")
  (:failed-to-schedule "FAILED_TO_SCHEDULE")
  (:scheduled "SCHEDULED")
  (:cancelled "CANCELLED")
  (:aws-cancelled "AWS_CANCELLED")
  (:prepass "PREPASS")
  (:pass "PASS")
  (:postpass "POSTPASS")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:available "AVAILABLE")
  (:cancelling "CANCELLING")
  (:aws-failed "AWS_FAILED"))

(smithy/sdk/shapes:define-structure create-config-request common-lisp:nil
                                    ((name :target-type safe-name :required
                                      common-lisp:t :member-name "name")
                                     (config-data :target-type config-type-data
                                      :required common-lisp:t :member-name
                                      "configData")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "CreateConfigRequest"))

(smithy/sdk/shapes:define-structure create-dataflow-endpoint-group-request
                                    common-lisp:nil
                                    ((endpoint-details :target-type
                                      endpoint-details-list :required
                                      common-lisp:t :member-name
                                      "endpointDetails")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (contact-pre-pass-duration-seconds
                                      :target-type
                                      dataflow-endpoint-group-duration-in-seconds
                                      :member-name
                                      "contactPrePassDurationSeconds")
                                     (contact-post-pass-duration-seconds
                                      :target-type
                                      dataflow-endpoint-group-duration-in-seconds
                                      :member-name
                                      "contactPostPassDurationSeconds"))
                                    (:shape-name
                                     "CreateDataflowEndpointGroupRequest"))

(smithy/sdk/shapes:define-structure create-ephemeris-request common-lisp:nil
                                    ((satellite-id :target-type uuid :required
                                      common-lisp:t :member-name "satelliteId")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (priority :target-type
                                      customer-ephemeris-priority :member-name
                                      "priority")
                                     (expiration-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "expirationTime")
                                     (name :target-type safe-name :required
                                      common-lisp:t :member-name "name")
                                     (kms-key-arn :target-type key-arn
                                      :member-name "kmsKeyArn")
                                     (ephemeris :target-type ephemeris-data
                                      :member-name "ephemeris")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "CreateEphemerisRequest"))

(smithy/sdk/shapes:define-structure create-mission-profile-request
                                    common-lisp:nil
                                    ((name :target-type safe-name :required
                                      common-lisp:t :member-name "name")
                                     (contact-pre-pass-duration-seconds
                                      :target-type duration-in-seconds
                                      :member-name
                                      "contactPrePassDurationSeconds")
                                     (contact-post-pass-duration-seconds
                                      :target-type duration-in-seconds
                                      :member-name
                                      "contactPostPassDurationSeconds")
                                     (minimum-viable-contact-duration-seconds
                                      :target-type positive-duration-in-seconds
                                      :required common-lisp:t :member-name
                                      "minimumViableContactDurationSeconds")
                                     (dataflow-edges :target-type
                                      dataflow-edge-list :required
                                      common-lisp:t :member-name
                                      "dataflowEdges")
                                     (tracking-config-arn :target-type
                                      config-arn :required common-lisp:t
                                      :member-name "trackingConfigArn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (streams-kms-key :target-type kms-key
                                      :member-name "streamsKmsKey")
                                     (streams-kms-role :target-type role-arn
                                      :member-name "streamsKmsRole"))
                                    (:shape-name "CreateMissionProfileRequest"))

(smithy/sdk/shapes:define-enum criticality
    common-lisp:nil
  (:required "REQUIRED")
  (:preferred "PREFERRED")
  (:removed "REMOVED"))

(smithy/sdk/shapes:define-type customer-ephemeris-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure dataflow-detail common-lisp:nil
                                    ((source :target-type source :member-name
                                      "source")
                                     (destination :target-type destination
                                      :member-name "destination")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name "DataflowDetail"))

(smithy/sdk/shapes:define-list dataflow-edge :member config-arn)

(smithy/sdk/shapes:define-list dataflow-edge-list :member dataflow-edge)

(smithy/sdk/shapes:define-structure dataflow-endpoint common-lisp:nil
                                    ((name :target-type safe-name :member-name
                                      "name")
                                     (address :target-type socket-address
                                      :member-name "address")
                                     (status :target-type endpoint-status
                                      :member-name "status")
                                     (mtu :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "mtu"))
                                    (:shape-name "DataflowEndpoint"))

(smithy/sdk/shapes:define-structure dataflow-endpoint-config common-lisp:nil
                                    ((dataflow-endpoint-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "dataflowEndpointName")
                                     (dataflow-endpoint-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataflowEndpointRegion"))
                                    (:shape-name "DataflowEndpointConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-type dataflow-endpoint-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataflow-endpoint-group-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure dataflow-endpoint-group-id-response
                                    common-lisp:nil
                                    ((dataflow-endpoint-group-id :target-type
                                      uuid :member-name
                                      "dataflowEndpointGroupId"))
                                    (:shape-name
                                     "DataflowEndpointGroupIdResponse"))

(smithy/sdk/shapes:define-list dataflow-endpoint-group-list :member
                               dataflow-endpoint-list-item)

(smithy/sdk/shapes:define-structure dataflow-endpoint-list-item common-lisp:nil
                                    ((dataflow-endpoint-group-id :target-type
                                      uuid :member-name
                                      "dataflowEndpointGroupId")
                                     (dataflow-endpoint-group-arn :target-type
                                      dataflow-endpoint-group-arn :member-name
                                      "dataflowEndpointGroupArn"))
                                    (:shape-name "DataflowEndpointListItem"))

(smithy/sdk/shapes:define-list dataflow-list :member dataflow-detail)

(smithy/sdk/shapes:define-structure decode-config common-lisp:nil
                                    ((unvalidated-json :target-type json-string
                                      :required common-lisp:t :member-name
                                      "unvalidatedJSON"))
                                    (:shape-name "DecodeConfig"))

(smithy/sdk/shapes:define-input delete-config-request common-lisp:nil
                                ((config-id :target-type uuid :required
                                  common-lisp:t :member-name "configId"
                                  :http-label common-lisp:t)
                                 (config-type :target-type
                                  config-capability-type :required
                                  common-lisp:t :member-name "configType"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteConfigRequest"))

(smithy/sdk/shapes:define-input delete-dataflow-endpoint-group-request
                                common-lisp:nil
                                ((dataflow-endpoint-group-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "dataflowEndpointGroupId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteDataflowEndpointGroupRequest"))

(smithy/sdk/shapes:define-input delete-ephemeris-request common-lisp:nil
                                ((ephemeris-id :target-type uuid :required
                                  common-lisp:t :member-name "ephemerisId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEphemerisRequest"))

(smithy/sdk/shapes:define-input delete-mission-profile-request common-lisp:nil
                                ((mission-profile-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "missionProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMissionProfileRequest"))

(smithy/sdk/shapes:define-structure demodulation-config common-lisp:nil
                                    ((unvalidated-json :target-type json-string
                                      :required common-lisp:t :member-name
                                      "unvalidatedJSON"))
                                    (:shape-name "DemodulationConfig"))

(smithy/sdk/shapes:define-error dependency-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (parameter-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "parameterName"))
                                (:shape-name "DependencyException")
                                (:error-code 531)
                                (:base-class groundstation-error))

(smithy/sdk/shapes:define-input describe-contact-request common-lisp:nil
                                ((contact-id :target-type uuid :required
                                  common-lisp:t :member-name "contactId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeContactRequest"))

(smithy/sdk/shapes:define-structure describe-contact-response common-lisp:nil
                                    ((contact-id :target-type uuid :member-name
                                      "contactId")
                                     (mission-profile-arn :target-type
                                      mission-profile-arn :member-name
                                      "missionProfileArn")
                                     (satellite-arn :target-type satellite-arn
                                      :member-name "satelliteArn")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (pre-pass-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "prePassStartTime")
                                     (post-pass-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "postPassEndTime")
                                     (ground-station :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "groundStation")
                                     (contact-status :target-type
                                      contact-status :member-name
                                      "contactStatus")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (maximum-elevation :target-type elevation
                                      :member-name "maximumElevation")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (dataflow-list :target-type dataflow-list
                                      :member-name "dataflowList")
                                     (visibility-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "visibilityStartTime")
                                     (visibility-end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "visibilityEndTime"))
                                    (:shape-name "DescribeContactResponse"))

(smithy/sdk/shapes:define-input describe-ephemeris-request common-lisp:nil
                                ((ephemeris-id :target-type uuid :required
                                  common-lisp:t :member-name "ephemerisId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeEphemerisRequest"))

(smithy/sdk/shapes:define-structure describe-ephemeris-response common-lisp:nil
                                    ((ephemeris-id :target-type uuid
                                      :member-name "ephemerisId")
                                     (satellite-id :target-type uuid
                                      :member-name "satelliteId")
                                     (status :target-type ephemeris-status
                                      :member-name "status")
                                     (priority :target-type ephemeris-priority
                                      :member-name "priority")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (name :target-type safe-name :member-name
                                      "name")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (supplied-data :target-type
                                      ephemeris-type-description :member-name
                                      "suppliedData")
                                     (invalid-reason :target-type
                                      ephemeris-invalid-reason :member-name
                                      "invalidReason"))
                                    (:shape-name "DescribeEphemerisResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((config-type :target-type
                                      config-capability-type :member-name
                                      "configType")
                                     (config-id :target-type uuid :member-name
                                      "configId")
                                     (config-details :target-type
                                      config-details :member-name
                                      "configDetails")
                                     (dataflow-destination-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "dataflowDestinationRegion"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure discovery-data common-lisp:nil
                                    ((public-ip-addresses :target-type
                                      ip-address-list :required common-lisp:t
                                      :member-name "publicIpAddresses")
                                     (private-ip-addresses :target-type
                                      ip-address-list :required common-lisp:t
                                      :member-name "privateIpAddresses")
                                     (capability-arns :target-type
                                      capability-arn-list :required
                                      common-lisp:t :member-name
                                      "capabilityArns"))
                                    (:shape-name "DiscoveryData"))

(smithy/sdk/shapes:define-type duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure eirp common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "value")
                                     (units :target-type eirp-units :required
                                      common-lisp:t :member-name "units"))
                                    (:shape-name "Eirp"))

(smithy/sdk/shapes:define-enum eirp-units
    common-lisp:nil
  (:dbw "dBW"))

(smithy/sdk/shapes:define-structure elevation common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "value")
                                     (unit :target-type angle-units :required
                                      common-lisp:t :member-name "unit"))
                                    (:shape-name "Elevation"))

(smithy/sdk/shapes:define-structure endpoint-details common-lisp:nil
                                    ((security-details :target-type
                                      security-details :member-name
                                      "securityDetails")
                                     (endpoint :target-type dataflow-endpoint
                                      :member-name "endpoint")
                                     (aws-ground-station-agent-endpoint
                                      :target-type
                                      aws-ground-station-agent-endpoint
                                      :member-name
                                      "awsGroundStationAgentEndpoint")
                                     (health-status :target-type
                                      capability-health :member-name
                                      "healthStatus")
                                     (health-reasons :target-type
                                      capability-health-reason-list
                                      :member-name "healthReasons"))
                                    (:shape-name "EndpointDetails"))

(smithy/sdk/shapes:define-list endpoint-details-list :member endpoint-details)

(smithy/sdk/shapes:define-enum endpoint-status
    common-lisp:nil
  (:created "created")
  (:creating "creating")
  (:deleted "deleted")
  (:deleting "deleting")
  (:failed "failed"))

(smithy/sdk/shapes:define-list ephemerides-list :member ephemeris-item)

common-lisp:nil

(smithy/sdk/shapes:define-union ephemeris-data common-lisp:nil
                                ((tle :target-type tleephemeris :member-name
                                  "tle")
                                 (oem :target-type oemephemeris :member-name
                                  "oem"))
                                (:shape-name "EphemerisData"))

(smithy/sdk/shapes:define-structure ephemeris-description common-lisp:nil
                                    ((source-s3object :target-type s3object
                                      :member-name "sourceS3Object")
                                     (ephemeris-data :target-type
                                      unbounded-string :member-name
                                      "ephemerisData"))
                                    (:shape-name "EphemerisDescription"))

(smithy/sdk/shapes:define-structure ephemeris-id-response common-lisp:nil
                                    ((ephemeris-id :target-type uuid
                                      :member-name "ephemerisId"))
                                    (:shape-name "EphemerisIdResponse"))

(smithy/sdk/shapes:define-enum ephemeris-invalid-reason
    common-lisp:nil
  (:metadata-invalid "METADATA_INVALID")
  (:time-range-invalid "TIME_RANGE_INVALID")
  (:trajectory-invalid "TRAJECTORY_INVALID")
  (:kms-key-invalid "KMS_KEY_INVALID")
  (:validation-error "VALIDATION_ERROR"))

(smithy/sdk/shapes:define-structure ephemeris-item common-lisp:nil
                                    ((ephemeris-id :target-type uuid
                                      :member-name "ephemerisId")
                                     (status :target-type ephemeris-status
                                      :member-name "status")
                                     (priority :target-type ephemeris-priority
                                      :member-name "priority")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (name :target-type safe-name :member-name
                                      "name")
                                     (source-s3object :target-type s3object
                                      :member-name "sourceS3Object"))
                                    (:shape-name "EphemerisItem"))

(smithy/sdk/shapes:define-structure ephemeris-meta-data common-lisp:nil
                                    ((source :target-type ephemeris-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (ephemeris-id :target-type uuid
                                      :member-name "ephemerisId")
                                     (epoch :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "epoch")
                                     (name :target-type safe-name :member-name
                                      "name"))
                                    (:shape-name "EphemerisMetaData"))

(smithy/sdk/shapes:define-type ephemeris-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum ephemeris-source
    common-lisp:nil
  (:customer-provided "CUSTOMER_PROVIDED")
  (:space-track "SPACE_TRACK"))

(smithy/sdk/shapes:define-enum ephemeris-status
    common-lisp:nil
  (:validating "VALIDATING")
  (:invalid "INVALID")
  (:error "ERROR")
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-list ephemeris-status-list :member ephemeris-status)

(smithy/sdk/shapes:define-union ephemeris-type-description common-lisp:nil
                                ((tle :target-type ephemeris-description
                                  :member-name "tle")
                                 (oem :target-type ephemeris-description
                                  :member-name "oem"))
                                (:shape-name "EphemerisTypeDescription"))

(smithy/sdk/shapes:define-structure frequency common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "value")
                                     (units :target-type frequency-units
                                      :required common-lisp:t :member-name
                                      "units"))
                                    (:shape-name "Frequency"))

(smithy/sdk/shapes:define-structure frequency-bandwidth common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "value")
                                     (units :target-type bandwidth-units
                                      :required common-lisp:t :member-name
                                      "units"))
                                    (:shape-name "FrequencyBandwidth"))

(smithy/sdk/shapes:define-enum frequency-units
    common-lisp:nil
  (:ghz "GHz")
  (:mhz "MHz")
  (:khz "kHz"))

(smithy/sdk/shapes:define-input get-agent-configuration-request common-lisp:nil
                                ((agent-id :target-type uuid :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAgentConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-agent-configuration-response
                                    common-lisp:nil
                                    ((agent-id :target-type uuid :member-name
                                      "agentId")
                                     (tasking-document :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskingDocument"))
                                    (:shape-name
                                     "GetAgentConfigurationResponse"))

(smithy/sdk/shapes:define-input get-config-request common-lisp:nil
                                ((config-id :target-type uuid :required
                                  common-lisp:t :member-name "configId"
                                  :http-label common-lisp:t)
                                 (config-type :target-type
                                  config-capability-type :required
                                  common-lisp:t :member-name "configType"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConfigRequest"))

(smithy/sdk/shapes:define-structure get-config-response common-lisp:nil
                                    ((config-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "configId")
                                     (config-arn :target-type config-arn
                                      :required common-lisp:t :member-name
                                      "configArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (config-type :target-type
                                      config-capability-type :member-name
                                      "configType")
                                     (config-data :target-type config-type-data
                                      :required common-lisp:t :member-name
                                      "configData")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "GetConfigResponse"))

(smithy/sdk/shapes:define-input get-dataflow-endpoint-group-request
                                common-lisp:nil
                                ((dataflow-endpoint-group-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "dataflowEndpointGroupId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDataflowEndpointGroupRequest"))

(smithy/sdk/shapes:define-structure get-dataflow-endpoint-group-response
                                    common-lisp:nil
                                    ((dataflow-endpoint-group-id :target-type
                                      uuid :member-name
                                      "dataflowEndpointGroupId")
                                     (dataflow-endpoint-group-arn :target-type
                                      dataflow-endpoint-group-arn :member-name
                                      "dataflowEndpointGroupArn")
                                     (endpoints-details :target-type
                                      endpoint-details-list :member-name
                                      "endpointsDetails")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (contact-pre-pass-duration-seconds
                                      :target-type
                                      dataflow-endpoint-group-duration-in-seconds
                                      :member-name
                                      "contactPrePassDurationSeconds")
                                     (contact-post-pass-duration-seconds
                                      :target-type
                                      dataflow-endpoint-group-duration-in-seconds
                                      :member-name
                                      "contactPostPassDurationSeconds"))
                                    (:shape-name
                                     "GetDataflowEndpointGroupResponse"))

(smithy/sdk/shapes:define-structure get-minute-usage-request common-lisp:nil
                                    ((month :target-type month :required
                                      common-lisp:t :member-name "month")
                                     (year :target-type year :required
                                      common-lisp:t :member-name "year"))
                                    (:shape-name "GetMinuteUsageRequest"))

(smithy/sdk/shapes:define-structure get-minute-usage-response common-lisp:nil
                                    ((is-reserved-minutes-customer :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isReservedMinutesCustomer")
                                     (total-reserved-minute-allocation
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "totalReservedMinuteAllocation")
                                     (upcoming-minutes-scheduled :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "upcomingMinutesScheduled")
                                     (total-scheduled-minutes :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalScheduledMinutes")
                                     (estimated-minutes-remaining :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "estimatedMinutesRemaining"))
                                    (:shape-name "GetMinuteUsageResponse"))

(smithy/sdk/shapes:define-input get-mission-profile-request common-lisp:nil
                                ((mission-profile-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "missionProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMissionProfileRequest"))

(smithy/sdk/shapes:define-structure get-mission-profile-response
                                    common-lisp:nil
                                    ((mission-profile-id :target-type uuid
                                      :member-name "missionProfileId")
                                     (mission-profile-arn :target-type
                                      mission-profile-arn :member-name
                                      "missionProfileArn")
                                     (name :target-type safe-name :member-name
                                      "name")
                                     (region :target-type awsregion
                                      :member-name "region")
                                     (contact-pre-pass-duration-seconds
                                      :target-type duration-in-seconds
                                      :member-name
                                      "contactPrePassDurationSeconds")
                                     (contact-post-pass-duration-seconds
                                      :target-type duration-in-seconds
                                      :member-name
                                      "contactPostPassDurationSeconds")
                                     (minimum-viable-contact-duration-seconds
                                      :target-type positive-duration-in-seconds
                                      :member-name
                                      "minimumViableContactDurationSeconds")
                                     (dataflow-edges :target-type
                                      dataflow-edge-list :member-name
                                      "dataflowEdges")
                                     (tracking-config-arn :target-type
                                      config-arn :member-name
                                      "trackingConfigArn")
                                     (tags :target-type tags-map :member-name
                                      "tags")
                                     (streams-kms-key :target-type kms-key
                                      :member-name "streamsKmsKey")
                                     (streams-kms-role :target-type role-arn
                                      :member-name "streamsKmsRole"))
                                    (:shape-name "GetMissionProfileResponse"))

(smithy/sdk/shapes:define-input get-satellite-request common-lisp:nil
                                ((satellite-id :target-type uuid :required
                                  common-lisp:t :member-name "satelliteId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSatelliteRequest"))

(smithy/sdk/shapes:define-structure get-satellite-response common-lisp:nil
                                    ((satellite-id :target-type uuid
                                      :member-name "satelliteId")
                                     (satellite-arn :target-type satellite-arn
                                      :member-name "satelliteArn")
                                     (norad-satellite-id :target-type
                                      norad-satellite-id :member-name
                                      "noradSatelliteID")
                                     (ground-stations :target-type
                                      ground-station-id-list :member-name
                                      "groundStations")
                                     (current-ephemeris :target-type
                                      ephemeris-meta-data :member-name
                                      "currentEphemeris"))
                                    (:shape-name "GetSatelliteResponse"))

(smithy/sdk/shapes:define-structure ground-station-data common-lisp:nil
                                    ((ground-station-id :target-type
                                      ground-station-name :member-name
                                      "groundStationId")
                                     (ground-station-name :target-type
                                      ground-station-name :member-name
                                      "groundStationName")
                                     (region :target-type awsregion
                                      :member-name "region"))
                                    (:shape-name "GroundStationData"))

(smithy/sdk/shapes:define-list ground-station-id-list :member
                               ground-station-name)

(smithy/sdk/shapes:define-list ground-station-list :member ground-station-data)

(smithy/sdk/shapes:define-type ground-station-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure integer-range common-lisp:nil
                                    ((minimum :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "minimum")
                                     (maximum :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "maximum"))
                                    (:shape-name "IntegerRange"))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (parameter-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "parameterName"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 431)
                                (:base-class groundstation-error))

(smithy/sdk/shapes:define-list ip-address-list :member ip-v4address)

(smithy/sdk/shapes:define-type ip-v4address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type json-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-alias-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-alias-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union kms-key common-lisp:nil
                                ((kms-key-arn :target-type key-arn :member-name
                                  "kmsKeyArn")
                                 (kms-alias-arn :target-type key-alias-arn
                                  :member-name "kmsAliasArn")
                                 (kms-alias-name :target-type key-alias-name
                                  :member-name "kmsAliasName"))
                                (:shape-name "KmsKey"))

(smithy/sdk/shapes:define-input list-configs-request common-lisp:nil
                                ((max-results :target-type
                                  pagination-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListConfigsRequest"))

(smithy/sdk/shapes:define-structure list-configs-response common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (config-list :target-type config-list
                                      :member-name "configList"))
                                    (:shape-name "ListConfigsResponse"))

(smithy/sdk/shapes:define-structure list-contacts-request common-lisp:nil
                                    ((max-results :target-type
                                      pagination-max-results :member-name
                                      "maxResults")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (status-list :target-type status-list
                                      :required common-lisp:t :member-name
                                      "statusList")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "endTime")
                                     (ground-station :target-type
                                      ground-station-name :member-name
                                      "groundStation")
                                     (satellite-arn :target-type satellite-arn
                                      :member-name "satelliteArn")
                                     (mission-profile-arn :target-type
                                      mission-profile-arn :member-name
                                      "missionProfileArn"))
                                    (:shape-name "ListContactsRequest"))

(smithy/sdk/shapes:define-structure list-contacts-response common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (contact-list :target-type contact-list
                                      :member-name "contactList"))
                                    (:shape-name "ListContactsResponse"))

(smithy/sdk/shapes:define-input list-dataflow-endpoint-groups-request
                                common-lisp:nil
                                ((max-results :target-type
                                  pagination-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListDataflowEndpointGroupsRequest"))

(smithy/sdk/shapes:define-structure list-dataflow-endpoint-groups-response
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (dataflow-endpoint-group-list :target-type
                                      dataflow-endpoint-group-list :member-name
                                      "dataflowEndpointGroupList"))
                                    (:shape-name
                                     "ListDataflowEndpointGroupsResponse"))

(smithy/sdk/shapes:define-input list-ephemerides-request common-lisp:nil
                                ((satellite-id :target-type uuid :required
                                  common-lisp:t :member-name "satelliteId")
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "startTime")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "endTime")
                                 (status-list :target-type
                                  ephemeris-status-list :member-name
                                  "statusList")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListEphemeridesRequest"))

(smithy/sdk/shapes:define-structure list-ephemerides-response common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (ephemerides :target-type ephemerides-list
                                      :member-name "ephemerides"))
                                    (:shape-name "ListEphemeridesResponse"))

(smithy/sdk/shapes:define-input list-ground-stations-request common-lisp:nil
                                ((satellite-id :target-type uuid :member-name
                                  "satelliteId" :http-query "satelliteId")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListGroundStationsRequest"))

(smithy/sdk/shapes:define-structure list-ground-stations-response
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (ground-station-list :target-type
                                      ground-station-list :member-name
                                      "groundStationList"))
                                    (:shape-name "ListGroundStationsResponse"))

(smithy/sdk/shapes:define-input list-mission-profiles-request common-lisp:nil
                                ((max-results :target-type
                                  pagination-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListMissionProfilesRequest"))

(smithy/sdk/shapes:define-structure list-mission-profiles-response
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (mission-profile-list :target-type
                                      mission-profile-list :member-name
                                      "missionProfileList"))
                                    (:shape-name "ListMissionProfilesResponse"))

(smithy/sdk/shapes:define-input list-satellites-request common-lisp:nil
                                ((max-results :target-type
                                  pagination-max-results :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSatellitesRequest"))

(smithy/sdk/shapes:define-structure list-satellites-response common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (satellites :target-type satellite-list
                                      :member-name "satellites"))
                                    (:shape-name "ListSatellitesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type any-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type mission-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mission-profile-id-response common-lisp:nil
                                    ((mission-profile-id :target-type uuid
                                      :member-name "missionProfileId"))
                                    (:shape-name "MissionProfileIdResponse"))

(smithy/sdk/shapes:define-list mission-profile-list :member
                               mission-profile-list-item)

(smithy/sdk/shapes:define-structure mission-profile-list-item common-lisp:nil
                                    ((mission-profile-id :target-type uuid
                                      :member-name "missionProfileId")
                                     (mission-profile-arn :target-type
                                      mission-profile-arn :member-name
                                      "missionProfileArn")
                                     (region :target-type awsregion
                                      :member-name "region")
                                     (name :target-type safe-name :member-name
                                      "name"))
                                    (:shape-name "MissionProfileListItem"))

(smithy/sdk/shapes:define-type month smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure oemephemeris common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "s3Object")
                                     (oem-data :target-type unbounded-string
                                      :member-name "oemData"))
                                    (:shape-name "OEMEphemeris"))

(smithy/sdk/shapes:define-type pagination-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum polarization
    common-lisp:nil
  (:right-hand "RIGHT_HAND")
  (:left-hand "LEFT_HAND")
  (:none "NONE"))

(smithy/sdk/shapes:define-type positive-duration-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure ranged-connection-details common-lisp:nil
                                    ((socket-address :target-type
                                      ranged-socket-address :required
                                      common-lisp:t :member-name
                                      "socketAddress")
                                     (mtu :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "mtu"))
                                    (:shape-name "RangedConnectionDetails"))

(smithy/sdk/shapes:define-structure ranged-socket-address common-lisp:nil
                                    ((name :target-type ip-v4address :required
                                      common-lisp:t :member-name "name")
                                     (port-range :target-type integer-range
                                      :required common-lisp:t :member-name
                                      "portRange"))
                                    (:shape-name "RangedSocketAddress"))

(smithy/sdk/shapes:define-structure register-agent-request common-lisp:nil
                                    ((discovery-data :target-type
                                      discovery-data :required common-lisp:t
                                      :member-name "discoveryData")
                                     (agent-details :target-type agent-details
                                      :required common-lisp:t :member-name
                                      "agentDetails")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "RegisterAgentRequest"))

(smithy/sdk/shapes:define-structure register-agent-response common-lisp:nil
                                    ((agent-id :target-type uuid :member-name
                                      "agentId"))
                                    (:shape-name "RegisterAgentResponse"))

(smithy/sdk/shapes:define-structure reserve-contact-request common-lisp:nil
                                    ((mission-profile-arn :target-type
                                      mission-profile-arn :required
                                      common-lisp:t :member-name
                                      "missionProfileArn")
                                     (satellite-arn :target-type satellite-arn
                                      :required common-lisp:t :member-name
                                      "satelliteArn")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "endTime")
                                     (ground-station :target-type
                                      ground-station-name :required
                                      common-lisp:t :member-name
                                      "groundStation")
                                     (tags :target-type tags-map :member-name
                                      "tags"))
                                    (:shape-name "ReserveContactRequest"))

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (parameter-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "parameterName"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 429)
                                (:base-class groundstation-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 434)
                                (:base-class groundstation-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((bucket :target-type s3bucket-name
                                      :member-name "bucket")
                                     (key :target-type s3object-key
                                      :member-name "key")
                                     (version :target-type s3version-id
                                      :member-name "version"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-type s3object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3recording-config common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :required common-lisp:t :member-name
                                      "bucketArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (prefix :target-type s3key-prefix
                                      :member-name "prefix"))
                                    (:shape-name "S3RecordingConfig"))

(smithy/sdk/shapes:define-structure s3recording-details common-lisp:nil
                                    ((bucket-arn :target-type bucket-arn
                                      :member-name "bucketArn")
                                     (key-template :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "keyTemplate"))
                                    (:shape-name "S3RecordingDetails"))

(smithy/sdk/shapes:define-type s3version-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type safe-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list satellite-list :member satellite-list-item)

(smithy/sdk/shapes:define-structure satellite-list-item common-lisp:nil
                                    ((satellite-id :target-type uuid
                                      :member-name "satelliteId")
                                     (satellite-arn :target-type satellite-arn
                                      :member-name "satelliteArn")
                                     (norad-satellite-id :target-type
                                      norad-satellite-id :member-name
                                      "noradSatelliteID")
                                     (ground-stations :target-type
                                      ground-station-id-list :member-name
                                      "groundStations")
                                     (current-ephemeris :target-type
                                      ephemeris-meta-data :member-name
                                      "currentEphemeris"))
                                    (:shape-name "SatelliteListItem"))

(smithy/sdk/shapes:define-structure security-details common-lisp:nil
                                    ((subnet-ids :target-type subnet-list
                                      :required common-lisp:t :member-name
                                      "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "securityGroupIds")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "SecurityDetails"))

(smithy/sdk/shapes:define-list security-group-id-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map signature-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure socket-address common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "port"))
                                    (:shape-name "SocketAddress"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((config-type :target-type
                                      config-capability-type :member-name
                                      "configType")
                                     (config-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "configId")
                                     (config-details :target-type
                                      config-details :member-name
                                      "configDetails")
                                     (dataflow-source-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dataflowSourceRegion"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-structure spectrum-config common-lisp:nil
                                    ((center-frequency :target-type frequency
                                      :required common-lisp:t :member-name
                                      "centerFrequency")
                                     (bandwidth :target-type
                                      frequency-bandwidth :required
                                      common-lisp:t :member-name "bandwidth")
                                     (polarization :target-type polarization
                                      :member-name "polarization"))
                                    (:shape-name "SpectrumConfig"))

(smithy/sdk/shapes:define-list status-list :member contact-status)

(smithy/sdk/shapes:define-list subnet-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tledata common-lisp:nil
                                    ((tle-line1 :target-type tle-line-one
                                      :required common-lisp:t :member-name
                                      "tleLine1")
                                     (tle-line2 :target-type tle-line-two
                                      :required common-lisp:t :member-name
                                      "tleLine2")
                                     (valid-time-range :target-type time-range
                                      :required common-lisp:t :member-name
                                      "validTimeRange"))
                                    (:shape-name "TLEData"))

(smithy/sdk/shapes:define-list tledata-list :member tledata)

(smithy/sdk/shapes:define-structure tleephemeris common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "s3Object")
                                     (tle-data :target-type tledata-list
                                      :member-name "tleData"))
                                    (:shape-name "TLEEphemeris"))

(smithy/sdk/shapes:define-list tag-keys :member unbounded-string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type any-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "endTime"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-type tle-line-one smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tle-line-two smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tracking-config common-lisp:nil
                                    ((autotrack :target-type criticality
                                      :required common-lisp:t :member-name
                                      "autotrack"))
                                    (:shape-name "TrackingConfig"))

(smithy/sdk/shapes:define-type unbounded-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type any-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-agent-status-request common-lisp:nil
                                ((agent-id :target-type uuid :required
                                  common-lisp:t :member-name "agentId"
                                  :http-label common-lisp:t)
                                 (task-id :target-type uuid :required
                                  common-lisp:t :member-name "taskId")
                                 (aggregate-status :target-type
                                  aggregate-status :required common-lisp:t
                                  :member-name "aggregateStatus")
                                 (component-statuses :target-type
                                  component-status-list :required common-lisp:t
                                  :member-name "componentStatuses"))
                                (:shape-name "UpdateAgentStatusRequest"))

(smithy/sdk/shapes:define-structure update-agent-status-response
                                    common-lisp:nil
                                    ((agent-id :target-type uuid :required
                                      common-lisp:t :member-name "agentId"))
                                    (:shape-name "UpdateAgentStatusResponse"))

(smithy/sdk/shapes:define-input update-config-request common-lisp:nil
                                ((config-id :target-type uuid :required
                                  common-lisp:t :member-name "configId"
                                  :http-label common-lisp:t)
                                 (name :target-type safe-name :required
                                  common-lisp:t :member-name "name")
                                 (config-type :target-type
                                  config-capability-type :required
                                  common-lisp:t :member-name "configType"
                                  :http-label common-lisp:t)
                                 (config-data :target-type config-type-data
                                  :required common-lisp:t :member-name
                                  "configData"))
                                (:shape-name "UpdateConfigRequest"))

(smithy/sdk/shapes:define-input update-ephemeris-request common-lisp:nil
                                ((ephemeris-id :target-type uuid :required
                                  common-lisp:t :member-name "ephemerisId"
                                  :http-label common-lisp:t)
                                 (enabled :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "enabled")
                                 (name :target-type safe-name :member-name
                                  "name")
                                 (priority :target-type ephemeris-priority
                                  :member-name "priority"))
                                (:shape-name "UpdateEphemerisRequest"))

(smithy/sdk/shapes:define-input update-mission-profile-request common-lisp:nil
                                ((mission-profile-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "missionProfileId" :http-label common-lisp:t)
                                 (name :target-type safe-name :member-name
                                  "name")
                                 (contact-pre-pass-duration-seconds
                                  :target-type duration-in-seconds :member-name
                                  "contactPrePassDurationSeconds")
                                 (contact-post-pass-duration-seconds
                                  :target-type duration-in-seconds :member-name
                                  "contactPostPassDurationSeconds")
                                 (minimum-viable-contact-duration-seconds
                                  :target-type positive-duration-in-seconds
                                  :member-name
                                  "minimumViableContactDurationSeconds")
                                 (dataflow-edges :target-type
                                  dataflow-edge-list :member-name
                                  "dataflowEdges")
                                 (tracking-config-arn :target-type config-arn
                                  :member-name "trackingConfigArn")
                                 (streams-kms-key :target-type kms-key
                                  :member-name "streamsKmsKey")
                                 (streams-kms-role :target-type role-arn
                                  :member-name "streamsKmsRole"))
                                (:shape-name "UpdateMissionProfileRequest"))

(smithy/sdk/shapes:define-structure uplink-echo-config common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (antenna-uplink-config-arn :target-type
                                      config-arn :required common-lisp:t
                                      :member-name "antennaUplinkConfigArn"))
                                    (:shape-name "UplinkEchoConfig"))

(smithy/sdk/shapes:define-structure uplink-spectrum-config common-lisp:nil
                                    ((center-frequency :target-type frequency
                                      :required common-lisp:t :member-name
                                      "centerFrequency")
                                     (polarization :target-type polarization
                                      :member-name "polarization"))
                                    (:shape-name "UplinkSpectrumConfig"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list version-string-list :member version-string)

(smithy/sdk/shapes:define-type year smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type norad-satellite-id
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type satellite-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-contact :shape-name
                                       "CancelContact" :input
                                       cancel-contact-request :output
                                       contact-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/contact/{contactId}")

(smithy/sdk/operation:define-operation create-config :shape-name "CreateConfig"
                                       :input create-config-request :output
                                       config-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/config")

(smithy/sdk/operation:define-operation create-dataflow-endpoint-group
                                       :shape-name
                                       "CreateDataflowEndpointGroup" :input
                                       create-dataflow-endpoint-group-request
                                       :output
                                       dataflow-endpoint-group-id-response
                                       :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/dataflowEndpointGroup")

(smithy/sdk/operation:define-operation create-ephemeris :shape-name
                                       "CreateEphemeris" :input
                                       create-ephemeris-request :output
                                       ephemeris-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/ephemeris")

(smithy/sdk/operation:define-operation create-mission-profile :shape-name
                                       "CreateMissionProfile" :input
                                       create-mission-profile-request :output
                                       mission-profile-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/missionprofile")

(smithy/sdk/operation:define-operation delete-config :shape-name "DeleteConfig"
                                       :input delete-config-request :output
                                       config-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/config/{configType}/{configId}")

(smithy/sdk/operation:define-operation delete-dataflow-endpoint-group
                                       :shape-name
                                       "DeleteDataflowEndpointGroup" :input
                                       delete-dataflow-endpoint-group-request
                                       :output
                                       dataflow-endpoint-group-id-response
                                       :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/dataflowEndpointGroup/{dataflowEndpointGroupId}")

(smithy/sdk/operation:define-operation delete-ephemeris :shape-name
                                       "DeleteEphemeris" :input
                                       delete-ephemeris-request :output
                                       ephemeris-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/ephemeris/{ephemerisId}")

(smithy/sdk/operation:define-operation delete-mission-profile :shape-name
                                       "DeleteMissionProfile" :input
                                       delete-mission-profile-request :output
                                       mission-profile-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/missionprofile/{missionProfileId}")

(smithy/sdk/operation:define-operation describe-contact :shape-name
                                       "DescribeContact" :input
                                       describe-contact-request :output
                                       describe-contact-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/contact/{contactId}")

(smithy/sdk/operation:define-operation describe-ephemeris :shape-name
                                       "DescribeEphemeris" :input
                                       describe-ephemeris-request :output
                                       describe-ephemeris-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/ephemeris/{ephemerisId}")

(smithy/sdk/operation:define-operation get-agent-configuration :shape-name
                                       "GetAgentConfiguration" :input
                                       get-agent-configuration-request :output
                                       get-agent-configuration-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/agent/{agentId}/configuration")

(smithy/sdk/operation:define-operation get-config :shape-name "GetConfig"
                                       :input get-config-request :output
                                       get-config-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/config/{configType}/{configId}")

(smithy/sdk/operation:define-operation get-dataflow-endpoint-group :shape-name
                                       "GetDataflowEndpointGroup" :input
                                       get-dataflow-endpoint-group-request
                                       :output
                                       get-dataflow-endpoint-group-response
                                       :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/dataflowEndpointGroup/{dataflowEndpointGroupId}")

(smithy/sdk/operation:define-operation get-minute-usage :shape-name
                                       "GetMinuteUsage" :input
                                       get-minute-usage-request :output
                                       get-minute-usage-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/minute-usage")

(smithy/sdk/operation:define-operation get-mission-profile :shape-name
                                       "GetMissionProfile" :input
                                       get-mission-profile-request :output
                                       get-mission-profile-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/missionprofile/{missionProfileId}")

(smithy/sdk/operation:define-operation get-satellite :shape-name "GetSatellite"
                                       :input get-satellite-request :output
                                       get-satellite-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/satellite/{satelliteId}")

(smithy/sdk/operation:define-operation list-configs :shape-name "ListConfigs"
                                       :input list-configs-request :output
                                       list-configs-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/config")

(smithy/sdk/operation:define-operation list-contacts :shape-name "ListContacts"
                                       :input list-contacts-request :output
                                       list-contacts-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/contacts")

(smithy/sdk/operation:define-operation list-dataflow-endpoint-groups
                                       :shape-name "ListDataflowEndpointGroups"
                                       :input
                                       list-dataflow-endpoint-groups-request
                                       :output
                                       list-dataflow-endpoint-groups-response
                                       :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/dataflowEndpointGroup")

(smithy/sdk/operation:define-operation list-ephemerides :shape-name
                                       "ListEphemerides" :input
                                       list-ephemerides-request :output
                                       list-ephemerides-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/ephemerides")

(smithy/sdk/operation:define-operation list-ground-stations :shape-name
                                       "ListGroundStations" :input
                                       list-ground-stations-request :output
                                       list-ground-stations-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/groundstation")

(smithy/sdk/operation:define-operation list-mission-profiles :shape-name
                                       "ListMissionProfiles" :input
                                       list-mission-profiles-request :output
                                       list-mission-profiles-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/missionprofile")

(smithy/sdk/operation:define-operation list-satellites :shape-name
                                       "ListSatellites" :input
                                       list-satellites-request :output
                                       list-satellites-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/satellite")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation register-agent :shape-name
                                       "RegisterAgent" :input
                                       register-agent-request :output
                                       register-agent-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/agent")

(smithy/sdk/operation:define-operation reserve-contact :shape-name
                                       "ReserveContact" :input
                                       reserve-contact-request :output
                                       contact-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/contact")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-agent-status :shape-name
                                       "UpdateAgentStatus" :input
                                       update-agent-status-request :output
                                       update-agent-status-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri "/agent/{agentId}")

(smithy/sdk/operation:define-operation update-config :shape-name "UpdateConfig"
                                       :input update-config-request :output
                                       config-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri
                                       "/config/{configType}/{configId}")

(smithy/sdk/operation:define-operation update-ephemeris :shape-name
                                       "UpdateEphemeris" :input
                                       update-ephemeris-request :output
                                       ephemeris-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri
                                       "/ephemeris/{ephemerisId}")

(smithy/sdk/operation:define-operation update-mission-profile :shape-name
                                       "UpdateMissionProfile" :input
                                       update-mission-profile-request :output
                                       mission-profile-id-response :errors
                                       (dependency-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "PUT" :uri
                                       "/missionprofile/{missionProfileId}")
