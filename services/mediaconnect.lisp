(uiop/package:define-package #:pira/mediaconnect (:use)
                             (:export #:add-bridge-flow-source-request
                              #:add-bridge-network-output-request
                              #:add-bridge-network-source-request
                              #:add-bridge-output-request #:add-bridge-outputs
                              #:add-bridge-source-request #:add-bridge-sources
                              #:add-egress-gateway-bridge-request
                              #:add-flow-media-streams #:add-flow-outputs
                              #:add-flow-outputs420exception #:add-flow-sources
                              #:add-flow-vpc-interfaces
                              #:add-ingress-gateway-bridge-request
                              #:add-maintenance #:add-media-stream-request
                              #:add-output-request #:algorithm
                              #:audio-monitoring-setting
                              #:bad-request-exception #:black-frames #:bridge
                              #:bridge-arn #:bridge-flow-output
                              #:bridge-flow-source #:bridge-network-output
                              #:bridge-network-source #:bridge-output
                              #:bridge-placement #:bridge-resource
                              #:bridge-source #:bridge-state #:colorimetry
                              #:conflict-exception #:connection-status
                              #:content-quality-analysis-state #:create-bridge
                              #:create-bridge420exception #:create-flow
                              #:create-flow420exception #:create-gateway
                              #:create-gateway420exception #:delete-bridge
                              #:delete-flow #:delete-gateway
                              #:deregister-gateway-instance #:describe-bridge
                              #:describe-flow #:describe-flow-source-metadata
                              #:describe-flow-source-thumbnail
                              #:describe-gateway #:describe-gateway-instance
                              #:describe-offering #:describe-reservation
                              #:desired-state #:destination-configuration
                              #:destination-configuration-request
                              #:duration-units #:egress-gateway-bridge
                              #:encoder-profile #:encoding-name
                              #:encoding-parameters
                              #:encoding-parameters-request #:encryption
                              #:entitlement #:entitlement-status
                              #:failover-config #:failover-mode #:flow
                              #:flow-arn #:flow-resource #:flow-size #:fmtp
                              #:fmtp-request #:forbidden-exception
                              #:frame-resolution #:frozen-frames #:gateway
                              #:gateway-arn #:gateway-bridge-source
                              #:gateway-instance #:gateway-instance-arn
                              #:gateway-instance-resource #:gateway-network
                              #:gateway-resource #:gateway-state
                              #:grant-entitlement-request
                              #:grant-flow-entitlements
                              #:grant-flow-entitlements420exception
                              #:ingress-gateway-bridge #:input-configuration
                              #:input-configuration-request #:instance-state
                              #:interface #:interface-request
                              #:internal-server-error-exception #:key-type
                              #:list-bridges #:list-entitlements #:list-flows
                              #:list-gateway-instances #:list-gateways
                              #:list-offerings #:list-reservations
                              #:list-tags-for-resource #:listed-bridge
                              #:listed-entitlement #:listed-flow
                              #:listed-gateway #:listed-gateway-instance
                              #:maintenance #:maintenance-day #:max-results
                              #:media-connect #:media-stream
                              #:media-stream-attributes
                              #:media-stream-attributes-request
                              #:media-stream-output-configuration
                              #:media-stream-output-configuration-request
                              #:media-stream-source-configuration
                              #:media-stream-source-configuration-request
                              #:media-stream-type #:message-detail #:messages
                              #:monitoring-config #:multicast-source-settings
                              #:ndi-config #:ndi-discovery-server-config
                              #:ndi-state #:network-interface-type
                              #:not-found-exception #:offering #:offering-arn
                              #:offering-resource #:output #:output-status
                              #:price-units #:protocol #:purchase-offering
                              #:range #:remove-bridge-output
                              #:remove-bridge-source #:remove-flow-media-stream
                              #:remove-flow-output #:remove-flow-source
                              #:remove-flow-vpc-interface #:reservation
                              #:reservation-arn #:reservation-resource
                              #:reservation-state #:resource-specification
                              #:resource-type #:revoke-flow-entitlement
                              #:scan-mode #:service-unavailable-exception
                              #:set-gateway-bridge-source-request
                              #:set-source-request #:silent-audio #:source
                              #:source-priority #:source-type #:start-flow
                              #:state #:status #:stop-flow #:tag-resource #:tcs
                              #:thumbnail-details #:thumbnail-state
                              #:too-many-requests-exception #:transport
                              #:transport-media-info #:transport-stream
                              #:transport-stream-program #:untag-resource
                              #:update-bridge
                              #:update-bridge-flow-source-request
                              #:update-bridge-network-output-request
                              #:update-bridge-network-source-request
                              #:update-bridge-output #:update-bridge-source
                              #:update-bridge-state
                              #:update-egress-gateway-bridge-request
                              #:update-encryption #:update-failover-config
                              #:update-flow #:update-flow-entitlement
                              #:update-flow-media-stream #:update-flow-output
                              #:update-flow-source
                              #:update-gateway-bridge-source-request
                              #:update-gateway-instance
                              #:update-ingress-gateway-bridge-request
                              #:update-maintenance #:video-monitoring-setting
                              #:vpc-interface #:vpc-interface-attachment
                              #:vpc-interface-request
                              #:list-of-add-bridge-output-request
                              #:list-of-add-bridge-source-request
                              #:list-of-add-media-stream-request
                              #:list-of-add-output-request
                              #:list-of-audio-monitoring-setting
                              #:list-of-bridge-output #:list-of-bridge-source
                              #:list-of-destination-configuration
                              #:list-of-destination-configuration-request
                              #:list-of-entitlement #:list-of-gateway-network
                              #:list-of-grant-entitlement-request
                              #:list-of-input-configuration
                              #:list-of-input-configuration-request
                              #:list-of-integer #:list-of-listed-bridge
                              #:list-of-listed-entitlement
                              #:list-of-listed-flow #:list-of-listed-gateway
                              #:list-of-listed-gateway-instance
                              #:list-of-media-stream
                              #:list-of-media-stream-output-configuration
                              #:list-of-media-stream-output-configuration-request
                              #:list-of-media-stream-source-configuration
                              #:list-of-media-stream-source-configuration-request
                              #:list-of-message-detail
                              #:list-of-ndi-discovery-server-config
                              #:list-of-offering #:list-of-output
                              #:list-of-reservation
                              #:list-of-set-source-request #:list-of-source
                              #:list-of-string #:list-of-transport-stream
                              #:list-of-transport-stream-program
                              #:list-of-video-monitoring-setting
                              #:list-of-vpc-interface
                              #:list-of-vpc-interface-request #:map-of-string
                              #:mediaconnect-error))
(common-lisp:in-package #:pira/mediaconnect)

(common-lisp:define-condition mediaconnect-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service media-connect :shape-name "MediaConnect"
                                   :version "2018-11-14" :title
                                   "AWS MediaConnect" :operations
                                   '(list-entitlements list-tags-for-resource
                                     tag-resource untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MediaConnect")
                                      ("arnNamespace" . "mediaconnect"))
                                     ("aws.auth#sigv4"
                                      ("name" . "mediaconnect"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure add-bridge-flow-source-request
                                    common-lisp:nil
                                    ((flow-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FlowArn"
                                      :json-name "flowArn")
                                     (flow-vpc-interface-attachment
                                      :target-type vpc-interface-attachment
                                      :member-name "FlowVpcInterfaceAttachment"
                                      :json-name "flowVpcInterfaceAttachment")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "AddBridgeFlowSourceRequest"))

(smithy/sdk/shapes:define-structure add-bridge-network-output-request
                                    common-lisp:nil
                                    ((ip-address :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "IpAddress"
                                      :json-name "ipAddress")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (network-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "NetworkName"
                                      :json-name "networkName")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Port"
                                      :json-name "port")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol"
                                      :json-name "protocol")
                                     (ttl :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Ttl"
                                      :json-name "ttl"))
                                    (:shape-name
                                     "AddBridgeNetworkOutputRequest"))

(smithy/sdk/shapes:define-structure add-bridge-network-source-request
                                    common-lisp:nil
                                    ((multicast-ip :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "MulticastIp"
                                      :json-name "multicastIp")
                                     (multicast-source-settings :target-type
                                      multicast-source-settings :member-name
                                      "MulticastSourceSettings" :json-name
                                      "multicastSourceSettings")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (network-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "NetworkName"
                                      :json-name "networkName")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Port"
                                      :json-name "port")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol"
                                      :json-name "protocol"))
                                    (:shape-name
                                     "AddBridgeNetworkSourceRequest"))

(smithy/sdk/shapes:define-structure add-bridge-output-request common-lisp:nil
                                    ((network-output :target-type
                                      add-bridge-network-output-request
                                      :member-name "NetworkOutput" :json-name
                                      "networkOutput"))
                                    (:shape-name "AddBridgeOutputRequest"))

(smithy/sdk/shapes:define-input add-bridge-outputs-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (outputs :target-type
                                  list-of-add-bridge-output-request :required
                                  common-lisp:t :member-name "Outputs"
                                  :json-name "outputs"))
                                (:shape-name "AddBridgeOutputsRequest"))

(smithy/sdk/shapes:define-output add-bridge-outputs-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (outputs :target-type list-of-bridge-output
                                   :member-name "Outputs" :json-name
                                   "outputs"))
                                 (:shape-name "AddBridgeOutputsResponse"))

(smithy/sdk/shapes:define-structure add-bridge-source-request common-lisp:nil
                                    ((flow-source :target-type
                                      add-bridge-flow-source-request
                                      :member-name "FlowSource" :json-name
                                      "flowSource")
                                     (network-source :target-type
                                      add-bridge-network-source-request
                                      :member-name "NetworkSource" :json-name
                                      "networkSource"))
                                    (:shape-name "AddBridgeSourceRequest"))

(smithy/sdk/shapes:define-input add-bridge-sources-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (sources :target-type
                                  list-of-add-bridge-source-request :required
                                  common-lisp:t :member-name "Sources"
                                  :json-name "sources"))
                                (:shape-name "AddBridgeSourcesRequest"))

(smithy/sdk/shapes:define-output add-bridge-sources-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (sources :target-type list-of-bridge-source
                                   :member-name "Sources" :json-name
                                   "sources"))
                                 (:shape-name "AddBridgeSourcesResponse"))

(smithy/sdk/shapes:define-structure add-egress-gateway-bridge-request
                                    common-lisp:nil
                                    ((max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxBitrate"
                                      :json-name "maxBitrate"))
                                    (:shape-name
                                     "AddEgressGatewayBridgeRequest"))

(smithy/sdk/shapes:define-input add-flow-media-streams-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (media-streams :target-type
                                  list-of-add-media-stream-request :required
                                  common-lisp:t :member-name "MediaStreams"
                                  :json-name "mediaStreams"))
                                (:shape-name "AddFlowMediaStreamsRequest"))

(smithy/sdk/shapes:define-output add-flow-media-streams-response
                                 common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (media-streams :target-type
                                   list-of-media-stream :member-name
                                   "MediaStreams" :json-name "mediaStreams"))
                                 (:shape-name "AddFlowMediaStreamsResponse"))

(smithy/sdk/shapes:define-error add-flow-outputs420exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "AddFlowOutputs420Exception")
                                (:error-code 420)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-input add-flow-outputs-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (outputs :target-type
                                  list-of-add-output-request :required
                                  common-lisp:t :member-name "Outputs"
                                  :json-name "outputs"))
                                (:shape-name "AddFlowOutputsRequest"))

(smithy/sdk/shapes:define-output add-flow-outputs-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (outputs :target-type list-of-output
                                   :member-name "Outputs" :json-name
                                   "outputs"))
                                 (:shape-name "AddFlowOutputsResponse"))

(smithy/sdk/shapes:define-input add-flow-sources-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (sources :target-type
                                  list-of-set-source-request :required
                                  common-lisp:t :member-name "Sources"
                                  :json-name "sources"))
                                (:shape-name "AddFlowSourcesRequest"))

(smithy/sdk/shapes:define-output add-flow-sources-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (sources :target-type list-of-source
                                   :member-name "Sources" :json-name
                                   "sources"))
                                 (:shape-name "AddFlowSourcesResponse"))

(smithy/sdk/shapes:define-input add-flow-vpc-interfaces-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (vpc-interfaces :target-type
                                  list-of-vpc-interface-request :required
                                  common-lisp:t :member-name "VpcInterfaces"
                                  :json-name "vpcInterfaces"))
                                (:shape-name "AddFlowVpcInterfacesRequest"))

(smithy/sdk/shapes:define-output add-flow-vpc-interfaces-response
                                 common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (vpc-interfaces :target-type
                                   list-of-vpc-interface :member-name
                                   "VpcInterfaces" :json-name "vpcInterfaces"))
                                 (:shape-name "AddFlowVpcInterfacesResponse"))

(smithy/sdk/shapes:define-structure add-ingress-gateway-bridge-request
                                    common-lisp:nil
                                    ((max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxBitrate"
                                      :json-name "maxBitrate")
                                     (max-outputs :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxOutputs"
                                      :json-name "maxOutputs"))
                                    (:shape-name
                                     "AddIngressGatewayBridgeRequest"))

(smithy/sdk/shapes:define-structure add-maintenance common-lisp:nil
                                    ((maintenance-day :target-type
                                      maintenance-day :required common-lisp:t
                                      :member-name "MaintenanceDay" :json-name
                                      "maintenanceDay")
                                     (maintenance-start-hour :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MaintenanceStartHour" :json-name
                                      "maintenanceStartHour"))
                                    (:shape-name "AddMaintenance"))

(smithy/sdk/shapes:define-structure add-media-stream-request common-lisp:nil
                                    ((attributes :target-type
                                      media-stream-attributes-request
                                      :member-name "Attributes" :json-name
                                      "attributes")
                                     (clock-rate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ClockRate" :json-name
                                      "clockRate")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (media-stream-id :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MediaStreamId" :json-name
                                      "mediaStreamId")
                                     (media-stream-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MediaStreamName" :json-name
                                      "mediaStreamName")
                                     (media-stream-type :target-type
                                      media-stream-type :required common-lisp:t
                                      :member-name "MediaStreamType" :json-name
                                      "mediaStreamType")
                                     (video-format :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "VideoFormat" :json-name
                                      "videoFormat"))
                                    (:shape-name "AddMediaStreamRequest"))

(smithy/sdk/shapes:define-structure add-output-request common-lisp:nil
                                    ((cidr-allow-list :target-type
                                      list-of-string :member-name
                                      "CidrAllowList" :json-name
                                      "cidrAllowList")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (destination :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Destination" :json-name
                                      "destination")
                                     (encryption :target-type encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (max-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxLatency" :json-name
                                      "maxLatency")
                                     (media-stream-output-configurations
                                      :target-type
                                      list-of-media-stream-output-configuration-request
                                      :member-name
                                      "MediaStreamOutputConfigurations"
                                      :json-name
                                      "mediaStreamOutputConfigurations")
                                     (min-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinLatency" :json-name
                                      "minLatency")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name" :json-name "name")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Port" :json-name "port")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol"
                                      :json-name "protocol")
                                     (remote-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RemoteId" :json-name
                                      "remoteId")
                                     (sender-control-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SenderControlPort"
                                      :json-name "senderControlPort")
                                     (smoothing-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SmoothingLatency"
                                      :json-name "smoothingLatency")
                                     (stream-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StreamId" :json-name
                                      "streamId")
                                     (vpc-interface-attachment :target-type
                                      vpc-interface-attachment :member-name
                                      "VpcInterfaceAttachment" :json-name
                                      "vpcInterfaceAttachment")
                                     (output-status :target-type output-status
                                      :member-name "OutputStatus" :json-name
                                      "outputStatus")
                                     (ndi-speed-hq-quality :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NdiSpeedHqQuality"
                                      :json-name "ndiSpeedHqQuality")
                                     (ndi-program-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NdiProgramName" :json-name
                                      "ndiProgramName"))
                                    (:shape-name "AddOutputRequest"))

(smithy/sdk/shapes:define-enum algorithm
    common-lisp:nil
  (:aes128 "aes128")
  (:aes192 "aes192")
  (:aes256 "aes256"))

(smithy/sdk/shapes:define-structure audio-monitoring-setting common-lisp:nil
                                    ((silent-audio :target-type silent-audio
                                      :member-name "SilentAudio" :json-name
                                      "silentAudio"))
                                    (:shape-name "AudioMonitoringSetting"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-structure black-frames common-lisp:nil
                                    ((state :target-type state :member-name
                                      "State" :json-name "state")
                                     (threshold-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ThresholdSeconds"
                                      :json-name "thresholdSeconds"))
                                    (:shape-name "BlackFrames"))

(smithy/sdk/shapes:define-structure bridge common-lisp:nil
                                    ((bridge-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BridgeArn"
                                      :json-name "bridgeArn")
                                     (bridge-messages :target-type
                                      list-of-message-detail :member-name
                                      "BridgeMessages" :json-name
                                      "bridgeMessages")
                                     (bridge-state :target-type bridge-state
                                      :required common-lisp:t :member-name
                                      "BridgeState" :json-name "bridgeState")
                                     (egress-gateway-bridge :target-type
                                      egress-gateway-bridge :member-name
                                      "EgressGatewayBridge" :json-name
                                      "egressGatewayBridge")
                                     (ingress-gateway-bridge :target-type
                                      ingress-gateway-bridge :member-name
                                      "IngressGatewayBridge" :json-name
                                      "ingressGatewayBridge")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (outputs :target-type
                                      list-of-bridge-output :member-name
                                      "Outputs" :json-name "outputs")
                                     (placement-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "PlacementArn"
                                      :json-name "placementArn")
                                     (source-failover-config :target-type
                                      failover-config :member-name
                                      "SourceFailoverConfig" :json-name
                                      "sourceFailoverConfig")
                                     (sources :target-type
                                      list-of-bridge-source :member-name
                                      "Sources" :json-name "sources"))
                                    (:shape-name "Bridge"))

(smithy/sdk/shapes:define-type bridge-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bridge-flow-output common-lisp:nil
                                    ((flow-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FlowArn"
                                      :json-name "flowArn")
                                     (flow-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "FlowSourceArn" :json-name
                                      "flowSourceArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "BridgeFlowOutput"))

(smithy/sdk/shapes:define-structure bridge-flow-source common-lisp:nil
                                    ((flow-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FlowArn"
                                      :json-name "flowArn")
                                     (flow-vpc-interface-attachment
                                      :target-type vpc-interface-attachment
                                      :member-name "FlowVpcInterfaceAttachment"
                                      :json-name "flowVpcInterfaceAttachment")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (output-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OutputArn" :json-name
                                      "outputArn"))
                                    (:shape-name "BridgeFlowSource"))

(smithy/sdk/shapes:define-structure bridge-network-output common-lisp:nil
                                    ((ip-address :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "IpAddress"
                                      :json-name "ipAddress")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (network-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "NetworkName"
                                      :json-name "networkName")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Port"
                                      :json-name "port")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol"
                                      :json-name "protocol")
                                     (ttl :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Ttl"
                                      :json-name "ttl"))
                                    (:shape-name "BridgeNetworkOutput"))

(smithy/sdk/shapes:define-structure bridge-network-source common-lisp:nil
                                    ((multicast-ip :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "MulticastIp"
                                      :json-name "multicastIp")
                                     (multicast-source-settings :target-type
                                      multicast-source-settings :member-name
                                      "MulticastSourceSettings" :json-name
                                      "multicastSourceSettings")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (network-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "NetworkName"
                                      :json-name "networkName")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Port"
                                      :json-name "port")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol"
                                      :json-name "protocol"))
                                    (:shape-name "BridgeNetworkSource"))

(smithy/sdk/shapes:define-structure bridge-output common-lisp:nil
                                    ((flow-output :target-type
                                      bridge-flow-output :member-name
                                      "FlowOutput" :json-name "flowOutput")
                                     (network-output :target-type
                                      bridge-network-output :member-name
                                      "NetworkOutput" :json-name
                                      "networkOutput"))
                                    (:shape-name "BridgeOutput"))

(smithy/sdk/shapes:define-enum bridge-placement
    common-lisp:nil
  (:available "AVAILABLE")
  (:locked "LOCKED"))

common-lisp:nil

(smithy/sdk/shapes:define-structure bridge-source common-lisp:nil
                                    ((flow-source :target-type
                                      bridge-flow-source :member-name
                                      "FlowSource" :json-name "flowSource")
                                     (network-source :target-type
                                      bridge-network-source :member-name
                                      "NetworkSource" :json-name
                                      "networkSource"))
                                    (:shape-name "BridgeSource"))

(smithy/sdk/shapes:define-enum bridge-state
    common-lisp:nil
  (:creating "CREATING")
  (:standby "STANDBY")
  (:starting "STARTING")
  (:deploying "DEPLOYING")
  (:active "ACTIVE")
  (:stopping "STOPPING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:start-failed "START_FAILED")
  (:start-pending "START_PENDING")
  (:stop-failed "STOP_FAILED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum colorimetry
    common-lisp:nil
  (:bt601 "BT601")
  (:bt709 "BT709")
  (:bt2020 "BT2020")
  (:bt2100 "BT2100")
  (:st2065-1 "ST2065-1")
  (:st2065-3 "ST2065-3")
  (:xyz "XYZ"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:connected "CONNECTED")
  (:disconnected "DISCONNECTED"))

(smithy/sdk/shapes:define-enum content-quality-analysis-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error create-bridge420exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "CreateBridge420Exception")
                                (:error-code 420)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-input create-bridge-request common-lisp:nil
                                ((egress-gateway-bridge :target-type
                                  add-egress-gateway-bridge-request
                                  :member-name "EgressGatewayBridge" :json-name
                                  "egressGatewayBridge")
                                 (ingress-gateway-bridge :target-type
                                  add-ingress-gateway-bridge-request
                                  :member-name "IngressGatewayBridge"
                                  :json-name "ingressGatewayBridge")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (outputs :target-type
                                  list-of-add-bridge-output-request
                                  :member-name "Outputs" :json-name "outputs")
                                 (placement-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "PlacementArn"
                                  :json-name "placementArn")
                                 (source-failover-config :target-type
                                  failover-config :member-name
                                  "SourceFailoverConfig" :json-name
                                  "sourceFailoverConfig")
                                 (sources :target-type
                                  list-of-add-bridge-source-request :required
                                  common-lisp:t :member-name "Sources"
                                  :json-name "sources"))
                                (:shape-name "CreateBridgeRequest"))

(smithy/sdk/shapes:define-output create-bridge-response common-lisp:nil
                                 ((bridge :target-type bridge :member-name
                                   "Bridge" :json-name "bridge"))
                                 (:shape-name "CreateBridgeResponse"))

(smithy/sdk/shapes:define-error create-flow420exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "CreateFlow420Exception")
                                (:error-code 420)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-input create-flow-request common-lisp:nil
                                ((availability-zone :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "AvailabilityZone" :json-name
                                  "availabilityZone")
                                 (entitlements :target-type
                                  list-of-grant-entitlement-request
                                  :member-name "Entitlements" :json-name
                                  "entitlements")
                                 (media-streams :target-type
                                  list-of-add-media-stream-request :member-name
                                  "MediaStreams" :json-name "mediaStreams")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (outputs :target-type
                                  list-of-add-output-request :member-name
                                  "Outputs" :json-name "outputs")
                                 (source :target-type set-source-request
                                  :member-name "Source" :json-name "source")
                                 (source-failover-config :target-type
                                  failover-config :member-name
                                  "SourceFailoverConfig" :json-name
                                  "sourceFailoverConfig")
                                 (sources :target-type
                                  list-of-set-source-request :member-name
                                  "Sources" :json-name "sources")
                                 (vpc-interfaces :target-type
                                  list-of-vpc-interface-request :member-name
                                  "VpcInterfaces" :json-name "vpcInterfaces")
                                 (maintenance :target-type add-maintenance
                                  :member-name "Maintenance" :json-name
                                  "maintenance")
                                 (source-monitoring-config :target-type
                                  monitoring-config :member-name
                                  "SourceMonitoringConfig" :json-name
                                  "sourceMonitoringConfig")
                                 (flow-size :target-type flow-size :member-name
                                  "FlowSize" :json-name "flowSize")
                                 (ndi-config :target-type ndi-config
                                  :member-name "NdiConfig" :json-name
                                  "ndiConfig"))
                                (:shape-name "CreateFlowRequest"))

(smithy/sdk/shapes:define-output create-flow-response common-lisp:nil
                                 ((flow :target-type flow :member-name "Flow"
                                   :json-name "flow"))
                                 (:shape-name "CreateFlowResponse"))

(smithy/sdk/shapes:define-error create-gateway420exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "CreateGateway420Exception")
                                (:error-code 420)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-input create-gateway-request common-lisp:nil
                                ((egress-cidr-blocks :target-type
                                  list-of-string :required common-lisp:t
                                  :member-name "EgressCidrBlocks" :json-name
                                  "egressCidrBlocks")
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (networks :target-type list-of-gateway-network
                                  :required common-lisp:t :member-name
                                  "Networks" :json-name "networks"))
                                (:shape-name "CreateGatewayRequest"))

(smithy/sdk/shapes:define-output create-gateway-response common-lisp:nil
                                 ((gateway :target-type gateway :member-name
                                   "Gateway" :json-name "gateway"))
                                 (:shape-name "CreateGatewayResponse"))

(smithy/sdk/shapes:define-input delete-bridge-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBridgeRequest"))

(smithy/sdk/shapes:define-output delete-bridge-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn"))
                                 (:shape-name "DeleteBridgeResponse"))

(smithy/sdk/shapes:define-input delete-flow-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteFlowRequest"))

(smithy/sdk/shapes:define-output delete-flow-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "DeleteFlowResponse"))

(smithy/sdk/shapes:define-input delete-gateway-request common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayArn" :http-label common-lisp:t))
                                (:shape-name "DeleteGatewayRequest"))

(smithy/sdk/shapes:define-output delete-gateway-response common-lisp:nil
                                 ((gateway-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "GatewayArn" :json-name "gatewayArn"))
                                 (:shape-name "DeleteGatewayResponse"))

(smithy/sdk/shapes:define-input deregister-gateway-instance-request
                                common-lisp:nil
                                ((force :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "Force" :http-query "force")
                                 (gateway-instance-arn :target-type
                                  gateway-instance-arn :required common-lisp:t
                                  :member-name "GatewayInstanceArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeregisterGatewayInstanceRequest"))

(smithy/sdk/shapes:define-output deregister-gateway-instance-response
                                 common-lisp:nil
                                 ((gateway-instance-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "GatewayInstanceArn" :json-name
                                   "gatewayInstanceArn")
                                  (instance-state :target-type instance-state
                                   :member-name "InstanceState" :json-name
                                   "instanceState"))
                                 (:shape-name
                                  "DeregisterGatewayInstanceResponse"))

(smithy/sdk/shapes:define-input describe-bridge-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeBridgeRequest"))

(smithy/sdk/shapes:define-output describe-bridge-response common-lisp:nil
                                 ((bridge :target-type bridge :member-name
                                   "Bridge" :json-name "bridge"))
                                 (:shape-name "DescribeBridgeResponse"))

(smithy/sdk/shapes:define-input describe-flow-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeFlowRequest"))

(smithy/sdk/shapes:define-output describe-flow-response common-lisp:nil
                                 ((flow :target-type flow :member-name "Flow"
                                   :json-name "flow")
                                  (messages :target-type messages :member-name
                                   "Messages" :json-name "messages"))
                                 (:shape-name "DescribeFlowResponse"))

(smithy/sdk/shapes:define-input describe-flow-source-metadata-request
                                common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeFlowSourceMetadataRequest"))

(smithy/sdk/shapes:define-output describe-flow-source-metadata-response
                                 common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (messages :target-type list-of-message-detail
                                   :member-name "Messages" :json-name
                                   "messages")
                                  (timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "Timestamp" :json-name
                                   "timestamp" :timestamp-format "date-time")
                                  (transport-media-info :target-type
                                   transport-media-info :member-name
                                   "TransportMediaInfo" :json-name
                                   "transportMediaInfo"))
                                 (:shape-name
                                  "DescribeFlowSourceMetadataResponse"))

(smithy/sdk/shapes:define-input describe-flow-source-thumbnail-request
                                common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeFlowSourceThumbnailRequest"))

(smithy/sdk/shapes:define-output describe-flow-source-thumbnail-response
                                 common-lisp:nil
                                 ((thumbnail-details :target-type
                                   thumbnail-details :member-name
                                   "ThumbnailDetails" :json-name
                                   "thumbnailDetails"))
                                 (:shape-name
                                  "DescribeFlowSourceThumbnailResponse"))

(smithy/sdk/shapes:define-input describe-gateway-instance-request
                                common-lisp:nil
                                ((gateway-instance-arn :target-type
                                  gateway-instance-arn :required common-lisp:t
                                  :member-name "GatewayInstanceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeGatewayInstanceRequest"))

(smithy/sdk/shapes:define-output describe-gateway-instance-response
                                 common-lisp:nil
                                 ((gateway-instance :target-type
                                   gateway-instance :member-name
                                   "GatewayInstance" :json-name
                                   "gatewayInstance"))
                                 (:shape-name
                                  "DescribeGatewayInstanceResponse"))

(smithy/sdk/shapes:define-input describe-gateway-request common-lisp:nil
                                ((gateway-arn :target-type gateway-arn
                                  :required common-lisp:t :member-name
                                  "GatewayArn" :http-label common-lisp:t))
                                (:shape-name "DescribeGatewayRequest"))

(smithy/sdk/shapes:define-output describe-gateway-response common-lisp:nil
                                 ((gateway :target-type gateway :member-name
                                   "Gateway" :json-name "gateway"))
                                 (:shape-name "DescribeGatewayResponse"))

(smithy/sdk/shapes:define-input describe-offering-request common-lisp:nil
                                ((offering-arn :target-type offering-arn
                                  :required common-lisp:t :member-name
                                  "OfferingArn" :http-label common-lisp:t))
                                (:shape-name "DescribeOfferingRequest"))

(smithy/sdk/shapes:define-output describe-offering-response common-lisp:nil
                                 ((offering :target-type offering :member-name
                                   "Offering" :json-name "offering"))
                                 (:shape-name "DescribeOfferingResponse"))

(smithy/sdk/shapes:define-input describe-reservation-request common-lisp:nil
                                ((reservation-arn :target-type reservation-arn
                                  :required common-lisp:t :member-name
                                  "ReservationArn" :http-label common-lisp:t))
                                (:shape-name "DescribeReservationRequest"))

(smithy/sdk/shapes:define-output describe-reservation-response common-lisp:nil
                                 ((reservation :target-type reservation
                                   :member-name "Reservation" :json-name
                                   "reservation"))
                                 (:shape-name "DescribeReservationResponse"))

(smithy/sdk/shapes:define-enum desired-state
    common-lisp:nil
  (:active "ACTIVE")
  (:standby "STANDBY")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure destination-configuration common-lisp:nil
                                    ((destination-ip :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "DestinationIp" :json-name
                                      "destinationIp")
                                     (destination-port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "DestinationPort" :json-name
                                      "destinationPort")
                                     (interface :target-type interface
                                      :required common-lisp:t :member-name
                                      "Interface" :json-name "interface")
                                     (outbound-ip :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "OutboundIp"
                                      :json-name "outboundIp"))
                                    (:shape-name "DestinationConfiguration"))

(smithy/sdk/shapes:define-structure destination-configuration-request
                                    common-lisp:nil
                                    ((destination-ip :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "DestinationIp" :json-name
                                      "destinationIp")
                                     (destination-port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "DestinationPort" :json-name
                                      "destinationPort")
                                     (interface :target-type interface-request
                                      :required common-lisp:t :member-name
                                      "Interface" :json-name "interface"))
                                    (:shape-name
                                     "DestinationConfigurationRequest"))

(smithy/sdk/shapes:define-enum duration-units
    common-lisp:nil
  (:months "MONTHS"))

(smithy/sdk/shapes:define-structure egress-gateway-bridge common-lisp:nil
                                    ((instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceId" :json-name
                                      "instanceId")
                                     (max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxBitrate"
                                      :json-name "maxBitrate"))
                                    (:shape-name "EgressGatewayBridge"))

(smithy/sdk/shapes:define-enum encoder-profile
    common-lisp:nil
  (:main "main")
  (:high "high"))

(smithy/sdk/shapes:define-enum encoding-name
    common-lisp:nil
  (:jxsv "jxsv")
  (:raw "raw")
  (:smpte291 "smpte291")
  (:pcm "pcm"))

(smithy/sdk/shapes:define-structure encoding-parameters common-lisp:nil
                                    ((compression-factor :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "CompressionFactor" :json-name
                                      "compressionFactor")
                                     (encoder-profile :target-type
                                      encoder-profile :required common-lisp:t
                                      :member-name "EncoderProfile" :json-name
                                      "encoderProfile"))
                                    (:shape-name "EncodingParameters"))

(smithy/sdk/shapes:define-structure encoding-parameters-request common-lisp:nil
                                    ((compression-factor :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name
                                      "CompressionFactor" :json-name
                                      "compressionFactor")
                                     (encoder-profile :target-type
                                      encoder-profile :required common-lisp:t
                                      :member-name "EncoderProfile" :json-name
                                      "encoderProfile"))
                                    (:shape-name "EncodingParametersRequest"))

(smithy/sdk/shapes:define-structure encryption common-lisp:nil
                                    ((algorithm :target-type algorithm
                                      :member-name "Algorithm" :json-name
                                      "algorithm")
                                     (constant-initialization-vector
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (device-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DeviceId" :json-name
                                      "deviceId")
                                     (key-type :target-type key-type
                                      :member-name "KeyType" :json-name
                                      "keyType")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region" :json-name
                                      "region")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "RoleArn"
                                      :json-name "roleArn")
                                     (secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SecretArn" :json-name
                                      "secretArn")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url" :json-name "url"))
                                    (:shape-name "Encryption"))

(smithy/sdk/shapes:define-structure entitlement common-lisp:nil
                                    ((data-transfer-subscriber-fee-percent
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "DataTransferSubscriberFeePercent"
                                      :json-name
                                      "dataTransferSubscriberFeePercent")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (encryption :target-type encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (entitlement-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "EntitlementArn" :json-name
                                      "entitlementArn")
                                     (entitlement-status :target-type
                                      entitlement-status :member-name
                                      "EntitlementStatus" :json-name
                                      "entitlementStatus")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (subscribers :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Subscribers" :json-name "subscribers"))
                                    (:shape-name "Entitlement"))

(smithy/sdk/shapes:define-enum entitlement-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure failover-config common-lisp:nil
                                    ((failover-mode :target-type failover-mode
                                      :member-name "FailoverMode" :json-name
                                      "failoverMode")
                                     (recovery-window :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "RecoveryWindow" :json-name
                                      "recoveryWindow")
                                     (source-priority :target-type
                                      source-priority :member-name
                                      "SourcePriority" :json-name
                                      "sourcePriority")
                                     (state :target-type state :member-name
                                      "State" :json-name "state"))
                                    (:shape-name "FailoverConfig"))

(smithy/sdk/shapes:define-enum failover-mode
    common-lisp:nil
  (:merge "MERGE")
  (:failover "FAILOVER"))

(smithy/sdk/shapes:define-structure flow common-lisp:nil
                                    ((availability-zone :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "AvailabilityZone" :json-name
                                      "availabilityZone")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (egress-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EgressIp" :json-name
                                      "egressIp")
                                     (entitlements :target-type
                                      list-of-entitlement :required
                                      common-lisp:t :member-name "Entitlements"
                                      :json-name "entitlements")
                                     (flow-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FlowArn"
                                      :json-name "flowArn")
                                     (media-streams :target-type
                                      list-of-media-stream :member-name
                                      "MediaStreams" :json-name "mediaStreams")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (outputs :target-type list-of-output
                                      :required common-lisp:t :member-name
                                      "Outputs" :json-name "outputs")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "Source"
                                      :json-name "source")
                                     (source-failover-config :target-type
                                      failover-config :member-name
                                      "SourceFailoverConfig" :json-name
                                      "sourceFailoverConfig")
                                     (sources :target-type list-of-source
                                      :member-name "Sources" :json-name
                                      "sources")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "Status"
                                      :json-name "status")
                                     (vpc-interfaces :target-type
                                      list-of-vpc-interface :member-name
                                      "VpcInterfaces" :json-name
                                      "vpcInterfaces")
                                     (maintenance :target-type maintenance
                                      :member-name "Maintenance" :json-name
                                      "maintenance")
                                     (source-monitoring-config :target-type
                                      monitoring-config :member-name
                                      "SourceMonitoringConfig" :json-name
                                      "sourceMonitoringConfig")
                                     (flow-size :target-type flow-size
                                      :member-name "FlowSize" :json-name
                                      "flowSize")
                                     (ndi-config :target-type ndi-config
                                      :member-name "NdiConfig" :json-name
                                      "ndiConfig"))
                                    (:shape-name "Flow"))

(smithy/sdk/shapes:define-type flow-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum flow-size
    common-lisp:nil
  (:medium "MEDIUM")
  (:large "LARGE"))

(smithy/sdk/shapes:define-structure fmtp common-lisp:nil
                                    ((channel-order :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ChannelOrder" :json-name
                                      "channelOrder")
                                     (colorimetry :target-type colorimetry
                                      :member-name "Colorimetry" :json-name
                                      "colorimetry")
                                     (exact-framerate :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ExactFramerate" :json-name
                                      "exactFramerate")
                                     (par :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Par" :json-name "par")
                                     (range :target-type range :member-name
                                      "Range" :json-name "range")
                                     (scan-mode :target-type scan-mode
                                      :member-name "ScanMode" :json-name
                                      "scanMode")
                                     (tcs :target-type tcs :member-name "Tcs"
                                      :json-name "tcs"))
                                    (:shape-name "Fmtp"))

(smithy/sdk/shapes:define-structure fmtp-request common-lisp:nil
                                    ((channel-order :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ChannelOrder" :json-name
                                      "channelOrder")
                                     (colorimetry :target-type colorimetry
                                      :member-name "Colorimetry" :json-name
                                      "colorimetry")
                                     (exact-framerate :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ExactFramerate" :json-name
                                      "exactFramerate")
                                     (par :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Par" :json-name "par")
                                     (range :target-type range :member-name
                                      "Range" :json-name "range")
                                     (scan-mode :target-type scan-mode
                                      :member-name "ScanMode" :json-name
                                      "scanMode")
                                     (tcs :target-type tcs :member-name "Tcs"
                                      :json-name "tcs"))
                                    (:shape-name "FmtpRequest"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-structure frame-resolution common-lisp:nil
                                    ((frame-height :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "FrameHeight"
                                      :json-name "frameHeight")
                                     (frame-width :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "FrameWidth"
                                      :json-name "frameWidth"))
                                    (:shape-name "FrameResolution"))

(smithy/sdk/shapes:define-structure frozen-frames common-lisp:nil
                                    ((state :target-type state :member-name
                                      "State" :json-name "state")
                                     (threshold-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ThresholdSeconds"
                                      :json-name "thresholdSeconds"))
                                    (:shape-name "FrozenFrames"))

(smithy/sdk/shapes:define-structure gateway common-lisp:nil
                                    ((egress-cidr-blocks :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "EgressCidrBlocks"
                                      :json-name "egressCidrBlocks")
                                     (gateway-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "GatewayArn"
                                      :json-name "gatewayArn")
                                     (gateway-messages :target-type
                                      list-of-message-detail :member-name
                                      "GatewayMessages" :json-name
                                      "gatewayMessages")
                                     (gateway-state :target-type gateway-state
                                      :member-name "GatewayState" :json-name
                                      "gatewayState")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (networks :target-type
                                      list-of-gateway-network :required
                                      common-lisp:t :member-name "Networks"
                                      :json-name "networks"))
                                    (:shape-name "Gateway"))

(smithy/sdk/shapes:define-type gateway-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure gateway-bridge-source common-lisp:nil
                                    ((bridge-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BridgeArn"
                                      :json-name "bridgeArn")
                                     (vpc-interface-attachment :target-type
                                      vpc-interface-attachment :member-name
                                      "VpcInterfaceAttachment" :json-name
                                      "vpcInterfaceAttachment"))
                                    (:shape-name "GatewayBridgeSource"))

(smithy/sdk/shapes:define-structure gateway-instance common-lisp:nil
                                    ((bridge-placement :target-type
                                      bridge-placement :required common-lisp:t
                                      :member-name "BridgePlacement" :json-name
                                      "bridgePlacement")
                                     (connection-status :target-type
                                      connection-status :required common-lisp:t
                                      :member-name "ConnectionStatus"
                                      :json-name "connectionStatus")
                                     (gateway-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "GatewayArn"
                                      :json-name "gatewayArn")
                                     (gateway-instance-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "GatewayInstanceArn" :json-name
                                      "gatewayInstanceArn")
                                     (instance-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "InstanceId"
                                      :json-name "instanceId")
                                     (instance-messages :target-type
                                      list-of-message-detail :member-name
                                      "InstanceMessages" :json-name
                                      "instanceMessages")
                                     (instance-state :target-type
                                      instance-state :required common-lisp:t
                                      :member-name "InstanceState" :json-name
                                      "instanceState")
                                     (running-bridge-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "RunningBridgeCount" :json-name
                                      "runningBridgeCount"))
                                    (:shape-name "GatewayInstance"))

(smithy/sdk/shapes:define-type gateway-instance-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure gateway-network common-lisp:nil
                                    ((cidr-block :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "CidrBlock"
                                      :json-name "cidrBlock")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "GatewayNetwork"))

common-lisp:nil

(smithy/sdk/shapes:define-enum gateway-state
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:error "ERROR")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure grant-entitlement-request common-lisp:nil
                                    ((data-transfer-subscriber-fee-percent
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "DataTransferSubscriberFeePercent"
                                      :json-name
                                      "dataTransferSubscriberFeePercent")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (encryption :target-type encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (entitlement-status :target-type
                                      entitlement-status :member-name
                                      "EntitlementStatus" :json-name
                                      "entitlementStatus")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name" :json-name "name")
                                     (subscribers :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Subscribers" :json-name "subscribers"))
                                    (:shape-name "GrantEntitlementRequest"))

(smithy/sdk/shapes:define-error grant-flow-entitlements420exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name
                                 "GrantFlowEntitlements420Exception")
                                (:error-code 420)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-input grant-flow-entitlements-request common-lisp:nil
                                ((entitlements :target-type
                                  list-of-grant-entitlement-request :required
                                  common-lisp:t :member-name "Entitlements"
                                  :json-name "entitlements")
                                 (flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GrantFlowEntitlementsRequest"))

(smithy/sdk/shapes:define-output grant-flow-entitlements-response
                                 common-lisp:nil
                                 ((entitlements :target-type
                                   list-of-entitlement :member-name
                                   "Entitlements" :json-name "entitlements")
                                  (flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn"))
                                 (:shape-name "GrantFlowEntitlementsResponse"))

(smithy/sdk/shapes:define-structure ingress-gateway-bridge common-lisp:nil
                                    ((instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceId" :json-name
                                      "instanceId")
                                     (max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxBitrate"
                                      :json-name "maxBitrate")
                                     (max-outputs :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxOutputs"
                                      :json-name "maxOutputs"))
                                    (:shape-name "IngressGatewayBridge"))

(smithy/sdk/shapes:define-structure input-configuration common-lisp:nil
                                    ((input-ip :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "InputIp"
                                      :json-name "inputIp")
                                     (input-port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "InputPort"
                                      :json-name "inputPort")
                                     (interface :target-type interface
                                      :required common-lisp:t :member-name
                                      "Interface" :json-name "interface"))
                                    (:shape-name "InputConfiguration"))

(smithy/sdk/shapes:define-structure input-configuration-request common-lisp:nil
                                    ((input-port :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "InputPort"
                                      :json-name "inputPort")
                                     (interface :target-type interface-request
                                      :required common-lisp:t :member-name
                                      "Interface" :json-name "interface"))
                                    (:shape-name "InputConfigurationRequest"))

(smithy/sdk/shapes:define-enum instance-state
    common-lisp:nil
  (:registering "REGISTERING")
  (:active "ACTIVE")
  (:deregistering "DEREGISTERING")
  (:deregistered "DEREGISTERED")
  (:registration-error "REGISTRATION_ERROR")
  (:deregistration-error "DEREGISTRATION_ERROR"))

(smithy/sdk/shapes:define-structure interface common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "Interface"))

(smithy/sdk/shapes:define-structure interface-request common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "InterfaceRequest"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-enum key-type
    common-lisp:nil
  (:speke "speke")
  (:static-key "static-key")
  (:srt-password "srt-password"))

(smithy/sdk/shapes:define-input list-bridges-request common-lisp:nil
                                ((filter-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "FilterArn" :http-query "filterArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListBridgesRequest"))

(smithy/sdk/shapes:define-output list-bridges-response common-lisp:nil
                                 ((bridges :target-type list-of-listed-bridge
                                   :member-name "Bridges" :json-name "bridges")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListBridgesResponse"))

(smithy/sdk/shapes:define-input list-entitlements-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListEntitlementsRequest"))

(smithy/sdk/shapes:define-output list-entitlements-response common-lisp:nil
                                 ((entitlements :target-type
                                   list-of-listed-entitlement :member-name
                                   "Entitlements" :json-name "entitlements")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListEntitlementsResponse"))

(smithy/sdk/shapes:define-input list-flows-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListFlowsRequest"))

(smithy/sdk/shapes:define-output list-flows-response common-lisp:nil
                                 ((flows :target-type list-of-listed-flow
                                   :member-name "Flows" :json-name "flows")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListFlowsResponse"))

(smithy/sdk/shapes:define-input list-gateway-instances-request common-lisp:nil
                                ((filter-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "FilterArn" :http-query "filterArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListGatewayInstancesRequest"))

(smithy/sdk/shapes:define-output list-gateway-instances-response
                                 common-lisp:nil
                                 ((instances :target-type
                                   list-of-listed-gateway-instance :member-name
                                   "Instances" :json-name "instances")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListGatewayInstancesResponse"))

(smithy/sdk/shapes:define-input list-gateways-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListGatewaysRequest"))

(smithy/sdk/shapes:define-output list-gateways-response common-lisp:nil
                                 ((gateways :target-type list-of-listed-gateway
                                   :member-name "Gateways" :json-name
                                   "gateways")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListGatewaysResponse"))

(smithy/sdk/shapes:define-input list-offerings-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListOfferingsRequest"))

(smithy/sdk/shapes:define-output list-offerings-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (offerings :target-type list-of-offering
                                   :member-name "Offerings" :json-name
                                   "offerings"))
                                 (:shape-name "ListOfferingsResponse"))

(smithy/sdk/shapes:define-input list-reservations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListReservationsRequest"))

(smithy/sdk/shapes:define-output list-reservations-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (reservations :target-type
                                   list-of-reservation :member-name
                                   "Reservations" :json-name "reservations"))
                                 (:shape-name "ListReservationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type map-of-string :member-name
                                   "Tags" :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure listed-bridge common-lisp:nil
                                    ((bridge-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BridgeArn"
                                      :json-name "bridgeArn")
                                     (bridge-state :target-type bridge-state
                                      :required common-lisp:t :member-name
                                      "BridgeState" :json-name "bridgeState")
                                     (bridge-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BridgeType"
                                      :json-name "bridgeType")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (placement-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "PlacementArn"
                                      :json-name "placementArn"))
                                    (:shape-name "ListedBridge"))

(smithy/sdk/shapes:define-structure listed-entitlement common-lisp:nil
                                    ((data-transfer-subscriber-fee-percent
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "DataTransferSubscriberFeePercent"
                                      :json-name
                                      "dataTransferSubscriberFeePercent")
                                     (entitlement-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "EntitlementArn" :json-name
                                      "entitlementArn")
                                     (entitlement-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "EntitlementName" :json-name
                                      "entitlementName"))
                                    (:shape-name "ListedEntitlement"))

(smithy/sdk/shapes:define-structure listed-flow common-lisp:nil
                                    ((availability-zone :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "AvailabilityZone" :json-name
                                      "availabilityZone")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description"
                                      :json-name "description")
                                     (flow-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FlowArn"
                                      :json-name "flowArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (source-type :target-type source-type
                                      :required common-lisp:t :member-name
                                      "SourceType" :json-name "sourceType")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "Status"
                                      :json-name "status")
                                     (maintenance :target-type maintenance
                                      :member-name "Maintenance" :json-name
                                      "maintenance"))
                                    (:shape-name "ListedFlow"))

(smithy/sdk/shapes:define-structure listed-gateway common-lisp:nil
                                    ((gateway-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "GatewayArn"
                                      :json-name "gatewayArn")
                                     (gateway-state :target-type gateway-state
                                      :required common-lisp:t :member-name
                                      "GatewayState" :json-name "gatewayState")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name"))
                                    (:shape-name "ListedGateway"))

(smithy/sdk/shapes:define-structure listed-gateway-instance common-lisp:nil
                                    ((gateway-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "GatewayArn"
                                      :json-name "gatewayArn")
                                     (gateway-instance-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "GatewayInstanceArn" :json-name
                                      "gatewayInstanceArn")
                                     (instance-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "InstanceId"
                                      :json-name "instanceId")
                                     (instance-state :target-type
                                      instance-state :member-name
                                      "InstanceState" :json-name
                                      "instanceState"))
                                    (:shape-name "ListedGatewayInstance"))

(smithy/sdk/shapes:define-structure maintenance common-lisp:nil
                                    ((maintenance-day :target-type
                                      maintenance-day :member-name
                                      "MaintenanceDay" :json-name
                                      "maintenanceDay")
                                     (maintenance-deadline :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MaintenanceDeadline"
                                      :json-name "maintenanceDeadline")
                                     (maintenance-scheduled-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MaintenanceScheduledDate"
                                      :json-name "maintenanceScheduledDate")
                                     (maintenance-start-hour :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MaintenanceStartHour"
                                      :json-name "maintenanceStartHour"))
                                    (:shape-name "Maintenance"))

(smithy/sdk/shapes:define-enum maintenance-day
    common-lisp:nil
  (:monday "Monday")
  (:tuesday "Tuesday")
  (:wednesday "Wednesday")
  (:thursday "Thursday")
  (:friday "Friday")
  (:saturday "Saturday")
  (:sunday "Sunday"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure media-stream common-lisp:nil
                                    ((attributes :target-type
                                      media-stream-attributes :member-name
                                      "Attributes" :json-name "attributes")
                                     (clock-rate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ClockRate" :json-name
                                      "clockRate")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (fmt :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Fmt"
                                      :json-name "fmt")
                                     (media-stream-id :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "MediaStreamId" :json-name
                                      "mediaStreamId")
                                     (media-stream-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MediaStreamName" :json-name
                                      "mediaStreamName")
                                     (media-stream-type :target-type
                                      media-stream-type :required common-lisp:t
                                      :member-name "MediaStreamType" :json-name
                                      "mediaStreamType")
                                     (video-format :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "VideoFormat" :json-name
                                      "videoFormat"))
                                    (:shape-name "MediaStream"))

(smithy/sdk/shapes:define-structure media-stream-attributes common-lisp:nil
                                    ((fmtp :target-type fmtp :required
                                      common-lisp:t :member-name "Fmtp"
                                      :json-name "fmtp")
                                     (lang :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Lang" :json-name "lang"))
                                    (:shape-name "MediaStreamAttributes"))

(smithy/sdk/shapes:define-structure media-stream-attributes-request
                                    common-lisp:nil
                                    ((fmtp :target-type fmtp-request
                                      :member-name "Fmtp" :json-name "fmtp")
                                     (lang :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Lang" :json-name "lang"))
                                    (:shape-name
                                     "MediaStreamAttributesRequest"))

(smithy/sdk/shapes:define-structure media-stream-output-configuration
                                    common-lisp:nil
                                    ((destination-configurations :target-type
                                      list-of-destination-configuration
                                      :member-name "DestinationConfigurations"
                                      :json-name "destinationConfigurations")
                                     (encoding-name :target-type encoding-name
                                      :required common-lisp:t :member-name
                                      "EncodingName" :json-name "encodingName")
                                     (encoding-parameters :target-type
                                      encoding-parameters :member-name
                                      "EncodingParameters" :json-name
                                      "encodingParameters")
                                     (media-stream-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MediaStreamName" :json-name
                                      "mediaStreamName"))
                                    (:shape-name
                                     "MediaStreamOutputConfiguration"))

(smithy/sdk/shapes:define-structure media-stream-output-configuration-request
                                    common-lisp:nil
                                    ((destination-configurations :target-type
                                      list-of-destination-configuration-request
                                      :member-name "DestinationConfigurations"
                                      :json-name "destinationConfigurations")
                                     (encoding-name :target-type encoding-name
                                      :required common-lisp:t :member-name
                                      "EncodingName" :json-name "encodingName")
                                     (encoding-parameters :target-type
                                      encoding-parameters-request :member-name
                                      "EncodingParameters" :json-name
                                      "encodingParameters")
                                     (media-stream-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MediaStreamName" :json-name
                                      "mediaStreamName"))
                                    (:shape-name
                                     "MediaStreamOutputConfigurationRequest"))

(smithy/sdk/shapes:define-structure media-stream-source-configuration
                                    common-lisp:nil
                                    ((encoding-name :target-type encoding-name
                                      :required common-lisp:t :member-name
                                      "EncodingName" :json-name "encodingName")
                                     (input-configurations :target-type
                                      list-of-input-configuration :member-name
                                      "InputConfigurations" :json-name
                                      "inputConfigurations")
                                     (media-stream-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MediaStreamName" :json-name
                                      "mediaStreamName"))
                                    (:shape-name
                                     "MediaStreamSourceConfiguration"))

(smithy/sdk/shapes:define-structure media-stream-source-configuration-request
                                    common-lisp:nil
                                    ((encoding-name :target-type encoding-name
                                      :required common-lisp:t :member-name
                                      "EncodingName" :json-name "encodingName")
                                     (input-configurations :target-type
                                      list-of-input-configuration-request
                                      :member-name "InputConfigurations"
                                      :json-name "inputConfigurations")
                                     (media-stream-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MediaStreamName" :json-name
                                      "mediaStreamName"))
                                    (:shape-name
                                     "MediaStreamSourceConfigurationRequest"))

(smithy/sdk/shapes:define-enum media-stream-type
    common-lisp:nil
  (:video "video")
  (:audio "audio")
  (:ancillary-data "ancillary-data"))

(smithy/sdk/shapes:define-structure message-detail common-lisp:nil
                                    ((code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Code"
                                      :json-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Message"
                                      :json-name "message")
                                     (resource-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ResourceName" :json-name
                                      "resourceName"))
                                    (:shape-name "MessageDetail"))

(smithy/sdk/shapes:define-structure messages common-lisp:nil
                                    ((errors :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Errors" :json-name "errors"))
                                    (:shape-name "Messages"))

(smithy/sdk/shapes:define-structure monitoring-config common-lisp:nil
                                    ((thumbnail-state :target-type
                                      thumbnail-state :member-name
                                      "ThumbnailState" :json-name
                                      "thumbnailState")
                                     (audio-monitoring-settings :target-type
                                      list-of-audio-monitoring-setting
                                      :member-name "AudioMonitoringSettings"
                                      :json-name "audioMonitoringSettings")
                                     (content-quality-analysis-state
                                      :target-type
                                      content-quality-analysis-state
                                      :member-name
                                      "ContentQualityAnalysisState" :json-name
                                      "contentQualityAnalysisState")
                                     (video-monitoring-settings :target-type
                                      list-of-video-monitoring-setting
                                      :member-name "VideoMonitoringSettings"
                                      :json-name "videoMonitoringSettings"))
                                    (:shape-name "MonitoringConfig"))

(smithy/sdk/shapes:define-structure multicast-source-settings common-lisp:nil
                                    ((multicast-source-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MulticastSourceIp"
                                      :json-name "multicastSourceIp"))
                                    (:shape-name "MulticastSourceSettings"))

(smithy/sdk/shapes:define-structure ndi-config common-lisp:nil
                                    ((ndi-state :target-type ndi-state
                                      :member-name "NdiState" :json-name
                                      "ndiState")
                                     (machine-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MachineName" :json-name
                                      "machineName")
                                     (ndi-discovery-servers :target-type
                                      list-of-ndi-discovery-server-config
                                      :member-name "NdiDiscoveryServers"
                                      :json-name "ndiDiscoveryServers"))
                                    (:shape-name "NdiConfig"))

(smithy/sdk/shapes:define-structure ndi-discovery-server-config common-lisp:nil
                                    ((discovery-server-address :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "DiscoveryServerAddress" :json-name
                                      "discoveryServerAddress")
                                     (discovery-server-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "DiscoveryServerPort"
                                      :json-name "discoveryServerPort")
                                     (vpc-interface-adapter :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "VpcInterfaceAdapter" :json-name
                                      "vpcInterfaceAdapter"))
                                    (:shape-name "NdiDiscoveryServerConfig"))

(smithy/sdk/shapes:define-enum ndi-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum network-interface-type
    common-lisp:nil
  (:ena "ena")
  (:efa "efa"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-structure offering common-lisp:nil
                                    ((currency-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "CurrencyCode"
                                      :json-name "currencyCode")
                                     (duration :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Duration"
                                      :json-name "duration")
                                     (duration-units :target-type
                                      duration-units :required common-lisp:t
                                      :member-name "DurationUnits" :json-name
                                      "durationUnits")
                                     (offering-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "OfferingArn"
                                      :json-name "offeringArn")
                                     (offering-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "OfferingDescription" :json-name
                                      "offeringDescription")
                                     (price-per-unit :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "PricePerUnit"
                                      :json-name "pricePerUnit")
                                     (price-units :target-type price-units
                                      :required common-lisp:t :member-name
                                      "PriceUnits" :json-name "priceUnits")
                                     (resource-specification :target-type
                                      resource-specification :required
                                      common-lisp:t :member-name
                                      "ResourceSpecification" :json-name
                                      "resourceSpecification"))
                                    (:shape-name "Offering"))

(smithy/sdk/shapes:define-type offering-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((data-transfer-subscriber-fee-percent
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "DataTransferSubscriberFeePercent"
                                      :json-name
                                      "dataTransferSubscriberFeePercent")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (destination :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Destination" :json-name
                                      "destination")
                                     (encryption :target-type encryption
                                      :member-name "Encryption" :json-name
                                      "encryption")
                                     (entitlement-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EntitlementArn" :json-name
                                      "entitlementArn")
                                     (listener-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ListenerAddress" :json-name
                                      "listenerAddress")
                                     (media-live-input-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MediaLiveInputArn"
                                      :json-name "mediaLiveInputArn")
                                     (media-stream-output-configurations
                                      :target-type
                                      list-of-media-stream-output-configuration
                                      :member-name
                                      "MediaStreamOutputConfigurations"
                                      :json-name
                                      "mediaStreamOutputConfigurations")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (output-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "OutputArn"
                                      :json-name "outputArn")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Port" :json-name "port")
                                     (transport :target-type transport
                                      :member-name "Transport" :json-name
                                      "transport")
                                     (vpc-interface-attachment :target-type
                                      vpc-interface-attachment :member-name
                                      "VpcInterfaceAttachment" :json-name
                                      "vpcInterfaceAttachment")
                                     (bridge-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BridgeArn" :json-name
                                      "bridgeArn")
                                     (bridge-ports :target-type list-of-integer
                                      :member-name "BridgePorts" :json-name
                                      "bridgePorts")
                                     (output-status :target-type output-status
                                      :member-name "OutputStatus" :json-name
                                      "outputStatus")
                                     (peer-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PeerIpAddress" :json-name
                                      "peerIpAddress"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-enum output-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum price-units
    common-lisp:nil
  (:hourly "HOURLY"))

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:zixi-push "zixi-push")
  (:rtp-fec "rtp-fec")
  (:rtp "rtp")
  (:zixi-pull "zixi-pull")
  (:rist "rist")
  (:st2110-jpegxs "st2110-jpegxs")
  (:cdi "cdi")
  (:srt-listener "srt-listener")
  (:srt-caller "srt-caller")
  (:fujitsu-qos "fujitsu-qos")
  (:udp "udp")
  (:ndi-speed-hq "ndi-speed-hq"))

(smithy/sdk/shapes:define-input purchase-offering-request common-lisp:nil
                                ((offering-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "OfferingArn"
                                  :http-label common-lisp:t)
                                 (reservation-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ReservationName"
                                  :json-name "reservationName")
                                 (start :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Start" :json-name
                                  "start"))
                                (:shape-name "PurchaseOfferingRequest"))

(smithy/sdk/shapes:define-output purchase-offering-response common-lisp:nil
                                 ((reservation :target-type reservation
                                   :member-name "Reservation" :json-name
                                   "reservation"))
                                 (:shape-name "PurchaseOfferingResponse"))

(smithy/sdk/shapes:define-enum range
    common-lisp:nil
  (:narrow "NARROW")
  (:full "FULL")
  (:fullprotect "FULLPROTECT"))

(smithy/sdk/shapes:define-input remove-bridge-output-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (output-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "OutputName"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveBridgeOutputRequest"))

(smithy/sdk/shapes:define-output remove-bridge-output-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (output-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OutputName" :json-name "outputName"))
                                 (:shape-name "RemoveBridgeOutputResponse"))

(smithy/sdk/shapes:define-input remove-bridge-source-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (source-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "SourceName"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveBridgeSourceRequest"))

(smithy/sdk/shapes:define-output remove-bridge-source-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (source-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SourceName" :json-name "sourceName"))
                                 (:shape-name "RemoveBridgeSourceResponse"))

(smithy/sdk/shapes:define-input remove-flow-media-stream-request
                                common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (media-stream-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "MediaStreamName"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveFlowMediaStreamRequest"))

(smithy/sdk/shapes:define-output remove-flow-media-stream-response
                                 common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (media-stream-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MediaStreamName" :json-name
                                   "mediaStreamName"))
                                 (:shape-name "RemoveFlowMediaStreamResponse"))

(smithy/sdk/shapes:define-input remove-flow-output-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (output-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "OutputArn"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveFlowOutputRequest"))

(smithy/sdk/shapes:define-output remove-flow-output-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (output-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OutputArn" :json-name "outputArn"))
                                 (:shape-name "RemoveFlowOutputResponse"))

(smithy/sdk/shapes:define-input remove-flow-source-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (source-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "SourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveFlowSourceRequest"))

(smithy/sdk/shapes:define-output remove-flow-source-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (source-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SourceArn" :json-name "sourceArn"))
                                 (:shape-name "RemoveFlowSourceResponse"))

(smithy/sdk/shapes:define-input remove-flow-vpc-interface-request
                                common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (vpc-interface-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "VpcInterfaceName"
                                  :http-label common-lisp:t))
                                (:shape-name "RemoveFlowVpcInterfaceRequest"))

(smithy/sdk/shapes:define-output remove-flow-vpc-interface-response
                                 common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (non-deleted-network-interface-ids
                                   :target-type list-of-string :member-name
                                   "NonDeletedNetworkInterfaceIds" :json-name
                                   "nonDeletedNetworkInterfaceIds")
                                  (vpc-interface-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "VpcInterfaceName" :json-name
                                   "vpcInterfaceName"))
                                 (:shape-name "RemoveFlowVpcInterfaceResponse"))

(smithy/sdk/shapes:define-structure reservation common-lisp:nil
                                    ((currency-code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "CurrencyCode"
                                      :json-name "currencyCode")
                                     (duration :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Duration"
                                      :json-name "duration")
                                     (duration-units :target-type
                                      duration-units :required common-lisp:t
                                      :member-name "DurationUnits" :json-name
                                      "durationUnits")
                                     (end :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "End"
                                      :json-name "end")
                                     (offering-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "OfferingArn"
                                      :json-name "offeringArn")
                                     (offering-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "OfferingDescription" :json-name
                                      "offeringDescription")
                                     (price-per-unit :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "PricePerUnit"
                                      :json-name "pricePerUnit")
                                     (price-units :target-type price-units
                                      :required common-lisp:t :member-name
                                      "PriceUnits" :json-name "priceUnits")
                                     (reservation-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ReservationArn" :json-name
                                      "reservationArn")
                                     (reservation-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ReservationName" :json-name
                                      "reservationName")
                                     (reservation-state :target-type
                                      reservation-state :required common-lisp:t
                                      :member-name "ReservationState"
                                      :json-name "reservationState")
                                     (resource-specification :target-type
                                      resource-specification :required
                                      common-lisp:t :member-name
                                      "ResourceSpecification" :json-name
                                      "resourceSpecification")
                                     (start :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Start"
                                      :json-name "start"))
                                    (:shape-name "Reservation"))

(smithy/sdk/shapes:define-type reservation-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum reservation-state
    common-lisp:nil
  (:active "ACTIVE")
  (:expired "EXPIRED")
  (:processing "PROCESSING")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure resource-specification common-lisp:nil
                                    ((reserved-bitrate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ReservedBitrate" :json-name
                                      "reservedBitrate")
                                     (resource-type :target-type resource-type
                                      :required common-lisp:t :member-name
                                      "ResourceType" :json-name
                                      "resourceType"))
                                    (:shape-name "ResourceSpecification"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:mbps-outbound-bandwidth "Mbps_Outbound_Bandwidth"))

(smithy/sdk/shapes:define-input revoke-flow-entitlement-request common-lisp:nil
                                ((entitlement-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "EntitlementArn"
                                  :http-label common-lisp:t)
                                 (flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name "RevokeFlowEntitlementRequest"))

(smithy/sdk/shapes:define-output revoke-flow-entitlement-response
                                 common-lisp:nil
                                 ((entitlement-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "EntitlementArn" :json-name
                                   "entitlementArn")
                                  (flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn"))
                                 (:shape-name "RevokeFlowEntitlementResponse"))

(smithy/sdk/shapes:define-enum scan-mode
    common-lisp:nil
  (:progressive "progressive")
  (:interlace "interlace")
  (:progressive-segmented-frame "progressive-segmented-frame"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-structure set-gateway-bridge-source-request
                                    common-lisp:nil
                                    ((bridge-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BridgeArn"
                                      :json-name "bridgeArn")
                                     (vpc-interface-attachment :target-type
                                      vpc-interface-attachment :member-name
                                      "VpcInterfaceAttachment" :json-name
                                      "vpcInterfaceAttachment"))
                                    (:shape-name
                                     "SetGatewayBridgeSourceRequest"))

(smithy/sdk/shapes:define-structure set-source-request common-lisp:nil
                                    ((decryption :target-type encryption
                                      :member-name "Decryption" :json-name
                                      "decryption")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (entitlement-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EntitlementArn" :json-name
                                      "entitlementArn")
                                     (ingest-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "IngestPort" :json-name
                                      "ingestPort")
                                     (max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (max-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxLatency" :json-name
                                      "maxLatency")
                                     (max-sync-buffer :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxSyncBuffer" :json-name
                                      "maxSyncBuffer")
                                     (media-stream-source-configurations
                                      :target-type
                                      list-of-media-stream-source-configuration-request
                                      :member-name
                                      "MediaStreamSourceConfigurations"
                                      :json-name
                                      "mediaStreamSourceConfigurations")
                                     (min-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinLatency" :json-name
                                      "minLatency")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name" :json-name "name")
                                     (protocol :target-type protocol
                                      :member-name "Protocol" :json-name
                                      "protocol")
                                     (sender-control-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SenderControlPort"
                                      :json-name "senderControlPort")
                                     (sender-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SenderIpAddress" :json-name
                                      "senderIpAddress")
                                     (source-listener-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceListenerAddress"
                                      :json-name "sourceListenerAddress")
                                     (source-listener-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SourceListenerPort"
                                      :json-name "sourceListenerPort")
                                     (stream-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StreamId" :json-name
                                      "streamId")
                                     (vpc-interface-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "VpcInterfaceName"
                                      :json-name "vpcInterfaceName")
                                     (whitelist-cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "WhitelistCidr" :json-name
                                      "whitelistCidr")
                                     (gateway-bridge-source :target-type
                                      set-gateway-bridge-source-request
                                      :member-name "GatewayBridgeSource"
                                      :json-name "gatewayBridgeSource"))
                                    (:shape-name "SetSourceRequest"))

(smithy/sdk/shapes:define-structure silent-audio common-lisp:nil
                                    ((state :target-type state :member-name
                                      "State" :json-name "state")
                                     (threshold-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "ThresholdSeconds"
                                      :json-name "thresholdSeconds"))
                                    (:shape-name "SilentAudio"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((data-transfer-subscriber-fee-percent
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "DataTransferSubscriberFeePercent"
                                      :json-name
                                      "dataTransferSubscriberFeePercent")
                                     (decryption :target-type encryption
                                      :member-name "Decryption" :json-name
                                      "decryption")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description" :json-name
                                      "description")
                                     (entitlement-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EntitlementArn" :json-name
                                      "entitlementArn")
                                     (ingest-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "IngestIp" :json-name
                                      "ingestIp")
                                     (ingest-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "IngestPort" :json-name
                                      "ingestPort")
                                     (media-stream-source-configurations
                                      :target-type
                                      list-of-media-stream-source-configuration
                                      :member-name
                                      "MediaStreamSourceConfigurations"
                                      :json-name
                                      "mediaStreamSourceConfigurations")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (sender-control-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SenderControlPort"
                                      :json-name "senderControlPort")
                                     (sender-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SenderIpAddress" :json-name
                                      "senderIpAddress")
                                     (source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "SourceArn"
                                      :json-name "sourceArn")
                                     (transport :target-type transport
                                      :member-name "Transport" :json-name
                                      "transport")
                                     (vpc-interface-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "VpcInterfaceName"
                                      :json-name "vpcInterfaceName")
                                     (whitelist-cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "WhitelistCidr" :json-name
                                      "whitelistCidr")
                                     (gateway-bridge-source :target-type
                                      gateway-bridge-source :member-name
                                      "GatewayBridgeSource" :json-name
                                      "gatewayBridgeSource")
                                     (peer-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PeerIpAddress" :json-name
                                      "peerIpAddress"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-structure source-priority common-lisp:nil
                                    ((primary-source :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PrimarySource" :json-name
                                      "primarySource"))
                                    (:shape-name "SourcePriority"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:owned "OWNED")
  (:entitled "ENTITLED"))

(smithy/sdk/shapes:define-input start-flow-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name "StartFlowRequest"))

(smithy/sdk/shapes:define-output start-flow-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "StartFlowResponse"))

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:standby "STANDBY")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:starting "STARTING")
  (:stopping "STOPPING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-input stop-flow-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t))
                                (:shape-name "StopFlowRequest"))

(smithy/sdk/shapes:define-output stop-flow-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (status :target-type status :member-name
                                   "Status" :json-name "status"))
                                 (:shape-name "StopFlowResponse"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-enum tcs
    common-lisp:nil
  (:sdr "SDR")
  (:pq "PQ")
  (:hlg "HLG")
  (:linear "LINEAR")
  (:bt2100linpq "BT2100LINPQ")
  (:bt2100linhlg "BT2100LINHLG")
  (:st2065-1 "ST2065-1")
  (:st428-1 "ST428-1")
  (:density "DENSITY"))

(smithy/sdk/shapes:define-structure thumbnail-details common-lisp:nil
                                    ((flow-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "FlowArn"
                                      :json-name "flowArn")
                                     (thumbnail :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Thumbnail" :json-name
                                      "thumbnail")
                                     (thumbnail-messages :target-type
                                      list-of-message-detail :required
                                      common-lisp:t :member-name
                                      "ThumbnailMessages" :json-name
                                      "thumbnailMessages")
                                     (timecode :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Timecode" :json-name
                                      "timecode")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "Timestamp" :json-name
                                      "timestamp" :timestamp-format
                                      "date-time"))
                                    (:shape-name "ThumbnailDetails"))

(smithy/sdk/shapes:define-enum thumbnail-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429)
                                (:base-class mediaconnect-error))

(smithy/sdk/shapes:define-structure transport common-lisp:nil
                                    ((cidr-allow-list :target-type
                                      list-of-string :member-name
                                      "CidrAllowList" :json-name
                                      "cidrAllowList")
                                     (max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (max-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxLatency" :json-name
                                      "maxLatency")
                                     (max-sync-buffer :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxSyncBuffer" :json-name
                                      "maxSyncBuffer")
                                     (min-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MinLatency" :json-name
                                      "minLatency")
                                     (protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol"
                                      :json-name "protocol")
                                     (remote-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RemoteId" :json-name
                                      "remoteId")
                                     (sender-control-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SenderControlPort"
                                      :json-name "senderControlPort")
                                     (sender-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SenderIpAddress" :json-name
                                      "senderIpAddress")
                                     (smoothing-latency :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SmoothingLatency"
                                      :json-name "smoothingLatency")
                                     (source-listener-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceListenerAddress"
                                      :json-name "sourceListenerAddress")
                                     (source-listener-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SourceListenerPort"
                                      :json-name "sourceListenerPort")
                                     (stream-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StreamId" :json-name
                                      "streamId")
                                     (ndi-speed-hq-quality :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NdiSpeedHqQuality"
                                      :json-name "ndiSpeedHqQuality")
                                     (ndi-program-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NdiProgramName" :json-name
                                      "ndiProgramName"))
                                    (:shape-name "Transport"))

(smithy/sdk/shapes:define-structure transport-media-info common-lisp:nil
                                    ((programs :target-type
                                      list-of-transport-stream-program
                                      :required common-lisp:t :member-name
                                      "Programs" :json-name "programs"))
                                    (:shape-name "TransportMediaInfo"))

(smithy/sdk/shapes:define-structure transport-stream common-lisp:nil
                                    ((channels :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Channels" :json-name
                                      "channels")
                                     (codec :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Codec" :json-name "codec")
                                     (frame-rate :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "FrameRate" :json-name
                                      "frameRate")
                                     (frame-resolution :target-type
                                      frame-resolution :member-name
                                      "FrameResolution" :json-name
                                      "frameResolution")
                                     (pid :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "Pid"
                                      :json-name "pid")
                                     (sample-rate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SampleRate" :json-name
                                      "sampleRate")
                                     (sample-size :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "SampleSize" :json-name
                                      "sampleSize")
                                     (stream-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "StreamType"
                                      :json-name "streamType"))
                                    (:shape-name "TransportStream"))

(smithy/sdk/shapes:define-structure transport-stream-program common-lisp:nil
                                    ((pcr-pid :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "PcrPid"
                                      :json-name "pcrPid")
                                     (program-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ProgramName" :json-name
                                      "programName")
                                     (program-number :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "ProgramNumber" :json-name
                                      "programNumber")
                                     (program-pid :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "ProgramPid"
                                      :json-name "programPid")
                                     (streams :target-type
                                      list-of-transport-stream :required
                                      common-lisp:t :member-name "Streams"
                                      :json-name "streams"))
                                    (:shape-name "TransportStreamProgram"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure update-bridge-flow-source-request
                                    common-lisp:nil
                                    ((flow-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "FlowArn" :json-name
                                      "flowArn")
                                     (flow-vpc-interface-attachment
                                      :target-type vpc-interface-attachment
                                      :member-name "FlowVpcInterfaceAttachment"
                                      :json-name "flowVpcInterfaceAttachment"))
                                    (:shape-name
                                     "UpdateBridgeFlowSourceRequest"))

(smithy/sdk/shapes:define-structure update-bridge-network-output-request
                                    common-lisp:nil
                                    ((ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "IpAddress" :json-name
                                      "ipAddress")
                                     (network-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NetworkName" :json-name
                                      "networkName")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Port" :json-name "port")
                                     (protocol :target-type protocol
                                      :member-name "Protocol" :json-name
                                      "protocol")
                                     (ttl :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Ttl" :json-name "ttl"))
                                    (:shape-name
                                     "UpdateBridgeNetworkOutputRequest"))

(smithy/sdk/shapes:define-structure update-bridge-network-source-request
                                    common-lisp:nil
                                    ((multicast-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MulticastIp" :json-name
                                      "multicastIp")
                                     (multicast-source-settings :target-type
                                      multicast-source-settings :member-name
                                      "MulticastSourceSettings" :json-name
                                      "multicastSourceSettings")
                                     (network-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NetworkName" :json-name
                                      "networkName")
                                     (port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "Port" :json-name "port")
                                     (protocol :target-type protocol
                                      :member-name "Protocol" :json-name
                                      "protocol"))
                                    (:shape-name
                                     "UpdateBridgeNetworkSourceRequest"))

(smithy/sdk/shapes:define-input update-bridge-output-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (network-output :target-type
                                  update-bridge-network-output-request
                                  :member-name "NetworkOutput" :json-name
                                  "networkOutput")
                                 (output-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "OutputName"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateBridgeOutputRequest"))

(smithy/sdk/shapes:define-output update-bridge-output-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (output :target-type bridge-output
                                   :member-name "Output" :json-name "output"))
                                 (:shape-name "UpdateBridgeOutputResponse"))

(smithy/sdk/shapes:define-input update-bridge-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (egress-gateway-bridge :target-type
                                  update-egress-gateway-bridge-request
                                  :member-name "EgressGatewayBridge" :json-name
                                  "egressGatewayBridge")
                                 (ingress-gateway-bridge :target-type
                                  update-ingress-gateway-bridge-request
                                  :member-name "IngressGatewayBridge"
                                  :json-name "ingressGatewayBridge")
                                 (source-failover-config :target-type
                                  update-failover-config :member-name
                                  "SourceFailoverConfig" :json-name
                                  "sourceFailoverConfig"))
                                (:shape-name "UpdateBridgeRequest"))

(smithy/sdk/shapes:define-output update-bridge-response common-lisp:nil
                                 ((bridge :target-type bridge :member-name
                                   "Bridge" :json-name "bridge"))
                                 (:shape-name "UpdateBridgeResponse"))

(smithy/sdk/shapes:define-input update-bridge-source-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (flow-source :target-type
                                  update-bridge-flow-source-request
                                  :member-name "FlowSource" :json-name
                                  "flowSource")
                                 (network-source :target-type
                                  update-bridge-network-source-request
                                  :member-name "NetworkSource" :json-name
                                  "networkSource")
                                 (source-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "SourceName"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateBridgeSourceRequest"))

(smithy/sdk/shapes:define-output update-bridge-source-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (source :target-type bridge-source
                                   :member-name "Source" :json-name "source"))
                                 (:shape-name "UpdateBridgeSourceResponse"))

(smithy/sdk/shapes:define-input update-bridge-state-request common-lisp:nil
                                ((bridge-arn :target-type bridge-arn :required
                                  common-lisp:t :member-name "BridgeArn"
                                  :http-label common-lisp:t)
                                 (desired-state :target-type desired-state
                                  :required common-lisp:t :member-name
                                  "DesiredState" :json-name "desiredState"))
                                (:shape-name "UpdateBridgeStateRequest"))

(smithy/sdk/shapes:define-output update-bridge-state-response common-lisp:nil
                                 ((bridge-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "BridgeArn" :json-name "bridgeArn")
                                  (desired-state :target-type desired-state
                                   :member-name "DesiredState" :json-name
                                   "desiredState"))
                                 (:shape-name "UpdateBridgeStateResponse"))

(smithy/sdk/shapes:define-structure update-egress-gateway-bridge-request
                                    common-lisp:nil
                                    ((max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate"))
                                    (:shape-name
                                     "UpdateEgressGatewayBridgeRequest"))

(smithy/sdk/shapes:define-structure update-encryption common-lisp:nil
                                    ((algorithm :target-type algorithm
                                      :member-name "Algorithm" :json-name
                                      "algorithm")
                                     (constant-initialization-vector
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "ConstantInitializationVector" :json-name
                                      "constantInitializationVector")
                                     (device-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DeviceId" :json-name
                                      "deviceId")
                                     (key-type :target-type key-type
                                      :member-name "KeyType" :json-name
                                      "keyType")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region" :json-name
                                      "region")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ResourceId" :json-name
                                      "resourceId")
                                     (role-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RoleArn" :json-name
                                      "roleArn")
                                     (secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SecretArn" :json-name
                                      "secretArn")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Url" :json-name "url"))
                                    (:shape-name "UpdateEncryption"))

(smithy/sdk/shapes:define-structure update-failover-config common-lisp:nil
                                    ((failover-mode :target-type failover-mode
                                      :member-name "FailoverMode" :json-name
                                      "failoverMode")
                                     (recovery-window :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "RecoveryWindow" :json-name
                                      "recoveryWindow")
                                     (source-priority :target-type
                                      source-priority :member-name
                                      "SourcePriority" :json-name
                                      "sourcePriority")
                                     (state :target-type state :member-name
                                      "State" :json-name "state"))
                                    (:shape-name "UpdateFailoverConfig"))

(smithy/sdk/shapes:define-input update-flow-entitlement-request common-lisp:nil
                                ((description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Description" :json-name "description")
                                 (encryption :target-type update-encryption
                                  :member-name "Encryption" :json-name
                                  "encryption")
                                 (entitlement-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "EntitlementArn"
                                  :http-label common-lisp:t)
                                 (entitlement-status :target-type
                                  entitlement-status :member-name
                                  "EntitlementStatus" :json-name
                                  "entitlementStatus")
                                 (flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (subscribers :target-type list-of-string
                                  :member-name "Subscribers" :json-name
                                  "subscribers"))
                                (:shape-name "UpdateFlowEntitlementRequest"))

(smithy/sdk/shapes:define-output update-flow-entitlement-response
                                 common-lisp:nil
                                 ((entitlement :target-type entitlement
                                   :member-name "Entitlement" :json-name
                                   "entitlement")
                                  (flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn"))
                                 (:shape-name "UpdateFlowEntitlementResponse"))

(smithy/sdk/shapes:define-input update-flow-media-stream-request
                                common-lisp:nil
                                ((attributes :target-type
                                  media-stream-attributes-request :member-name
                                  "Attributes" :json-name "attributes")
                                 (clock-rate :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "ClockRate" :json-name "clockRate")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Description" :json-name "description")
                                 (flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (media-stream-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "MediaStreamName"
                                  :http-label common-lisp:t)
                                 (media-stream-type :target-type
                                  media-stream-type :member-name
                                  "MediaStreamType" :json-name
                                  "mediaStreamType")
                                 (video-format :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "VideoFormat" :json-name "videoFormat"))
                                (:shape-name "UpdateFlowMediaStreamRequest"))

(smithy/sdk/shapes:define-output update-flow-media-stream-response
                                 common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (media-stream :target-type media-stream
                                   :member-name "MediaStream" :json-name
                                   "mediaStream"))
                                 (:shape-name "UpdateFlowMediaStreamResponse"))

(smithy/sdk/shapes:define-input update-flow-output-request common-lisp:nil
                                ((cidr-allow-list :target-type list-of-string
                                  :member-name "CidrAllowList" :json-name
                                  "cidrAllowList")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Description" :json-name "description")
                                 (destination :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Destination" :json-name "destination")
                                 (encryption :target-type update-encryption
                                  :member-name "Encryption" :json-name
                                  "encryption")
                                 (flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (max-latency :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxLatency" :json-name "maxLatency")
                                 (media-stream-output-configurations
                                  :target-type
                                  list-of-media-stream-output-configuration-request
                                  :member-name
                                  "MediaStreamOutputConfigurations" :json-name
                                  "mediaStreamOutputConfigurations")
                                 (min-latency :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MinLatency" :json-name "minLatency")
                                 (output-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "OutputArn"
                                  :http-label common-lisp:t)
                                 (port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "Port" :json-name "port")
                                 (protocol :target-type protocol :member-name
                                  "Protocol" :json-name "protocol")
                                 (remote-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "RemoteId" :json-name "remoteId")
                                 (sender-control-port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "SenderControlPort" :json-name
                                  "senderControlPort")
                                 (sender-ip-address :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "SenderIpAddress" :json-name
                                  "senderIpAddress")
                                 (smoothing-latency :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "SmoothingLatency" :json-name
                                  "smoothingLatency")
                                 (stream-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "StreamId" :json-name "streamId")
                                 (vpc-interface-attachment :target-type
                                  vpc-interface-attachment :member-name
                                  "VpcInterfaceAttachment" :json-name
                                  "vpcInterfaceAttachment")
                                 (output-status :target-type output-status
                                  :member-name "OutputStatus" :json-name
                                  "outputStatus")
                                 (ndi-program-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NdiProgramName" :json-name "ndiProgramName")
                                 (ndi-speed-hq-quality :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "NdiSpeedHqQuality" :json-name
                                  "ndiSpeedHqQuality"))
                                (:shape-name "UpdateFlowOutputRequest"))

(smithy/sdk/shapes:define-output update-flow-output-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (output :target-type output :member-name
                                   "Output" :json-name "output"))
                                 (:shape-name "UpdateFlowOutputResponse"))

(smithy/sdk/shapes:define-input update-flow-request common-lisp:nil
                                ((flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (source-failover-config :target-type
                                  update-failover-config :member-name
                                  "SourceFailoverConfig" :json-name
                                  "sourceFailoverConfig")
                                 (maintenance :target-type update-maintenance
                                  :member-name "Maintenance" :json-name
                                  "maintenance")
                                 (source-monitoring-config :target-type
                                  monitoring-config :member-name
                                  "SourceMonitoringConfig" :json-name
                                  "sourceMonitoringConfig")
                                 (ndi-config :target-type ndi-config
                                  :member-name "NdiConfig" :json-name
                                  "ndiConfig"))
                                (:shape-name "UpdateFlowRequest"))

(smithy/sdk/shapes:define-output update-flow-response common-lisp:nil
                                 ((flow :target-type flow :member-name "Flow"
                                   :json-name "flow"))
                                 (:shape-name "UpdateFlowResponse"))

(smithy/sdk/shapes:define-input update-flow-source-request common-lisp:nil
                                ((decryption :target-type update-encryption
                                  :member-name "Decryption" :json-name
                                  "decryption")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Description" :json-name "description")
                                 (entitlement-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "EntitlementArn" :json-name "entitlementArn")
                                 (flow-arn :target-type flow-arn :required
                                  common-lisp:t :member-name "FlowArn"
                                  :http-label common-lisp:t)
                                 (ingest-port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "IngestPort" :json-name "ingestPort")
                                 (max-bitrate :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxBitrate" :json-name "maxBitrate")
                                 (max-latency :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxLatency" :json-name "maxLatency")
                                 (max-sync-buffer :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxSyncBuffer" :json-name "maxSyncBuffer")
                                 (media-stream-source-configurations
                                  :target-type
                                  list-of-media-stream-source-configuration-request
                                  :member-name
                                  "MediaStreamSourceConfigurations" :json-name
                                  "mediaStreamSourceConfigurations")
                                 (min-latency :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MinLatency" :json-name "minLatency")
                                 (protocol :target-type protocol :member-name
                                  "Protocol" :json-name "protocol")
                                 (sender-control-port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "SenderControlPort" :json-name
                                  "senderControlPort")
                                 (sender-ip-address :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "SenderIpAddress" :json-name
                                  "senderIpAddress")
                                 (source-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "SourceArn"
                                  :http-label common-lisp:t)
                                 (source-listener-address :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "SourceListenerAddress" :json-name
                                  "sourceListenerAddress")
                                 (source-listener-port :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "SourceListenerPort" :json-name
                                  "sourceListenerPort")
                                 (stream-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "StreamId" :json-name "streamId")
                                 (vpc-interface-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "VpcInterfaceName" :json-name
                                  "vpcInterfaceName")
                                 (whitelist-cidr :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "WhitelistCidr" :json-name "whitelistCidr")
                                 (gateway-bridge-source :target-type
                                  update-gateway-bridge-source-request
                                  :member-name "GatewayBridgeSource" :json-name
                                  "gatewayBridgeSource"))
                                (:shape-name "UpdateFlowSourceRequest"))

(smithy/sdk/shapes:define-output update-flow-source-response common-lisp:nil
                                 ((flow-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "FlowArn" :json-name "flowArn")
                                  (source :target-type source :member-name
                                   "Source" :json-name "source"))
                                 (:shape-name "UpdateFlowSourceResponse"))

(smithy/sdk/shapes:define-structure update-gateway-bridge-source-request
                                    common-lisp:nil
                                    ((bridge-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "BridgeArn" :json-name
                                      "bridgeArn")
                                     (vpc-interface-attachment :target-type
                                      vpc-interface-attachment :member-name
                                      "VpcInterfaceAttachment" :json-name
                                      "vpcInterfaceAttachment"))
                                    (:shape-name
                                     "UpdateGatewayBridgeSourceRequest"))

(smithy/sdk/shapes:define-input update-gateway-instance-request common-lisp:nil
                                ((bridge-placement :target-type
                                  bridge-placement :member-name
                                  "BridgePlacement" :json-name
                                  "bridgePlacement")
                                 (gateway-instance-arn :target-type
                                  gateway-instance-arn :required common-lisp:t
                                  :member-name "GatewayInstanceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateGatewayInstanceRequest"))

(smithy/sdk/shapes:define-output update-gateway-instance-response
                                 common-lisp:nil
                                 ((bridge-placement :target-type
                                   bridge-placement :member-name
                                   "BridgePlacement" :json-name
                                   "bridgePlacement")
                                  (gateway-instance-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "GatewayInstanceArn" :json-name
                                   "gatewayInstanceArn"))
                                 (:shape-name "UpdateGatewayInstanceResponse"))

(smithy/sdk/shapes:define-structure update-ingress-gateway-bridge-request
                                    common-lisp:nil
                                    ((max-bitrate :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxBitrate" :json-name
                                      "maxBitrate")
                                     (max-outputs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxOutputs" :json-name
                                      "maxOutputs"))
                                    (:shape-name
                                     "UpdateIngressGatewayBridgeRequest"))

(smithy/sdk/shapes:define-structure update-maintenance common-lisp:nil
                                    ((maintenance-day :target-type
                                      maintenance-day :member-name
                                      "MaintenanceDay" :json-name
                                      "maintenanceDay")
                                     (maintenance-scheduled-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MaintenanceScheduledDate"
                                      :json-name "maintenanceScheduledDate")
                                     (maintenance-start-hour :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MaintenanceStartHour"
                                      :json-name "maintenanceStartHour"))
                                    (:shape-name "UpdateMaintenance"))

(smithy/sdk/shapes:define-structure video-monitoring-setting common-lisp:nil
                                    ((black-frames :target-type black-frames
                                      :member-name "BlackFrames" :json-name
                                      "blackFrames")
                                     (frozen-frames :target-type frozen-frames
                                      :member-name "FrozenFrames" :json-name
                                      "frozenFrames"))
                                    (:shape-name "VideoMonitoringSetting"))

(smithy/sdk/shapes:define-structure vpc-interface common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (network-interface-ids :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "NetworkInterfaceIds"
                                      :json-name "networkInterfaceIds")
                                     (network-interface-type :target-type
                                      network-interface-type :required
                                      common-lisp:t :member-name
                                      "NetworkInterfaceType" :json-name
                                      "networkInterfaceType")
                                     (role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "RoleArn"
                                      :json-name "roleArn")
                                     (security-group-ids :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "SecurityGroupIds"
                                      :json-name "securityGroupIds")
                                     (subnet-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "SubnetId"
                                      :json-name "subnetId"))
                                    (:shape-name "VpcInterface"))

(smithy/sdk/shapes:define-structure vpc-interface-attachment common-lisp:nil
                                    ((vpc-interface-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "VpcInterfaceName"
                                      :json-name "vpcInterfaceName"))
                                    (:shape-name "VpcInterfaceAttachment"))

(smithy/sdk/shapes:define-structure vpc-interface-request common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name"
                                      :json-name "name")
                                     (network-interface-type :target-type
                                      network-interface-type :member-name
                                      "NetworkInterfaceType" :json-name
                                      "networkInterfaceType")
                                     (role-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "RoleArn"
                                      :json-name "roleArn")
                                     (security-group-ids :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "SecurityGroupIds"
                                      :json-name "securityGroupIds")
                                     (subnet-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "SubnetId"
                                      :json-name "subnetId"))
                                    (:shape-name "VpcInterfaceRequest"))

(smithy/sdk/shapes:define-list list-of-add-bridge-output-request :member
                               add-bridge-output-request)

(smithy/sdk/shapes:define-list list-of-add-bridge-source-request :member
                               add-bridge-source-request)

(smithy/sdk/shapes:define-list list-of-add-media-stream-request :member
                               add-media-stream-request)

(smithy/sdk/shapes:define-list list-of-add-output-request :member
                               add-output-request)

(smithy/sdk/shapes:define-list list-of-audio-monitoring-setting :member
                               audio-monitoring-setting)

(smithy/sdk/shapes:define-list list-of-bridge-output :member bridge-output)

(smithy/sdk/shapes:define-list list-of-bridge-source :member bridge-source)

(smithy/sdk/shapes:define-list list-of-destination-configuration :member
                               destination-configuration)

(smithy/sdk/shapes:define-list list-of-destination-configuration-request
                               :member destination-configuration-request)

(smithy/sdk/shapes:define-list list-of-entitlement :member entitlement)

(smithy/sdk/shapes:define-list list-of-gateway-network :member gateway-network)

(smithy/sdk/shapes:define-list list-of-grant-entitlement-request :member
                               grant-entitlement-request)

(smithy/sdk/shapes:define-list list-of-input-configuration :member
                               input-configuration)

(smithy/sdk/shapes:define-list list-of-input-configuration-request :member
                               input-configuration-request)

(smithy/sdk/shapes:define-list list-of-integer :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-listed-bridge :member listed-bridge)

(smithy/sdk/shapes:define-list list-of-listed-entitlement :member
                               listed-entitlement)

(smithy/sdk/shapes:define-list list-of-listed-flow :member listed-flow)

(smithy/sdk/shapes:define-list list-of-listed-gateway :member listed-gateway)

(smithy/sdk/shapes:define-list list-of-listed-gateway-instance :member
                               listed-gateway-instance)

(smithy/sdk/shapes:define-list list-of-media-stream :member media-stream)

(smithy/sdk/shapes:define-list list-of-media-stream-output-configuration
                               :member media-stream-output-configuration)

(smithy/sdk/shapes:define-list
 list-of-media-stream-output-configuration-request :member
 media-stream-output-configuration-request)

(smithy/sdk/shapes:define-list list-of-media-stream-source-configuration
                               :member media-stream-source-configuration)

(smithy/sdk/shapes:define-list
 list-of-media-stream-source-configuration-request :member
 media-stream-source-configuration-request)

(smithy/sdk/shapes:define-list list-of-message-detail :member message-detail)

(smithy/sdk/shapes:define-list list-of-ndi-discovery-server-config :member
                               ndi-discovery-server-config)

(smithy/sdk/shapes:define-list list-of-offering :member offering)

(smithy/sdk/shapes:define-list list-of-output :member output)

(smithy/sdk/shapes:define-list list-of-reservation :member reservation)

(smithy/sdk/shapes:define-list list-of-set-source-request :member
                               set-source-request)

(smithy/sdk/shapes:define-list list-of-source :member source)

(smithy/sdk/shapes:define-list list-of-string :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-of-transport-stream :member
                               transport-stream)

(smithy/sdk/shapes:define-list list-of-transport-stream-program :member
                               transport-stream-program)

(smithy/sdk/shapes:define-list list-of-video-monitoring-setting :member
                               video-monitoring-setting)

(smithy/sdk/shapes:define-list list-of-vpc-interface :member vpc-interface)

(smithy/sdk/shapes:define-list list-of-vpc-interface-request :member
                               vpc-interface-request)

(smithy/sdk/shapes:define-map map-of-string :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-bridge-outputs :shape-name
                                       "AddBridgeOutputs" :input
                                       add-bridge-outputs-request :output
                                       add-bridge-outputs-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/bridges/{BridgeArn}/outputs" :code
                                       202)

(smithy/sdk/operation:define-operation add-bridge-sources :shape-name
                                       "AddBridgeSources" :input
                                       add-bridge-sources-request :output
                                       add-bridge-sources-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/bridges/{BridgeArn}/sources" :code
                                       202)

(smithy/sdk/operation:define-operation add-flow-media-streams :shape-name
                                       "AddFlowMediaStreams" :input
                                       add-flow-media-streams-request :output
                                       add-flow-media-streams-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/{FlowArn}/mediaStreams" :code
                                       201)

(smithy/sdk/operation:define-operation add-flow-outputs :shape-name
                                       "AddFlowOutputs" :input
                                       add-flow-outputs-request :output
                                       add-flow-outputs-response :errors
                                       (add-flow-outputs420exception
                                        bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/{FlowArn}/outputs" :code 201)

(smithy/sdk/operation:define-operation add-flow-sources :shape-name
                                       "AddFlowSources" :input
                                       add-flow-sources-request :output
                                       add-flow-sources-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/{FlowArn}/source" :code 201)

(smithy/sdk/operation:define-operation add-flow-vpc-interfaces :shape-name
                                       "AddFlowVpcInterfaces" :input
                                       add-flow-vpc-interfaces-request :output
                                       add-flow-vpc-interfaces-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/{FlowArn}/vpcInterfaces"
                                       :code 201)

(smithy/sdk/operation:define-operation create-bridge :shape-name "CreateBridge"
                                       :input create-bridge-request :output
                                       create-bridge-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        create-bridge420exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v1/bridges" :code
                                       201)

(smithy/sdk/operation:define-operation create-flow :shape-name "CreateFlow"
                                       :input create-flow-request :output
                                       create-flow-response :errors
                                       (bad-request-exception
                                        create-flow420exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v1/flows" :code
                                       201)

(smithy/sdk/operation:define-operation create-gateway :shape-name
                                       "CreateGateway" :input
                                       create-gateway-request :output
                                       create-gateway-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        create-gateway420exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v1/gateways" :code
                                       201)

(smithy/sdk/operation:define-operation delete-bridge :shape-name "DeleteBridge"
                                       :input delete-bridge-request :output
                                       delete-bridge-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/bridges/{BridgeArn}" :code 200)

(smithy/sdk/operation:define-operation delete-flow :shape-name "DeleteFlow"
                                       :input delete-flow-request :output
                                       delete-flow-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/flows/{FlowArn}" :code 202)

(smithy/sdk/operation:define-operation delete-gateway :shape-name
                                       "DeleteGateway" :input
                                       delete-gateway-request :output
                                       delete-gateway-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/gateways/{GatewayArn}" :code 200)

(smithy/sdk/operation:define-operation deregister-gateway-instance :shape-name
                                       "DeregisterGatewayInstance" :input
                                       deregister-gateway-instance-request
                                       :output
                                       deregister-gateway-instance-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/gateway-instances/{GatewayInstanceArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation describe-bridge :shape-name
                                       "DescribeBridge" :input
                                       describe-bridge-request :output
                                       describe-bridge-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/bridges/{BridgeArn}" :code 200)

(smithy/sdk/operation:define-operation describe-flow :shape-name "DescribeFlow"
                                       :input describe-flow-request :output
                                       describe-flow-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/flows/{FlowArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-flow-source-metadata
                                       :shape-name "DescribeFlowSourceMetadata"
                                       :input
                                       describe-flow-source-metadata-request
                                       :output
                                       describe-flow-source-metadata-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/flows/{FlowArn}/source-metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-flow-source-thumbnail
                                       :shape-name
                                       "DescribeFlowSourceThumbnail" :input
                                       describe-flow-source-thumbnail-request
                                       :output
                                       describe-flow-source-thumbnail-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/flows/{FlowArn}/source-thumbnail"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-gateway :shape-name
                                       "DescribeGateway" :input
                                       describe-gateway-request :output
                                       describe-gateway-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/gateways/{GatewayArn}" :code 200)

(smithy/sdk/operation:define-operation describe-gateway-instance :shape-name
                                       "DescribeGatewayInstance" :input
                                       describe-gateway-instance-request
                                       :output
                                       describe-gateway-instance-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/gateway-instances/{GatewayInstanceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-offering :shape-name
                                       "DescribeOffering" :input
                                       describe-offering-request :output
                                       describe-offering-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/offerings/{OfferingArn}" :code 200)

(smithy/sdk/operation:define-operation describe-reservation :shape-name
                                       "DescribeReservation" :input
                                       describe-reservation-request :output
                                       describe-reservation-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/reservations/{ReservationArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation grant-flow-entitlements :shape-name
                                       "GrantFlowEntitlements" :input
                                       grant-flow-entitlements-request :output
                                       grant-flow-entitlements-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        grant-flow-entitlements420exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/{FlowArn}/entitlements" :code
                                       200)

(smithy/sdk/operation:define-operation list-bridges :shape-name "ListBridges"
                                       :input list-bridges-request :output
                                       list-bridges-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/bridges" :code
                                       200)

(smithy/sdk/operation:define-operation list-entitlements :shape-name
                                       "ListEntitlements" :input
                                       list-entitlements-request :output
                                       list-entitlements-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/entitlements"
                                       :code 200)

(smithy/sdk/operation:define-operation list-flows :shape-name "ListFlows"
                                       :input list-flows-request :output
                                       list-flows-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/flows" :code 200)

(smithy/sdk/operation:define-operation list-gateway-instances :shape-name
                                       "ListGatewayInstances" :input
                                       list-gateway-instances-request :output
                                       list-gateway-instances-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v1/gateway-instances" :code 200)

(smithy/sdk/operation:define-operation list-gateways :shape-name "ListGateways"
                                       :input list-gateways-request :output
                                       list-gateways-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/gateways" :code
                                       200)

(smithy/sdk/operation:define-operation list-offerings :shape-name
                                       "ListOfferings" :input
                                       list-offerings-request :output
                                       list-offerings-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/offerings" :code
                                       200)

(smithy/sdk/operation:define-operation list-reservations :shape-name
                                       "ListReservations" :input
                                       list-reservations-request :output
                                       list-reservations-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v1/reservations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation purchase-offering :shape-name
                                       "PurchaseOffering" :input
                                       purchase-offering-request :output
                                       purchase-offering-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/offerings/{OfferingArn}" :code 201)

(smithy/sdk/operation:define-operation remove-bridge-output :shape-name
                                       "RemoveBridgeOutput" :input
                                       remove-bridge-output-request :output
                                       remove-bridge-output-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/bridges/{BridgeArn}/outputs/{OutputName}"
                                       :code 202)

(smithy/sdk/operation:define-operation remove-bridge-source :shape-name
                                       "RemoveBridgeSource" :input
                                       remove-bridge-source-request :output
                                       remove-bridge-source-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/bridges/{BridgeArn}/sources/{SourceName}"
                                       :code 202)

(smithy/sdk/operation:define-operation remove-flow-media-stream :shape-name
                                       "RemoveFlowMediaStream" :input
                                       remove-flow-media-stream-request :output
                                       remove-flow-media-stream-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-flow-output :shape-name
                                       "RemoveFlowOutput" :input
                                       remove-flow-output-request :output
                                       remove-flow-output-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/flows/{FlowArn}/outputs/{OutputArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation remove-flow-source :shape-name
                                       "RemoveFlowSource" :input
                                       remove-flow-source-request :output
                                       remove-flow-source-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/flows/{FlowArn}/source/{SourceArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation remove-flow-vpc-interface :shape-name
                                       "RemoveFlowVpcInterface" :input
                                       remove-flow-vpc-interface-request
                                       :output
                                       remove-flow-vpc-interface-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/flows/{FlowArn}/vpcInterfaces/{VpcInterfaceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation revoke-flow-entitlement :shape-name
                                       "RevokeFlowEntitlement" :input
                                       revoke-flow-entitlement-request :output
                                       revoke-flow-entitlement-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation start-flow :shape-name "StartFlow"
                                       :input start-flow-request :output
                                       start-flow-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/start/{FlowArn}" :code 202)

(smithy/sdk/operation:define-operation stop-flow :shape-name "StopFlow" :input
                                       stop-flow-request :output
                                       stop-flow-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v1/flows/stop/{FlowArn}" :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-error-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-bridge :shape-name "UpdateBridge"
                                       :input update-bridge-request :output
                                       update-bridge-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/bridges/{BridgeArn}" :code 202)

(smithy/sdk/operation:define-operation update-bridge-output :shape-name
                                       "UpdateBridgeOutput" :input
                                       update-bridge-output-request :output
                                       update-bridge-output-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/bridges/{BridgeArn}/outputs/{OutputName}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-bridge-source :shape-name
                                       "UpdateBridgeSource" :input
                                       update-bridge-source-request :output
                                       update-bridge-source-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/bridges/{BridgeArn}/sources/{SourceName}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-bridge-state :shape-name
                                       "UpdateBridgeState" :input
                                       update-bridge-state-request :output
                                       update-bridge-state-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/bridges/{BridgeArn}/state" :code
                                       202)

(smithy/sdk/operation:define-operation update-flow :shape-name "UpdateFlow"
                                       :input update-flow-request :output
                                       update-flow-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/v1/flows/{FlowArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-flow-entitlement :shape-name
                                       "UpdateFlowEntitlement" :input
                                       update-flow-entitlement-request :output
                                       update-flow-entitlement-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/flows/{FlowArn}/entitlements/{EntitlementArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-flow-media-stream :shape-name
                                       "UpdateFlowMediaStream" :input
                                       update-flow-media-stream-request :output
                                       update-flow-media-stream-response
                                       :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/flows/{FlowArn}/mediaStreams/{MediaStreamName}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-flow-output :shape-name
                                       "UpdateFlowOutput" :input
                                       update-flow-output-request :output
                                       update-flow-output-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/flows/{FlowArn}/outputs/{OutputArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-flow-source :shape-name
                                       "UpdateFlowSource" :input
                                       update-flow-source-request :output
                                       update-flow-source-response :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/flows/{FlowArn}/source/{SourceArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-gateway-instance :shape-name
                                       "UpdateGatewayInstance" :input
                                       update-gateway-instance-request :output
                                       update-gateway-instance-response :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v1/gateway-instances/{GatewayInstanceArn}"
                                       :code 200)
